unit udmSearch;

interface

uses
  SysUtils, Classes, DB, DBAccess, Ora, Controls, StdCtrls, DBCtrls, MemDS,
  uMlSearch, Variants, uGlobals;

type
  TdmSearch = class(TDataModule)
    OraSearch: TOraSession;
    qyCli: TOraQuery;
    qyCliID_CLIENTE: TFloatField;
    qyCliNOME: TStringField;
    qyCliREFERENTE: TStringField;
    qyCliINDIRIZZO: TStringField;
    qyCliCITTA: TStringField;
    qyCliDESCRIZIONE: TStringField;
    qyMan: TOraQuery;
    qyManID_MANDANTE: TFloatField;
    qyManMANDANTE: TStringField;
    qyManINDIRIZZO: TStringField;
    qyManCITTA: TStringField;
    qyManDESCRIZIONE: TStringField;
    qyLoc: TOraQuery;
    qyLocID_LOCALITA: TFloatField;
    qyLocLOCALITA: TStringField;
    qyLocDESCRIZIONE: TStringField;
    qyCatPro: TOraQuery;
    qyCatProID_CATEGORIA: TFloatField;
    qyCatProCATEGORIA: TStringField;
    qyCatProDESCRIZIONE: TStringField;
    qyPro: TOraQuery;
    qySubMan: TOraQuery;
    qySubManID_SUBMANDANTE: TFloatField;
    qySubManSUBMANDANTE: TStringField;
    qySubManDESCRIZIONE: TStringField;
    qyPrn: TOraQuery;
    qyPrnID_PROVINCIA: TFloatField;
    qyPrnPROVINCIA: TStringField;
    qyPrnDESCRIZIONE: TStringField;
    qyProID_PRODOTTO: TFloatField;
    qyProPRODOTTO: TStringField;
    qyProUNITA_MISURA: TStringField;
    qyProNOTE: TStringField;
    qyProMANDANTE: TStringField;
    qyProCATEGORIA: TStringField;
    qyProSUBMANDANTE: TStringField;
    qyProDESCRIZIONE: TStringField;
    procedure dmSearchCreate(Sender: TObject);
  private
    { Private declarations }
    FhSearchResult: Variant;
    FhDesResult: Variant;
    FhDesKey: Variant;
    function dmSearch(const ACaption: string;  ADataSetSearch: TOraQuery; AFieldNames: string; AOp: String; ATag: integer): Variant;
  public
    { Public declarations }
    function  dmSearchValue(ATag: integer; AOp: String = 'S'): Variant;
    function  GetDes(AQy: TOraQuery): variant;
    function  dmConnect: boolean;
    procedure dmDisconnect;

    property hDesKey       : Variant read FhDesKey       write FhDesKey;

    property hSearchResult : Variant read FhSearchResult write FhSearchResult;
    property hDesResult    : Variant read FhDesResult    write FhDesResult;
  end;

var
  dmSearch: TdmSearch;

implementation

uses
  udmEdit, uEdit,
  //Generale
  uEdCliente, uEdMandante, uEdLocalita, uEdProvincia,
  //Magazzino
  uEdCatProdotto, uEdProdotto, uEdSubmandante;

{$R *.dfm}

{ TdmSearch }

function TdmSearch.dmConnect: boolean;
begin
  try
    try
      OraSearch.AutoCommit    := False;
      OraSearch.ConnectPrompt := False;
      OraSearch.HomeName      := '';
      OraSearch.UserName      := hDbsUsr;
      OraSearch.PassWord      := hDbsPwd;
      OraSearch.Schema        := OraSearch.UserName;
      OraSearch.Server        := hDbsNom;
      OraSearch.ConnectString := OraSearch.UserName+'/'+OraSearch.PassWord+'@'+OraSearch.Server;
      OraSearch.Connect;
    finally
      Result := True;
    end;
  except
    Result := False;
  end;
end;


procedure TdmSearch.dmDisconnect;
begin
  OraSearch.DisConnect;
end;

procedure TdmSearch.dmSearchCreate(Sender: TObject);
begin
  FhDesKey       := null;
  FhDesResult    := null;
  FhSearchResult := null;
end;

function TdmSearch.dmSearch(const ACaption: string;
  ADataSetSearch: TOraQuery; AFieldNames: string; AOp: String; ATag: integer): Variant;
var
  FhEditForm: TfmEdit;
  FhEditFormClass: TfmEditClass;
  SearchDlg: TfmMlSearch;
  i : Integer;
begin
  FhEditForm      := nil;
  FhEditFormClass := nil;
  Result          := Null;
  if AOp = 'S' then
  begin
    SearchDlg := TfmMlSearch.Create(Self);
    with SearchDlg do
    begin
      try
        Search(ACaption,  ADataSetSearch, AFieldNames, ATag);
        if ModalResult = mrOk then
        begin
          hSearchResult := hRes;
          Result := hSearchResult;
        end;
        if ModalResult = mrIgnore then
        begin
          case ATag of
            0:;
            1000 : FhEditFormClass := TfmEdCliente;
            1001 : FhEditFormClass := TfmEdMandante;
            1002 : FhEditFormClass := TfmEdLocalita;
            1003 : FhEditFormClass := TfmEdCatProdotto;
            1004 : FhEditFormClass := TfmEdProdotto;
            1005 : FhEditFormClass := TfmEdSubmandante;
            1006 : FhEditFormClass := TfmEdProvincia;
          end;
          if (not Assigned(FhEditForm)) and
              Assigned(FhEditFormClass) then
          begin
            FhEditForm := FhEditFormClass.Create(nil);
            TdmEdit(FhEditForm.hDataModule).dmInsert;
          end;
        end;
      finally
        FreeAndNil(SearchDlg);
      end;
    end;
  end
  else
  begin
    hDesResult := GetDes(ADataSetSearch);
    hDesKey    := null;
    Result     := hDesResult;
  end;
  for i := 0 to ADataSetSearch.Params.Count - 1 do
    ADataSetSearch.Params[i].Value := unassigned;
end;

function TdmSearch.dmSearchValue(ATag: integer; AOp: String = 'S'): Variant;
begin
  Result := Null;
  case ATag of
    0:;
    1000 : Result := dmSearch('Clienti',            qyCli,    'id_cliente',     AOp, ATag);
    1001 : Result := dmSearch('Mandanti',           qyMan,    'id_mandante',    AOp, ATag);
    1002 : Result := dmSearch('Località',           qyLoc,    'id_localita',    AOp, ATag);
    1003 : Result := dmSearch('Categorie Prodotto', qyCatPro, 'id_categoria',   AOp, ATag);
    1004 : Result := dmSearch('Prodotti',           qyPro,    'id_prodotto',    AOp, ATag);
    1005 : Result := dmSearch('Submandanti',        qySubMan, 'id_submandante', AOp, ATag);
    1006 : Result := dmSearch('Province',           qyPrn,    'id_provincia',   AOp, ATag);
  end;
  if AOp = 'S' then
    hSearchResult := Result
  else
    hDesResult    := Result;
end;

function TdmSearch.GetDes(AQy: TOraQuery): variant;
var
  i : integer;
begin
  Result := null;
  AQy.Close;
  if not VarIsArray(hDesKey) then
    AQy.Params[0].Value := hDesKey
  else
  begin
    for i := 0 to AQy.Params.Count - 1 do
      AQy.Params[i].Value := hDesKey[i];
  end;

  AQy.Open;
  AQy.Filtered := False;
  if Assigned(AQy.FindField('Descrizione')) then
    Result := AQy.FieldByName('Descrizione').AsString;
end;

end.
