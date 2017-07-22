program User;

uses
  Forms,
  uBrowse in '..\..\FrameWork\Repository\uBrowse.pas' {fmBrowse: TfmRoot},
  udmBrowse in '..\..\FrameWork\DBSrc\udmBrowse.pas' {dmBrowse: TdmDBRoot},
  uEdit in '..\..\FrameWork\Repository\uEdit.pas' {fmEdit},
  udmEdit in '..\..\FrameWork\DBSrc\udmEdit.pas' {dmEdit: TdmDBRoot},
  udmSearch in '..\Object\udmSearch.pas' {dmSearch: TDataModule},
  uMlSearch in '..\..\FrameWork\Object\uMlSearch.pas' {fmMlSearch},
  uSupportLib in '..\..\SharedUnit\uSupportLib.pas',
  uMenu in '..\Src\uMenu.pas' {fmMenu},
  udmGlobal in '..\..\SharedUnit\udmGlobal.pas' {dmGlobal: TDataModule},
  uAbout in '..\Src\uAbout.pas' {fmAbout},
  udmChkUsr in '..\..\FrameWork\Object\udmChkUsr.pas' {dmChkUsr: TDataModule},
  uChkUsr in '..\..\FrameWork\Object\uChkUsr.pas' {fmChkUsr},
  uGlobals in '..\..\SharedUnit\uGlobals.pas',
  udmBrApl in '..\DataModule\udmBrApl.pas' {dmBrApl: TdmDBRoot},
  uBrApl in '..\Src\uBrApl.pas' {fmBrApl: TfmRoot},
  udmEdApl in '..\DataModule\udmEdApl.pas' {dmEdApl: TdmDBRoot},
  uEdApl in '..\Src\uEdApl.pas' {fmEdApl: TfmRoot},
  udmBrUsr in '..\DataModule\udmBrUsr.pas' {dmBrUsr: TdmDBRoot},
  uBrUsr in '..\Src\uBrUsr.pas' {fmBrUsr: TfmRoot},
  udmEdUsr in '..\DataModule\udmEdUsr.pas' {dmEdUsr: TdmDBRoot},
  uEdUsr in '..\Src\uEdUsr.pas' {fmEdUsr: TfmRoot};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'USER';
  Application.CreateForm(TfmMenu, fmMenu);
  Application.Run;
end.
