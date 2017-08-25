unit uBrCatProdotto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ActnList, Grids, DBGrids, DBGridAux, StdCtrls, Buttons, ExtCtrls,
  udmBrCatProdotto, udmEdCatProdotto, uEdCatProdotto;

type
  TfmBrCatProdotto = class(TfmBrowse)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrCatProdotto: TfmBrCatProdotto;

implementation

{$R *.dfm}

procedure TfmBrCatProdotto.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrCatProdotto;
  hEditDataModuleClass := TdmEdCatProdotto;
  hEditFormClass       := TfmEdCatProdotto;
end;

procedure TfmBrCatProdotto.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrCatProdotto := nil;
end;

end.
