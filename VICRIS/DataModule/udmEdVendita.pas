unit udmEdVendita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBAccess, Ora, DBClient, Provider, MemDS, udmGlobal;

type
  TdmEdVendita = class(TdmEdit)
    qyVendita: TOraQuery;
    poVendita: TDataSetProvider;
    cdsVendita: TClientDataSet;
    dsVendita: TDataSource;
    cdsVenditaID_VENDITA: TFloatField;
    cdsVenditaID_CLIENTE: TFloatField;
    cdsVenditaDATA_FATTURA: TDateTimeField;
    cdsVenditaNUMERO_FATTURA: TStringField;
    cdsVenditaNOTE: TStringField;
    cdsVenditaCOD_USR: TStringField;
    cdsVenditaDES_PDL: TStringField;
    cdsVenditaDAT_AGG_REC: TDateTimeField;
    qyMovimenti: TOraQuery;
    poMovimenti: TDataSetProvider;
    cdsMovimenti: TClientDataSet;
    dsMovimenti: TDataSource;
    cdsMovimentiID_VENDITA: TFloatField;
    cdsMovimentiID_PRODOTTO: TFloatField;
    cdsMovimentiQUANTITA: TFloatField;
    cdsMovimentiSCONTO: TFloatField;
    cdsMovimentiPREZZO_ACQUISTO: TFloatField;
    cdsMovimentiCOD_USR: TStringField;
    cdsMovimentiDES_PDL: TStringField;
    cdsMovimentiDAT_AGG_REC: TDateTimeField;
    qyMovimentiID_VENDITA: TFloatField;
    qyMovimentiID_PRODOTTO: TFloatField;
    qyMovimentiQUANTITA: TFloatField;
    qyMovimentiSCONTO: TFloatField;
    qyMovimentiPREZZO_ACQUISTO: TFloatField;
    qyMovimentiCOD_USR: TStringField;
    qyMovimentiDES_PDL: TStringField;
    qyMovimentiDAT_AGG_REC: TDateTimeField;
    qyMovimentiPRODOTTO: TStringField;
    cdsMovimentiPRODOTTO: TStringField;
    cdsVenditaDATA_VENDITA: TDateTimeField;
    qyMovimentiID_MOVIMENTO: TFloatField;
    qyMovimentiPREZZO_VENDITA: TFloatField;
    qyMovimentiIMPORTO_TOTALE: TFloatField;
    cdsMovimentiID_MOVIMENTO: TFloatField;
    cdsMovimentiPREZZO_VENDITA: TFloatField;
    cdsMovimentiIMPORTO_TOTALE: TFloatField;
    procedure cdsMovimentiPREZZOChange(Sender: TField);
    procedure cdsMovimentiQUANTITAChange(Sender: TField);
    procedure cdsMovimentiSCONTOChange(Sender: TField);
    procedure poMovimentiGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
  private
    { Private declarations }
  protected
    procedure dmCalcTot;
    procedure dmAfterInsert(DataSet: TDataSet); override;
  public
    { Public declarations }
  end;

var
  dmEdVendita: TdmEdVendita;

implementation

{$R *.dfm}

{ TdmEdVendita }

procedure TdmEdVendita.dmAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet = cdsVendita then
    cdsVenditaID_VENDITA.AsInteger := dmGlobal.GetNpaDet;

  if DataSet = cdsMovimenti then
    cdsMovimentiID_MOVIMENTI.AsInteger := dmGlobal.GetNpaDet;
end;

procedure TdmEdVendita.dmCalcTot;
var
  AQta, AImpUnt, ASco, ATot: double;
begin
  AQta    := cdsMovimentiQUANTITA.AsFloat;
  AImpUnt := cdsMovimentiPREZZO.AsFloat;
  ASco    := cdsMovimentiSCONTO.AsFloat;
  ATot := (AQta * AImpUnt) * ((100 - ASco)/100);
  cdsMovimentiIMPORTO.AsFloat := ATot;
end;

procedure TdmEdVendita.cdsMovimentiPREZZOChange(Sender: TField);
begin
  inherited;
  dmCalcTot;
end;

procedure TdmEdVendita.cdsMovimentiQUANTITAChange(Sender: TField);
begin
  inherited;
  dmCalcTot;
end;

procedure TdmEdVendita.cdsMovimentiSCONTOChange(Sender: TField);
begin
  inherited;
  dmCalcTot;
end;

procedure TdmEdVendita.poMovimentiGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  inherited;
  TableName := 'TB_MOVIMENTI';
end;

end.
