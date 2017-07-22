unit uEdEvento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdEvento, uEdit, ComCtrls, DBEditDateTimePicker, StdCtrls,
  Mask, DBCtrls, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Menus,
  ActnList, Buttons, ExtCtrls;

type
  TfmEdEvento = class(TfmEdit)
    laDesEvt: TLabel;
    deDesEvt: TDBEdit;
    laDatEvt: TLabel;
    dtDatEvt: TDBEditDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdEvento: TfmEdEvento;

implementation

{$R *.dfm}

procedure TfmEdEvento.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdEvento;
end;

procedure TfmEdEvento.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdEvento := nil;
end;

end.
