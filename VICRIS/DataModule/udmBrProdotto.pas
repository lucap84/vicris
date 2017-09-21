unit udmBrProdotto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrProdotto = class(TdmBrowse)
    qyProdotto: TOraQuery;
    dsProdotto: TDataSource;
    qyProdottoID_PRODOTTO: TFloatField;
    qyProdottoPRODOTTO: TStringField;
    qyProdottoID_MANDANTE: TFloatField;
    qyProdottoID_CATEGORIA: TFloatField;
    qyProdottoNOTE: TStringField;
    qyProdottoCOD_USR: TStringField;
    qyProdottoDES_PDL: TStringField;
    qyProdottoDAT_AGG_REC: TDateTimeField;
    qyProdottoMANDANTE: TStringField;
    qyProdottoCATEGORIA: TStringField;
    qyProdottoUNITA_MISURA: TStringField;
    qyProdottoID_SUBMANDANTE: TFloatField;
    qyProdottoSUBMANDANTE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrProdotto: TdmBrProdotto;

implementation

{$R *.dfm}

end.
