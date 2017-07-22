unit uBrApl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ActnList, Grids, DBGrids, CRGrid, StdCtrls, Buttons, ExtCtrls,
  udmBrApl,
  udmEdApl, uEdApl, DBGridAux;

type
  TfmBrApl = class(TfmBrowse)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrApl: TfmBrApl;

implementation

{$R *.dfm}

procedure TfmBrApl.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrApl;
  hEditDataModuleClass := TdmEdApl;
  hEditFormClass       := TfmEdApl;
end;

procedure TfmBrApl.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrApl := nil;
end;

end.
