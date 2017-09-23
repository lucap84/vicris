unit uBrAnalisiVendite;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ActnList, Grids, DBGrids, DBGridAux, StdCtrls, Buttons, ExtCtrls,
  udmBrAnalisiVendite, ComCtrls, uSupportLib, DBCtrls;

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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FiltersChange(Sender: TObject);
    procedure FormPostCreate(Sender: TObject);
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
    end;
  cbClienti.KeyValue     := -1;
  cbMandanti.KeyValue    := -1;
  cbSubmandanti.KeyValue := -1;

  FiltersChange(nil);
end;

end.
