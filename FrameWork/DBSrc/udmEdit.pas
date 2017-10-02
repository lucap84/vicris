unit udmEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmGlobal, DB, DBAccess, Ora, DBClient, udmDBCore, udmDBRoot, uGlobals;

type
  TdmEditClass = class of TdmEdit;
  TdmEdit = class(TdmDBRoot)
    OraSession: TOraSession;
  private
    FhNumManPrv: boolean;
    { Private declarations }
    function getMainSession: TOraSession;
  protected
    procedure dmBeforePost(DataSet: TDataSet); override;

    function  dmCheckValidateData: boolean; override;

    function  dmAggNumPrgCustom: String; virtual;
    function  dmDimNumPrgCustom: boolean; virtual;

    procedure dmSetSessionDefault; override;
  public
    { Public declarations }
    function  dmCommit: boolean; override;
    procedure dmRollBack; override;

    procedure dmDelete;
    procedure dmEdit;
    procedure dmInsert;
    procedure dmView;

    procedure dmMasterTableSetKey;

    procedure SetDmoLck;
    procedure RemoveDmoLck;

    property  hNumManPrv : boolean read FhNumManPrv write FhNumManPrv;
  end;

var
  dmEdit: TdmEdit;

implementation

{$R *.dfm}

{ TdmEdit }

function TdmEdit.getMainSession: TOraSession;
var
  i : integer;
begin
  Result := nil;
  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i] is TOraSession then
    begin
      Result := TOraSession(Self.Components[i]);
      Break;
    end;
end;

function TdmEdit.dmCheckValidateData: boolean;
var
  i : integer;
begin
  inherited dmCheckValidateData;
  if hDataSet.FieldByName(hKeyFields[hKeyFields.Count - 1]).IsNull then
    dmMasterTableSetKey;
  Result := True;

  for i := 0 to hKeyFields.Count - 1 do
    if hDataSet.FieldByName(hKeyFields[i]).isNull then
    begin
      MessageDlg(stReqDErr, mtInformation, [mbOK], 0);
      Result := False;
    end;

  if Result and hNumManPrv then
  begin
    Result := not dmGlobal.dmCheckDupValue(hKeyFields, hDataSet);
    if not Result then
      MessageDlg(stDuplicateRec, mtInformation, [mbOK], 0);
  end;

  if Result and hNumManPrv then
  begin
    Result := dmGlobal.dmCheckMaxValue(hKeyFields, hDataSet);
    if not Result then
      MessageDlg(stMaxCod, mtInformation, [mbOK], 0);
  end;
end;

function TdmEdit.dmCommit: boolean;
var
  NewCod, KeyStr : String;
  i : integer;
begin
  inherited dmCommit;
  Result := True;
  KeyStr := '';
  for i := 0 to hKeyFields.Count - 1 do
    KeyStr := KeyStr + hKeyFields[i];
  if hdmState = hdmDelete then
  begin
    if (hTipAttNum = hPrgAut)    and (not FhNumManPrv) then
      dmGlobal.DimNumPrg(KeyStr, hKeyValues[hKeyValues.Count - 1]);
    if (hTipAttNum = hPrgAutAaa) and (not FhNumManPrv) then
      dmDimNumPrgCustom;
    Result := dmDsApplyUpdates(TClientDataSet(hDataSet));
  end;

  if Result then
  begin
    if (hdmState in [hdmInsert, hdmEdit]) then
    begin
      if dmCheckValidateData then
      begin
        if dmPostAll then
        begin
          if hdmState = hdmInsert then
          begin
            if (hTipAttNum = hPrgAut) and (not FhNumManPrv) then
            begin
              NewCod := dmGlobal.AggNumPrg(KeyStr);
              dmDsEdit(hDataSet);
              hDataSet.FieldByName(hKeyFields[hKeyFields.Count - 1]).AsString := NewCod;
              dmPostAll;
            end;
            if (hTipAttNum = hPrgAutAaa) and (not FhNumManPrv) then
            begin
              NewCod := dmAggNumPrgCustom;
              dmDsEdit(hDataSet);
              hDataSet.FieldByName(hKeyFields[hKeyFields.Count - 1]).AsString := NewCod;
              dmPostAll;
            end;
          end;
          getMainSession.Commit;
          if hdmState = hdmInsert then
            if (hTipAttNum in [hPrgAut, hPrgAutAaa]) and (not FhNumManPrv) then
              MessageDlg('E'' stato inserito il record N° '+NewCod, mtInformation, [mbOK], 0);
          if (hdmState in [hdmEdit, hdmDelete]) then
            RemoveDmoLck;
        end
        else
          Result := False;
      end
      else
        Result := False;
    end;
  end;

  if not Result then
  begin
    if (hdmState in [hdmEdit, hdmDelete]) then
      RemoveDmoLck;
  end;
