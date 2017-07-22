unit uEdIncarico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Menus,
  ActnList, StdCtrls, Buttons, ExtCtrls, udmEdIncarico, Mask, DBCtrls;

type
  TfmEdIncarico = class(TfmEdit)
    laDesInc: TLabel;
    deDesInc: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdIncarico: TfmEdIncarico;

implementation

{$R *.dfm}

procedure TfmEdIncarico.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdIncarico;
end;

procedure TfmEdIncarico.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdIncarico := nil;
end;

end.
