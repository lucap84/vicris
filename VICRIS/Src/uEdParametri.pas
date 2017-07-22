unit uEdParametri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Menus,
  ActnList, StdCtrls, Buttons, ExtCtrls, ComCtrls, udmEdParametri;

type
  TfmEdParametri = class(TfmEdit)
    pcParametri: TPageControl;
    teParametri1: TTabSheet;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure CreateFormFromParametri;
  public
    { Public declarations }
  end;

var
  fmEdParametri: TfmEdParametri;

implementation

{$R *.dfm}

{ TfmEdParametri }

procedure TfmEdParametri.CreateFormFromParametri;
begin
  with TdmEd
end;

procedure TfmEdParametri.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdParametri;
end;

procedure TfmEdParametri.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdParametri := nil;
end;

end.
