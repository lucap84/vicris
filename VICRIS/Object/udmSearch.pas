unit udmSearch;

interface

uses
  SysUtils, Classes, DB, DBAccess, Ora, Controls, StdCtrls, DBCtrls, MemDS,
  uMlSearch, Variants, uGlobals;

type
  TdmSearch = class(TDataModule)
    OraSearch: TOraSession;
    qyAut: TOraQuery;
    qyAutCOD_AUT: TStringField;
    qyAutDES_COG: TStringField;
    qyAutDES_NTE: TStringField;
    qyNaz: TOraQuery;
    qyNazCOD_NAZ: TStringField;
    qyCta: TOraQuery;
    qyCtaCOD_CTA: TStringField;
    qyCtaDES_NAZ: TStringField;
    qyCtaCOD_NAZ: TStringField;
    qyCtaDESCRIZIONE: TStringField;
    qyNazDESCRIZIONE: TStringField;
    qyAutDES_NOM: TStringField;
    qyAutDESCRIZIONE: TStringField;
    qyCed: TOraQuery;
    qyCedCOD_CED: TStringField;
    qyCedDESCRIZIONE: TStringField;
    qyCedCOD_NAZ: TStringField;
    qyCedDES_NAZ: TStringField;
    qyCedCOD_CTA: TStringField;
    qyCedDES_CTA: TStringField;
    qyClz: TOraQuery;
    qyClzCOD_CLZ: TStringField;
    qyClzDESCRIZIONE: TStringField;
    qyOgg: TOraQuery;
    qyOggCOD_OGG: TStringField;
    qyOggCOD_CDU: TStringField;
    qyOggDES_OGG: TStringField;
    qyOggDESCRIZIONE: TStringField;
    qyPmr: TOraQuery;
    qyPmrCOD_PMR: TStringField;
    qyPmrDESCRIZIONE: TStringField;
    qyInc: TOraQuery;
    qyIncCOD_INC: TStringField;
    qyIncDESCRIZIONE: TStringField;
    qyPer: TOraQuery;
    qyPerDES_NOM: TStringField;
    qyPerDES_COG: TStringField;
    qyPerDESCRIZIONE: TStringField;
    qyRol: TOraQuery;
    qyRolNPA_ROL: TFloatField;
    qyRolDES_PMR: TStringField;
    qyRolDES_INC: TStringField;
    qyRolDES_PER: TStringField;
    qyRolDAT_INI: TDateTimeField;
    qyRolDAT_FIN: TDateTimeField;
    qyRolDESCRIZIONE: TStringField;
    qyRolCOD_PMR: TStringField;
    qyRolCOD_INC: TStringField;
    qyPerCOD_AUT: TStringField;
    qyRolCOD_AUT: TStringField;
    qyUbi: TOraQuery;
    qyUbiCOD_UBI: TStringField;
    qyUbiDESCRIZIONE: TStringField;
    qyOggCOD_UBI: TStringField;
    qyOggDES_UBI: TStringField;
    qyEvt: TOraQuery;
    qyEvtCOD_EVT: TStringField;
    qyEvtDESCRIZIONE: TStringField;
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
  uEdNazione, uEdCitta, uEdPromotore, uEdUbi,
  //Biblioteca
  uEdEditrice, uEdAutore, uEdCollezione, uEdOggetto,
  //Protocollo
  uEdIncarico, uEdPersona, uEdRuolo;

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
            1000 : FhEditFormClass := TfmEdAutore;
            1001 : FhEditFormClass := TfmEdNazione;
            1002 : FhEditFormClass := TfmEdCitta;
            1003 : FhEditFormClass := TfmEdEditrice;
            1004 : FhEditFormClass := TfmEdCollezione;
            1005 : FhEditFormClass := TfmEdOggetto;
            1006 : FhEditFormClass := TfmEdPromotore;
            1007 : FhEditFormClass := TfmEdIncarico;
            1008 : FhEditFormClass := TfmEdPersona;
            1009 : FhEditFormClass := TfmEdRuolo;
            1010 : FhEditFormClass := TfmEdUbi;
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
    1000 : Result := dmSearch('Autori',        qyAut, 'cod_aut', AOp, ATag);
    1001 : Result := dmSearch('Nazioni',       qyNaz, 'cod_naz', AOp, ATag);
    1002 : Result := dmSearch('Città',         qyCta, 'cod_cta;cod_naz', AOp, ATag);
    1003 : Result := dmSearch('Case Editrici', qyCed, 'cod_ced;cod_naz;cod_cta', AOp, ATag);
    1004 : Result := dmSearch('Collezioni',    qyClz, 'cod_clz', AOp, ATag);
    1005 : Result := dmSearch('C.D.U.',        qyOgg, 'cod_ogg;cod_ubi', AOp, ATag);
    1006 : Result := dmSearch('Istituzioni',   qyPmr, 'cod_pmr', AOp, ATag);
    1007 : Result := dmSearch('Incarichi',     qyInc, 'cod_inc', AOp, ATag);
    1008 : Result := dmSearch('Persone',       qyPer, 'cod_aut', AOp, ATag);
    1009 : Result := dmSearch('Ruoli',         qyRol, 'cod_rol;cod_pmr;cod_inc;cod_aut', AOp, ATag);
    1010 : Result := dmSearch('Ubicazioni',    qyUbi, 'cod_ubi', AOp, ATag);
    1011 : Result := dmSearch('Eventi',        qyEvt, 'cod_evt', AOp, ATag);
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
  if Assigned(AQy.FindField('Descrizione')) then
    Result := AQy.FieldByName('Descrizione').AsString;
end;

end.
