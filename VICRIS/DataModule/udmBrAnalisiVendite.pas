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
    qyAnalisiVenditeFLAG_VICRIS: TStringField;
    qyAnalisiVenditeDES_VICRIS: TStringField;
    qyAnalisiVenditePREZZO_ACQUISTO: TFloatField;
    qyAnalisiVenditeGUADAGNO: TFloatField;
    qyAnalisiVenditeID_VENDITA: TFloatField;
    procedure FiltersDataChange(Sender: TObject; Field: TField);
  private
    FhDataFin: TDateTime;
    FhDataIni: TDateTime;
    FhPrezzoFin: double;
    FhPrezzoIni: double;
    FhFlagVicris: integer;
    FhFlagAtvMan: integer;
    FhFlagAtvCli: integer;
    FhFlagAtvSub: integer;
    FhAcquistoFin: double;
    FhAcquistoIni: double;
    { Private declarations }
  public
    { Public declarations }
    procedure dmDoFilter;
    property hDataIni    : TDateTime read FhDataIni     write FhDataIni;
    property hDataFin    : TDateTime read FhDataFin     write FhDataFin;
    property hPrezzoIni  : double    read FhPrezzoIni   write FhPrezzoIni;
    property hPrezzoFin  : double    read FhPrezzoFin   write FhPrezzoFin;
    property hAcquistoIni: double    read FhAcquistoIni write FhAcquistoIni;
    property hAcquistoFin: double    read FhAcquistoFin write FhAcquistoFin;
    property hFlagVicris : integer   read FhFlagVicris  write FhFlagVicris;
    property hFlagAtvCli : integer   read FhFlagAtvCli  write FhFlagAtvCli;
    property hFlagAtvMan : integer   read FhFlagAtvMan  write FhFlagAtvMan;
    property hFlagAtvSub : integer   read FhFlagAtvSub  write FhFlagAtvSub;
  end;

var
  dmBrAnalisiVendite: TdmBrAnalisiVendite;

implementation

{$R *.dfm}

{ TdmBrAnalisiVendite }

procedure TdmBrAnalisiVendite.dmDoFilter;
begin
  qyAnalisiVendite.ParamByName('Data_Inizio').AsDate     := hDataIni;
  qyAnalisiVendite.ParamByName('Data_Fine').AsDate       := hDataFin;
  qyAnalisiVendite.ParamByName('Prezzo_Inizio').AsFloat  := hPrezzoIni;
  qyAnalisiVendite.ParamByName('Prezzo_Fine').AsFloat    := hPrezzoFin;
  qyAnalisiVendite.ParamByName('Acquisto_Inizio').AsFloat:= hAcquistoIni;
  qyAnalisiVendite.ParamByName('Acquisto_Fine').AsFloat  := hAcquistoFin;

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

  qyAnalisiVendite.ParamByName('Flag_Vicris_Ini').AsString := '0';
  qyAnalisiVendite.ParamByName('Flag_Vicris_Fin').AsString := '1';
  if FhFlagVicris <> 2 then
  begin
    qyAnalisiVendite.ParamByName('Flag_Vicris_Ini').AsString := IntToStr(FhFlagVicris);
    qyAnalisiVendite.ParamByName('Flag_Vicris_Fin').AsString := IntToStr(FhFlagVicris);
  end;

  qyAnalisiVendite.ParamByName('Flag_Active_Cli_Ini').AsString := '0';
  qyAnalisiVendite.ParamByName('Flag_Active_Cli_Fin').AsString := '1';
  if FhFlagAtvCli <> 2 then
  begin
    qyAnalisiVendite.ParamByName('Flag_Active_Cli_Ini').AsString := IntToStr(FhFlagAtvCli);
    qyAnalisiVendite.ParamByName('Flag_Active_Cli_Fin').AsString := IntToStr(FhFlagAtvCli);
  end;

  qyAnalisiVendite.ParamByName('Flag_Active_Man_Ini').AsString := '0';
  qyAnalisiVendite.ParamByName('Flag_Active_Man_Fin').AsString := '1';
  if FhFlagAtvMan <> 2 then
  begin
    qyAnalisiVendite.ParamByName('Flag_Active_Man_Ini').AsString := IntToStr(FhFlagAtvMan);
    qyAnalisiVendite.ParamByName('Flag_Active_Man_Fin').AsString := IntToStr(FhFlagAtvMan);
  end;

  qyAnalisiVendite.ParamByName('Flag_Active_Sub_Ini').AsString := '0';
  qyAnalisiVendite.ParamByName('Flag_Active_Sub_Fin').AsString := '1';
  if FhFlagAtvSub <> 2 then
  begin
    qyAnalisiVendite.ParamByName('Flag_Active_Sub_Ini').AsString := IntToStr(FhFlagAtvSub);
    qyAnalisiVendite.ParamByName('Flag_Active_Sub_Fin').AsString := IntToStr(FhFlagAtvSub);
  end;

  dmDsRefresh(qyAnalisiVendite);
end;

procedure TdmBrAnalisiVendite.FiltersDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  dmDoFilter;
end;

end.
