unit uCore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmDBRoot, ppReport;

type
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
begin
  inherited Create(Owner);
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
