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
  udmEdMandante in '..\DataModule\udmEdMandante.pas' {dmEdMandante: TdmDBRoot},
  uEdMandante in '..\Src\uEdMandante.pas' {fmEdMandante: TfmRoot},
  udmBrLocalita in '..\DataModule\udmBrLocalita.pas' {dmBrLocalita: TdmDBRoot},
  uBrLocalita in '..\Src\uBrLocalita.pas' {fmBrLocalita: TfmRoot},
  udmEdLocalita in '..\DataModule\udmEdLocalita.pas' {dmEdLocalita: TdmDBRoot},
  uEdLocalita in '..\Src\uEdLocalita.pas' {fmEdLocalita: TfmRoot},
  udmBrCatProdotto in '..\DataModule\udmBrCatProdotto.pas' {dmBrCatProdotto: TdmDBRoot},
  uBrCatProdotto in '..\Src\uBrCatProdotto.pas' {fmBrCatProdotto: TfmRoot},
  udmEdCatProdotto in '..\DataModule\udmEdCatProdotto.pas' {dmEdCatProdotto: TdmDBRoot},
  uEdCatProdotto in '..\Src\uEdCatProdotto.pas' {fmEdCatProdotto: TfmRoot},
  udmBrProdotto in '..\DataModule\udmBrProdotto.pas' {dmBrProdotto: TdmDBRoot},
  uBrProdotto in '..\Src\uBrProdotto.pas' {fmBrProdotto: TfmRoot},
  udmEdProdotto in '..\DataModule\udmEdProdotto.pas' {dmEdProdotto: TdmDBRoot},
  uEdProdotto in '..\Src\uEdProdotto.pas' {fmEdProdotto: TfmRoot},
  udmBrSubMandante in '..\DataModule\udmBrSubMandante.pas' {dmBrSubMandante: TdmDBRoot},
  uBrSubMandante in '..\Src\uBrSubMandante.pas' {fmBrSubMandante: TfmRoot},
  udmEdSubMandante in '..\DataModule\udmEdSubMandante.pas' {dmEdSubMandante: TdmDBRoot},
  uEdSubMandante in '..\Src\uEdSubMandante.pas' {fmEdSubMandante: TfmRoot};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'VICRIS';
  Application.CreateForm(TfmMenu, fmMenu);
  Application.Run;
end.
