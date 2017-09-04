inherited fmBrVendita: TfmBrVendita
  Caption = 'Vendite'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrVendita.dsVendita
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_VENDITA'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Width = 166
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 4504
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_FATTURA'
        Width = 166
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_FATTURA'
        Width = 184
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_ART'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_VEN'
        Width = 121
        Visible = True
      end>
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
