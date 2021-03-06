unit uMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, Menus, udmGlobal, udmSearch, jpeg, ExtCtrls, udmChkUsr,
  uChkUsr, uGlobals, ComCtrls, Buttons, GIFImage;

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
    miGenerale: TMenuItem;
    acTileHor: TAction;
    acTileVer: TAction;
    acCascade: TAction;
    acArrange: TAction;
    miView: TMenuItem;
    miArrange: TMenuItem;
    miTileHor: TMenuItem;
    miTileVer: TMenuItem;
    miCascade: TMenuItem;
    acAbout: TAction;
    miAbout: TMenuItem;
    sbMenu: TStatusBar;
    acCli: TAction;
    miCli: TMenuItem;
    acMan: TAction;
    acLoc: TAction;
    acCatPro: TAction;
    acPro: TAction;
    miMagazzino: TMenuItem;
    miCatPro: TMenuItem;
    miPro: TMenuItem;
    miMan: TMenuItem;
    miLoc: TMenuItem;
    imgBackMenu: TImage;
    miSubMan: TMenuItem;
    acSubMan: TAction;
    acVen: TAction;
    miVen: TMenuItem;
    sbCli: TSpeedButton;
    sbMan: TSpeedButton;
    sbVen: TSpeedButton;
    sbClose: TSpeedButton;
    sbProdotti: TSpeedButton;
    acPrn: TAction;
    miPrn: TMenuItem;
    acAnlVen: TAction;
    miAnalisi: TMenuItem;
    miAnlVen: TMenuItem;
    sbAnalisiVendite: TSpeedButton;
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
    procedure acCliExecute(Sender: TObject);
    procedure acManExecute(Sender: TObject);
    procedure acLocExecute(Sender: TObject);
    procedure acProExecute(Sender: TObject);
    procedure acCatProExecute(Sender: TObject);
    procedure acSubManExecute(Sender: TObject);
    procedure acVenExecute(Sender: TObject);
    procedure acPrnExecute(Sender: TObject);
    procedure acAnlVenExecute(Sender: TObject);
  end;

var
  hinstDLL: LongWord;
  hhookSysMsg: Longword;
  fmMenu: TfmMenu;

implementation

uses
  //Generale
  uBrCliente, uBrMandante, uBrSubMandante, uBrLocalita, uBrProvincia,
  //Magazzino
  uBrCatProdotto, uBrProdotto, uBrVendita,
  //Analisi
  uBrAnalisiVendite,
  uAbout;
{$R *.dfm}

function KeyboardHookProcedure(nCode: Integer; wParam: WPARAM; lParam: LPARAM): integer; stdcall;
var
  KeyUp : bool;
begin
  Result := 0;

  case ncode of
  HC_ACTION:
    begin
      {We trap the keystrokes here}
      {Is this a key up message?}
      KeyUp := ((lParam and (1 shl 31)) <> 0);

      {if KeyUp then increment the key count}
      if (KeyUp <> false) then
      begin
      end { (KeyUp <> false) };

      Case wParam Of
      VK_DECIMAL:
        begin
          {if KeyUp}
          if (KeyUp <> false) then
          begin
            {Create a UpArrow keyboard event}
            keybd_event (VkKeyScan(','), 0, 0, 0);
            keybd_event (VkKeyScan(','), 0, KEYEVENTF_KEYUP, 0);
          end { (KeyUp <> false) };
          {Swallow the keystroke}
          Result := -1;
          exit
        end;
      end;
      Result := 0
    end; {HC_ACTION}
  HC_NOREMOVE:
    begin
      {This is a keystroke message, but the keystroke message}
      {has not been removed from the message queue, since an}
      {application has called PeekMessage() specifying PM_NOREMOVE}
      Result := 0;
      exit
    end;
  end { case code }; {case code}
  if (ncode < 0) then
    {Call the next hook in the hook chain}
    Result := CallNextHookEx (hhookSysMsg, ncode, wParam, lParam)
end;

procedure TfmMenu.acAnlVenExecute(Sender: TObject);
begin
  if not Assigned(fmBrAnalisiVendite) then
    fmBrAnalisiVendite := TfmBrAnalisiVendite.Create(Self);
end;

procedure TfmMenu.acCatProExecute(Sender: TObject);
begin
  if not Assigned(fmBrCatProdotto) then
    fmBrCatProdotto := TfmBrCatProdotto.Create(Self);
end;

procedure TfmMenu.acCliExecute(Sender: TObject);
begin
  if not Assigned(fmBrCliente) then
    fmBrCliente := TfmBrCliente.Create(Self);
end;

procedure TfmMenu.acLocExecute(Sender: TObject);
begin
  if not Assigned(fmBrLocalita) then
    fmBrLocalita := TfmBrLocalita.Create(Self);
end;

procedure TfmMenu.acManExecute(Sender: TObject);
begin
  if not Assigned(fmBrMandante) then
    fmBrMandante := TfmBrMandante.Create(Self);
end;

procedure TfmMenu.acPrnExecute(Sender: TObject);
begin
  if not Assigned(fmBrProvincia) then
    fmBrProvincia := TfmBrProvincia.Create(Self);
end;

procedure TfmMenu.acProExecute(Sender: TObject);
begin
  if not Assigned(fmBrProdotto) then
    fmBrProdotto := TfmBrProdotto.Create(Self);
end;

procedure TfmMenu.acSubManExecute(Sender: TObject);
begin
  if not Assigned(fmBrSubMandante) then
    fmBrSubMandante := TfmBrSubMandante.Create(Self);
end;

procedure TfmMenu.acVenExecute(Sender: TObject);
begin
  if not Assigned(fmBrVendita) then
    fmBrVendita := TfmBrVendita.Create(Self);
end;

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
  AUser, APsw : String;
begin
  hinstDLL    := GetModuleHandle(nil);
  hhookSysMsg := SetWindowsHookEx (WH_KEYBOARD, @KeyboardHookProcedure, hinstDLL, GetCurrentThreadId);

  dmChkUsr := TdmChkUsr.Create(nil);
  dmChkUsr.dmConnect;

  APsw  :='';
  AUser :='';
  if ParamCount > 0 then
    AUser := ParamStr(1);
  if ParamCount > 1 then
    APsw := ParamStr(2);

  if not Assigned(fmChkUsr) then
    fmChkUsr := TfmChkUsr.Create(Self);

  if (APsw  = '') or (AUser = '') then
    fmChkUsr.ShowModal
  else
  begin
    fmChkUsr.ModalResult := mrOk;
    fmChkUsr.hUsr        := AUser;
    fmChkUsr.hPwd        := APsw;
  end;

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

procedure TfmMenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := False;
  if (MessageDlg('Sei sicuro di voler uscire?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    CanClose := True;
    dmChkUsr.SetUsrAtv(hUsr, hApl, '0');
  end;
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

procedure TfmMenu.acArrangeExecute(Sender: TObject);
begin
  ArrangeIcons;
end;

procedure TfmMenu.acAboutExecute(Sender: TObject);
begin
  if not Assigned(fmAbout) then
    fmAbout := TfmAbout.Create(Self);
  fmAbout.ShowModal;
  fmAbout.Free;
  fmAbout := nil;
end;

end.
