unit udmChkUsr;

interface

uses
  SysUtils, Classes, DB, DBAccess, Ora, MemDS, uGlobals, ActnList, uSupportLib;

resourcestring
  stUsrNotExists  = 'Utente o Password Errati!';
  stAplNotEnabled = 'Applicazione non abilitata per l''utente!';
  stUsrAtv        = 'Utente Attivo o Bloccato!';

type
  TdmChkUsr = class(TDataModule)
    OraChkUsr: TOraSession;
    qyUserExists: TOraQuery;
    qyUserExistsDES_USR: TStringField;
    qyUserExistsFLG_TIP_USR: TStringField;
    qyAplEnabled: TOraQuery;
    qyAplEnabledCOD_USR: TStringField;
    qyAplEnabledCOD_APL: TStringField;
    qyAplInfos: TOraQuery;
    qyAplInfosCOD_APL: TStringField;
    qyAplInfosDES_APL: TStringField;
    qyAplInfosDBS_NOM: TStringField;
    qyAplInfosDBS_USR: TStringField;
    qyAplInfosDBS_PWD: TStringField;
    qyAplInfosDES_PDL: TStringField;
    qyAplInfosDAT_AGG_REC: TDateTimeField;
    qyAplEnabledFLG_ATV: TStringField;
    osSetUsrAtv: TOraSQL;
    qyUsrTrzApl: TOraQuery;
    qyUsrTrzAplCOD_USR: TStringField;
    qyUsrTrzAplCOD_APL: TStringField;
    qyUsrTrzAplCOD_TRZ: TStringField;
    qyUsrTrzAplFLG_IRT: TStringField;
    qyUsrTrzAplFLG_UPD: TStringField;
    qyUsrTrzAplFLG_DEL: TStringField;
    qyUsrTrzAplFLG_VIS: TStringField;
    qyUsrTrzAplFLG_PRT: TStringField;
    qyUsrTrzAplDES_PDL: TStringField;
    qyUsrTrzAplDAT_AGG_REC: TDateTimeField;
    qyCheckTrz: TOraQuery;
    osIrtTrz: TOraSQL;
    qyCheckTrzCOD_TRZ: TStringField;
    qyCheckTrzCOD_APL: TStringField;
    qyCheckTrzDES_TRZ: TStringField;
    qyCheckTrzDES_HNT: TStringField;
    qyCheckTrzDES_PDL: TStringField;
    qyCheckTrzDAT_AGG_REC: TDateTimeField;
    qyUsrTrzAplFLG_ABL: TStringField;
    spIrtUsrAplTrz: TOraStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure IrtCodTrz(AAction: TAction);
    function  Login(ACodUsr, ACodPwd, AApl: String): boolean;
    procedure SetUsrAtv(ACodUsr, AApl, AFlgAtv: String);
    procedure SetFlgTrz(CodTrz: String);
    procedure dmCommit;
    procedure dmConnect;
    procedure dmDisconnect;
    procedure dmRollBack;
    procedure dmStartTransaction;
  end;

var
  dmChkUsr: TdmChkUsr;

implementation

uses
  Dialogs;

{$R *.dfm}

{ TdmChkUsr }

procedure TdmChkUsr.dmCommit;
begin
  OraChkUsr.Commit;
end;

procedure TdmChkUsr.dmConnect;
begin
  OraChkUsr.AutoCommit    := False;
  OraChkUsr.ConnectPrompt := False;
  OraChkUsr.HomeName      := '';
  OraChkUsr.UserName      := 'USR';
  OraChkUsr.PassWord      := 'USR';
  OraChkUsr.Schema        := OraChkUsr.UserName;
  OraChkUsr.Server        := 'USR';
  OraChkUsr.ConnectString := OraChkUsr.UserName+'/'+OraChkUsr.PassWord+'@'+OraChkUsr.Server;
  OraChkUsr.Connect;
  OraChkUsr.Connect;
end;

procedure TdmChkUsr.dmDisconnect;
begin
  OraChkUsr.DisConnect;
end;

procedure TdmChkUsr.dmRollBack;
begin
  OraChkUsr.Rollback;
end;

procedure TdmChkUsr.dmStartTransaction;
begin
  OraChkUsr.StartTransaction;
end;

procedure TdmChkUsr.IrtCodTrz(AAction: TAction);
begin
  qyCheckTrz.Close;
  qyCheckTrz.ParamByName('Cod_Apl').AsString  := hApl;
  qyCheckTrz.ParamByName('Cod_Trz').AsString  := AAction.Name;
  qyCheckTrz.Open;
  if qyCheckTrz.IsEmpty then
  begin
    OraChkUsr.StartTransaction;
    try
      try
        osIrtTrz.ParamByName('Cod_Apl').AsString       := hApl;
        osIrtTrz.ParamByName('Cod_Trz').AsString       := AAction.Name;
        osIrtTrz.ParamByName('Des_Trz').AsString       := StringReplace(AAction.Caption, '&', '', []);
        osIrtTrz.ParamByName('Des_Hnt').AsString       := AAction.Hint;
        osIrtTrz.ParamByName('Des_Pdl').AsString       := GetMachineName;
        osIrtTrz.ParamByName('Dat_Agg_Rec').AsDateTime := Now;
        osIrtTrz.Execute;

        spIrtUsrAplTrz.ParamByName('iCod_Apl').AsString       := hApl;
        spIrtUsrAplTrz.ParamByName('iCod_Trz').AsString       := AAction.Name;
        spIrtUsrAplTrz.ParamByName('iDes_Pdl').AsString       := GetMachineName;
        spIrtUsrAplTrz.ParamByName('iDat_Agg_Rec').AsDateTime := Now;
        spIrtUsrAplTrz.Execute;
      finally
        OraChkUsr.Commit;
      end;
    except
      OraChkUsr.Rollback;
    end;

