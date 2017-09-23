unit uBrAnalisiVendite;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ActnList, Grids, DBGrids, DBGridAux, StdCtrls, Buttons, ExtCtrls,
  udmBrAnalisiVendite, ComCtrls, uSupportLib, DBCtrls, ExportDS, SME2OLE,
  Menus, SME2Cell, SME2XLS;

type
  TfmBrAnalisiVendite = class(TfmBrowse)
    pnlateAnalisi: TPanel;
    pnTopAnalisi: TPanel;
    dtDataInizio: TDateTimePicker;
    dtDataFine: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cbClienti: TDBLookupComboBox;
    cbMandanti: TDBLookupComboBox;
    cbSubmandanti: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    puAnalisiVendite: TPopupMenu;
    acExpXls: TAction;
    piExpXls: TMenuItem;
    SMExport: TSMExportToXLS;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    sdExcel: TSaveDialog;
    dePrezzoInizio: TEdit;
    dePrezzoFine: TEdit;
    Label10: TLabel;
    cbCategoria: TDBLookupComboBox;
    Label11: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FiltersChange(Sender: TObject);
    procedure FormPostCreate(Sender: TObject);
    procedure acExpXlsUpdate(Sender: TObject);
    procedure acExpXlsExecute(Sender: TObject);
    procedure PrezzoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrAnalisiVendite: TfmBrAnalisiVendite;

implementation

{$R *.dfm}

procedure TfmBrAnalisiVendite.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrAnalisiVendite;

  dtDataInizio.Date    := YearFirstDate(Now);
  dtDataFine.Date      := Date;
  dePrezzoInizio.Text  := '0';
  dePrezzoFine.Text    := '999999999'
end;

procedure TfmBrAnalisiVendite.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrAnalisiVendite := nil;
end;

procedure TfmBrAnalisiVendite.FiltersChange(Sender: TObject);
begin
  inherited;
  if Assigned(hDataModule) then
    with TdmBrAnalisiVendite(hDataModule) do
    begin
      hDataIni := dtDataInizio.Date;
      hDataFin := dtDataFine.Date;
      hPrezzoIni := 0;
      hPrezzoFin := 999999999;
      if dePrezzoInizio.Text <> '' then
        hPrezzoIni := StrToFloat(dePrezzoInizio.Text);
      if dePrezzoFine.Text <> '' then
        hPrezzoFin := StrToFloat(dePrezzoFine.Text);
      dmDoFilter;
    end;
end;

procedure TfmBrAnalisiVendite.FormPostCreate(Sender: TObject);
begin
  inherited;
  if Assigned(hDataModule) then
    with TdmBrAnalisiVendite(hDataModule) do
    begin
      dmDsOpen(qyClienti);
      dmDsOpen(qyMandanti);
      dmDsOpen(qySubmandanti);
      dmDsOpen(qyCategoria);
    end;
  cbClienti.KeyValue     := -1;
  cbMandanti.KeyValue    := -1;
  cbSubmandanti.KeyValue := -1;
  cbCategoria.KeyValue := -1;

  FiltersChange(nil);
end;

procedure TfmBrAnalisiVendite.acExpXlsUpdate(Sender: TObject);
begin
  if Assigned(hDataModule) then
    with TdmBrAnalisiVendite(hDataModule) do
      TAction(Sender).Enabled := not qyAnalisiVendite.IsEmpty;
end;

procedure TfmBrAnalisiVendite.acExpXlsExecute(Sender: TObject);
begin
  if sdExcel.Execute then
  begin
    SMExport.FileName := sdExcel.FileName;
    SMExport.Execute;
  end;
end;

procedure TfmBrAnalisiVendite.PrezzoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (Key in [#8, '0'..'9']) then
    Key := #0;
end;

end.
