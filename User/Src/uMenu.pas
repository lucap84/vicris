unit uMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, Menus, udmGlobal, udmSearch, jpeg, ExtCtrls, udmChkUsr,
  uChkUsr, uGlobals, ComCtrls;

resourcestring
  stCreateError  = 'Errore nell''accesso al DataBase! Riavviare il programma!';

type
  TfmMenu = class(TForm)
    mmMenu: TMainMenu;
    miFile: TMenuItem;
    miStrumenti: TMenuItem;
    miHelp: TMenuItem;
    alMenu: TActionList;
    acExit: TAction;
    miExit: TMenuItem;
    acTileHor: TAction;
    acTileVer: TAction;
    acCascade: TAction;
    acArrange: TAction;
    miView: TMenuItem;
    miArrange: TMenuItem;
    miTileHor: TMenuItem;
    miTileVer: TMenuItem;
    miCascade: TMenuItem;
    N2: TMenuItem;
    acAbout: TAction;
    miAbout: TMenuItem;
    sbMenu: TStatusBar;
    acApl: TAction;
    miApl: TMenuItem;
    acUsr: TAction;
    miUsr: TMenuItem;
    procedure acCommonUpdate(Sender: TObject);
    procedure acExitExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acViewUpdate(Sender: TObject);
    procedure acTileHorExecute(Sender: TObject);
    procedure acTileVerExecute(Sender: TObject);
    procedure acCascadeExecute(Sender: TObject);
    procedure acArrangeExecute(Sender: TObject);
    procedure acAboutExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acAplExecute(Sender: TObject);
    procedure acUsrExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMenu: TfmMenu;

implementation

uses
  uAbout, uBrApl, uBrUsr;

{$R *.dfm}

procedure TfmMenu.acCommonUpdate(Sender: TObject);
begin
  dmChkUsr.SetFlgTrz(TAction(Sender).Name);
  TAction(Sender).Enabled := (TAction(Sender).Tag = 1) or hFlgAbl or (hTipUsr = '1');
end;

procedure TfmMenu.acExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmMenu.FormCreate(Sender: TObject);
var
  i : integer;
begin
  dmChkUsr := TdmChkUsr.Create(nil);
  dmChkUsr.dmConnect;
  if not Assigned(fmChkUsr) then
    fmChkUsr := TfmChkUsr.Create(Self);
  fmChkUsr.ShowModal;

  if (fmChkUsr.ModalResult = mrOk) and
     dmChkUsr.Login(fmChkUsr.hUsr, fmChkUsr.hPwd, Application.Title) then
  begin
    sbMenu.Panels[0].Text := hDesUsr;
    sbMenu.Panels[1].Text := hDesApl;

    dmGlobal := TdmGlobal.Create(nil);
    dmSearch := TdmSearch.Create(nil);

    if dmGlobal.dmConnect  and
       dmSearch.dmConnect  then
    begin
      dmChkUsr.SetUsrAtv(hUsr, hApl, '1');
      Self.WindowMenu := miView;
      for i := 0 to Self.ComponentCount - 1 do
        if (Self.Components[i] is TAction)       and
           (TAction(Self.Components[i]).Tag = 0) then
          dmChkUsr.IrtCodTrz(TAction(Self.Components[i]));
    end
    else
    begin
      MessageDlg(stCreateError, mtError, [mbOK], 0);
      Application.Terminate;
    end;
  end
  else
    Application.Terminate;

  fmChkUsr.Free;
  fmChkUsr := nil;
end;

procedure TfmMenu.acViewUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := MDIChildCount > 0;
end;

procedure TfmMenu.acTileHorExecute(Sender: TObject);
begin
  TileMode := tbHorizontal;
  Tile;
end;

procedure TfmMenu.acTileVerExecute(Sender: TObject);
begin
  TileMode := tbVertical;
  Tile;
end;

procedure TfmMenu.acCascadeExecute(Sender: TObject);
begin
  Cascade;
end;

procedure TfmMenu.acAboutExecute(Sender: TObject);
begin
  if not Assigned(fmAbout) then
    fmAbout := TfmAbout.Create(Self);
  fmAbout.ShowModal;
  fmAbout.Free;
  fmAbout := nil;
end;

procedure TfmMenu.acAplExecute(Sender: TObject);
begin
  if not Assigned(fmBrApl) then
    fmBrApl := TfmBrApl.Create(Self);
end;

procedure TfmMenu.acUsrExecute(Sender: TObject);
begin
  if not Assigned(fmBrUsr) then
    fmBrUsr := TfmBrUsr.Create(Self);
end;

procedure TfmMenu.acArrangeExecute(Sender: TObject);
begin
  ArrangeIcons;
end;

procedure TfmMenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  dmChkUsr.SetUsrAtv(hUsr, hApl, '0');
end;

end.
