unit udmEdUsr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udmEdit, DB, DBAccess, Ora, DBClient, Provider, MemDS, uGlobals,
  uSupportLib;

type
  TdmEdUsr = class(TdmEdit)
    qyUsr: TOraQuery;
    poUsr: TDataSetProvider;
    cdsUsr: TClientDataSet;
    dsUsr: TDataSource;
    cdsUsrDES_USR: TStringField;
    cdsUsrFLG_TIP_USR: TStringField;
    cdsUsrDES_PDL: TStringField;
    cdsUsrDAT_AGG_REC: TDateTimeField;
    qyUsrApl: TOraQuery;
    poUsrApl: TDataSetProvider;
    cdsUsrApl: TClientDataSet;
    dsUsrApl: TDataSource;
    qyUsrAplTrz: TOraQuery;
    poUsrAplTrz: TDataSetProvider;
    cdsUsrAplTrz: TClientDataSet;
    dsUsrAplTrz: TDataSource;
    qyUsrAplTrzCOD_APL: TStringField;
    qyUsrAplTrzCOD_TRZ: TStringField;
    qyUsrAplTrzFLG_IRT: TStringField;
    qyUsrAplTrzFLG_UPD: TStringField;
    qyUsrAplTrzFLG_DEL: TStringField;
    qyUsrAplTrzFLG_VIS: TStringField;
    qyUsrAplTrzFLG_PRT: TStringField;
    qyUsrAplTrzFLG_ABL: TStringField;
    qyUsrAplTrzDES_PDL: TStringField;
    qyUsrAplTrzDAT_AGG_REC: TDateTimeField;
    qyUsrAplTrzDES_TRZ: TStringField;
    cdsUsrAplTrzCOD_APL: TStringField;
    cdsUsrAplTrzCOD_TRZ: TStringField;
    cdsUsrAplTrzFLG_IRT: TStringField;
    cdsUsrAplTrzFLG_UPD: TStringField;
    cdsUsrAplTrzFLG_DEL: TStringField;
    cdsUsrAplTrzFLG_VIS: TStringField;
    cdsUsrAplTrzFLG_PRT: TStringField;
    cdsUsrAplTrzFLG_ABL: TStringField;
    cdsUsrAplTrzDES_PDL: TStringField;
    cdsUsrAplTrzDAT_AGG_REC: TDateTimeField;
    cdsUsrAplTrzDES_TRZ: TStringField;
    osIrtUsrApl: TOraSQL;
    osIrtUsrAplTrz: TOraSQL;
    qyUsrAplCOD_USR: TStringField;
    qyUsrAplCOD_APL: TStringField;
    qyUsrAplFLG_ATV: TStringField;
    qyUsrAplDES_PDL: TStringField;
    qyUsrAplDAT_AGG_REC: TDateTimeField;
    qyUsrAplDES_APL: TStringField;
    cdsUsrAplCOD_APL: TStringField;
    cdsUsrAplFLG_ATV: TStringField;
    cdsUsrAplDES_PDL: TStringField;
    cdsUsrAplDAT_AGG_REC: TDateTimeField;
    cdsUsrAplDES_APL: TStringField;
    qyUsrAplFLG_TIP_USR: TStringField;
    cdsUsrAplFLG_TIP_USR: TStringField;
    cdsUsrCOD_USR: TStringField;
    cdsUsrCOD_PWD: TStringField;
    cdsUsrAplCOD_USR: TStringField;
    qyUsrAplTrzCOD_USR: TStringField;
    cdsUsrAplTrzCOD_USR: TStringField;
    procedure poUsrAplTrzGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure poUsrAplGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
  private
    { Private declarations }
  protected
    procedure dmAfterInsert(DataSet: TDataSet); override;
  public
    { Public declarations }
    procedure dmIrtUsrAplTrz;
  end;

var
  dmEdUsr: TdmEdUsr;

implementation

uses udmDBCore;

{$R *.dfm}

{ TdmEdUsr }

procedure TdmEdUsr.dmAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet = cdsUsr then
    cdsUsrFLG_TIP_USR.AsString := '0';
end;

procedure TdmEdUsr.dmIrtUsrAplTrz;
begin
  dmDsPost(cdsUsr);
  dmDsApplyUpdates(cdsUsr);
  with osIrtUsrApl do
  begin
    ParamByName('Cod_Usr').AsString     := cdsUsrCOD_USR.AsString;
    ParamByName('Flg_Tip_Usr').AsString := cdsUsrFLG_TIP_USR.AsString;
    ParamByName('Des_Pdl').AsString     := GetMachineName;
    Execute;
  end;
  with osIrtUsrAplTrz do
  begin
    ParamByName('Cod_Usr').AsString     := cdsUsrCOD_USR.AsString;
    ParamByName('Des_Pdl').AsString     := GetMachineName;

    if cdsUsrFLG_TIP_USR.AsString = '1' then
      ParamByName('Flg').AsString := '1'
    else
      ParamByName('Flg').AsString := '0';
    Execute;
  end;
  dmDsRefresh(cdsUsrApl);
  dmDsRefresh(cdsUsrAplTrz);
  dmDsEdit(cdsUsr);
  dmDsEdit(cdsUsrApl);
  dmDsEdit(cdsUsrAplTrz);
end;

procedure TdmEdUsr.poUsrAplTrzGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  inherited;
  TableName := 'USRAPLTRZ';
end;

procedure TdmEdUsr.poUsrAplGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
  inherited;
  TableName := 'USRAPL';
end;

end.
