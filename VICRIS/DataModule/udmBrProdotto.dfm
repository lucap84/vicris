inherited dmBrProdotto: TdmBrProdotto
  hDataSet = qyProdotto
  hKeyFields.Strings = (
    'id_prodotto')
  Left = 448
  Top = 152
  Height = 148
  Width = 162
  object qyProdotto: TOraQuery
    SQL.Strings = (
      'SELECT P.*,'
      '       M.MANDANTE, C.CATEGORIA, S.SUBMANDANTE'
      
        '  FROM TB_PRODOTTI P, TB_MANDANTI M, TB_CATEGORIE_PRODOTTI C, TB' +
        '_SUBMANDANTI S'
      ' WHERE P.ID_MANDANTE    = M.ID_MANDANTE    (+)'
      '   AND P.ID_CATEGORIA   = C.ID_CATEGORIA   (+)'
      '   AND P.ID_SUBMANDANTE = S.ID_SUBMANDANTE (+)'
      ' ORDER BY P.ID_PRODOTTO DESC')
    Left = 16
    Top = 24
    object qyProdottoID_PRODOTTO: TFloatField
      FieldName = 'ID_PRODOTTO'
      Visible = False
    end
    object qyProdottoPRODOTTO: TStringField
      DisplayLabel = 'Prodotto'
      DisplayWidth = 50
      FieldName = 'PRODOTTO'
      Size = 200
    end
    object qyProdottoID_MANDANTE: TFloatField
      FieldName = 'ID_MANDANTE'
      Visible = False
    end
    object qyProdottoID_CATEGORIA: TFloatField
      FieldName = 'ID_CATEGORIA'
      Visible = False
    end
    object qyProdottoUNITA_MISURA: TStringField
      DisplayLabel = 'U.M.'
      DisplayWidth = 5
      FieldName = 'UNITA_MISURA'
      Visible = False
      Size = 10
    end
    object qyProdottoNOTE: TStringField
      FieldName = 'NOTE'
      Visible = False
      Size = 2000
    end
    object qyProdottoCOD_USR: TStringField
      FieldName = 'COD_USR'
      Visible = False
      Size = 12
    end
    object qyProdottoDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object qyProdottoDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
    object qyProdottoID_SUBMANDANTE: TFloatField
      FieldName = 'ID_SUBMANDANTE'
      Visible = False
    end
    object qyProdottoMANDANTE: TStringField
      DisplayLabel = 'Mandante'
      DisplayWidth = 25
      FieldName = 'MANDANTE'
      Size = 200
    end
    object qyProdottoSUBMANDANTE: TStringField
      DisplayLabel = 'Submandante'
      DisplayWidth = 25
      FieldName = 'SUBMANDANTE'
      Size = 200
    end
    object qyProdottoCATEGORIA: TStringField
      DisplayLabel = 'Categoria'
      DisplayWidth = 15
      FieldName = 'CATEGORIA'
      Size = 150
    end
    object qyProdottoFLAG_ACTIVE: TStringField
      FieldName = 'FLAG_ACTIVE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object dsProdotto: TDataSource
    DataSet = qyProdotto
    Left = 72
    Top = 24
  end
end
