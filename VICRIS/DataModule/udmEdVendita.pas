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
    qyMovimenti: TOraQuery;
    poMovimenti: TDataSetProvider;
    cdsMovimenti: TClientDataSet;
    dsMovimenti: TDataSource;
    cdsVenditaID_VENDITA: TFloatField;
    cdsVenditaDATA_VENDITA: TDateTimeField;
    cdsVenditaID_CLIENTE: TFloatField;
    cdsVenditaDATA_FATTURA: TDateTimeField;
    cdsVenditaNUMERO_FATTURA: TStringField;
    cdsVenditaNOTE: TStringField;
    cdsVenditaCOD_USR: TStringField;
    cdsVenditaDES_PDL: TStringField;
    cdsVenditaDAT_AGG_REC: TDateTimeField;
    qyMovimentiID_VENDITA: TFloatField;
    qyMovimentiID_MOVIMENTO: TFloatField;
    qyMovimentiID_PRODOTTO: TFloatField;
    qyMovimentiPREZZO_VENDITA: TFloatField;
    qyMovimentiQUANTITA: TFloatField;
    qyMovimentiSCONTO: TFloatField;
    qyMovimentiIMPORTO_TOTALE: TFloatField;
    qyMovimentiPREZZO_ACQUISTO: TFloatField;
    qyMovimentiCOD_USR: TStringField;
    qyMovimentiDES_PDL: TStringField;
    qyMovimentiDAT_AGG_REC: TDateTimeField;
    qyMovimentiPRODOTTO: TStringField;
    cdsMovimentiID_VENDITA: TFloatField;
    cdsMovimentiID_MOVIMENTO: TFloatField;
    cdsMovimentiID_PRODOTTO: TFloatField;
    cdsMovimentiPREZZO_VENDITA: TFloatField;
    cdsMovimentiQUANTITA: TFloatField;
    cdsMovimentiSCONTO: TFloatField;
    cdsMovimentiIMPORTO_TOTALE: TFloatField;
    cdsMovimentiPREZZO_ACQUISTO: TFloatField;
    cdsMovimentiCOD_USR: TStringField;
    cdsMovimentiDES_PDL: TStringField;
    cdsMovimentiDAT_AGG_REC: TDateTimeField;
    cdsMovimentiPRODOTTO: TStringField;
    cdsVenditaFLAG_VICRIS: TStringField;
    qyMovimentiNUMERO_FATTURA: TStringField;
    qyMovimentiDATA_FATTURA: TDateTimeField;
    qyMovimentiNUMERO_BOLLA: TStringField;
    qyMovimentiDATA_BOLLA: TDateTimeField;
    cdsMovimentiNUMERO_FATTURA: TStringField;
    cdsMovimentiDATA_FATTURA: TDateTimeField;
    cdsMovimentiNUMERO_BOLLA: TStringField;
    cdsMovimentiDATA_BOLLA: TDateTimeField;
    procedure cdsMovimentiPREZZO_VENDITAChange(Sender: TField);
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
    cdsMovimentiID_MOVIMENTO.AsInteger := dmGlobal.GetNpaDet;
end;

procedure TdmEdVendita.dmCalcTot;
var
  AQta, AImpUnt, ASco, ATot: double;
begin
  AQta    := cdsMovimentiQUANTITA.AsFloat;
  AImpUnt := cdsMovimentiPREZZO_VENDITA.AsFloat;
  ASco    := cdsMovimentiSCONTO.AsFloat;
  ATot := (AQta * AImpUnt) * ((100 - ASco)/100);
  cdsMovimentiIMPORTO_TOTALE.AsFloat := ATot;
end;

procedure TdmEdVendita.cdsMovimentiPREZZO_VENDITAChange(Sender: TField);
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
