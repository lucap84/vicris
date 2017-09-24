unit udmEdProdotto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBAccess, Ora, MemDS, DBClient, Provider;

type
  TdmEdProdotto = class(TdmEdit)
    poProdotto: TDataSetProvider;
    cdsProdotto: TClientDataSet;
    dsProdotto: TDataSource;
    qyProdotto: TOraQuery;
    cdsProdottoID_PRODOTTO: TFloatField;
    cdsProdottoPRODOTTO: TStringField;
    cdsProdottoID_MANDANTE: TFloatField;
    cdsProdottoID_CATEGORIA: TFloatField;
    cdsProdottoUNITA_MISURA: TStringField;
    cdsProdottoNOTE: TStringField;
    cdsProdottoCOD_USR: TStringField;
    cdsProdottoDES_PDL: TStringField;
    cdsProdottoDAT_AGG_REC: TDateTimeField;
    cdsProdottoID_SUBMANDANTE: TFloatField;
    cdsProdottoFLAG_ACTIVE: TStringField;
  protected
    procedure dmAfterInsert(DataSet: TDataSet); override;
  end;

var
  dmEdProdotto: TdmEdProdotto;

implementation

{$R *.dfm}

{ TdmEdProdotto }

procedure TdmEdProdotto.dmAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet = cdsProdotto then
    cdsProdottoFLAG_ACTIVE.AsString := '1';
end;

end.
