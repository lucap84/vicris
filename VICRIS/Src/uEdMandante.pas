unit uEdMandante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ActnList, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, uCore,
  udmEdMandante, udmSearch, ppVar, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  Menus, ComCtrls, Grids, DBGrids, ppModule, raCodMod, ppSubRpt,
  ppStrtch, ppMemo, DBGridAux, TXComp;

type
  TfmEdMandante = class(TfmEdit)
    pcMandante: TPageControl;
    teMandante: TTabSheet;
    laNome: TLabel;
    deNome: TDBEdit;
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
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdMandante: TfmEdMandante;

implementation

{$R *.dfm}

procedure TfmEdMandante.FormCreate(Sender: TObject);
begin
  inherited;
  hDataModuleClass := TdmEdMandante;
end;

procedure TfmEdMandante.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEdMandante := nil;
end;

end.
