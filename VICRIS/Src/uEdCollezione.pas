unit uEdCollezione;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdCollezione, uEdit, StdCtrls, Mask, DBCtrls, ActnList,
  Buttons, ExtCtrls, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Menus;

type
  TfmEdCollezione = class(TfmEdit)
    laDesClz: TLabel;
    deDesClz: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdCollezione: TfmEdCollezione;

implementation

{$R *.dfm}

procedure TfmEdCollezione.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdCollezione;
end;

procedure TfmEdCollezione.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdCollezione := nil;
end;

end.
