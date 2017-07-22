unit udmCore;

interface

uses
  Windows, Classes, SysUtils, DB, DBClient, Forms, Ora, uSupportLib, Variants;

const
  CrLf = #13#10;

resourcestring
  stCheckDel     = 'Confermi l''eliminazione del record?';
  stDeadlock     = 'Il record corrente è attualmente in uso oppure bloccato';
  stReqDErr      = 'Inserire il valore';
  stDuplicateRec = 'Il codice inserito è già utilizzato!';
  stMaxCod       = 'Codice maggiore dell''ultimo inserito!';
  stDsError      = 'Errore in fase di apertura del DataSet: ';
  stRecNotFound  = 'Codice non presente!';

type
  TdmState = (hdmInsert, hdmEdit, hdmView, hdmDelete);
  TdmType = (hdmRead, hdmWrite);
  TdmTipAttNum = (hPrgAut, hPrgMan, hPrgAutAaa);

  TdmCore = class;
  TdmCore = class(TDataModule)
  private
    { Private declarations }
    FhDataSet: TDataSet;
    FhdmType: TdmType;
    FhKeyValues: TStringList;
    FhKeyFields: TStringList;
    FhdmState: TdmState;
    FhTipAttNum: TdmTipAttNum;

    procedure SetDataSetsMethods;
    procedure SethKeyFields(const Value: TStringList);
    procedure SethKeyValues(const Value: TStringList);
  protected
    procedure dmAfterInsert(DataSet: TDataSet); virtual;
    procedure dmAfterOpen(DataSet: TDataSet); virtual;
    procedure dmAfterPost(DataSet: TDataSet); virtual;
    procedure dmBeforeInsert(DataSet: TDataSet); virtual;
    procedure dmBeforeOpen(DataSet: TDataSet); virtual;
    procedure dmBeforePost(DataSet: TDataSet); virtual;

    function dmCheckValidateData: boolean; virtual;

  public
    { Public declarations }
    constructor Create(Owner: TComponent); override;
    destructor  Destroy;                   override;

    function  dmDsApplyUpdates(DataSet: TClientDataSet): boolean; virtual;
    procedure dmDsCancel(DataSet: TDataSet); virtual;
    procedure dmDsClose(DataSet: TDataSet); virtual;
    function  dmDsDelete(DataSet: TDataSet): boolean; virtual;
    function  dmDsEdit(DataSet: TDataSet): boolean; virtual;
    function  dmDsInsert(DataSet: TDataSet): boolean; virtual;
    function  dmDsOpen(DataSet: TDataSet): boolean; virtual;
    function  dmDsPost(DataSet: TDataSet): boolean; virtual;
    procedure dmDsRefresh(DataSet: TDataSet); virtual;
    function  dmExecStoredProc(ASp: TOraStoredProc): boolean; virtual;

    procedure dmOpenAll; virtual;
    function  dmPostAll: boolean; virtual;
    procedure dmCloseAll; virtual;

    function  getCodValKey: String;

    procedure SetKeyValues;
    procedure SetMasterParams;

    property hdmState : TdmState read FhdmState write FhdmState;
  published
    property hDataSet        : TDataSet     read FhDataSet        write FhDataSet;
    property hdmType         : TdmType      read FhdmType         write FhdmType default hdmRead;
    property hKeyFields      : TStringList  read FhKeyFields      write SethKeyFields;
    property hKeyValues      : TStringList  read FhKeyValues      write SethKeyValues;
    property hTipAttNum      : TdmTipAttNum read FhTipAttNum      write FhTipAttNum default hPrgAut;
  end;

var
  dmCore: TdmCore;

implementation

uses
  Dialogs;

constructor TdmCore.Create(Owner: TComponent);
begin
  FhKeyFields := TStringList.Create;
  FhKeyValues := TStringList.Create;
  FhdmState   := hdmView;
  inherited Create(Owner);
  SetDataSetsMethods;
end;

destructor TdmCore.Destroy;
begin
  FhKeyValues.Free;
  FhKeyFields.Free;
  inherited Destroy;
end;

procedure TdmCore.dmAfterInsert(DataSet: TDataSet);
begin
// do nothing
end;

procedure TdmCore.dmAfterOpen(DataSet: TDataSet);
begin
// do nothing
end;

procedure TdmCore.dmAfterPost(DataSet: TDataSet);
begin
// do nothing
end;

procedure TdmCore.dmBeforeInsert(DataSet: TDataSet);
begin
// do nothing
end;

procedure TdmCore.dmBeforeOpen(DataSet: TDataSet);
begin
// do nothing
end;

procedure TdmCore.dmBeforePost(DataSet: TDataSet);
begin
  if Assigned(DataSet.FindField('Des_Pdl')) then
    DataSet.FieldByName('Des_Pdl').AsString := GetMachineName;
  if Assigned(DataSet.FindField('Dat_Agg_Rec')) then
    DataSet.FieldByName('Dat_Agg_Rec').AsDateTime := Now;
end;

function TdmCore.dmDsApplyUpdates(DataSet: TClientDataSet): boolean;
begin
  try
    try
      DataSet.ApplyUpdates(-1);
    except
      Result := False;
    end;
  finally
    Result := True;
  end;
end;

procedure TdmCore.dmDsCancel(DataSet: TDataSet);
begin
  try
    DataSet.Cancel;
  except
  end;
end;

procedure TdmCore.dmDsClose(DataSet: TDataSet);
begin
  try
    DataSet.Close;
  except
  end;
end;

function TdmCore.dmDsDelete(DataSet: TDataSet): boolean;
begin
  try
    try
      DataSet.Delete;
    except
      on E : Exception do
      begin
        MessageDlg(E.Message, mtWarning, [mbOK], 0);
        Result := False;
      end;
    end;
  finally
    Result := True;
  end;
