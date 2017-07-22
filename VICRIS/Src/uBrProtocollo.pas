unit uBrProtocollo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppDBBDE, ActnList, Grids, DBGrids, CRGrid, StdCtrls, Buttons,
  ExtCtrls,
  udmBrProtocollo,
  udmEdProtocollo, uEdProtocollo, DBGridAux;

type
  TfmBrProtocollo = class(TfmBrowse)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrProtocollo: TfmBrProtocollo;

implementation

{$R *.dfm}

procedure TfmBrProtocollo.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrProtocollo;
  hEditFormClass       := TfmEdProtocollo;
  hEditDataModuleClass := TdmEdProtocollo;
end;

procedure TfmBrProtocollo.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrProtocollo := nil;
end;

end.
