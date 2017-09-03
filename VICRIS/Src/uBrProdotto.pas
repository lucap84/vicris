unit uBrProdotto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ActnList, Grids, DBGrids, DBGridAux, StdCtrls, Buttons, ExtCtrls,
  udmBrProdotto,
  udmEdProdotto, uEdProdotto;

type
  TfmBrProdotto = class(TfmBrowse)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrProdotto: TfmBrProdotto;

implementation

{$R *.dfm}

procedure TfmBrProdotto.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrProdotto;
  hEditDataModuleClass := TdmEdProdotto;
  hEditFormClass       := TfmEdProdotto;
end;

procedure TfmBrProdotto.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrProdotto := nil;
end;

end.
