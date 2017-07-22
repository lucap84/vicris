unit udmRoot;

interface

uses
  SysUtils, Classes, Ora, udmDBCore, DBClient, DB, DBAccess;

type
  TdmRootClass = class of TdmRoot;
  TdmRoot = class(TdmDBCore)
  private
    { Private declarations }
  protected
    { Protected declarations }
    procedure dmSetSessionDefault; virtual;
    procedure SetDataSetState; virtual;
  public
    { Public declarations }
    constructor Create(Owner: TComponent); override;
    destructor  Destroy;                   override;

    procedure dmConnect; virtual;
    function  dmCommit: boolean; virtual;
    procedure dmDisConnect; virtual;
    procedure dmRollBack; virtual;
    procedure dmStartTransaction; virtual;
  end;

var
  dmRoot: TdmRoot;

implementation

{$R *.dfm}

{ TdmDBRoot }

function TdmDBRoot.dmCommit: boolean;
begin
  Result := True;
end;

procedure TdmDBRoot.dmRollBack;
begin
  //do nothing
end;

procedure TdmDBRoot.dmStartTransaction;
begin
  //do nothing
end;

procedure TdmDBRoot.dmConnect;
begin
  //do nothing
end;

procedure TdmDBRoot.dmDisConnect;
begin
  //do nothing
end;

constructor TdmDBRoot.Create(Owner: TComponent);
begin
  inherited;
  dmSetSessionDefault;
  dmConnect;
  dmStartTransaction;
end;

destructor TdmDBRoot.Destroy;
begin
  dmDisConnect;
  inherited;
end;

procedure TdmDBRoot.SetDataSetState;
var
  i : integer;
begin
  inherited;
  for i := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[i] is TOraQuery then
      TOraQuery(Self.Components[i]).ReadOnly := (hdmType = hdmRead) or (hdmState = hdmView);
    if Self.Components[i] is TClientDataSet then
      TClientDataSet(Self.Components[i]).ReadOnly := (hdmType = hdmRead)  or (hdmState = hdmView);
  end;
end;

procedure TdmDBRoot.dmSetSessionDefault;
begin
  //do nothing
end;

end.
