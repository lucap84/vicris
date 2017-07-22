unit uEdNazione;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdNazione, uEdit, StdCtrls, Mask, DBCtrls, ActnList, Buttons,
  ExtCtrls, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Menus;

type
  TfmEdNazione = class(TfmEdit)
    laDesNaz: TLabel;
    deDesNaz: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdNazione: TfmEdNazione;

implementation

{$R *.dfm}

procedure TfmEdNazione.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdNazione;
end;

procedure TfmEdNazione.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdNazione := nil;
end;

end.
