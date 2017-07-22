unit uEdPersona;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Menus,
  ActnList, StdCtrls, Buttons, ExtCtrls, udmSearch, udmDBCore,
  udmEdPersona, DBSearch, DBCtrls, Mask, ComCtrls, Grids, DBGrids,
  DBGridAux, DBEditDateTimePicker;

type
  TfmEdPersona = class(TfmEdit)
    deDesInd: TDBEdit;
    cbFlgTit: TDBLookupComboBox;
    deNumTel1: TDBEdit;
    deNumFax: TDBEdit;
    deCodNaz: TDBSearch;
    deDesNaz: TEdit;
    deCodCta: TDBSearch;
    deDesCta: TEdit;
    deDesNom: TDBEdit;
    deDesCog: TDBEdit;
    deNumTel2: TDBEdit;
    deNumCel: TDBEdit;
    laDesNom: TLabel;
    laDesCog: TLabel;
    laNaz: TLabel;
    laCta: TLabel;
    laFlgTit: TLabel;
    laNumTel: TLabel;
    laNumCelFax: TLabel;
    laDesInd: TLabel;
    pcPer: TPageControl;
    tePer: TTabSheet;
    teRcr: TTabSheet;
    bbAddEvt: TBitBtn;
    laEvt: TLabel;
    laDatEvt: TLabel;
    deCodEvt: TDBSearch;
    deDesEvt: TEdit;
    dtDatEvt: TDBEditDateTimePicker;
    pnBackTopRcr: TPanel;
    grDetAutPub: TDBGridAux;
    acgrAddRcr: TAction;
    laDesEml: TLabel;
    deDesEml: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acgrAddRcrExecute(Sender: TObject);
    procedure acgrAddRcrUpdate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure ExitDlg(Sender: TObject); override;
    procedure SearchDlg(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  fmEdPersona: TfmEdPersona;

implementation

uses DB;

{$R *.dfm}

procedure TfmEdPersona.ExitDlg(Sender: TObject);
begin
  if Sender = deCodCta then
    dmSearch.hDesKey := VarArrayOf([deCodNaz.Text, deCodCta.Text]);

  inherited;

  if (Sender = deCodNaz) and Assigned(deCodCta.Field) then
    if (deCodNaz.Text = '') and (hDataModule.hdmState <> hdmView) then
      deCodCta.Field.Clear;
end;

procedure TfmEdPersona.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdPersona;
end;

procedure TfmEdPersona.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdPersona := nil;
end;

procedure TfmEdPersona.SearchDlg(Sender: TObject);
begin
  if Sender = deCodCta then
    dmSearch.qyCta.ParamByName('Cod_Naz').AsString := deCodNaz.Text;

  inherited;

  if not VarIsNull(dmSearch.hSearchResult) then
  begin
    if Sender = deCodNaz then
      deCodCta.Field.Clear;

    if Sender = deCodCta then
      if deCodNaz.Text = '' then
      begin
        deCodNaz.Field.Value := dmSearch.hSearchResult[1];
        ExitDlg(deCodNaz);
      end;
  end;
end;

procedure TfmEdPersona.acgrAddRcrExecute(Sender: TObject);
begin
  inherited;
  with TdmEdPersona(hDataModule) do
  begin
    dmDsInsert(cdsRicorrenza);
    cdsRicorrenzaCOD_EVT.AsString   := deCodEvt.Text;
    if not dtDatEvt.Field.IsNull then
      cdsRicorrenzaDAT_EVT.AsDateTime := dtDatEvt.Date
    else
      cdsRicorrenzaDAT_EVT.Clear;
    dmDsPost(cdsRicorrenza);
    cdsPersonacod_evt.Clear;
    cdsPersonadat_evt.Clear;
  end;
end;

procedure TfmEdPersona.acgrAddRcrUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (deCodEvt.Text <> '');
end;

end.
