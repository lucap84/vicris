unit uEdCitta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ActnList, StdCtrls, Buttons, ExtCtrls,
  udmEdCitta, Mask, DBCtrls, udmSearch, DBSearch, ppVar, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppDBBDE, Menus;

type
  TfmEdCitta = class(TfmEdit)
    laNaz: TLabel;
    laCta: TLabel;
    deCodNaz: TDBSearch;
    deDesCta: TDBEdit;
    deDesNaz: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdCitta: TfmEdCitta;

implementation

{$R *.dfm}

procedure TfmEdCitta.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdCitta;
end;

procedure TfmEdCitta.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdCitta := nil;
end;

end.
