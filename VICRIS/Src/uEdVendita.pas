unit uEdVendita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  Menus, ActnList, StdCtrls, Buttons, ExtCtrls, udmEdVendita, udmSearch,
  Mask, DBCtrls, DBSearch, ComCtrls, DBEditDateTimePicker, Grids, DBGrids,
  CRGrid, DBGridAux, DB, udmDBCore;

type
  TfmEdVendita = class(TfmEdit)
    laCliente: TLabel;
    deIdCliente: TDBSearch;
    deCliente: TEdit;
    laData: TLabel;
    dtData: TDBEditDateTimePicker;
    deNote: TDBMemo;
    laNote: TLabel;
    laFattura: TLabel;
    dtDataFattura: TDBEditDateTimePicker;
    deNumeroFattura: TDBEdit;
    pnBackVendita: TPanel;
    pnTitleMovimenti: TPanel;
    pnBackNewMov: TPanel;
    laProdotto: TLabel;
    deProdotto: TDBSearch;
    deDesProdotto: TEdit;
    Label1: TLabel;
    dePrezzo: TDBEdit;
    laSconto: TLabel;
    deSconto: TDBEdit;
    laQuantita: TLabel;
    deQuantita: TDBEdit;
    laCosto: TLabel;
    deCosto: TDBEdit;
    laTotale: TLabel;
    deTotale: TDBEdit;
    nvMovimenti: TDBNavigator;
    grMovimenti: TDBGridAux;
    laFatturaMov: TLabel;
    dtDataFatturaMov: TDBEditDateTimePicker;
    deNumeroFatturaMov: TDBEdit;
    laDdtMov: TLabel;
    dtDataBollaMov: TDBEditDateTimePicker;
    deNumeroBollaMov: TDBEdit;
    ckFlagVicris: TDBCheckBox;
    laGuadagno: TLabel;
    deGuadagno: TDBEdit;
    deIVA: TDBEdit;
    laIVA: TLabel;
    laTotaleIvato: TLabel;
    deTotaleIvato: TDBEdit;
    deTotaleVen: TDBEdit;
    laTotaleVen: TLabel;
    laTotaleIvatoVen: TLabel;
    deTotaleIvatoVen: TDBEdit;
    deImpostaVen: TDBEdit;
    laImpostaVen: TLabel;
    laImposta: TLabel;
    deImposta: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure nvMovimentiClick(Sender: TObject; Button: TNavigateBtn);
    procedure nvMovimentiBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure deProdottoChange(Sender: TObject);
  protected
    procedure SearchDlg(Sender: TObject); override;
  end;

var
  fmEdVendita: TfmEdVendita;

implementation

{$R *.dfm}

procedure TfmEdVendita.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdVendita;
end;

procedure TfmEdVendita.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdVendita := nil;
end;

procedure TfmEdVendita.nvMovimentiClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  with TdmEdVendita(hDataModule) do
  begin
    if (Button = nbEdit)   or
       (Button = nbInsert) then
    begin
      dmDsEdit(cdsVendita);
      dmDsEdit(cdsMovimenti);
      deProdotto.SetFocus;
    end;

    if Button = nbInsert then
      deDesProdotto.Text := '';

    if (Button = nbPost)   or
       (Button = nbDelete) then
    begin
      dmDsApplyUpdates(cdsMovimenti);
      dmDsRefresh(cdsMovimenti);
    end;

    dmDsRefresh(qyTotVendita);
  end;
end;

procedure TfmEdVendita.nvMovimentiBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  with TdmEdVendita(hDataModule) do
  begin
    if (Button = nbEdit)   or
       (Button = nbInsert) then
    begin
      if cdsMovimenti.State in [dsEdit, dsInsert] then
        dmDsPost(cdsMovimenti);

      dmDsPost(cdsVendita);
      dmDsApplyUpdates(cdsVendita);

      dmDsApplyUpdates(cdsMovimenti);
      dmDsRefresh(cdsMovimenti);
    end;

    if Button = nbRefresh then
    begin
      if cdsMovimenti.State in [dsEdit, dsInsert] then
        dmDsCancel(cdsMovimenti);
      dmDsApplyUpdates(cdsMovimenti);
    end;

    dmDsRefresh(qyTotVendita);
  end;
end;

procedure TfmEdVendita.deProdottoChange(Sender: TObject);
begin
  inherited;
  ExitDlg(Sender);
end;

procedure TfmEdVendita.SearchDlg(Sender: TObject);
begin
  with TdmEdVendita(hDataModule) do
    if Sender = deProdotto then
    begin
      if not (cdsMovimenti.State in [dsEdit, dsInsert]) then
      begin
        dmDsPost(cdsVendita);
        dmDsApplyUpdates(cdsVendita);
        dmDsInsert(cdsMovimenti);
        dmDsEdit(cdsVendita);
        dmDsEdit(cdsMovimenti);
      end;
    end;
  inherited;
end;

end.
