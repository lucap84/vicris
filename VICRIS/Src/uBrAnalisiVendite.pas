unit uBrAnalisiVendite;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ActnList, Grids, DBGrids, DBGridAux, StdCtrls, Buttons, ExtCtrls, Ora,
  udmBrAnalisiVendite, ComCtrls, uSupportLib, DBCtrls, ExportDS, SME2OLE,
  Menus, SME2Cell, SME2XLS, SMEEngine, udmEdVendita, uEdVendita, Mask, DB,
  jpeg;

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
    pnSummary: TPanel;
    Label1: TLabel;
    laSumTotale: TLabel;
    laSumQuantita: TLabel;
    laAvgPrezzo: TLabel;
    deSumTotale: TDBEdit;
    deSumQuantita: TDBEdit;
    deAvgPrezzo: TDBEdit;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    shDetail: TppShape;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    grpField: TppGroup;
    grpFieldHead: TppGroupHeaderBand;
    grpFieldFoot: TppGroupFooterBand;
    dbGrpField: TppDBText;
    ppShape2: TppShape;
    laGrpTitle: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
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
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
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
  TAction(Sender).Enabled := TdmBrAnalisiVendite(hDataModule).cdsAnalisiVenditeNOME.IsNull;
end;

procedure TfmBrAnalisiVendite.acDeleteUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := False;
end;

procedure TfmBrAnalisiVendite.ppDetailBand1BeforePrint(Sender: TObject);
begin
  inherited;
  with TdmBrAnalisiVendite(hDataModule) do
    if cdsAnalisiVenditeDES_VICRIS.AsString = 'VICRIS' then
      shDetail.Brush.Color := clWhite
    else
      shDetail.Brush.Color := $00DDDDDD;
end;

procedure TfmBrAnalisiVendite.acPrintExecute(Sender: TObject);
var
  i : integer;
begin
  with TdmBrAnalisiVendite(hDataModule) do
  begin
    if cdsAnalisiVendite.IndexName <> '' then
    begin
      for i := 0 to cdsAnalisiVendite.IndexDefs.Count - 1 do
        if cdsAnalisiVendite.IndexDefs[i].Name = cdsAnalisiVendite.IndexName then
        begin
          if (cdsAnalisiVendite.IndexDefs[i].Fields = 'NOME')        or
             (cdsAnalisiVendite.IndexDefs[i].Fields = 'PRODOTTO')    or
             (cdsAnalisiVendite.IndexDefs[i].Fields = 'MANDANTE')    or
             (cdsAnalisiVendite.IndexDefs[i].Fields = 'SUBMANDANTE') or
             (cdsAnalisiVendite.IndexDefs[i].Fields = 'PROVINCIA')   or
             (cdsAnalisiVendite.IndexDefs[i].Fields = 'LOCALITA')    or
             (cdsAnalisiVendite.IndexDefs[i].Fields = 'CATEGORIA')   then
          begin
            grpFieldHead.Visible := True;
            grpField.BreakName   := cdsAnalisiVendite.IndexDefs[i].Fields;
            grpField.KeepTogether:= True;
            dbGrpField.DataField := grpField.BreakName;
            grpFieldFoot.Visible := True;
          end
          else
          begin
            grpFieldHead.Visible := False;
            grpField.KeepTogether:= False;
            grpField.BreakName   := '';
            grpFieldFoot.Visible := False;
          end;
          Break;
        end;
    end
    else
    begin
      grpFieldHead.Visible := False;
      grpField.KeepTogether:= False;
      grpField.BreakName   := '';
      grpFieldFoot.Visible := False;
    end;
  end;

  inherited;
end;

end.
