unit uEdAutore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, uCore,
  udmEdAutore, udmSearch, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  Menus, ComCtrls, Grids, DBGrids, ppModule, raCodMod, ppSubRpt,
  ppStrtch, ppMemo, DBGridAux;

type
  TfmEdAutore = class(TfmEdit)
    pcAutore: TPageControl;
    teAutore: TTabSheet;
    laDesNom: TLabel;
    deDesNom: TDBEdit;
    deDesCog: TDBEdit;
    laDesCog: TLabel;
    laDesNte: TLabel;
    mmDesNte: TDBMemo;
    teDetAutPub: TTabSheet;
    grDetAutPub: TDBGridAux;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLabel12: TppLabel;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    srDetAutPub: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine7: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape2: TppShape;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine3: TppLine;
    plDetAutPub: TppBDEPipeline;
    raCodeModule1: TraCodeModule;
    raCodeModule2: TraCodeModule;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormPostCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdAutore: TfmEdAutore;

implementation

{$R *.dfm}

procedure TfmEdAutore.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdAutore;
end;

procedure TfmEdAutore.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdAutore := nil;
end;

procedure TfmEdAutore.FormPostCreate(Sender: TObject);
begin
  inherited;
  with TdmEdAutore(hDataModule) do
    dmDsOpen(qyDetAutPub);
end;

end.
