unit uEdProvincia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  Menus, ActnList, StdCtrls, Buttons, ExtCtrls, udmEdProvincia, Mask,
  DBCtrls;

type
  TfmEdProvincia = class(TfmEdit)
    laProvincia: TLabel;
    deProvincia: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdProvincia: TfmEdProvincia;

implementation

{$R *.dfm}

procedure TfmEdProvincia.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdProvincia;
end;

procedure TfmEdProvincia.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdProvincia := nil;
end;

end.
