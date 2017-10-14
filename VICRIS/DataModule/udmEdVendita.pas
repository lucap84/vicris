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
    cdsMovimentiguadagno: TFloatField;
    qyMovimentiIVA: TFloatField;
    qyMovimentiIMPOSTA: TFloatField;
    qyMovimentiTOTALE_IVATO: TFloatField;
    cdsMovimentiIVA: TFloatField;
    cdsMovimentiIMPOSTA: TFloatField;
    cdsMovimentiTOTALE_IVATO: TFloatField;
    qyVenditaID_VENDITA: TFloatField;
    qyVenditaDATA_VENDITA: TDateTimeField;
    qyVenditaID_CLIENTE: TFloatField;
    qyVenditaNUMERO_FATTURA: TStringField;
    qyVenditaDATA_FATTURA: TDateTimeField;
    qyVenditaNOTE: TStringField;
    qyVenditaFLAG_VICRIS: TStringField;
    qyVenditaCOD_USR: TStringField;
    qyVenditaDES_PDL: TStringField;
    qyVenditaDAT_AGG_REC: TDateTimeField;
    qyTotVendita: TOraQuery;
    qyTotVenditaIMPORTO_TOTALE: TFloatField;
    qyTotVenditaIMPOSTA: TFloatField;
    qyTotVenditaTOTALE_IVATO: TFloatField;
    dsTotVendita: TDataSource;
    procedure cdsMovimentiPREZZO_VENDITAChange(Sender: TField);
    procedure cdsMovimentiQUANTITAChange(Sender: TField);
    procedure cdsMovimentiSCONTOChange(Sender: TField);
    procedure poMovimentiGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsMovimentiPREZZO_ACQUISTOChange(Sender: TField);
    procedure cdsMovimentiCalcFields(DataSet: TDataSet);
    procedure cdsMovimentiIVAChange(Sender: TField);
  private
    { Private declarations }
  protected
    procedure dmCalcTot(IsTotale: boolean = True);
    procedure dmAfterInsert(DataSet: TDataSet); override;
    procedure dmBeforeOpen(DataSet: TDataSet); override;
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
  begin
    cdsVenditaFLAG_VICRIS.AsString    := '1';
    cdsVenditaDATA_VENDITA.AsDateTime := Date;
  end;

  if DataSet = cdsMovimenti then
  begin
    cdsMovimentiID_MOVIMENTO.AsInteger  := dmGlobal.GetNpaDet;
    cdsMovimentiIVA.AsFloat             := dmGlobal.GetParametri('PER_IVA');
  end;
end;

procedure TdmEdVendita.dmCalcTot(IsTotale: boolean = True);
var
  AQta, AImpUnt, ASco, ATot, ACosto: double;
begin
  AQta    := cdsMovimentiQUANTITA.AsFloat;
  ACosto  := cdsMovimentiPREZZO_ACQUISTO.AsFloat * AQta;
  AImpUnt := cdsMovimentiPREZZO_VENDITA.AsFloat;
  ASco    := cdsMovimentiSCONTO.AsFloat;
  ATot := (AQta * AImpUnt) * ((100 - ASco)/100);
  if IsTotale then
  begin
    cdsMovimentiIMPORTO_TOTALE.AsFloat := ATot;
    cdsMovimentiIMPOSTA.AsFloat        := ATot * (cdsMovimentiIVA.AsFloat/100);
    cdsMovimentiTOTALE_IVATO.AsFloat   := ATot + cdsMovimentiIMPOSTA.AsFloat;
  end;
  if ACosto <> 0 then
    cdsMovimentiguadagno.AsFloat := ((ATot / ACosto) *  100) - 100
  else
    cdsMovimentiguadagno.AsFloat := 100;
end;

procedure TdmEdVendita.cdsMovimentiCalcFields(DataSet: TDataSet);
begin
  dmCalcTot(False);
end;

procedure TdmEdVendita.cdsMovimentiPREZZO_VENDITAChange(Sender: TField);
begin
  inherited;
  dmCalcTot;
end;

procedure TdmEdVendita.cdsMovimentiPREZZO_ACQUISTOChange(Sender: TField);
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

procedure TdmEdVendita.cdsMovimentiIVAChange(Sender: TField);
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

procedure TdmEdVendita.dmBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if DataSet = qyTotVendita then
    qyTotVendita.ParamByName('Id_Vendita').AsInteger := cdsVenditaID_VENDITA.AsInteger;
end;

end.
