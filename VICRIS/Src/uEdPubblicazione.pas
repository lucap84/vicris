unit uEdPubblicazione;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdPubblicazione, uEdit, ActnList, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, DBSearch, udmSearch, udmGlobal, ComCtrls, Grids, DBGrids,
  DB, udmDBCore, Menus, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ppStrtch, ppMemo, ppSubRpt, ppRegion, DBGridAux;

type
  TfmEdPubblicazione = class(TfmEdit)
    pcPub: TPageControl;
    tePub: TTabSheet;
    laDesPub: TLabel;
    laFlgTipPub: TLabel;
    laFlgTipAut: TLabel;
    laCodIsb: TLabel;
    laEdzAaaPag: TLabel;
    laCed: TLabel;
    laNaz: TLabel;
    laCta: TLabel;
    laClz: TLabel;
    laOgg: TLabel;
    laDesNte: TLabel;
    deDesPub: TDBEdit;
    deCodIsb: TDBEdit;
    deNumEdz: TDBEdit;
    deCodCed: TDBSearch;
    deDesCed: TEdit;
    deCodNaz: TDBSearch;
    deDesNaz: TEdit;
    deCodCta: TDBSearch;
    deDesCta: TEdit;
    deCodClz: TDBSearch;
    deDesClz: TEdit;
    deCodOgg: TDBSearch;
    deDesOgg: TEdit;
    deDesNte: TDBMemo;
    cbFlgTipPub: TDBLookupComboBox;
    cbFlgTipAut: TDBLookupComboBox;
    laPmr: TLabel;
    deCodPmr: TDBSearch;
    deDesPmr: TEdit;
    deAaaPub: TDBEdit;
    deNumPag: TDBEdit;
    teDetAutPub: TTabSheet;
    grDetAutPub: TDBGridAux;
    deCodAut: TDBSearch;
    laAut: TLabel;
    deDesAut: TEdit;
    acAddAut: TAction;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBMemo1: TppDBMemo;
    srDetAutPub: TppSubReport;
    ppChildReport1: TppChildReport;
    plDetAutPub: TppBDEPipeline;
    ppDetailBand2: TppDetailBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape2: TppShape;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    rrTstPub: TppRegion;
    ppDBText17: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    laUbi: TLabel;
    deCodLvl: TDBEdit;
    deCodScf: TDBEdit;
    ppLabel19: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel20: TppLabel;
    bbAddAut: TBitBtn;
    laCodPub: TLabel;
    deCodPub: TDBEdit;
    bbNumManPrv: TButton;
    deCodUbi: TDBSearch;
    deDesUbi: TEdit;
    laLvlScf: TLabel;
    teTags: TTabSheet;
    deDesTag: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acAddAutUpdate(Sender: TObject);
    procedure acAddAutExecute(Sender: TObject);
    procedure acCommitExecute(Sender: TObject);
    procedure acNumManExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure ExitDlg(Sender: TObject); override;
    procedure SearchDlg(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  fmEdPubblicazione: TfmEdPubblicazione;

implementation

{$R *.dfm}

procedure TfmEdPubblicazione.ExitDlg(Sender: TObject);
begin
  if Sender = deCodCta then
    dmSearch.hDesKey := VarArrayOf([deCodNaz.Text, deCodCta.Text]);

  inherited;

  if (Sender = deCodNaz) and Assigned(deCodCta.Field) then
    if deCodNaz.Text = '' then
      deCodCta.Field.Clear;
end;

procedure TfmEdPubblicazione.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdPubblicazione;
end;

procedure TfmEdPubblicazione.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdPubblicazione := nil;
end;

procedure TfmEdPubblicazione.SearchDlg(Sender: TObject);
begin
  if Sender = deCodCta then
    dmSearch.qyCta.ParamByName('Cod_Naz').AsString := deCodNaz.Text;

  inherited;

  if not VarIsNull(dmSearch.hSearchResult) then
  begin
    if Sender = deCodNaz then
      deCodCta.Field.Clear;

    if Sender = deCodCed then
    begin
      deCodNaz.Field.Value := dmSearch.hSearchResult[1];
      deCodCta.Field.Value := dmSearch.hSearchResult[2];
      ExitDlg(deCodNaz);
      ExitDlg(deCodCta);
    end;

    if Sender = deCodOgg then
    begin
      deCodUbi.Field.Value := dmSearch.hSearchResult[1];
      ExitDlg(deCodUbi);
    end;

    if Sender = deCodCta then
      if deCodNaz.Text = '' then
      begin
        deCodNaz.Field.Value := dmSearch.hSearchResult[1];
        ExitDlg(deCodNaz);
      end;

    if (Sender = deCodCta) or (Sender = deCodNaz) then
      deCodCed.Field.Clear;
  end;
end;

procedure TfmEdPubblicazione.acAddAutUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := deCodAut.Text <> '';
end;

procedure TfmEdPubblicazione.acAddAutExecute(Sender: TObject);
begin
  inherited;
  with TdmEdPubblicazione(hDataModule) do
  begin
    dmDsInsert(cdsDetAutPub);
    cdsDetAutPubCOD_AUT.AsString := deCodAut.Text;
    dmDsPost(cdsDetAutPub);
    cdsPubblicazionecod_aut.Clear;
  end;
end;

procedure TfmEdPubblicazione.acCommitExecute(Sender: TObject);
begin
  if deCodAut.Text <> '' then
    acAddAutExecute(nil);
  inherited;
end;

procedure TfmEdPubblicazione.acNumManExecute(Sender: TObject);
begin
  inherited;
  deCodPub.Enabled  := True;
  deCodPub.ReadOnly := False;
  deCodPub.SetFocus;
  deCodPub.Field.Clear;
end;

end.
