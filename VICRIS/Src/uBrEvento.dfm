inherited fmBrEvento: TfmBrEvento
  Left = 386
  Top = 186
  Caption = 'Eventi'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrEvento.dsEvento
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_EVT'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_EVT'
        Width = 497
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DAT_EVT'
        Width = 171
        Visible = True
      end>
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
