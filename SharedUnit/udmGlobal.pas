unit udmGlobal;

interface

uses
  SysUtils, Classes, DB, DBAccess, Ora, MemDS, uSupportLib, uGlobals;

type
  TdmGlobal = class(TDataModule)
    OraGlobal: TOraSession;
    spAggNumPrg: TOraStoredProc;
    spDimNumPrg: TOraStoredProc;
    qyGetNpaDet: TOraQuery;
    qyGetNpaDetNPA_DET: TFloatField;
    spIrtDmoLck: TOraStoredProc;
    qyChkDmoLck: TOraQuery;
    qyChkDmoLckNUM: TFloatField;
    qyFilShr: TOraQuery;
    qyFilShrCOD_FIL_SHR: TStringField;
    qyFilShrCOD_VAL_FIL_SHR: TStringField;
    qyFilShrDES_FIL_SHR: TStringField;
    qyCheckDupRec: TOraQuery;
    qyCheckDupRecNUM: TFloatField;
    qyCheckMax: TOraQuery;
    qyCheckMaxNUM_PRG: TFloatField;
    spAggNumPrgAaa: TOraStoredProc;
    spDimNumPrgAaa: TOraStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure dmCommit;
    function  dmConnect: boolean;
    procedure dmDisconnect;
    procedure dmRollBack;
    procedure dmStartTransaction;

    procedure dmInsertDmoLck(ACodKey: TStringList; ACodValKey, AFlgOpr: String);
    function  dmCheckDmoLck(ACodKey: TStringList; ACodValKey: String): boolean;
    function  dmCheckDupValue(ACodKey: TStringList; ADataSet: TDataSet): boolean;
    function  dmCheckMaxValue(ACodKey: TStringList; ADataSet: TDataSet): boolean;

    function  AggNumPrg(ACod: String): String;
    function  DimNumPrg(ACod, ACodPrg: String): Boolean;
    function  AggNumPrgAaa(AAaa: integer; ATip, ACod: String): String;
    function  DimNumPrgAaa(AAaa: integer; ATip, ACod, ACodPrg: String): Boolean;
    function  GetNpaDet: integer;
  end;

var
  dmGlobal: TdmGlobal;

implementation

uses
  Dialogs;

{$R *.dfm}

{ TdmGlobal }

function TdmGlobal.AggNumPrg(ACod: String): String;
begin
  dmStartTransaction;
  with spAggNumPrg do
  begin
    ParamByName('iCod').AsString           := ACod;
    ParamByName('iCod_Usr').AsString       := hUsr;
    ParamByName('iDes_Pdl').AsString       := GetMachineName;
    ParamByName('iDat_Agg_Rec').AsDateTime := Now;
    try
      try
        Execute;
      finally
        Result := ParamByName('oCod_Prg').AsString;
        dmCommit;
      end;
    except
      dmRollBack;
    end;
  end;
end;

function TdmGlobal.AggNumPrgAaa(AAaa: integer; ATip, ACod: String): String;
begin
  dmStartTransaction;
  with spAggNumPrgAaa do
  begin
    ParamByName('iAaa').AsInteger          := AAaa;
    ParamByName('iTip').AsString           := ATip;
    ParamByName('iCod').AsString           := ACod;
    ParamByName('iCod_Usr').AsString       := hUsr;
    ParamByName('iDes_Pdl').AsString       := GetMachineName;
    ParamByName('iDat_Agg_Rec').AsDateTime := Now;
    try
      try
        Execute;
      finally
        Result := ParamByName('oCod_Prg').AsString;
        dmCommit;
      end;
    except
      dmRollBack;
    end;
  end;
end;

function TdmGlobal.DimNumPrg(ACod, ACodPrg: String): Boolean;
begin
  dmStartTransaction;
  Result := False;
  with spDimNumPrg do
  begin
    ParamByName('iCod').AsString           := ACod;
    ParamByName('iNum_Prg').AsInteger      := StrToInt(ACodPrg);
    ParamByName('iCod_Usr').AsString       := hUsr;
    ParamByName('iDes_Pdl').AsString       := GetMachineName;
    ParamByName('iDat_Agg_Rec').AsDateTime := Now;
    try
      try
        Execute;
      finally
        Result := True;
        dmCommit;
      end;
    except
      dmRollBack;
    end;
  end;
end;

function TdmGlobal.DimNumPrgAaa(AAaa: integer; ATip, ACod, ACodPrg: String): Boolean;
begin
  dmStartTransaction;
  Result := False;
  with spDimNumPrgAaa do
  begin
    ParamByName('iAaa').AsInteger          := AAaa;
    ParamByName('iTip').AsString           := ATip;
    ParamByName('iCod').AsString           := ACod;
    ParamByName('iNum_Prg').AsInteger      := StrToInt(ACodPrg);
    ParamByName('iCod_Usr').AsString       := hUsr;
    ParamByName('iDes_Pdl').AsString       := GetMachineName;
    ParamByName('iDat_Agg_Rec').AsDateTime := Now;
    try
      try
        Execute;
      finally
        Result := True;
        dmCommit;
      end;
    except
      dmRollBack;
    end;
  end;
