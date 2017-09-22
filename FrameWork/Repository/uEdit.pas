unit uEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, uRoot, ActnList, StdCtrls, Buttons, ExtCtrls, udmDBCore, udmSearch, DBCtrls,
  Mask, DBSearch, udmGlobal, Ora, udmEdit, Menus, CRGrid, DBClient, ppVar, DBGridAux,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppDBBDE, DBEditDateTimePicker, TXComp, ComCtrls;

type
  TfmEditClass = class of TfmEdit;
  TfmEdit = class(TfmRoot)
    pnTools: TPanel;
    bbCommit: TBitBtn;
    bbRollBack: TBitBtn;
    alEdit: TActionList;
    acCommit: TAction;
    acRollBack: TAction;
    bbPrior: TBitBtn;
    bbNext: TBitBtn;
    acPrior: TAction;
    acNext: TAction;
    bbPrint: TBitBtn;
    acPrint: TAction;
    pugr: TPopupMenu;
    migrDelete: TMenuItem;
    acgrDelete: TAction;
    plEdit: TppBDEPipeline;
    rpEdit: TppReport;
    ppHeaderBand1: TppHeaderBand;
    pplaTitle: TppLabel;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    svDateTime: TppSystemVariable;
    svPageNo: TppSystemVariable;
    pplaDateSlash: TppLabel;
    svPageCount: TppSystemVariable;
    laPag: TppLabel;
    ppLine2: TppLine;
    acNumMan: TAction;
    rbExtraOptions: TExtraOptions;
    procedure acRollBackExecute(Sender: TObject);
    procedure acRollBackUpdate(Sender: TObject);
    procedure acCommitExecute(Sender: TObject);
    procedure acCommitUpdate(Sender: TObject);
    procedure acNextUpdate(Sender: TObject);
    procedure acNextExecute(Sender: TObject);
    procedure acPriorExecute(Sender: TObject);
    procedure acPriorUpdate(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acPrintUpdate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acgrDeleteExecute(Sender: TObject);
    procedure acgrDeleteUpdate(Sender: TObject);
    procedure acNumManUpdate(Sender: TObject);
    procedure acNumManExecute(Sender: TObject);
  private
    { Private declarations }
    procedure GetDes(ADescriptor : TdmSearch; Sender: Tobject);
    procedure UpdateControls;
  protected
    procedure KeyUpDlg(Sender: TObject; var Key: Word; Shift: TShiftState);  virtual;
    procedure ExitDlg(Sender : TObject); virtual;
    procedure SearchDlg(Sender: TObject); virtual;
  public
    { Public declarations }
    procedure SetEditState(ADmState: TdmState); virtual;
  end;

var
  fmEdit: TfmEdit;

implementation

{$R *.dfm}

procedure TfmEdit.acRollBackExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TfmEdit.acRollBackUpdate(Sender: TObject);
begin
  //
end;

procedure TfmEdit.acCommitExecute(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
  begin
    if (Self.Components[i] is TDBEdit)                           and
        Assigned(TDBEdit(Self.Components[i]).DataSource)         and
        Assigned(TDBEdit(Self.Components[i]).DataSource.DataSet) and
        (TDBEdit(Self.Components[i]).DataSource.DataSet.State in [dsEdit, dsInsert]) and
        Assigned(TDBEdit(Self.Components[i]).Field)              and
       (TDBEdit(Self.Components[i]).Field.AsString = '')         then
      TDBEdit(Self.Components[i]).Field.Clear;
    if (Self.Components[i] is TDBEditDateTimePicker)                   and
        Assigned(TDBEditDateTimePicker(Self.Components[i]).DataSource) and
        Assigned(TDBEditDateTimePicker(Self.Components[i]).DataSource.DataSet) and
        (TDBEditDateTimePicker(Self.Components[i]).DataSource.DataSet.State in [dsEdit, dsInsert]) and
        Assigned(TDBEditDateTimePicker(Self.Components[i]).Field)      and
       (TDBEditDateTimePicker(Self.Components[i]).Field.AsString = '') then
      TDBEditDateTimePicker(Self.Components[i]).Field.Clear;
    if (Self.Components[i] is TDBSearch)                   and
        Assigned(TDBSearch(Self.Components[i]).DataSource) and
        Assigned(TDBSearch(Self.Components[i]).DataSource.DataSet) and
        (TDBSearch(Self.Components[i]).DataSource.DataSet.State in [dsEdit, dsInsert]) and
        Assigned(TDBSearch(Self.Components[i]).Field)      and
       (TDBSearch(Self.Components[i]).Field.AsString = '') then
      TDBSearch(Self.Components[i]).Field.Clear;
  end;
  if hDataModule.dmCommit then
  begin
    if (hDataModule.hdmState = hdmInsert) and
       Assigned(Self.Owner)               then
    begin
      TdmEdit(Self.hDataModule).dmInsert;
      SetEditState(hdmInsert);
      for i := 0 to Self.ComponentCount - 1 do
        if (Self.Components[i] is TPageControl)  and
           (TPageControl(Self.Components[i]).Align = alClient) then
        begin
          TPageControl(Self.Components[i]).TabIndex := 0;
          Break;
        end;

      if Assigned(Self.hFirstActiveControl) then
        Self.hFirstActiveControl.SetFocus;
    end
    else
      Self.Close;
  end;
end;

procedure TfmEdit.acCommitUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (hDataModule.hdmState in [hdmInsert, hdmEdit]);
end;

procedure TfmEdit.ExitDlg(Sender: TObject);
begin
  GetDes(dmSearch, Sender);
end;

procedure TfmEdit.KeyUpDlg(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 8) or (Key = 46) then
  begin
    if (not Assigned(TDBSearch(Sender).DataSource)) or
       (Assigned(TDBSearch(Sender).DataSource)      and
       (TDBSearch(Sender).DataSource.DataSet.State <> dsBrowse)) then
    begin
      TDBSearch(Sender).Clear;
      ExitDlg(Sender);
    end;
  end;
end;

procedure TfmEdit.GetDes(ADescriptor : TdmSearch; Sender: Tobject);
var
  App: array[0..254] of char;
  Des: string;
begin
  with TDBSearch(Sender) do
    if Assigned(ADescriptor) then
    begin
      ADescriptor.hDesResult    := null;
      FillChar(App, Length(TDBSearch(Sender).Text), Ord('z'));
      if (Trim(TDBSearch(Sender).Text) <> '')   and
         (Length(TDBSearch(Sender).Text) < 256) and
         (TDBSearch(Sender).Text <> Copy(App,0,Length(TDBSearch(Sender).Text)))      then
      begin
        if VarIsNull(ADescriptor.hDesKey) then
          ADescriptor.hDesKey := TDBSearch(Sender).Text;
        Des := ADescriptor.dmSearchValue(TDBSearch(Sender).Tag, 'D');

        if Des <> '' then
        begin
          if Assigned(TDBSearch(Sender).hCmpDes) then
          begin
            if TDBSearch(Sender).hCmpDes is TDBEdit then
            begin
              TDBEdit(TDBSearch(Sender).hCmpDes).Text    := Des;
              if TDBEdit(TDBSearch(Sender).hCmpDes).ShowHint then
                TDBEdit(TDBSearch(Sender).hCmpDes).Hint  := Des;
            end;
            if TDBSearch(Sender).hCmpDes is TEdit then
            begin
              TEdit(TDBSearch(Sender).hCmpDes).Text    := Des;
              if TEdit(TDBSearch(Sender).hCmpDes).ShowHint then
                TEdit(TDBSearch(Sender).hCmpDes).Hint  := Des;
            end;
          end;
        end
        else
        begin
          if TDBSearch(Sender).CanFocus then
            TDBSearch(Sender).SetFocus;
          raise Exception.Create(stRecNotFound);
        end;
      end
      else
        if (Trim(TDBSearch(Sender).Text) = '') and Assigned(TDBSearch(Sender).hCmpDes) then
        begin
          if TDBSearch(Sender).hCmpDes is TDBEdit then
          begin
            TDBEdit(TDBSearch(Sender).hCmpDes).Text := '';
            TDBEdit(TDBSearch(Sender).hCmpDes).Hint := '';
          end;
          if TDBSearch(Sender).hCmpDes is TEdit then
          begin
            TEdit(TDBSearch(Sender).hCmpDes).Text   := '';
            TEdit(TDBSearch(Sender).hCmpDes).Hint   := '';
          end;
        end;

      ADescriptor.hDesKey := Null;
    end;
end;

procedure TfmEdit.SearchDlg(Sender: TObject);

  procedure Search(ASearcher: TdmSearch; Sender : TObject);
  begin
    if Assigned(ASearcher) then
    begin
      ASearcher.hDesResult    := null;
      ASearcher.hSearchResult := null;
      ASearcher.dmSearchValue(TDBSearch(Sender).Tag);
      if (not VarisNull(ASearcher.hSearchResult)) then
      begin
        if (not Assigned(TDBSearch(Sender).DataSource)) or
           (Assigned(TDBSearch(Sender).DataSource)      and
           (TDBSearch(Sender).DataSource.DataSet.State <> dsBrowse)) then
        begin
          if (not Assigned(TDBSearch(Sender).DataSource)) then
            TDBSearch(Sender).Text := ASearcher.hSearchResult[0]
          else
            TDBSearch(Sender).Field.Value := ASearcher.hSearchResult[0];
          if VarArrayHighBound(ASearcher.hSearchResult, VarArrayDimCount(ASearcher.hSearchResult)) = 1 then
          begin
            if VarIsNull(ASearcher.hDesKey) then
              ASearcher.hDesKey := TDBSearch(Sender).Text;
            ExitDlg(Sender);
          end;
        end;
      end;
    end;
  end;

begin
  if Self.hDataModule.hdmState <> hdmView then
    Search(dmSearch, Sender);
end;

procedure TfmEdit.UpdateControls;
var
  I, J: integer;
  AppQy: TOraQuery;
  AppDs: TDataSource;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    AppQy := nil;
    AppDs := nil;
    if (Components[I] is TDBMemo) then
    begin
      TDBMemo(Components[I]).ScrollBars := ssVertical;
    end;
    if (Components[I] is TDBSearch) then
    begin
      if TDBSearch(Components[I]).Enabled    and
         (TDBSearch(Components[I]).Tag <> 0) then
      begin
        TDBSearch(Components[I]).OnDblClick := SearchDlg;
        TDBSearch(Components[I]).OnExit     := ExitDlg;
//        TDBSearch(Components[I]).OnChange   := ExitDlg;
        TDBSearch(Components[I]).OnKeyUp    := KeyUpDlg;
        TDBSearch(Components[I]).ReadOnly   := True;
      end;
      if (TDBSearch(Components[I]).Tag <> 0)        and
         Assigned(TDBSearch(Components[I]).hCmpDes) then
        ExitDlg(TDBSearch(Components[I]));
    end;
    if (Components[I] is TDBLookUpComboBox) then
    begin
      if Assigned(TDBLookUpComboBox(Components[I]).DataSource) then
      begin
        for J := 0 to Self.hDataModule.ComponentCount - 1 do
        begin
          if (Self.hDataModule.Components[J] is TOraQuery) and
             (TOraQuery(Self.hDataModule.Components[J]).Name = TDBLookUpComboBox(Components[I]).Name+'_qy') then
            AppQy         := TOraQuery(Self.hDataModule.Components[J]);
          if (Self.hDataModule.Components[J] is TDataSource) and
             (TDataSource(Self.hDataModule.Components[J]).Name = TDBLookUpComboBox(Components[I]).Name+'_ds') then
            AppDs         := TDataSource(Self.hDataModule.Components[J]);
        end;

        if (not Assigned(AppQy)) and
           (not Assigned(AppDs)) then
        begin
          AppQy         := TOraQuery.Create(Self.hDataModule);
          AppQy.Session := TdmEdit(Self.hDataModule).OraSession;
          AppQy.Name    := TDBLookUpComboBox(Components[I]).Name+'_qy';
          AppDs         := TDataSource.Create(Self.hDataModule);
          AppDs.Name    := TDBLookUpComboBox(Components[I]).Name+'_ds';
        end;

        AppQy.SQL.Assign(dmGlobal.qyFilShr.SQL);
        AppDs.DataSet := AppQy;
        TDBLookUpComboBox(Components[I]).ListSource := AppDs;
        AppQy.ParamByName('Cod_Fil_Shr').AsString := TDBLookUpComboBox(Components[I]).DataField;
        AppQy.Open;
      end;
    end;
    if (Components[I] is TDBGridAux) then
    begin
      if Assigned(TDBGridAux(Components[I]).DataSource)                   and
         Assigned(TDBGridAux(Components[I]).DataSource.DataSet)           and
         (TDBGridAux(Components[I]).DataSource.DataSet is TClientDataSet) then
        TDBGridAux(Components[I]).PopupMenu := pugr;
    end;
  end;
end;

procedure TfmEdit.acNextUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Self.hDataModule.hdmState = hdmView;
end;

procedure TfmEdit.acNextExecute(Sender: TObject);
begin
  inherited;
  PostMessage(TForm(Owner).Handle, WM_ONFORMNEXT, 0, 0);
end;

procedure TfmEdit.acPriorExecute(Sender: TObject);
begin
  inherited;
  PostMessage(TForm(Owner).Handle, WM_ONFORMPRIOR, 0, 0);
end;

procedure TfmEdit.acPriorUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Self.hDataModule.hdmState = hdmView;
end;

procedure TfmEdit.acPrintExecute(Sender: TObject);
begin
  pplaTitle.Caption   := 'Scheda ' + Self.Caption;
  rpEdit.PrinterSetup.DocumentName := Self.Caption + '_' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now);
  rpEdit.PrinterSetup.PrinterName := 'Screen';
  rpEdit.Print;
end;

procedure TfmEdit.acPrintUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := Assigned(hReport) and (hDataModule.hdmState = hdmView);
end;

procedure TfmEdit.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (hDataModule.hdmState in [hdmInsert, hdmEdit]) then
    hDataModule.dmRollBack;
end;

procedure TfmEdit.acgrDeleteExecute(Sender: TObject);
var
  AppGr: TDBGridAux;
begin
  AppGr := nil;
  if (ActiveControl is TDBGridAux) then
    AppGr := TDBGridAux(ActiveControl);
  if(ActiveControl.Parent is TDBGridAux) then
    AppGr := TDBGridAux(ActiveControl.Parent);
  with hDataModule do
    dmDsDelete(TClientDataSet(AppGr.DataSource.DataSet));
end;

procedure TfmEdit.acgrDeleteUpdate(Sender: TObject);
var
  AppGr: TDBGridAux;
begin
  AppGr := nil;
  if (ActiveControl is TDBGridAux) then
    AppGr := TDBGridAux(ActiveControl);
  if(ActiveControl.Parent is TDBGridAux) then
    AppGr := TDBGridAux(ActiveControl.Parent);
  TAction(Sender).Enabled:=  (hDataModule.hdmState in [hdmInsert, hdmEdit]) and
                             Assigned(AppGr)                                and
                             Assigned(AppGr.DataSource)                     and
                             Assigned(AppGr.DataSource.DataSet)             and
                             (AppGr.DataSource.DataSet is TClientDataSet)   and
                             (not TClientDataSet(AppGr.DataSource.DataSet).IsEmpty);
end;

procedure TfmEdit.acNumManUpdate(Sender: TObject);
begin
  with TdmEdit(hDataModule) do
    TAction(Sender).Enabled := (hTipAttNum = hPrgAut) and (hdmState in [hdmInsert, hdmEdit]);
end;

procedure TfmEdit.acNumManExecute(Sender: TObject);
begin
  TdmEdit(hDataModule).hNumManPrv := True;
end;

procedure TfmEdit.SetEditState(ADmState: TdmState);
begin
  if Pos(' - [ ', Self.Caption) = 0 then
    case ADmState of
      hdmInsert : Self.Caption := Self.Caption + ' - [ Inserisci  ]';
      hdmEdit   : Self.Caption := Self.Caption + ' - [  Modifica  ]';
      hdmView   : Self.Caption := Self.Caption + ' - [ Visualizza ]';
    end;
  UpdateControls;
end;

end.
