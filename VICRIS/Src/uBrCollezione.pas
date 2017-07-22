unit uBrCollezione;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, ActnList, Grids, DBGrids, CRGrid, StdCtrls, Buttons,
  ExtCtrls,
  udmBrCollezione,
  udmEdCollezione, uEdCollezione, ppVar, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDBBDE, TXComp, DBGridAux;

type
  TfmBrCollezione = class(TfmBrowse)
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
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
  fmBrCollezione: TfmBrCollezione;

implementation

{$R *.dfm}

procedure TfmBrCollezione.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrCollezione;
  hEditDataModuleClass := TdmEdCollezione;
  hEditFormClass       := TfmEdCollezione;
end;

procedure TfmBrCollezione.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrCollezione := nil;
end;

end.
