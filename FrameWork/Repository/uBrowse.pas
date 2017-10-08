unit uBrowse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uRoot, Grids, DBGrids, ExtCtrls, DB, ActnList, StdCtrls,
  Buttons, udmGlobal, DBClient, Ora, udmDBCore, udmBrowse, udmEdit, uEdit,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ppBands, ppCache, ppPrnabl, ppCtrls, ppVar, TXComp, uGlobals, DBGridAux;

type
  TfmBrowse = class(TfmRoot)
    pnTools: TPanel;
    grBrowse: TDBGridAux;
    alBrowse: TActionList;
    acInsert: TAction;
    acEdit: TAction;
    acView: TAction;
    acDelete: TAction;
    acPrint: TAction;
    acClose: TAction;
    sbInsert: TBitBtn;
    sbEdit: TBitBtn;
    sbView: TBitBtn;
    sbDelete: TBitBtn;
    sbPrint: TBitBtn;
    sbClose: TBitBtn;
    plBrowse: TppBDEPipeline;
    rpBrowse: TppReport;
    ppHeaderBand1: TppHeaderBand;
    pplaTitle: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    svDateTime: TppSystemVariable;
    svPageNo: TppSystemVariable;
    pplaDateSlash: TppLabel;
    svPageCount: TppSystemVariable;
    laPag: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    sbSearch: TSpeedButton;
    sbFilter: TSpeedButton;
    rbExtraOptions: TExtraOptions;
    imgTitle: TppImage;
    procedure acInsertUpdate(Sender: TObject);
    procedure acEditUpdate(Sender: TObject);
    procedure acViewUpdate(Sender: TObject);
    procedure acDeleteUpdate(Sender: TObject);
    procedure acPrintUpdate(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acInsertExecute(Sender: TObject);
    procedure acEditExecute(Sender: TObject);
    procedure acViewExecute(Sender: TObject);
    procedure acCloseUpdate(Sender: TObject);
    procedure FormPostCreate(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure sbSearchClick(Sender: TObject);
    procedure grBrowseGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; State: TGridDrawState;
      StateEx: TGridDrawStateEx);
    procedure sbFilterClick(Sender: TObject);
    procedure rpBrowsePrintDialogClose(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppFooterBand1BeforePrint(Sender: TObject);
    procedure rpBrowsePrintingComplete(Sender: TObject);
    procedure grBrowseDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    FPrintToFile : boolean;

    FhFlgIrt, FhFlgUpd, FhFlgDel,
    FhFlgVis, FhFlgPrt : boolean;

    FhEditForm: TfmEdit;
    FhEditFormClass: TfmEditClass;
    FhEditDataModule: TdmEdit;
    FhEditDataModuleClass: TdmEditClass;

    procedure GridLoadLayout(AGrid: TDBGridAux);
    procedure GridSaveLayout(AGrid: TDBGridAux);
  protected
    procedure FormRefresh(Sender: TObject); override;
    procedure FormNext(Sender: TObject); override;
    procedure FormPrior(Sender: TObject); override;
  public
    { Public declarations }
    property hEditForm            : TfmEdit      read FhEditForm            write FhEditForm;
    property hEditFormClass       : TfmEditClass read FhEditFormClass       write FhEditFormClass;
    property hEditDataModule      : TdmEdit      read FhEditDataModule      write FhEditDataModule;
    property hEditDataModuleClass : TdmEditClass read FhEditDataModuleClass write FhEditDataModuleClass;
  end;

var
  fmBrowse: TfmBrowse;

implementation

{$R *.dfm}

procedure TfmBrowse.acInsertExecute(Sender: TObject);
begin
  if (not Assigned(hEditForm)) and
      Assigned(hEditFormClass) then
  begin
    hDataModule.hKeyValues.Clear;
    hEditForm := hEditFormClass.Create(Self);
    sbFilter.Enabled := False;
    sbSearch.Enabled := False;
    TdmEdit(hEditForm.hDataModule).dmInsert;
    hEditForm.SetEditState(hdmInsert);
  end;
end;

procedure TfmBrowse.acInsertUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := FhFlgIrt                  and
                             (not Assigned(hEditForm)) and
                             Assigned(hEditFormClass);
end;

procedure TfmBrowse.acEditExecute(Sender: TObject);
begin
  Self.hDataModule.SetKeyValues;
  if dmGlobal.dmCheckDmoLck(Self.hDataModule.hKeyFields, Self.hDataModule.getCodValKey) then
  begin
    MessageDlg(stDeadlock, mtWarning, [mbOK], 0);
    Exit;
  end;
  if (not Assigned(hEditForm)) and
      Assigned(hEditFormClass) then
  begin
    hEditForm := hEditFormClass.Create(Self);
    hEditForm.hDataModule.hKeyValues.Assign(Self.hDataModule.hKeyValues);
    sbFilter.Enabled := False;
    sbSearch.Enabled := False;
    TdmEdit(hEditForm.hDataModule).dmEdit;
    hEditForm.SetEditState(hdmEdit);
  end;
end;

procedure TfmBrowse.acEditUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := FhFlgUpd                              and
                             ((not Assigned(hEditForm))            and
                             Assigned(hEditFormClass))             and
                             Assigned(hDataModule)                 and
                             Assigned(grBrowse.DataSource)         and
                             Assigned(grBrowse.DataSource.DataSet) and
                             (not grBrowse.DataSource.DataSet.IsEmpty) and
                             (grBrowse.SelectedRows.Count <= 1);
end;

procedure TfmBrowse.acViewExecute(Sender: TObject);
begin
  if (not Assigned(hEditForm)) and
      Assigned(hEditFormClass) then
  begin
    Self.hDataModule.SetKeyValues;
    hEditForm := hEditFormClass.Create(Self);
    hEditForm.hDataModule.hKeyValues.Assign(Self.hDataModule.hKeyValues);
    sbFilter.Enabled := False;
    sbSearch.Enabled := False;
    TdmEdit(hEditForm.hDataModule).dmView;
    hEditForm.SetEditState(hdmView);
  end;
end;

procedure TfmBrowse.acDeleteExecute(Sender: TObject);
begin
  inherited;
   Self.hDataModule.SetKeyValues;
  if dmGlobal.dmCheckDmoLck(Self.hDataModule.hKeyFields, TdmBrowse(Self.hDataModule).GetCodValKey) then
  begin
    MessageDlg(stDeadlock, mtWarning, [mbOK], 0);
    Exit;
  end;

  if (MessageDlg(stCheckDel, mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    if Assigned(hEditDataModuleClass) then
      if not Assigned(hEditDataModule) then
        hEditDataModule := hEditDataModuleClass.Create(Self);
    with hEditDataModule do
    begin
      hEditDataModule.hKeyValues.Assign(Self.hDataModule.hKeyValues);
      hEditDataModule.dmDelete;
      if not hEditDataModule.dmCommit then
        ShowMessage('Record Non Cancellato!'); 
    end;
    hEditDataModule.Free;
    hEditDataModule := nil;

    with Self.hDataModule do
    begin
      dmDsClose(hDataSet);
      dmDsOpen(hDataSet);
      hDataSet.First;
    end;
  end;
end;

procedure TfmBrowse.acDeleteUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := FhFlgDel                              and
                             ((not Assigned(hEditForm))            and
                             Assigned(hEditFormClass))             and
                             Assigned(hDataModule)                 and
                             Assigned(grBrowse.DataSource)         and
                             Assigned(grBrowse.DataSource.DataSet) and
                             (not grBrowse.DataSource.DataSet.IsEmpty) and
                             (grBrowse.SelectedRows.Count <= 1);
end;

procedure TfmBrowse.acViewUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := FhFlgVis                              and
                             ((not Assigned(hEditForm))            and
                             Assigned(hEditFormClass))             and
                             Assigned(hDataModule)                 and
                             Assigned(grBrowse.DataSource)         and
                             Assigned(grBrowse.DataSource.DataSet) and
                             (not grBrowse.DataSource.DataSet.IsEmpty) and
                             (grBrowse.SelectedRows.Count <= 1);
end;

procedure TfmBrowse.acPrintExecute(Sender: TObject);
var
  i : integer;
  AppFilter   : String;
  AppFiltered : boolean;
begin
  AppFilter   := grBrowse.DataSource.DataSet.Filter;
  AppFiltered := grBrowse.DataSource.DataSet.Filtered;
  if Assigned(grBrowse.DataSource) and
     Assigned(grBrowse.DataSource.DataSet) then
  begin
    grBrowse.DataSource.DataSet.Filtered := False;
    if Assigned(grBrowse.DataSource.DataSet.FindField('Flag_Active')) then
    begin
      if grBrowse.DataSource.DataSet.Filter <> '' then
        grBrowse.DataSource.DataSet.Filter := grBrowse.DataSource.DataSet.Filter + ' AND FLAG_ACTIVE = '+QuotedStr('1')
      else
        grBrowse.DataSource.DataSet.Filter   := 'FLAG_ACTIVE = '+QuotedStr('1');
    end;
    grBrowse.DataSource.DataSet.Filtered := True;

    plBrowse.DataSource := grBrowse.DataSource;
    plBrowse.ClearBookmarkList;
    if Assigned(grBrowse.SelectedRows) and
       (grBrowse.SelectedRows.Count > 1) then
    begin
      for i := 0 to grBrowse.SelectedRows.Count - 1 do
        plBrowse.AddBookmark(Longint(grBrowse.SelectedRows.Items[i]));
    end;
    pplaTitle.Caption   := Self.Caption;
    rpBrowse.PrinterSetup.DocumentName := Self.Caption + '_' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now);
    rpBrowse.PrinterSetup.PrinterName := 'Screen';
    rpBrowse.Print;
    grBrowse.DataSource.DataSet.Filtered := False;
    grBrowse.DataSource.DataSet.Filter   := AppFilter;
    grBrowse.DataSource.DataSet.Filtered := AppFiltered;
  end;
end;

procedure TfmBrowse.acPrintUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := FhFlgPrt                              and
                             ((not Assigned(hEditForm))            and
                             Assigned(hEditFormClass))             and
                             Assigned(hDataModule)                 and
                             Assigned(grBrowse.DataSource)         and
                             Assigned(grBrowse.DataSource.DataSet) and
                             (not grBrowse.DataSource.DataSet.IsEmpty) and
                             Assigned(hReport);
end;

procedure TfmBrowse.acCloseExecute(Sender: TObject);
begin
  GridSaveLayout(grBrowse);
  Self.Close;
end;

procedure TfmBrowse.acCloseUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := not Assigned(hEditForm);
end;

procedure TfmBrowse.FormPostCreate(Sender: TObject);
begin
  inherited;
  FPrintToFile := False;
  FhFlgIrt     := hFlgIrt;
  FhFlgUpd     := hFlgUpd;
  FhFlgDel     := hFlgDel;
  FhFlgVis     := hFlgVis;
  FhFlgPrt     := hFlgPrt;
  GridLoadLayout(grBrowse);
  hDataModule.dmDsOpen(hDataModule.hDataSet);
end;

procedure TfmBrowse.FormRefresh(Sender: TObject);
var
  KeyNames: String;
  KeyValues: Variant;
  i : integer;
begin
  inherited;
  hEditForm := nil;
  sbFilter.Enabled := True;
  sbSearch.Enabled := True;
  if hDataModule.hKeyValues.Count = 0 then
    hDataModule.hDataSet.First
  else
  begin
    KeyNames  := '';
    KeyValues := VarArrayCreate([0, hDataModule.hKeyValues.Count - 1], varVariant);
    for i := 0 to hDataModule.hKeyValues.Count - 1 do
    begin
      if KeyNames = '' then
        KeyNames := hDataModule.hKeyFields[i]
      else
        KeyNames := KeyNames + ';' + hDataModule.hKeyFields[i];
      KeyValues[i] := hDataModule.hKeyValues[i];
    end;
    hDataModule.hDataSet.Locate(KeyNames, KeyValues, []);
  end;
end;

procedure TfmBrowse.FormNext(Sender: TObject);
begin
  inherited;
  if not Self.hDataModule.hDataSet.Eof then
  begin
    Self.hDataModule.hDataSet.Next;
    Self.hDataModule.SetKeyValues;
    Self.hEditForm.hDataModule.hKeyValues.Assign(Self.hDataModule.hKeyValues);
    TdmEdit(Self.hEditForm.hDataModule).dmView;
    Self.hEditForm.SetEditState(hdmView);
  end;
end;

procedure TfmBrowse.FormPrior(Sender: TObject);
begin
  inherited;
  Self.hDataModule.hDataSet.Prior;
  Self.hDataModule.SetKeyValues;
  Self.hEditForm.hDataModule.hKeyValues.Assign(Self.hDataModule.hKeyValues);
  TdmEdit(Self.hEditForm.hDataModule).dmView;
  Self.hEditForm.SetEditState(hdmView);
end;

procedure TfmBrowse.grBrowseDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Assigned(grBrowse.DataSource)         and
     Assigned(grBrowse.DataSource.DataSet) and
     Assigned(grBrowse.DataSource.DataSet.FindField('Flag_Active'))          and
     (grBrowse.DataSource.DataSet.FieldByName('Flag_Active').AsString = '0') then
  begin
    grBrowse.Canvas.Brush.Color := clRed;
    grBrowse.Canvas.Font.Color  := clWhite;
  end;

  grBrowse.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmBrowse.grBrowseGetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; State: TGridDrawState;
  StateEx: TGridDrawStateEx);
begin
  if (geActiveRow in StateEx) and
     sbSearch.Down            and
     (not grBrowse.Focused)   then
    Background := clMoneyGreen;
end;

procedure TfmBrowse.sbFilterClick(Sender: TObject);
begin
  grBrowse.SetFocus;
  grBrowse.Filtered  := sbFilter.Down;
  if sbFilter.Down then
  begin
    grBrowse.OptionsEx := grBrowse.OptionsEx + [dgeFilterBar];
    sbSearchClick(nil);
  end
  else
    grBrowse.OptionsEx := grBrowse.OptionsEx - [dgeFilterBar];
end;

procedure TfmBrowse.sbSearchClick(Sender: TObject);
begin
  grBrowse.SetFocus;
  if sbSearch.Down then
  begin
    grBrowse.OptionsEx := grBrowse.OptionsEx + [dgeSearchBar];
    sbFilterClick(nil);
  end
  else
    grBrowse.OptionsEx := grBrowse.OptionsEx - [dgeSearchBar];
end;

procedure TfmBrowse.rpBrowsePrintDialogClose(Sender: TObject);
begin
  if Assigned(rpBrowse.PrintDialog) then
    FPrintToFile := rpBrowse.PrintDialog.PrintToFile;
end;

procedure TfmBrowse.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  ppHeaderBand1.Visible := (not FPrintToFile) or
                           (FPrintToFile and (rpBrowse.PageNo = 1));
end;

procedure TfmBrowse.ppFooterBand1BeforePrint(Sender: TObject);
begin
  ppFooterBand1.Visible := not FPrintToFile;
end;

procedure TfmBrowse.rpBrowsePrintingComplete(Sender: TObject);
begin
  FPrintToFile := False;
end;

procedure TfmBrowse.GridSaveLayout(AGrid: TDBGridAux);
begin
  AGrid.Columns.SaveToFile(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName))+Self.Name+'.'+AGrid.Name+'.grl');
