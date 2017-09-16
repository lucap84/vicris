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
  DBGridAux, GIFImage, jpeg;

type
  TfmBrCliente = class(TfmBrowse)
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
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
