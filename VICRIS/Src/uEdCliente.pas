unit uEdCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, uCore,
  udmEdCliente, udmSearch, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  Menus, ComCtrls, Grids, DBGrids, ppModule, raCodMod, ppSubRpt, udmDBCore,
  ppStrtch, ppMemo, DBGridAux, DBSearch, DBEditDateTimePicker, TXComp;

type
  TfmEdCliente = class(TfmEdit)
    pcCliente: TPageControl;
    teCliente: TTabSheet;
    laNome: TLabel;
    deNome: TDBEdit;
    deReferente: TDBEdit;
    laReferente: TLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLabel12: TppLabel;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    raCodeModule2: TraCodeModule;
    deIndirizzo: TDBMemo;
    laIndirizzo: TLabel;
    deSpedizione: TDBMemo;
    laSpedizione: TLabel;
    laCitta: TLabel;
    laCap: TLabel;
    laProvincia: TLabel;
    laTelefono: TLabel;
    laCellulare: TLabel;
    laFax: TLabel;
    laMail: TLabel;
    laSito: TLabel;
    laPartitaIva: TLabel;
    laCodiceFiscale: TLabel;
    laBanca: TLabel;
    deBanca: TDBEdit;
    laAbi: TLabel;
    laCab: TLabel;
    laIban: TLabel;
    laNote: TLabel;
    deNote: TDBMemo;
    deCitta: TDBEdit;
    deCap: TDBEdit;
    deTelefono: TDBEdit;
    deCellulare: TDBEdit;
    deFax: TDBEdit;
    deMail: TDBEdit;
    deSito: TDBEdit;
    dePartitaIVA: TDBEdit;
    deCodiceFiscale: TDBEdit;
    deAbi: TDBEdit;
    deCab: TDBEdit;
    deIban: TDBEdit;
    laLocalita: TLabel;
    deLocalita: TDBSearch;
    teCommenti: TTabSheet;
    grCommenti: TDBGridAux;
    deDesLocalita: TEdit;
    deProvincia: TDBSearch;
    deDesProvincia: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  public
    { Public declarations }
    procedure SetEditState(ADmState: TdmState); override;
  end;

var
  fmEdCliente: TfmEdCliente;

implementation

{$R *.dfm}

procedure TfmEdCliente.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdCliente;
end;

procedure TfmEdCliente.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdCliente := nil;
end;

procedure TfmEdCliente.SetEditState(ADmState: TdmState);
begin
  inherited;
  teCommenti.TabVisible := Self.hDataModule.hdmState <> hdmInsert;
end;

end.
