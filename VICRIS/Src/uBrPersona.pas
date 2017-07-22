unit uBrPersona;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ActnList, Grids, DBGrids, CRGrid, StdCtrls, Buttons, ExtCtrls,
  udmBrPersona,
  udmEdPersona, uEdPersona, DBGridAux;

type
  TfmBrPersona = class(TfmBrowse)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrPersona: TfmBrPersona;

implementation

{$R *.dfm}

procedure TfmBrPersona.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrPersona;
  hEditDataModuleClass := TdmEdPersona;
  hEditFormClass       := TfmEdPersona;
end;

procedure TfmBrPersona.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrPersona := nil;
end;

end.
