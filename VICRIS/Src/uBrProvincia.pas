unit uBrProvincia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmBrProvincia, udmEdProvincia, uEdProvincia, uBrowse, TXComp,
  ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ActnList, Grids, DBGrids,
  DBGridAux, StdCtrls, Buttons, ExtCtrls;

type
  TfmBrProvincia = class(TfmBrowse)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrProvincia: TfmBrProvincia;

implementation

{$R *.dfm}

procedure TfmBrProvincia.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrProvincia;
  hEditDataModuleClass := TdmEdProvincia;
  hEditFormClass       := TfmEdProvincia;
end;

procedure TfmBrProvincia.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrProvincia := nil;
end;

end.
