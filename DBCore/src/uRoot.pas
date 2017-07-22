unit uRoot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCore, udmDBRoot, udmDBCore, ppVar, ppBands, ppPrnabl, ppClass,
  ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport;

const
  WM_ONFORMREFRESH = WM_USER + 1;
  WM_ONFORMNEXT    = WM_USER + 2;
  WM_ONFORMPRIOR   = WM_USER + 3;

type
  TfmRootClass = class of TfmRoot;
  TfmRoot = class(TfmCore)
    procedure FormDestroy(Sender: TObject);
    procedure FormPostCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure OnFormRefresh(var Msg: TMessage);  message WM_ONFORMREFRESH;
    procedure OnFormNext(var Msg: TMessage);  message WM_ONFORMNEXT;
    procedure OnFormPrior(var Msg: TMessage);  message WM_ONFORMPRIOR;
  protected
    procedure FormRefresh(Sender: TObject); virtual;
    procedure FormNext(Sender: TObject); virtual;
    procedure FormPrior(Sender: TObject); virtual;
  public
    { Public declarations }
  end;

var
  fmRoot: TfmRoot;

implementation

{$R *.dfm}

procedure TfmRoot.FormDestroy(Sender: TObject);
begin
  if Assigned(hDataModule) then
  begin
    hDataModule.dmCloseAll;
    hDataModule.Free;
    hDataModule := nil;
  end;
end;

procedure TfmRoot.FormPostCreate(Sender: TObject);
begin
  if Assigned(hDataModuleClass)  and
     (not Assigned(hDataModule)) then
    hDataModule := hDataModuleClass.Create(nil);
  if Assigned(hFirstActiveControl) and
     hFirstActiveControl.CanFocus  then
    hFirstActiveControl.SetFocus
end;

procedure TfmRoot.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (hDataModule.hdmType = hdmWrite) and
     Assigned(Owner)                  then
    PostMessage(TForm(Owner).Handle, WM_ONFORMREFRESH, 0, 0);
  Action := caFree;
end;

procedure TfmRoot.OnFormRefresh(var Msg: TMessage);
begin
  FormRefresh(Self);
end;

procedure TfmRoot.FormRefresh(Sender: TObject);
begin
  with hDataModule do
    if hdmType = hdmRead then
      dmDsRefresh(hDataSet);
end;

procedure TfmRoot.FormNext(Sender: TObject);
begin
  //
end;

procedure TfmRoot.FormPrior(Sender: TObject);
begin
  //
end;

procedure TfmRoot.OnFormNext(var Msg: TMessage);
begin
  FormNext(Self);
end;

procedure TfmRoot.OnFormPrior(var Msg: TMessage);
begin
  FormPrior(Self);
end;

end.
