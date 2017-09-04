unit uBrVendita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ActnList, Grids, DBGrids, DBGridAux, StdCtrls, Buttons, ExtCtrls,
  udmBrVendita,
  udmEdVendita, uEdVendita;

type
  TfmBrVendita = class(TfmBrowse)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrVendita: TfmBrVendita;

implementation

{$R *.dfm}

procedure TfmBrVendita.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrVendita;
  hEditDataModuleClass := TdmEdVendita;
  hEditFormClass       := TfmEdVendita;
end;

procedure TfmBrVendita.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrVendita := nil;
end;

end.
