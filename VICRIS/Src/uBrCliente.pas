unit uBrCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, ActnList, DB, Grids, DBGrids, CRGrid, StdCtrls,
  Buttons, ExtCtrls,
  udmBrCliente,
  udmEdCliente, uEdCliente,
  ppCtrls, ppDB, ppVar, ppBands, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppDBBDE, TXComp,
  DBGridAux;

type
  TfmBrCliente = class(TfmBrowse)
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel2: TppLabel;
    ppDBText4: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrCliente: TfmBrCliente;

implementation

{$R *.dfm}

procedure TfmBrCliente.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrCliente;
  hEditDataModuleClass := TdmEdCliente;
  hEditFormClass       := TfmEdCliente;
end;

procedure TfmBrCliente.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrCliente := nil;
end;

end.
