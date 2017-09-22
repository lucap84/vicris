inherited fmBrSubMandante: TfmBrSubMandante
  Left = 348
  Top = 205
  Caption = 'Submandanti'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrSubMandante.dsSubMandante
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
