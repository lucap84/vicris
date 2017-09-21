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
      '  FROM TB_CATEGORIA_PRODOTTO'
      ' ORDER BY CATEGORIA')
    Left = 24
    Top = 24
    object qyCatProdottoID_CATEGORIA: TFloatField
      DisplayLabel = 'Id'
      FieldName = 'ID_CATEGORIA'
    end
    object qyCatProdottoCATEGORIA: TStringField
      DisplayLabel = 'Descrizione'
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
