inherited fmBrVendita: TfmBrVendita
  Caption = 'Vendite'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrVendita.dsVendita
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
