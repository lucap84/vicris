unit uBrEvento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ActnList, Grids, DBGrids, DBGridAux, StdCtrls, Buttons, ExtCtrls,
  udmBrEvento,
  udmEdEvento, uEdEvento;

type
  TfmBrEvento = class(TfmBrowse)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrEvento: TfmBrEvento;

implementation

{$R *.dfm}

procedure TfmBrEvento.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrEvento;
  hEditDataModuleClass := TdmEdEvento;
  hEditFormClass       := TfmEdEvento;
end;

procedure TfmBrEvento.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrEvento := nil;
end;

end.
