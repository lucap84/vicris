unit uBrAnalisiVendite;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ActnList, Grids, DBGrids, DBGridAux, StdCtrls, Buttons, ExtCtrls, Ora,
  udmBrAnalisiVendite, ComCtrls, uSupportLib, DBCtrls, ExportDS, SME2OLE,
  Menus, SME2Cell, SME2XLS, udmEdVendita, uEdVendita;

type
  TfmBrAnalisiVendite = class(TfmBrowse)
    pnlateAnalisi: TPanel;
    pnTopAnalisi: TPanel;
    dtDataInizio: TDateTimePicker;
    dtDataFine: TDateTimePicker;
    laDataVendita: TLabel;
    laDataInizio: TLabel;
    laDataFine: TLabel;
    cbClienti: TDBLookupComboBox;
    cbMandanti: TDBLookupComboBox;
    cbSubmandanti: TDBLookupComboBox;
    laClienti: TLabel;
    laMandanti: TLabel;
    laSubmandanti: TLabel;
    laPrezzoVendita: TLabel;
    laPrezzoInizio: TLabel;
    laPrezzoFine: TLabel;
    dePrezzoInizio: TEdit;
    dePrezzoFine: TEdit;
    Label10: TLabel;
    laCategoria: TLabel;
    cbCategoria: TDBLookupComboBox;
    rgFlagVicris: TRadioGroup;
    rgClienti: TRadioGroup;
    rgMandanti: TRadioGroup;
    rgSubmandanti: TRadioGroup;
    laPrezzoAcquisto: TLabel;
    laAcquistoInizio: TLabel;
    laAcquistoFine: TLabel;
    deAcquistoFine: TEdit;
    deAcquistoInizio: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FiltersChange(Sender: TObject);
    procedure FormPostCreate(Sender: TObject);
    procedure PrezzoKeyPress(Sender: TObject; var Key: Char);
    procedure grBrowseDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure acInsertUpdate(Sender: TObject);
    procedure acEditUpdate(Sender: TObject);
    procedure acDeleteUpdate(Sender: TObject);
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
  hEditDataModuleClass := TdmEdVendita;
  hEditFormClass       := TfmEdVendita;

  dtDataInizio.Date    := YearFirstDate(Now);
  dtDataFine.Date      := Date;
  dePrezzoInizio.Text  := '0';
  dePrezzoFine.Text    := '999999999';
  deAcquistoInizio.Text:= '0';
  deAcquistoFine.Text  := '999999999';
end;

procedure TfmBrAnalisiVendite.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrAnalisiVendite := nil;
end;

procedure TfmBrAnalisiVendite.FiltersChange(Sender: TObject);
var
  AQuery : TOraQuery;
begin
  inherited;
  AQuery := nil;
  
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
      hAcquistoIni := 0;
      hAcquistoFin := 999999999;
      if deAcquistoInizio.Text <> '' then
        hAcquistoIni := StrToFloat(deAcquistoInizio.Text);
      if deAcquistoFine.Text <> '' then
        hAcquistoFin := StrToFloat(deAcquistoFine.Text);
      hFlagVicris  := rgFlagVicris.ItemIndex;
      hFlagAtvCli  := rgClienti.ItemIndex;
      hFlagAtvMan  := rgMandanti.ItemIndex;
      hFlagAtvSub  := rgSubmandanti.ItemIndex;

      if (Sender = rgClienti)     or
         (Sender = rgMandanti)    or
         (Sender = rgSubmandanti) then
      begin
        if Sender = rgClienti then
        begin
          AQuery := qyClienti;
          cbClienti.KeyValue     := -1;
        end;

        if Sender = rgMandanti then
        begin
          AQuery := qyMandanti;
          cbMandanti.KeyValue    := -1;
        end;

        if Sender = rgSubmandanti then
        begin
          AQuery := qySubMandanti;
          cbSubmandanti.KeyValue := -1;
        end;

        if Assigned(AQuery) then
        begin
          AQuery.ParamByName('Flag_Active_Ini').AsString := '0';
          AQuery.ParamByName('Flag_Active_Fin').AsString := '1';
          if TRadioGroup(Sender).ItemIndex <> 2 then
          begin
            AQuery.ParamByName('Flag_Active_Ini').AsString := IntToStr(TRadioGroup(Sender).ItemIndex);
            AQuery.ParamByName('Flag_Active_Fin').AsString := IntToStr(TRadioGroup(Sender).ItemIndex);
          end;
          dmDsRefresh(AQuery);
        end;
      end;

      dmDoFilter;
    end;
end;

procedure TfmBrAnalisiVendite.FormPostCreate(Sender: TObject);
begin
  inherited;
  if Assigned(hDataModule) then
    with TdmBrAnalisiVendite(hDataModule) do
    begin
      qyClienti.ParamByName('Flag_Active_Ini').AsString := '0';
      qyClienti.ParamByName('Flag_Active_Fin').AsString := '1';
      dmDsOpen(qyClienti);
      qyMandanti.ParamByName('Flag_Active_Ini').AsString := '0';
      qyMandanti.ParamByName('Flag_Active_Fin').AsString := '1';
      dmDsOpen(qyMandanti);
      qySubmandanti.ParamByName('Flag_Active_Ini').AsString := '0';
      qySubmandanti.ParamByName('Flag_Active_Fin').AsString := '1';
      dmDsOpen(qySubmandanti);
      dmDsOpen(qyCategoria);
    end;

  cbClienti.KeyValue     := -1;
  cbMandanti.KeyValue    := -1;
  cbSubmandanti.KeyValue := -1;
  cbCategoria.KeyValue   := -1;

  FiltersChange(nil);
end;

procedure TfmBrAnalisiVendite.PrezzoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (Key in [#8, '0'..'9']) then
    Key := #0;
end;

procedure TfmBrAnalisiVendite.grBrowseDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if Assigned(grBrowse.DataSource)         and
     Assigned(grBrowse.DataSource.DataSet) and
     Assigned(grBrowse.DataSource.DataSet.FindField('Flag_Vicris'))          and
     (grBrowse.DataSource.DataSet.FieldByName('Flag_Vicris').AsString = '0') then
  begin
    if (gdSelected in State) then
    begin
      grBrowse.Canvas.Brush.Color := clYellow;
      grBrowse.Canvas.Font.Color  := clWindowText;
    end
    else
    begin
      grBrowse.Canvas.Brush.Color := clMoneyGreen;
      grBrowse.Canvas.Font.Color  := clWindowText;
    end;
  end;

  grBrowse.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmBrAnalisiVendite.acInsertUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := False;
end;

procedure TfmBrAnalisiVendite.acEditUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := False;
end;

procedure TfmBrAnalisiVendite.acDeleteUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := False;
end;

end.
