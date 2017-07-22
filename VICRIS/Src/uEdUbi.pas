unit uEdUbi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdUbi, uEdit, StdCtrls, Mask, DBCtrls, ppVar, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppDBBDE, Menus, ActnList, Buttons, ExtCtrls;

type
  TfmEdUbi = class(TfmEdit)
    laDesUbi: TLabel;
    deDesUbi: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdUbi: TfmEdUbi;

implementation

{$R *.dfm}

procedure TfmEdUbi.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdUbi;
end;

procedure TfmEdUbi.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdUbi := nil
end;

end.