end;

function TdmCore.dmDsEdit(DataSet: TDataSet): boolean;
begin
  try
    try
      DataSet.Edit;
    except
      Result := False;
    end;
  finally
    Result := True;
  end;
end;

function TdmCore.dmDsInsert(DataSet: TDataSet): boolean;
begin
  try
    try
      DataSet.Insert;
    except
      Result := False;
    end;
  finally
    Result := True;
  end;
end;

function TdmCore.dmDsOpen(DataSet: TDataSet): boolean;
begin
  try
    try
      DataSet.Open;
    except
      on E:Exception do
      begin
        MessageDlg(E.Message, mtInformation, [mbOK], 0);
        Result := False;
      end;
    end;
  finally
    Result := True;
  end;
end;

function TdmCore.dmDsPost(DataSet: TDataSet): boolean;
begin
  try
    try
      DataSet.Post;
    except
      Result := False;
    end;
  finally
    Result := True;
  end;
end;

procedure TdmCore.dmDsRefresh(DataSet: TDataSet);
begin
  try
    try
      dmDsClose(DataSet);
    finally
      dmDsOpen(DataSet);
    end;
  except
  end;
end;

function TdmCore.dmExecStoredProc(ASp: TOraStoredProc): boolean;
begin
  Result := False;
  if ASp.StoredProcName <> '' then
  begin
    if Assigned(ASp.FindParam('iDes_Pdl')) then
      ASp.ParamByName('iDes_Pdl').AsString := GetMachineName;
    if Assigned(ASp.FindParam('iDat_Agg_Rec')) then
      ASp.ParamByName('iDat_Agg_Rec').AsDateTime := Now;
    try
      ASp.Execute;
    finally
      Result := True;
    end;
  end;
end;

function TdmCore.dmCheckValidateData: boolean;
begin
  Result := True;
end;

procedure TdmCore.dmCloseAll;
var
  i : integer;
begin
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TClientDataSet then
      dmDsClose(TClientDataSet(Components[i]));
end;

procedure TdmCore.dmOpenAll;
var
  i : integer;
begin
  if Assigned(hDataSet) then
    if dmDsOpen(hDataSet) then
    begin
      for i := 0 to ComponentCount - 1 do
      begin
        if (Components[i] is TClientDataSet) and
           (Components[i] <> hDataSet)       then
          if not dmDsOpen(TClientDataSet(Components[i])) then
          begin
            MessageDlg(stDsError+TClientDataSet(Components[i]).Name, mtError, [mbOK], 0);
            Break;
          end;
      end;
    end;
  if Assigned(hDataSet) then
    hDataSet.First;
end;

function TdmCore.dmPostAll: boolean;
var
  i : integer;
begin
  if dmDsPost(hDataSet) then
  begin
    if dmDsApplyUpdates(TClientDataSet(hDataSet)) then
    begin
      Result := True;
      for i := 0 to ComponentCount - 1 do
        if (Components[i] is TClientDataSet) and
           (Components[i] <> hDataSet)       then
        begin
          Result := dmDsApplyUpdates(TClientDataSet(Components[i]));
          if not Result then
            Break;
        end;
    end
    else
      Result := False;
  end
  else
    Result := False;
end;

procedure TdmCore.SetDataSetsMethods;
var
  i : integer;
begin
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TDataSet then
    begin
      TDataSet(Components[i]).AfterInsert   := dmAfterInsert;
      TDataSet(Components[i]).AfterOpen     := dmAfterOpen;
      TDataSet(Components[i]).AfterPost     := dmAfterPost;
      TDataSet(Components[i]).BeforeInsert  := dmBeforeInsert;
      TDataSet(Components[i]).BeforeOpen    := dmBeforeOpen;
      TDataSet(Components[i]).BeforePost    := dmBeforePost;
      TDataSet(Components[i]).FilterOptions := [foCaseInsensitive];
    end;
end;

procedure TdmCore.SethKeyFields(const Value: TStringList);
begin
  if Assigned(Value) then
    FhKeyFields.Assign(Value);
end;

procedure TdmCore.SethKeyValues(const Value: TStringList);
begin
  if Assigned(Value) then
    FhKeyValues.Assign(Value);
end;

procedure TdmCore.SetKeyValues;
var
  i : integer;
begin
  Self.hKeyValues.Clear;
  for i := 0 to Self.hKeyFields.Count - 1 do
    if not Self.hDataSet.FieldByName(Self.hKeyFields[i]).IsNull then
      Self.hKeyValues.Append(VarToStr(Self.hDataSet.FieldByName(Self.hKeyFields[i]).Value))
    else
      Self.hKeyValues.Append('');
end;

function TdmCore.getCodValKey: String;
var
  i : integer;
  AppKey: String;
begin
  AppKey := '';
  for i := 0 to hKeyValues.Count - 1 do
    AppKey := AppKey + hKeyValues[i];
  Result := AppKey;
end;

procedure TdmCore.SetMasterParams;
var
  i : integer;
  OraQuery : TOraQuery;
begin
  if Assigned(hDataSet) then
  begin
    if hDataSet is TClientDataSet then
      OraQuery := TOraQuery(GetDataSetFromClientDataSet(TClientDataSet(hDataSet)))
    else
      OraQuery := TOraQuery(hDataSet);
    for i := 0 to hKeyValues.Count - 1 do
      if Assigned(OraQuery.FindParam(hKeyFields[i])) then
        OraQuery.ParamByName(hKeyFields[i]).Value := hKeyValues[i];
  end;
end;

end.

