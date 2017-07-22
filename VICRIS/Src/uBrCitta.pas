unit uBrCitta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, ActnList, Grids, DBGrids, CRGrid, StdCtrls, Buttons,
  ExtCtrls,
  udmBrCitta,
  udmEdCitta, uEdCitta, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  TXComp, DBGridAux;

type
  TfmBrCitta = class(TfmBrowse)
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
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
  fmBrCitta: TfmBrCitta;

implementation

{$R *.dfm}

procedure TfmBrCitta.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrCitta;
  hEditDataModuleClass := TdmEdCitta;
  hEditFormClass       := TfmEdCitta;
end;

procedure TfmBrCitta.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrCitta := nil;
end;

end.
