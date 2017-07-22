unit uBrIncarico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ActnList, Grids, DBGrids, CRGrid, StdCtrls, Buttons, ExtCtrls,
  udmBrIncarico,
  udmEdIncarico, uEdIncarico, DBGridAux;

type
  TfmBrIncarico = class(TfmBrowse)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrIncarico: TfmBrIncarico;

implementation

{$R *.dfm}

procedure TfmBrIncarico.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrIncarico;
  hEditDataModuleClass := TdmEdIncarico;
  hEditFormClass       := TfmEdIncarico;
end;

procedure TfmBrIncarico.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrIncarico := nil;
end;

end.
