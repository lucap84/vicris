unit uEdUsr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Menus,
  ActnList, StdCtrls, Buttons, ExtCtrls, udmEdUsr, Mask, DBCtrls, udmGlobal,
  ComCtrls, Grids, DBGrids, DBClient, uGlobals, udmDBCore, DBGridAux;

type
  TfmEdUsr = class(TfmEdit)
    pcUsr: TPageControl;
    teUsr: TTabSheet;
    laCodApl: TLabel;
    laDesApl: TLabel;
    laDbsNom: TLabel;
    Label1: TLabel;
    deCodPwd: TDBEdit;
    cbFlgTipUsr: TDBLookupComboBox;
    deDesUsr: TDBEdit;
    deCodUsr: TDBEdit;
    teUsrAplTrz: TTabSheet;
    Splitter1: TSplitter;
    grUsrAplTrz: TDBGridAux;
    ckFlgAtv: TDBCheckBox;
    grUsrApl: TDBGridAux;
    ckFlgAbl: TDBCheckBox;
    ckFlgIrt: TDBCheckBox;
    ckFlgUpd: TDBCheckBox;
    ckFlgDel: TDBCheckBox;
    ckFlgVis: TDBCheckBox;
    ckFlgPrt: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pcUsrChange(Sender: TObject);
    procedure acgrDeleteUpdate(Sender: TObject);
    procedure pcUsrChanging(Sender: TObject; var AllowChange: Boolean);
    procedure acCommitExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdUsr: TfmEdUsr;

implementation

{$R *.dfm}

procedure TfmEdUsr.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdUsr;
end;

procedure TfmEdUsr.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdUsr := nil;
end;

procedure TfmEdUsr.pcUsrChange(Sender: TObject);
begin
  inherited;
  if pcUsr.ActivePage = teUsrAplTrz then
  begin
    with TdmEdUsr(hDataModule) do
    begin
      if hdmState in [hdmInsert, hdmEdit] then
        dmIrtUsrAplTrz;
    end;
  end;
end;

procedure TfmEdUsr.acgrDeleteUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := False;
end;

procedure TfmEdUsr.pcUsrChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  if pcUsr.ActivePage = teUsrAplTrz then
  begin
    with TdmEdUsr(hDataModule) do
      if hdmState in [hdmInsert, hdmEdit] then
      begin
        dmDsApplyUpdates(cdsUsrApl);
        dmDsApplyUpdates(cdsUsrAplTrz);
      end;
  end;
end;

procedure TfmEdUsr.acCommitExecute(Sender: TObject);
begin
  pcUsr.ActivePage := teUsr;
  inherited;
end;

end.
