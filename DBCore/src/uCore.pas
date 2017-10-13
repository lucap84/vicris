unit uCore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmDBRoot, ppReport, Buttons, DBCtrls;

type
  TDBNavigatorHack = class(TDBNavigator);
  TfmCore = class;
  TfmCore = class(TForm)
  private
    { Private declarations }
    FOnPostCreate: TNotifyEvent;
    FhDataModule: TdmDBRoot;
    FhDataModuleClass: TdmDBRootClass;
    FhReport: TppReport;
    FhFirstActiveControl: TWinControl;
  protected
    procedure DoCreate(); override;
    procedure DoPostCreate; virtual;
  public
    { Public declarations }
    constructor Create(Owner: TComponent); override;
    destructor  Destroy;                   override;

    property hDataModule      : TdmDBRoot      read FhDataModule      write FhDataModule;
    property hDataModuleClass : TdmDBRootClass read FhDataModuleClass write FhDataModuleClass;

  published
    property hFirstActiveControl: TWinControl read FhFirstActiveControl write FhFirstActiveControl;
    property hReport : TppReport read FhReport write FhReport;
    property OnPostCreate : TNotifyEvent read FOnPostCreate write FOnPostCreate;
  end;

var
  fmCore: TfmCore;

implementation

constructor TfmCore.Create(Owner: TComponent);
var
  B: TNavigateBtn;
  i : integer;
begin
  inherited Create(Owner);
  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i] is TDBNavigator then
      for B := Low(TNavigateBtn) to High(TNavigateBtn) do
        with TDBNavigatorHack(Self.Components[i]).Buttons[B] do
        begin
          case Index of
            nbFirst   : Caption := 'Inizio';
            nbPrior   : Caption := 'Prec.';
            nbNext    : Caption := 'Succ.';
            nbLast    : Caption := 'Fine';
            nbInsert  : Caption := 'Nuovo';
            nbDelete  : Caption := 'Cancella';
            nbEdit    : Caption := 'Varia';
            nbPost    : Caption := 'Registra';
            nbCancel  : Caption := 'Annulla';
            nbRefresh : Caption := 'Aggiorna';
          end;
          Layout   := blGlyphTop;
          Hint     := Caption;
          ShowHint := True;
        end;
end;

destructor TfmCore.Destroy;
begin
  inherited;
end;

procedure TfmCore.DoCreate;
begin
  inherited;
  DoPostCreate;
end;

procedure TfmCore.DoPostCreate;
begin
  if Assigned(FOnPostCreate) then
    FOnPostCreate(Self);
end;

end.
