unit udmBrowse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, Ora, udmDBRoot, udmGlobal;

type
  TdmBrowse = class(TdmDBRoot)
    procedure dmBrowseCreate(Sender: TObject);
  end;

var
  dmBrowse: TdmBrowse;

implementation

{$R *.dfm}

{ TdmBrowse }

procedure TdmBrowse.dmBrowseCreate(Sender: TObject);
var
  i : integer;
begin
  for I := 0 to ComponentCount - 1 do
    if (Components[I] is TOraQuery) then
    begin
      TOraQuery(Components[I]).FetchAll := True;
      TOraQuery(Components[I]).Session  := dmGlobal.OraGlobal;
    end;
  inherited;
end;

end.
