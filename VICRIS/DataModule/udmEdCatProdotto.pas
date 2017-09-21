unit udmEdCatProdotto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBAccess, Ora, DBClient, Provider, MemDS;

type
  TdmEdCatProdotto = class(TdmEdit)
    qyCatProdotto: TOraQuery;
    poCatProdotto: TDataSetProvider;
    cdsCatProdotto: TClientDataSet;
    dsCatProdotto: TDataSource;
    cdsCatProdottoID_CATEGORIA: TFloatField;
    cdsCatProdottoCOD_USR: TStringField;
    cdsCatProdottoDES_PDL: TStringField;
    cdsCatProdottoDAT_AGG_REC: TDateTimeField;
    cdsCatProdottoCATEGORIA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmEdCatProdotto: TdmEdCatProdotto;

implementation

{$R *.dfm}

end.
