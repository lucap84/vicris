inherited fmBrPersona: TfmBrPersona
  Caption = 'Persone'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrPersona.dsPersona
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_AUT'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_TIT'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_NOM'
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_COG'
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_NAZ'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_CTA'
        Width = 105
        Visible = True
      end>
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
