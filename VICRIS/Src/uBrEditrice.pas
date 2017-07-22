unit uBrEditrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, ActnList, Grids, DBGrids, CRGrid, StdCtrls,
  Buttons, ExtCtrls,
  udmBrEditrice,
  udmEdEditrice, uEdEditrice, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  TXComp, DBGridAux;

type
  TfmBrEditrice = class(TfmBrowse)
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppPageStyle1: TppPageStyle;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrEditrice: TfmBrEditrice;

implementation

{$R *.dfm}

procedure TfmBrEditrice.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrEditrice;
  hEditDataModuleClass := TdmEdEditrice;
  hEditFormClass       := TfmEdEditrice;
end;

procedure TfmBrEditrice.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrEditrice := nil;
end;

end.
