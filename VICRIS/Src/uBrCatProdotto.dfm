inherited fmBrCatProdotto: TfmBrCatProdotto
  Left = 561
  Top = 250
  Caption = 'Categorie Prodotto'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrCatProdotto.dsCatProdotto
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CATEGORIA'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CATEGORIA'
        Width = 2704
        Visible = True
      end>
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
