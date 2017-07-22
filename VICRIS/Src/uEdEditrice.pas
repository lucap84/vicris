unit uEdEditrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ActnList, StdCtrls, Buttons, ExtCtrls, udmEdEditrice,
  Mask, DBCtrls, udmSearch, DBSearch, ppVar, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDBBDE, Menus;

type
  TfmEdEditrice = class(TfmEdit)
    laDesCed: TLabel;
    laNaz: TLabel;
    laCta: TLabel;
    deCodNaz: TDBSearch;
    deDesNaz: TEdit;
    deDesCta: TEdit;
    deDesCed: TDBEdit;
    deCodCta: TDBSearch;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure ExitDlg(Sender: TObject); override;
    procedure SearchDlg(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  fmEdEditrice: TfmEdEditrice;

implementation

{$R *.dfm}

procedure TfmEdEditrice.ExitDlg(Sender: TObject);
begin
  if Sender = deCodCta then
    dmSearch.hDesKey := VarArrayOf([deCodNaz.Text, deCodCta.Text]);
  inherited;

  if (Sender = deCodNaz) and Assigned(deCodCta.Field) then
    if deCodNaz.Text = '' then
      deCodCta.Field.Clear;
end;

procedure TfmEdEditrice.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdEditrice;
end;

procedure TfmEdEditrice.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdEditrice := nil;
end;

procedure TfmEdEditrice.SearchDlg(Sender: TObject);
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

end.