end;

procedure TfmBrowse.GridLoadLayout(AGrid: TDBGridAux);
var
  i, j : integer;
  Founded : boolean;
begin
  if FileExists(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName))+Self.Name+'.'+AGrid.Name+'.grl') then
  begin
    AGrid.Columns.LoadFromFile(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName))+Self.Name+'.'+AGrid.Name+'.grl');
    with hDataModule do
    begin
      for i := 0  to AGrid.DataSource.Dataset.Fields.Count - 1 do
        if AGrid.DataSource.Dataset.Fields[i].Visible then
        begin
          Founded := False;
          for j := 0 to AGrid.Columns.Count - 1 do
            if AGrid.DataSource.Dataset.Fields[i].FieldName = AGrid.Columns[j].FieldName then
            begin
              Founded := True;
              Break;
            end;

          if not Founded then
            AGrid.Columns.Add.Field := AGrid.DataSource.Dataset.Fields[i];
        end;

      for i := AGrid.Columns.Count - 1  downto 0 do
      begin
        Founded := False;
        for j := 0 to AGrid.DataSource.Dataset.Fields.Count - 1 do
          if AGrid.DataSource.Dataset.Fields[j].FieldName = AGrid.Columns[i].FieldName then
          begin
            Founded := AGrid.DataSource.Dataset.Fields[j].Visible;
            Break;
          end;

        if not Founded then
          AGrid.Columns.Delete(i);
      end;
    end;
  end;
end;

end.
