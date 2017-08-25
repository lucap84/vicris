unit udmBrCatProdotto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrowse, DB, MemDS, DBAccess, Ora;

type
  TdmBrCatProdotto = class(TdmBrowse)
    dsCatProdotto: TDataSource;
    qyCatProdotto: TOraQuery;
    qyCatProdottoID_CATEGORIA: TFloatField;
    qyCatProdottoID_CATEGORIA_OLD: TFloatField;
    qyCatProdottoCATEGORIA: TStringField;
    qyCatProdottoCOD_USR: TStringField;
    qyCatProdottoDES_PDL: TStringField;
    qyCatProdottoDAT_AGG_REC: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBrCatProdotto: TdmBrCatProdotto;

implementation

{$R *.dfm}

end.
