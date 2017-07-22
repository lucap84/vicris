unit uBrUsr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ActnList, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,
  udmBrUsr, udmEdUsr, uEdUsr, DBGridAux;

type
  TfmBrUsr = class(TfmBrowse)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrUsr: TfmBrUsr;

implementation

{$R *.dfm}

procedure TfmBrUsr.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrUsr;
  hEditDataModuleClass := TdmEdUsr;
  hEditFormClass       := TfmEdUsr;
end;

procedure TfmBrUsr.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrUsr := nil;
end;

end.
