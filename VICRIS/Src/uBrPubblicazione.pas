unit uBrPubblicazione;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  udmBrPubblicazione,
  udmEdPubblicazione, uEdPubblicazione, uBrowse, ActnList, Grids, DBGrids,
  CRGrid, StdCtrls, Buttons, ExtCtrls, ppVar, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDBBDE, ppStrtch, ppMemo, TXComp, DBGridAux;

type
  TfmBrPubblicazione = class(TfmBrowse)
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppPageStyle1: TppPageStyle;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDBMemo3: TppDBMemo;
    ppLabel8: TppLabel;
    ppDBMemo4: TppDBMemo;
    ppLine11: TppLine;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrPubblicazione: TfmBrPubblicazione;

implementation

{$R *.dfm}

procedure TfmBrPubblicazione.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrPubblicazione;
  hEditFormClass       := TfmEdPubblicazione;
  hEditDataModuleClass := TdmEdPubblicazione;
end;

procedure TfmBrPubblicazione.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrPubblicazione := nil;
end;

end.
