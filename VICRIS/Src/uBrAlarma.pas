unit uBrAlarma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ActnList, Grids, DBGrids, DBGridAux, StdCtrls, Buttons, ExtCtrls,
  udmBrAlarma,
  udmEdAlarma, uEdAlarma;

type
  TfmBrAlarma = class(TfmBrowse)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrAlarma: TfmBrAlarma;

implementation

{$R *.dfm}

procedure TfmBrAlarma.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrAlarma;
  hEditDataModuleClass := TdmEdAlarma;
  hEditFormClass       := TfmEdAlarma;
end;

procedure TfmBrAlarma.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrAlarma := nil;
end;

end.
