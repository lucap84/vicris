unit uBrUbi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDBBDE, ActnList, Grids, DBGrids, DBGridAux, StdCtrls, Buttons, ExtCtrls,
  udmBrUbi,
  udmEdUbi, uEdUbi;

type
  TfmBrUbi = class(TfmBrowse)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrUbi: TfmBrUbi;

implementation

{$R *.dfm}

procedure TfmBrUbi.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrUbi;
  hEditDataModuleClass := TdmEdUbi;
  hEditFormClass       := TfmEdUbi;
end;

procedure TfmBrUbi.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrUbi := nil;
end;

end.