end;

procedure TdmEdit.dmDelete;
begin
  FhNumManPrv := False;
  SetDmoLck;
  hdmState := hdmDelete;
  SetDataSetState;
  SetMasterParams;
  dmOpenAll;
  dmDsDelete(hDataSet);
  RemoveDmoLck;
end;

procedure TdmEdit.dmEdit;
begin
  FhNumManPrv := False;
  SetDmoLck;
  hdmState := hdmEdit;
  SetDataSetState;
  SetMasterParams;
  dmOpenAll;
  dmDsEdit(hDataSet);
end;

procedure TdmEdit.dmInsert;
begin
  FhNumManPrv := False;
  dmOpenAll;
  hdmState := hdmInsert;
  SetDataSetState;
  if Assigned(hDataSet) then
  begin
    dmDsInsert(hDataSet);
    if (hTipAttNum in [hPrgAut, hPrgAutAaa]) and (not FhNumManPrv) then
      hDataSet.FieldByName(hKeyFields[hKeyFields.Count-1]).AsString := IntToStr(dmGlobal.GetNpaDet);
  end;
end;

procedure TdmEdit.dmView;
begin
  FhNumManPrv := False;
  dmCloseAll;
  hdmState := hdmView;
  SetDataSetState;
  SetMasterParams;
  dmOpenAll;
end;

procedure TdmEdit.dmMasterTableSetKey;
begin
  //do nothing
end;

procedure TdmEdit.dmRollBack;
begin
  getMainSession.Rollback;
  if (hdmState in [hdmEdit, hdmDelete]) then
    RemoveDmoLck;
end;

procedure TdmEdit.RemoveDmoLck;
begin
  dmGlobal.dmInsertDmoLck(Self.hKeyFields, GetCodValKey, '1');
end;

procedure TdmEdit.SetDmoLck;
begin
  dmGlobal.dmInsertDmoLck(Self.hKeyFields, GetCodValKey, '0');
end;

procedure TdmEdit.dmBeforePost(DataSet: TDataSet);
begin
  inherited;
  if hApl <> 'USER' then
    if Assigned(DataSet.FindField('Cod_Usr')) then
      DataSet.FieldByName('Cod_Usr').AsString := hUsr;
end;

procedure TdmEdit.dmSetSessionDefault;
begin
  inherited;
  getMainSession.AutoCommit    := False;
  getMainSession.ConnectPrompt := False;
  getMainSession.UserName      := hDbsUsr;
  getMainSession.PassWord      := hDbsPwd;
  getMainSession.Schema        := getMainSession.UserName;
  getMainSession.Server        := hDbsNom;
  getMainSession.ConnectString := getMainSession.UserName+'/'+getMainSession.PassWord+'@'+getMainSession.Server;
end;

function TdmEdit.dmAggNumPrgCustom: String;
begin
  //do nothing;
end;

function TdmEdit.dmDimNumPrgCustom: boolean;
begin
  Result := True;
  //do nothing;
end;

end.
