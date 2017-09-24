unit udmBrAnalisiVendite;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrAnalisiVendite = class(TdmBrowse)
    qyAnalisiVendite: TOraQuery;
    dsAnalisiVendite: TDataSource;
    qyAnalisiVenditeDATA_VENDITA: TDateTimeField;
    qyAnalisiVenditeNOME: TStringField;
    qyAnalisiVenditePRODOTTO: TStringField;
    qyAnalisiVenditeQUANTITA: TFloatField;
    qyAnalisiVenditePREZZO_VENDITA: TFloatField;
    qyAnalisiVenditeSCONTO: TFloatField;
    qyAnalisiVenditeMANDANTE: TStringField;
    qyAnalisiVenditeSUBMANDANTE: TStringField;
    qyAnalisiVenditePROVINCIA: TStringField;
    qyAnalisiVenditeLOCALITA: TStringField;
    qyAnalisiVenditeCATEGORIA: TStringField;
    qyAnalisiVenditeIMPORTO_TOTALE: TFloatField;
    qyMandanti: TOraQuery;
    qySubmandanti: TOraQuery;
    qyClienti: TOraQuery;
    qyMandantiID_MANDANTE: TFloatField;
    qyMandantiMANDANTE: TStringField;
    qySubmandantiID_SUBMANDANTE: TFloatField;
    qySubmandantiSUBMANDANTE: TStringField;
    qyClientiID_CLIENTE: TFloatField;
    qyClientiNOME: TStringField;
    dsMandanti: TDataSource;
    dsClienti: TDataSource;
    dsSubmandanti: TDataSource;
    qyCategoria: TOraQuery;
    qyCategoriaID_CATEGORIA: TFloatField;
    qyCategoriaCATEGORIA: TStringField;
    qyCategoriaORD: TFloatField;
    dsCategoria: TDataSource;
    procedure FiltersDataChange(Sender: TObject; Field: TField);
  private
    FhDataFin: TDateTime;
    FhDataIni: TDateTime;
    FhPrezzoFin: double;
    FhPrezzoIni: double;
    { Private declarations }
  public
    { Public declarations }
    procedure dmDoFilter;
    property hDataIni : TDateTime read FhDataIni write FhDataIni;
    property hDataFin : TDateTime read FhDataFin write FhDataFin;
    property hPrezzoIni : double read FhPrezzoIni write FhPrezzoIni;
    property hPrezzoFin : double read FhPrezzoFin write FhPrezzoFin;
  end;

var
  dmBrAnalisiVendite: TdmBrAnalisiVendite;

implementation

{$R *.dfm}

{ TdmBrAnalisiVendite }

procedure TdmBrAnalisiVendite.dmDoFilter;
begin
  qyAnalisiVendite.ParamByName('Data_Inizio').AsDate := hDataIni;
  qyAnalisiVendite.ParamByName('Data_Fine').AsDate   := hDataFin;
  qyAnalisiVendite.ParamByName('Prezzo_Inizio').AsFloat  := hPrezzoIni;
  qyAnalisiVendite.ParamByName('Prezzo_Fine').AsFloat    := hPrezzoFin;

  qyAnalisiVendite.ParamByName('Id_Cliente').Clear;
  if (qyClientiID_CLIENTE.AsInteger <> -1)         then
    qyAnalisiVendite.ParamByName('Id_Cliente').AsInteger     := qyClientiID_CLIENTE.AsInteger;

  qyAnalisiVendite.ParamByName('Id_Mandante').Clear;
  if (qyMandantiID_MANDANTE.AsInteger <> -1)         then
    qyAnalisiVendite.ParamByName('Id_Mandante').AsInteger    := qyMandantiID_MANDANTE.AsInteger;

  qyAnalisiVendite.ParamByName('Id_Submandante').Clear;
  if (qySubmandantiID_SUBMANDANTE.AsInteger <> -1)         then
    qyAnalisiVendite.ParamByName('Id_Submandante').AsInteger := qySubmandantiID_SUBMANDANTE.AsInteger;

  qyAnalisiVendite.ParamByName('Id_Categoria').Clear;
  if (qyCategoriaID_CATEGORIA.AsInteger <> -1)         then
    qyAnalisiVendite.ParamByName('Id_Categoria').AsInteger := qyCategoriaID_CATEGORIA.AsInteger;

  dmDsRefresh(qyAnalisiVendite);
end;

procedure TdmBrAnalisiVendite.FiltersDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  dmDoFilter;
end;

end.
