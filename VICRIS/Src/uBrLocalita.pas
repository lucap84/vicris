unit uBrLocalita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppDBBDE, ActnList, Grids, DBGrids, DBGridAux, StdCtrls,
  Buttons, ExtCtrls,
  udmBrLocalita, udmEdLocalita, uEdLocalita;

type
  TfmBrLocalita = class(TfmBrowse)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrLocalita: TfmBrLocalita;

implementation

{$R *.dfm}

procedure TfmBrLocalita.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrLocalita;
  hEditDataModuleClass := TdmEdLocalita;
  hEditFormClass       := TfmEdLocalita;
end;

procedure TfmBrLocalita.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrLocalita := nil;
end;

end.
