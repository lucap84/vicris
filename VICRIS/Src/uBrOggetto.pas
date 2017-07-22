unit uBrOggetto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, ActnList, Grids, DBGrids, CRGrid, StdCtrls, Buttons,
  ExtCtrls,
  udmBrOggetto,
  udmEdOggetto, uEdOggetto, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  TXComp, DBGridAux;

type
  TfmBrOggetto = class(TfmBrowse)
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
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
  fmBrOggetto: TfmBrOggetto;

implementation

{$R *.dfm}

procedure TfmBrOggetto.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrOggetto;
  hEditDataModuleClass := TdmEdOggetto;
  hEditFormClass       := TfmEdOggetto;
end;

procedure TfmBrOggetto.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrOggetto := nil;
end;

end.
