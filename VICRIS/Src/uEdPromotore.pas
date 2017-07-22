unit uEdPromotore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdPromotore, uEdit, StdCtrls, Mask, DBCtrls, ActnList,
  Buttons, ExtCtrls, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Menus,
  DBSearch, udmSearch, udmDBCore;

type
  TfmEdPromotore = class(TfmEdit)
    laDesPmr: TLabel;
    deDesPmr: TDBEdit;
    laNumTel: TLabel;
    deNumTel1: TDBEdit;
    laNumCelFax: TLabel;
    deNumCel: TDBEdit;
    deNumTel2: TDBEdit;
    deNumFax: TDBEdit;
    laNaz: TLabel;
    laCta: TLabel;
    laDesInd: TLabel;
    deDesInd: TDBEdit;
    deCodCta: TDBSearch;
    deCodNaz: TDBSearch;
    deDesNaz: TEdit;
    deDesCta: TEdit;
    laDesNte: TLabel;
    deDesNte: TDBMemo;
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
  fmEdPromotore: TfmEdPromotore;

implementation

{$R *.dfm}

procedure TfmEdPromotore.ExitDlg(Sender: TObject);
begin
  if Sender = deCodCta then
    dmSearch.hDesKey := VarArrayOf([deCodNaz.Text, deCodCta.Text]);

  inherited;

  if (Sender = deCodNaz) and Assigned(deCodCta.Field) then
    if (deCodNaz.Text = '') and (hDataModule.hdmState <> hdmView) then
      deCodCta.Field.Clear;
end;

procedure TfmEdPromotore.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdPromotore;
end;

procedure TfmEdPromotore.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdPromotore := nil;
end;

procedure TfmEdPromotore.SearchDlg(Sender: TObject);
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
