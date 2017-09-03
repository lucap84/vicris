unit uEdSubMandante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Menus,
  ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  udmEdSubMandante;

type
  TfmEdSubMandante = class(TfmEdit)
    laDescrizione: TLabel;
    deDescrizione: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdSubMandante: TfmEdSubMandante;

implementation

{$R *.dfm}

procedure TfmEdSubMandante.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdSubMandante;
end;

procedure TfmEdSubMandante.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdSubMandante := nil;
end;

end.
