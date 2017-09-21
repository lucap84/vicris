unit uEdCatProdotto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Menus,
  ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  udmEdCatProdotto, TXComp;

type
  TfmEdCatProdotto = class(TfmEdit)
    laCategoria: TLabel;
    deCategoria: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdCatProdotto: TfmEdCatProdotto;

implementation

{$R *.dfm}

procedure TfmEdCatProdotto.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdCatProdotto;
end;

procedure TfmEdCatProdotto.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdCatProdotto := nil;
end;

end.
