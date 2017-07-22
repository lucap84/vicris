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
    acAut: TAction;
    miBiblioteca: TMenuItem;
    miExit: TMenuItem;
    miAut: TMenuItem;
    acClz: TAction;
    miClz: TMenuItem;
    acPmr: TAction;
    miPmr: TMenuItem;
    acOgg: TAction;
    miOgg: TMenuItem;
    miGenerale: TMenuItem;
    N1: TMenuItem;
    acNaz: TAction;
    miNaz: TMenuItem;
    acCta: TAction;
    miCta: TMenuItem;
    acCed: TAction;
    miCed: TMenuItem;
    acPub: TAction;
    miPub: TMenuItem;
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
    miProtocollo: TMenuItem;
    acInc: TAction;
    miInc: TMenuItem;
    acPer: TAction;
    miPer: TMenuItem;
    acRol: TAction;
    miRol: TMenuItem;
    acPtc: TAction;
    miPtc: TMenuItem;
    acUbi: TAction;
    miUbi: TMenuItem;
    acEvt: TAction;
    N3: TMenuItem;
    miEvt: TMenuItem;
    acSkd: TAction;
    miSkd: TMenuItem;
    procedure acAutExecute(Sender: TObject);
    procedure acCommonUpdate(Sender: TObject);
    procedure acExitExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acClzExecute(Sender: TObject);
    procedure acPmrExecute(Sender: TObject);
    procedure acOggExecute(Sender: TObject);
    procedure acNazExecute(Sender: TObject);
    procedure acCtaExecute(Sender: TObject);
    procedure acCedExecute(Sender: TObject);
    procedure acPubExecute(Sender: TObject);
    procedure acViewUpdate(Sender: TObject);
    procedure acTileHorExecute(Sender: TObject);
    procedure acTileVerExecute(Sender: TObject);
    procedure acCascadeExecute(Sender: TObject);
    procedure acArrangeExecute(Sender: TObject);
    procedure acAboutExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acIncExecute(Sender: TObject);
    procedure acPerExecute(Sender: TObject);
    procedure acRolExecute(Sender: TObject);
    procedure acPtcExecute(Sender: TObject);
    procedure acUbiExecute(Sender: TObject);
    procedure acEvtExecute(Sender: TObject);
    procedure acSkdExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMenu: TfmMenu;

implementation

uses
  //Generale
  uBrAlarma, uBrNazione, uBrCitta, uBrEvento, uBrPromotore, uBrUbi, uAbout,
  //Biblioteca
  uBrAutore, uBrCollezione, uBrOggetto,
  uBrEditrice, uBrPubblicazione,
  //Protocollo
  uBrIncarico, uBrPersona, uBrRuolo, uBrProtocollo;

{$R *.dfm}

procedure TfmMenu.acAutExecute(Sender: TObject);
begin
  if not Assigned(fmBrAutore) then
    fmBrAutore := TfmBrAutore.Create(Self);
end;

procedure TfmMenu.acCtaExecute(Sender: TObject);
begin
  if not Assigned(fmBrCitta) then
    fmBrCitta := TfmBrCitta.Create(Self);
end;

procedure TfmMenu.acCedExecute(Sender: TObject);
begin
  if not Assigned(fmBrEditrice) then
    fmBrEditrice := TfmBrEditrice.Create(Self);
end;

procedure TfmMenu.acClzExecute(Sender: TObject);
begin
  if not Assigned(fmBrCollezione) then
    fmBrCollezione := TfmBrCollezione.Create(Self);
end;

procedure TfmMenu.acIncExecute(Sender: TObject);
begin
  if not Assigned(fmBrIncarico) then
    fmBrIncarico := TfmBrIncarico.Create(Self);
end;

procedure TfmMenu.acNazExecute(Sender: TObject);
begin
  if not Assigned(fmBrNazione) then
    fmBrNazione := TfmBrNazione.Create(Self);
end;

procedure TfmMenu.acOggExecute(Sender: TObject);
begin
  if not Assigned(fmBrOggetto) then
    fmBrOggetto := TfmBrOggetto.Create(Self);
end;

procedure TfmMenu.acPerExecute(Sender: TObject);
begin
  if not Assigned(fmBrPersona) then
    fmBrPersona := TfmBrPersona.Create(Self);
end;

procedure TfmMenu.acPmrExecute(Sender: TObject);
begin
  if not Assigned(fmBrPromotore) then
    fmBrPromotore := TfmBrPromotore.Create(Self);
end;

procedure TfmMenu.acPtcExecute(Sender: TObject);
begin
  if not Assigned(fmBrProtocollo) then
    fmBrProtocollo := TfmBrProtocollo.Create(Self);
end;

procedure TfmMenu.acPubExecute(Sender: TObject);
begin
  if not Assigned(fmBrPubblicazione) then
    fmBrPubblicazione := TfmBrPubblicazione.Create(Self);
end;

procedure TfmMenu.acRolExecute(Sender: TObject);
begin
  if not Assigned(fmBrRuolo) then
    fmBrRuolo := TfmBrRuolo.Create(Self);
end;

procedure TfmMenu.acCommonUpdate(Sender: TObject);
begin
  dmChkUsr.SetFlgTrz(TAction(Sender).Name);
  TAction(Sender).Enabled := (TAction(Sender).Tag = 1) or hFlgAbl or (hTipUsr = '1');
end;

procedure TfmMenu.acEvtExecute(Sender: TObject);
begin
  if not Assigned(fmBrEvento) then
    fmBrEvento := TfmBrEvento.Create(Self);
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

procedure TfmMenu.acUbiExecute(Sender: TObject);
begin
  if not Assigned(fmBrUbi) then
    fmBrUbi := TfmBrUbi.Create(Self);
end;

procedure TfmMenu.acViewUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := MDIChildCount > 0;
end;

procedure TfmMenu.acSkdExecute(Sender: TObject);
begin
  if not Assigned(fmBrAlarma) then
    fmBrAlarma := TfmBrAlarma.Create(Self);
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

procedure TfmMenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  dmChkUsr.SetUsrAtv(hUsr, hApl, '0');
end;

end.
