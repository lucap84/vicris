unit uRoot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCore, udmDBRoot, udmDBCore, ppVar, ppBands, ppPrnabl, ppClass,
  ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport, DBGridAux;

const
  WM_ONFORMREFRESH = WM_USER + 1;
  WM_ONFORMNEXT    = WM_USER + 2;
  WM_ONFORMPRIOR   = WM_USER + 3;

type
  TfmRootClass = class of TfmRoot;
  TfmRoot = class(TfmCore)
    procedure FormDestroy(Sender: TObject);
    procedure FormPostCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure GridLoadLayout(AGrid: TDBGridAux);
    procedure GridSaveLayout(AGrid: TDBGridAux);

    procedure OnFormRefresh(var Msg: TMessage);  message WM_ONFORMREFRESH;
    procedure OnFormNext(var Msg: TMessage);  message WM_ONFORMNEXT;
    procedure OnFormPrior(var Msg: TMessage);  message WM_ONFORMPRIOR;
  protected
    procedure FormRefresh(Sender: TObject); virtual;
    procedure FormNext(Sender: TObject); virtual;
    procedure FormPrior(Sender: TObject); virtual;
  public
    { Public declarations }
  end;

var
  fmRoot: TfmRoot;

implementation

{$R *.dfm}

procedure TfmRoot.FormDestroy(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i] is TDBGridAux then
      GridSaveLayout(TDBGridAux(Self.Components[i]));

  if Assigned(hDataModule) then
  begin
    hDataModule.dmCloseAll;
    hDataModule.Free;
    hDataModule := nil;
  end;
end;

procedure TfmRoot.FormPostCreate(Sender: TObject);
var
  i : integer;
begin
  if Assigned(hDataModuleClass)  and
     (not Assigned(hDataModule)) then
    hDataModule := hDataModuleClass.Create(nil);
  if Assigned(hFirstActiveControl) and
     hFirstActiveControl.CanFocus  then
    hFirstActiveControl.SetFocus;

  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i] is TDBGridAux then
    begin
      GridLoadLayout(TDBGridAux(Self.Components[i]));
      TDBGridAux(Self.Components[i]).TitleFont.Style := TDBGridAux(Self.Components[i]).TitleFont.Style + [fsBold];
      TDBGridAux(Self.Components[i]).Font.Style      := TDBGridAux(Self.Components[i]).Font.Style      - [fsBold];
    end;
end;

procedure TfmRoot.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (hDataModule.hdmType = hdmWrite) and
     Assigned(Owner)                  then
    PostMessage(TForm(Owner).Handle, WM_ONFORMREFRESH, 0, 0);
  Action := caFree;
end;

procedure TfmRoot.OnFormRefresh(var Msg: TMessage);
begin
  FormRefresh(Self);
end;

procedure TfmRoot.FormRefresh(Sender: TObject);
begin
  with hDataModule do
    if hdmType = hdmRead then
      dmDsRefresh(hDataSet);
end;

procedure TfmRoot.FormNext(Sender: TObject);
begin
  //
end;

procedure TfmRoot.FormPrior(Sender: TObject);
begin
  //
end;

procedure TfmRoot.OnFormNext(var Msg: TMessage);
begin
  FormNext(Self);
end;

procedure TfmRoot.OnFormPrior(var Msg: TMessage);
begin
  FormPrior(Self);
end;

procedure TfmRoot.GridLoadLayout(AGrid: TDBGridAux);
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

procedure TfmRoot.GridSaveLayout(AGrid: TDBGridAux);
begin
  AGrid.Columns.SaveToFile(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName))+Self.Name+'.'+AGrid.Name+'.grl');
end;

end.
