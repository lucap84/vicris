unit uEdRuolo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Menus,
  ActnList, StdCtrls, Buttons, ExtCtrls,
  udmEdRuolo, ComCtrls, DBCtrls, Mask, DBSearch, DBEditDateTimePicker;

type
  TfmEdRuolo = class(TfmEdit)
    deCodInc: TDBSearch;
    deCodPmr: TDBSearch;
    deCodPer: TDBSearch;
    deDesPer: TEdit;
    deDesPmr: TEdit;
    deDesInc: TEdit;
    laInc: TLabel;
    laPmr: TLabel;
    laPer: TLabel;
    deDesNte: TDBMemo;
    laDesNte: TLabel;
    laDat: TLabel;
    laDatIni: TLabel;
    laDatFin: TLabel;
    dtDatIni: TDBEditDateTimePicker;
    dtDatFin: TDBEditDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdRuolo: TfmEdRuolo;

implementation

{$R *.dfm}

procedure TfmEdRuolo.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdRuolo;
end;

procedure TfmEdRuolo.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdRuolo := nil;
end;

end.
