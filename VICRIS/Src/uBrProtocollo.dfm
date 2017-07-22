inherited fmBrProtocollo: TfmBrProtocollo
  Left = 343
  Top = 261
  Caption = 'Protocollo'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrProtocollo.dsProtocollo
    Columns = <
      item
        Expanded = False
        FieldName = 'COD'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DAT_PTC'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DAT_DOC'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DAT_FIN'
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_OGG'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_PMR'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_INC'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_AUT'
        Width = 73
        Visible = True
      end>
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
