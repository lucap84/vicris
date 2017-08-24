program VICRIS;

uses
  Forms,
  uBrowse in '..\..\FrameWork\Repository\uBrowse.pas' {fmBrowse: TfmRoot},
  udmBrowse in '..\..\FrameWork\DBSrc\udmBrowse.pas' {dmBrowse: TdmDBRoot},
  uEdit in '..\..\FrameWork\Repository\uEdit.pas' {fmEdit},
  udmEdit in '..\..\FrameWork\DBSrc\udmEdit.pas' {dmEdit: TdmDBRoot},
  udmEditAaa in '..\..\FrameWork\DBSrc\udmEditAaa.pas' {dmEditAaa: TdmDBRoot},
  uMlSearch in '..\..\FrameWork\Object\uMlSearch.pas' {fmMlSearch},
  udmChkUsr in '..\..\FrameWork\Object\udmChkUsr.pas' {dmChkUsr: TDataModule},
  uChkUsr in '..\..\FrameWork\Object\uChkUsr.pas' {fmChkUsr},
  uSupportLib in '..\..\SharedUnit\uSupportLib.pas',
  udmSearch in '..\Object\udmSearch.pas' {dmSearch: TDataModule},
  uMenu in '..\Src\uMenu.pas' {fmMenu},
  udmGlobal in '..\..\SharedUnit\udmGlobal.pas' {dmGlobal: TDataModule},
  uGlobals in '..\..\SharedUnit\uGlobals.pas',
  uAbout in '..\Src\uAbout.pas' {fmAbout},
  udmBrCliente in '..\DataModule\udmBrCliente.pas' {dmBrCliente: TdmDBRoot},
  uBrCliente in '..\Src\uBrCliente.pas' {fmBrCliente: TfmRoot},
  udmEdCliente in '..\DataModule\udmEdCliente.pas' {dmEdCliente: TdmDBRoot},
  uEdCliente in '..\Src\uEdCliente.pas' {fmEdCliente: TfmRoot},
  udmBrMandante in '..\DataModule\udmBrMandante.pas' {dmBrMandante: TdmDBRoot},
  uBrMandante in '..\Src\uBrMandante.pas' {fmBrMandante: TfmRoot},
  udmEdMandante in '..\DataModule\udmEdMandante.pas' {dmEdCliente: TdmDBRoot},
  uEdMandante in '..\Src\uEdMandante.pas' {fmEdMandante: TfmRoot},
  udmBrEvento in '..\DataModule\udmBrEvento.pas' {dmBrEvento: TdmDBRoot},
  udmEdEvento in '..\DataModule\udmEdEvento.pas' {dmEdEvento: TdmDBRoot},
  uBrEvento in '..\Src\uBrEvento.pas' {fmBrEvento: TfmRoot},
  uEdEvento in '..\Src\uEdEvento.pas' {fmEdEvento: TfmRoot},
  udmBrAlarma in '..\DataModule\udmBrAlarma.pas' {dmBrAlarma: TdmDBRoot},
  uBrAlarma in '..\Src\uBrAlarma.pas' {fmBrAlarma: TfmRoot},
  udmEdAlarma in '..\DataModule\udmEdAlarma.pas' {dmEdAlarma: TdmDBRoot},
  uEdAlarma in '..\Src\uEdAlarma.pas' {fmEdAlarma: TfmRoot};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'VICRIS';
  Application.CreateForm(TfmMenu, fmMenu);
  Application.Run;
end.
