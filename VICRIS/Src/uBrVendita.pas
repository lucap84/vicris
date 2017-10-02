unit uBrVendita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBrowse, TXComp, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ActnList, Grids, DBGrids, DBGridAux, StdCtrls, Buttons, ExtCtrls,
  udmBrVendita,
  udmEdVendita, uEdVendita;

type
  TfmBrVendita = class(TfmBrowse)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure grBrowseDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrVendita: TfmBrVendita;

implementation

{$R *.dfm}

procedure TfmBrVendita.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass     := TdmBrVendita;
  hEditDataModuleClass := TdmEdVendita;
  hEditFormClass       := TfmEdVendita;
end;

procedure TfmBrVendita.FormDestroy(Sender: TObject);
begin
  inherited;
  fmBrVendita := nil;
end;

procedure TfmBrVendita.grBrowseDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if Assigned(grBrowse.DataSource)         and
     Assigned(grBrowse.DataSource.DataSet) and
     Assigned(grBrowse.DataSource.DataSet.FindField('Flag_Vicris'))          and
     (grBrowse.DataSource.DataSet.FieldByName('Flag_Vicris').AsString = '0') then
  begin
    grBrowse.Canvas.Brush.Color := clSkyBlue;
    grBrowse.Canvas.Font.Color  := clWhite;
  end;

  grBrowse.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