end;

function TdmGlobal.dmCheckDmoLck(ACodKey: TStringList; ACodValKey: String): boolean;
var
  AppKey : String;
  i : integer;
begin
  AppKey := '';
  for i := 0 to ACodKey.Count - 1 do
    AppKey := AppKey + ACodKey[i];

  qyChkDmoLck.Close;
  qyChkDmoLck.ParamByName('Cod_Key').AsString     := AppKey;
  qyChkDmoLck.ParamByName('Cod_Val_Key').AsString := ACodValKey;
  qyChkDmoLck.Open;
  Result := qyChkDmoLckNUM.AsInteger > 0;
  qyChkDmoLck.Close;
end;

function TdmGlobal.dmCheckDupValue(ACodKey: TStringList; ADataSet: TDataSet): boolean;
var
  i : integer;
  ATableName, AppStr : String;
  AppSL : TStringList;
begin
  AppSL := TStringList.Create;
  Split(ADataSet.FieldByName(ACodKey[0]).Origin, '.', AppSL);
  ATableName := AppSL[0];
  FreeAndNil(AppSL);
  AppStr := 'SELECT COUNT(*) NUM FROM '+ATableName;
  for i := 0 to ACodKey.Count - 1 do
  begin
    if Pos('WHERE', AppStr) > 0 then
      AppStr := AppStr + ' AND '
    else
      AppStr := AppStr + ' WHERE ';

    case ADataSet.FieldByName(ACodKey[i]).DataType of
      ftString : AppStr := AppStr + ACodKey[i]+' = LPAD(' + QuotedStr(ADataSet.FieldByName(ACodKey[i]).AsString) +', 6, 0)';
      ftInteger,
      ftFloat,
      ftSmallint,
      ftLargeint,
      ftWord   : AppStr := AppStr + ACodKey[i]+' = ' + ADataSet.FieldByName(ACodKey[i]).Value;
    end;
  end;

  qyCheckDupRec.Close;
  qyCheckDupRec.SQL.Clear;
  qyCheckDupRec.SQL.Append(AppStr);
  qyCheckDupRec.Open;

  Result := qyCheckDupRecNUM.AsInteger > 0;
end;

function TdmGlobal.dmCheckMaxValue(ACodKey: TStringList; ADataSet: TDataSet): boolean;
var
  i : integer;
  AppStr : String;
begin
  for i := 0 to ACodKey.Count - 1 do
    AppStr := AppStr + ACodKey[i];

  qyCheckMax.Close;
  qyCheckMax.ParamByName('Cod').AsString := AppStr;
  qyCheckMax.Open;
  Result := qyCheckMaxNUM_PRG.AsInteger >= StrToInt(ADataSet.FieldByName(ACodKey[ACodKey.Count - 1]).AsString);

  if Result then
    DimNumPrg(AppStr, ADataSet.FieldByName(ACodKey[ACodKey.Count - 1]).OldValue);
end;

procedure TdmGlobal.dmCommit;
begin
  OraGlobal.Commit;
end;

function TdmGlobal.dmConnect: boolean;
begin
  try
    try
      OraGlobal.AutoCommit    := False;
      OraGlobal.ConnectPrompt := False;
      OraGlobal.UserName      := hDbsUsr;
      OraGlobal.PassWord      := hDbsPwd;
      OraGlobal.Schema        := OraGlobal.UserName;
      OraGlobal.Server        := hDbsNom;
      OraGlobal.ConnectString := OraGlobal.UserName+'/'+OraGlobal.PassWord+'@'+OraGlobal.Server;
      OraGlobal.Connect;
    finally
      Result := True;
    end;
  except
    Result := False;
  end;
end;

procedure TdmGlobal.dmDisconnect;
begin
  OraGlobal.DisConnect;
end;

procedure TdmGlobal.dmInsertDmoLck(ACodKey: TStringList; ACodValKey, AFlgOpr: String);
var
  AppKey : String;
  i : integer;
begin
  AppKey := '';
  for i := 0 to ACodKey.Count - 1 do
    AppKey := AppKey + ACodKey[i];

  dmStartTransaction;
  with spIrtDmoLck do
  begin
    ParamByName('iCod_Key').AsString       := AppKey;
    ParamByName('iCod_Val_Key').AsString   := ACodValKey;
    ParamByName('iFlg_Opr').AsString       := AFlgOpr;
    ParamByName('iCod_Usr').AsString       := hUsr;
    ParamByName('iDes_Pdl').AsString       := GetMachineName;
    ParamByName('iDat_Agg_Rec').AsDateTime := Now;
    try
      try
        Execute;
      finally
        dmCommit;
      end;
    except
      dmRollBack;
    end;
  end;
end;

procedure TdmGlobal.dmRollBack;
begin
  OraGlobal.Rollback;
end;

procedure TdmGlobal.dmStartTransaction;
begin
  if not OraGlobal.InTransaction then
    OraGlobal.StartTransaction;
end;

function TdmGlobal.GetNpaDet: integer;
begin
  qyGetNpaDet.Close;
  qyGetNpaDet.Open;
  Result := qyGetNpaDetNPA_DET.AsInteger;
end;

end.
