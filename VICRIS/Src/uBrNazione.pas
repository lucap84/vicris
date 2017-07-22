unit uBrNazione;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  udmBrNazione,
  udmEdNazione, uEdNazione, uBrowse, ActnList, Grids, DBGrids, CRGrid,
  StdCtrls, Buttons, ExtCtrls, ppBands, ppCache, ppClass, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppVar, ppPrnabl, ppCtrls,
  ppParameter, TXComp, DBGridAux;

type
  TfmBrNazione = class(TfmBrowse)
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppParameterList1: TppParameterList;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppPageStyle1: TppPageStyle;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrNazione: TfmBrNazione;

implementation

{$R *.dfm}

procedure TfmBrNazione.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrNazione;
  hEditDataModuleClass := TdmEdNazione;
  hEditFormClass       := TfmEdNazione;
end;

procedure TfmBrNazione.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrNazione := nil;
end;

end.