//    OraChkUsr.StartTransaction;
//    try
//      try
//      finally
//        OraChkUsr.Commit;
//      end;
//    except
//      OraChkUsr.Rollback;
//    end;
  end;
end;

function TdmChkUsr.Login(ACodUsr, ACodPwd, AApl: String): boolean;

  function checkUsr(ACodUsr, ACodPwd: String): boolean;
  begin
    if ANSIUpperCase(ACodUsr) <> 'SUPER' then
    begin
      qyUserExists.ParamByName('Cod_Usr').AsString := ACodUsr;
      qyUserExists.ParamByName('Cod_Pwd').AsString := ACodPwd;
      qyUserExists.Open;
      Result := not qyUserExists.IsEmpty;
      if not Result then
        MessageDlg(stUsrNotExists, mtError, [mbOK], 0);
    end
    else
      Result := True;
  end;

  function checkAplAblForUsr(ACodUsr, AApl: String): boolean;
  begin
    if ANSIUpperCase(ACodUsr) <> 'SUPER' then
    begin
      qyAplEnabled.ParamByName('Cod_Usr').AsString := ACodUsr;
      qyAplEnabled.ParamByName('Cod_Apl').AsString := AApl;
      qyAplEnabled.Open;
      Result := not qyAplEnabled.IsEmpty;
      if not Result then
        MessageDlg(stAplNotEnabled, mtError, [mbOK], 0)
      else
      begin
        if qyAplEnabledFLG_ATV.AsString = '1' then
        begin
          MessageDlg(stUsrAtv, mtError, [mbOK], 0);
          Result := False;
        end;
      end;
      qyAplEnabled.Close;
    end
    else
      Result := True;
  end;

begin
  Result := checkUsr(ACodUsr, ACodPwd);
  if Result then
    Result := checkAplAblForUsr(ACodUsr, AApl);
  if Result then
  begin
    Result  := True;
    hUsr    := ACodUsr;
    hApl    := AApl;
    hDesUsr := qyUserExistsDES_USR.AsString;
    hTipUsr := qyUserExistsFLG_TIP_USR.AsString;
    qyAplInfos.ParamByName('Cod_Apl').AsString := AApl;
    qyAplInfos.Open;
    hDbsNom := qyAplInfosDBS_NOM.AsString;
    hDbsUsr := qyAplInfosDBS_USR.AsString;
    hDbsPwd := qyAplInfosDBS_PWD.AsString;
    hDesApl := qyAplInfosDES_APL.AsString;
  end;
  qyAplInfos.Close;
  qyUserExists.Close;
end;

procedure TdmChkUsr.SetFlgTrz(CodTrz: String);
begin
  qyUsrTrzApl.ParamByName('Cod_Apl').AsString := hApl;
  qyUsrTrzApl.ParamByName('Cod_Usr').AsString := hUsr;
  qyUsrTrzApl.ParamByName('Cod_Trz').AsString := CodTrz;
  qyUsrTrzApl.Open;
  hFlgIrt := (qyUsrTrzAplFLG_IRT.AsString = '1') or qyUsrTrzApl.IsEmpty or (hTipUsr = '1');
  hFlgUpd := (qyUsrTrzAplFLG_UPD.AsString = '1') or qyUsrTrzApl.IsEmpty or (hTipUsr = '1');
  hFlgDel := (qyUsrTrzAplFLG_DEL.AsString = '1') or qyUsrTrzApl.IsEmpty or (hTipUsr = '1');
  hFlgVis := (qyUsrTrzAplFLG_VIS.AsString = '1') or qyUsrTrzApl.IsEmpty or (hTipUsr = '1');
  hFlgPrt := (qyUsrTrzAplFLG_PRT.AsString = '1') or qyUsrTrzApl.IsEmpty or (hTipUsr = '1');
  hFlgAbl := (qyUsrTrzAplFLG_ABL.AsString = '1') or qyUsrTrzApl.IsEmpty or (hTipUsr = '1');
  qyUsrTrzApl.Close;
end;

procedure TdmChkUsr.SetUsrAtv(ACodUsr, AApl, AFlgAtv: String);
begin
  OraChkUsr.StartTransaction;
  try
    try
      osSetUsrAtv.ParamByName('Flg_Atv').AsString := AFlgAtv;
      osSetUsrAtv.ParamByName('Cod_Usr').AsString := ACodUsr;
      osSetUsrAtv.ParamByName('Cod_Apl').AsString := AApl;
      osSetUsrAtv.Execute;
    finally
      OraChkUsr.Commit;
    end;
  except
    OraChkUsr.Rollback;
  end;
end;

end.
