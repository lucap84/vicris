unit uEdVendita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  Menus, ActnList, StdCtrls, Buttons, ExtCtrls, udmEdVendita, udmSearch,
  Mask, DBCtrls, DBSearch, ComCtrls, DBEditDateTimePicker, Grids, DBGrids,
  CRGrid, DBGridAux, DB;

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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure nvMovimentiClick(Sender: TObject; Button: TNavigateBtn);
    procedure nvMovimentiBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
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
      with TdmEdVendita(hDataModule) do
      begin
        dmDsApplyUpdates(cdsMovimenti);
        dmDsRefresh(cdsMovimenti);
      end;
    end
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
      dmDsPost(cdsVendita);
      dmDsApplyUpdates(cdsVendita);
    end;

    if Button = nbRefresh then
    begin
      if cdsMovimenti.State in [dsEdit, dsInsert] then
        dmDsCancel(cdsMovimenti);
      dmDsApplyUpdates(cdsMovimenti);
    end;
  end;
end;

end.
