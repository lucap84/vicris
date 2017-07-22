unit uBrPromotore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, ActnList, Grids, DBGrids, CRGrid, StdCtrls, Buttons, ExtCtrls,
  udmBrPromotore,
  udmEdPromotore, uEdPromotore, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  TXComp, DBGridAux;

type
  TfmBrPromotore = class(TfmBrowse)
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppPageStyle1: TppPageStyle;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrPromotore: TfmBrPromotore;

implementation

{$R *.dfm}

procedure TfmBrPromotore.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrPromotore;
  hEditDataModuleClass := TdmEdPromotore;
  hEditFormClass       := TfmEdPromotore;
end;

procedure TfmBrPromotore.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrPromotore := nil;
end;

end.
