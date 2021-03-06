inherited dmBrCatProdotto: TdmBrCatProdotto
  hDataSet = qyCatProdotto
  hKeyFields.Strings = (
    'id_categoria')
  Height = 148
  Width = 189
  object dsCatProdotto: TDataSource
    DataSet = qyCatProdotto
    Left = 96
    Top = 24
  end
  object qyCatProdotto: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM TB_CATEGORIE_PRODOTTI'
      ' ORDER BY ID_CATEGORIA DESC')
    Left = 24
    Top = 24
    object qyCatProdottoID_CATEGORIA: TFloatField
      FieldName = 'ID_CATEGORIA'
      Visible = False
    end
    object qyCatProdottoCATEGORIA: TStringField
      DisplayLabel = 'Categoria'
      FieldName = 'CATEGORIA'
      Size = 150
    end
    object qyCatProdottoCOD_USR: TStringField
      FieldName = 'COD_USR'
      Visible = False
      Size = 12
    end
    object qyCatProdottoDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object qyCatProdottoDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
  end
end
