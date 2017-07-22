unit uEdApl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Menus,
  ActnList, StdCtrls, Buttons, ExtCtrls, udmEdApl, Mask, DBCtrls;

type
  TfmEdApl = class(TfmEdit)
    laCodApl: TLabel;
    deCodApl: TDBEdit;
    laDesApl: TLabel;
    deDesApl: TDBEdit;
    laDbsNom: TLabel;
    deDbsNom: TDBEdit;
    laDbsUsr: TLabel;
    deDbsUsr: TDBEdit;
    laDbsPwd: TLabel;
    deDbsPwd: TDBEdit;
    laFlgTipUsr: TLabel;
    cbFlgTipUsr: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdApl: TfmEdApl;

implementation

{$R *.dfm}

procedure TfmEdApl.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdApl;
end;

procedure TfmEdApl.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdApl := nil;
end;

end.
