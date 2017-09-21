inherited fmBrCatProdotto: TfmBrCatProdotto
  Left = 395
  Top = 250
  Caption = 'Categorie Prodotto'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = grBrowse
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrCatProdotto.dsCatProdotto
    Columns = <
      item
        Expanded = False
        FieldName = 'CATEGORIA'
        Width = 500
        Visible = True
      end>
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
