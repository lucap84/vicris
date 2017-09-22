inherited fmBrProvincia: TfmBrProvincia
  Caption = 'Province'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrProvincia.dsProvincia
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
