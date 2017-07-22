unit uEdProtocollo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Menus,
  ActnList, StdCtrls, Buttons, ExtCtrls, udmSearch, udmDBCore,
  udmEdProtocollo, Mask, DBCtrls, DBSearch, ComCtrls, DBEditDateTimePicker;

type
  TfmEdProtocollo = class(TfmEdit)
    cbFlgTipPtc: TDBLookupComboBox;
    laNaz: TLabel;
    deCodNaz: TDBSearch;
    deDesNaz: TEdit;
    deCodCta: TDBSearch;
    laCta: TLabel;
    laDesOgg: TLabel;
    deDesOgg: TDBEdit;
    laPtc: TLabel;
    deAaaPtc: TDBEdit;
    deCodPtc: TDBEdit;
    deDesCta: TEdit;
    deNumPtc: TDBEdit;
    laDatPtc: TLabel;
    laDatDoc: TLabel;
    laDatFin: TLabel;
    dtDatPtc: TDBEditDateTimePicker;
    dtDatDoc: TDBEditDateTimePicker;
    dtDatFin: TDBEditDateTimePicker;
    cbFlgFmtPtc: TDBLookupComboBox;
    laFlgFmtPtc: TLabel;
    laPer: TLabel;
    deCodPer: TDBSearch;
    deDesPer: TEdit;
    laInc: TLabel;
    deCodInc: TDBSearch;
    deDesInc: TEdit;
    laPmr: TLabel;
    deCodPmr: TDBSearch;
    deDesPmr: TEdit;
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
    procedure SetEditState(ADmState: TdmState); override;
  end;

var
  fmEdProtocollo: TfmEdProtocollo;

implementation

uses uCore;

{$R *.dfm}

procedure TfmEdProtocollo.ExitDlg(Sender: TObject);
begin
  if Sender = deCodCta then
    dmSearch.hDesKey := VarArrayOf([deCodNaz.Text, deCodCta.Text]);

  inherited;

  if (Sender = deCodNaz) and Assigned(deCodCta.Field) then
    if deCodNaz.Text = '' then
      deCodCta.Field.Clear;
end;

procedure TfmEdProtocollo.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdProtocollo;
end;

procedure TfmEdProtocollo.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdProtocollo := nil;
end;

procedure TfmEdProtocollo.SearchDlg(Sender: TObject);
begin
  if Sender = deCodCta then
    dmSearch.qyCta.ParamByName('Cod_Naz').AsString := deCodNaz.Text;

  if Sender = deCodPer then
  begin
    dmSearch.qyPer.ParamByName('Cod_Inc').AsString := deCodInc.Text;
    dmSearch.qyPer.ParamByName('Cod_Pmr').AsString := deCodPmr.Text;
  end;

  if Sender = deCodInc then
  begin
    dmSearch.qyInc.ParamByName('Cod_Aut').AsString := deCodPer.Text;
    dmSearch.qyInc.ParamByName('Cod_Pmr').AsString := deCodPmr.Text;
  end;

  if Sender = deCodPmr then
  begin
    dmSearch.qyPmr.ParamByName('Cod_Aut').AsString := deCodPer.Text;
    dmSearch.qyPmr.ParamByName('Cod_Inc').AsString := deCodInc.Text;
  end;

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

procedure TfmEdProtocollo.SetEditState(ADmState: TdmState);
begin
  inherited;
  cbFlgTipPtc.ReadOnly := not (ADmState = hdmInsert);
  cbFlgTipPtc.Enabled  := not cbFlgTipPtc.ReadOnly;
  dtDatPtc.ReadOnly    := cbFlgTipPtc.ReadOnly;
  dtDatPtc.Enabled     := cbFlgTipPtc.Enabled;
end;

end.
