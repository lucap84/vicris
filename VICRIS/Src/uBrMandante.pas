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
  DBGridAux;

type
  TfmBrMandante = class(TfmBrowse)
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppPageStyle1: TppPageStyle;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
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
