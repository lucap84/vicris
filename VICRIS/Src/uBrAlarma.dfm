inherited fmBrAlarma: TfmBrAlarma
  Left = 292
  Top = 178
  Caption = 'Schedulatore'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrAlarma.dsAlarma
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_EVT'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_EVT'
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_STT'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_FRQ'
        Width = 128
        Visible = True
      end>
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
