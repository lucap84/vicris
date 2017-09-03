inherited fmBrProdotto: TfmBrProdotto
  Left = 382
  Top = 192
  Caption = 'Prodotti'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrProdotto.dsProdotto
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODOTTO'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODOTTO'
        Width = 1804
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNITA_MISURA'
        Width = 184
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MANDANTE'
        Width = 4504
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CATEGORIA'
        Width = 2704
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUB_CATEGORIA'
        Width = 2704
        Visible = True
      end>
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
