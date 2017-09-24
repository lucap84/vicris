unit uEdProdotto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Menus,
  ActnList, StdCtrls, Buttons, ExtCtrls,
  udmEdProdotto, udmSearch, Mask, DBCtrls, DBSearch, TXComp;

type
  TfmEdProdotto = class(TfmEdit)
    laNote: TLabel;
    deNote: TDBMemo;
    laProdotto: TLabel;
    deProdotto: TDBEdit;
    laUnitaMisura: TLabel;
    deUnitaMisura: TDBEdit;
    deMandante: TDBSearch;
    laMandante: TLabel;
    deCategoria: TDBSearch;
    laCategoria: TLabel;
    deSubmandante: TDBSearch;
    laSubMandante: TLabel;
    deDesMandante: TEdit;
    deDesCategoria: TEdit;
    deDesSubmandante: TEdit;
    ckFlagActive: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdProdotto: TfmEdProdotto;

implementation

{$R *.dfm}

procedure TfmEdProdotto.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdProdotto;
end;

procedure TfmEdProdotto.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdProdotto := nil;
end;

end.
