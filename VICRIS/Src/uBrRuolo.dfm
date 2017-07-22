inherited fmBrRuolo: TfmBrRuolo
  Left = 373
  Top = 210
  Caption = 'Ruoli'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrRuolo.dsRuolo
    Columns = <
      item
        Expanded = False
        FieldName = 'DES_PMR'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_INC'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_AUT'
        Width = 257
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DAT_INI'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DAT_FIN'
        Width = 95
        Visible = True
      end>
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
