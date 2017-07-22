unit uBrRuolo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDBBDE, ActnList, Grids, DBGrids, CRGrid, StdCtrls, Buttons, ExtCtrls,
  udmBrRuolo,
  udmEdRuolo, uEdRuolo, DBGridAux;

type
  TfmBrRuolo = class(TfmBrowse)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrRuolo: TfmBrRuolo;

implementation

{$R *.dfm}

procedure TfmBrRuolo.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrRuolo;
  hEditDataModuleClass := TdmEdRuolo;
  hEditFormClass       := TfmEdRuolo;
end;

procedure TfmBrRuolo.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrRuolo := nil;
end;

end.
