unit uEdLocalita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Menus,
  ActnList, StdCtrls, Buttons, ExtCtrls,
  udmEdLocalita, Mask, DBCtrls, ComCtrls, TXComp;

type
  TfmEdLocalita = class(TfmEdit)
    pcLocalita: TPageControl;
    teLocalita: TTabSheet;
    laNome: TLabel;
    deLocalita: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdLocalita: TfmEdLocalita;

implementation

{$R *.dfm}

procedure TfmEdLocalita.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdLocalita;
end;

procedure TfmEdLocalita.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdLocalita := nil;
end;

end.
