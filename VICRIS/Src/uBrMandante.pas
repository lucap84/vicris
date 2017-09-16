unit uBrMandante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, ActnList, DB, Grids, DBGrids, CRGrid, StdCtrls,
  Buttons, ExtCtrls,
  udmBrMandante,
  udmEdMandante, uEdMandante,
  ppCtrls, ppDB, ppVar, ppBands, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppDBBDE, TXComp,
  DBGridAux, GIFImage, jpeg;

type
  TfmBrMandante = class(TfmBrowse)
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrMandante: TfmBrMandante;

implementation

{$R *.dfm}

procedure TfmBrMandante.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrMandante;
  hEditDataModuleClass := TdmEdMandante;
  hEditFormClass       := TfmEdMandante;
end;

procedure TfmBrMandante.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrMandante := nil;
end;

end.
