inherited fmBrLocalita: TfmBrLocalita
  Left = 752
  Top = 288
  Caption = 'Localit'#224
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrLocalita.dsLocalita
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
