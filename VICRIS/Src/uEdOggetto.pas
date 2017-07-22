unit uEdOggetto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ActnList, StdCtrls, Buttons, ExtCtrls,
  udmEdOggetto, Mask, DBCtrls, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  Menus, DBSearch;

type
  TfmEdOggetto = class(TfmEdit)
    laCodCdu: TLabel;
    laDesOgg: TLabel;
    deDesOgg: TDBEdit;
    deCodCdu: TDBEdit;
    laUbi: TLabel;
    deCodUbi: TDBSearch;
    deDesUbi: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdOggetto: TfmEdOggetto;

implementation

{$R *.dfm}

procedure TfmEdOggetto.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdOggetto;
end;

procedure TfmEdOggetto.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdOggetto := nil;
end;

end.
