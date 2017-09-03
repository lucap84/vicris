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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmEdProdotto: TdmEdProdotto;

implementation

{$R *.dfm}

end.
