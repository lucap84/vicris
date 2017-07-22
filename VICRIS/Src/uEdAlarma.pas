unit uEdAlarma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdAlarma, uEdit, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  Menus, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, DBSearch;

type
  TfmEdAlarma = class(TfmEdit)
    cbFlgFrq: TDBLookupComboBox;
    cbFlgAtv: TDBLookupComboBox;
    deCodEvt: TDBSearch;
    deDesEvt: TEdit;
    laEvt: TLabel;
    laFlgFrq: TLabel;
    laFlgAtv: TLabel;
    laDesOgg: TLabel;
    deDesOgg: TDBEdit;
    laDesTxt: TLabel;
    deDesTxt: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdAlarma: TfmEdAlarma;

implementation

{$R *.dfm}

procedure TfmEdAlarma.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdAlarma;
end;

procedure TfmEdAlarma.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdAlarma := nil;
end;

end.
