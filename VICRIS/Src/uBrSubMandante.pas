unit uBrSubMandante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ActnList, Grids, DBGrids, DBGridAux, StdCtrls, Buttons, ExtCtrls,
  udmBrSubMandante,
  udmEdSubMandante, uEdSubMandante;

type
  TfmBrSubMandante = class(TfmBrowse)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrSubMandante: TfmBrSubMandante;

implementation

{$R *.dfm}

procedure TfmBrSubMandante.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrSubMandante;
  hEditDataModuleClass := TdmEdSubMandante;
  hEditFormClass       := TfmEdSubMandante;
end;

procedure TfmBrSubMandante.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrSubMandante := nil;
end;

end.
