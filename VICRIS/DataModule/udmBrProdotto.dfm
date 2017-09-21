inherited dmBrProdotto: TdmBrProdotto
  hDataSet = qyProdotto
  hKeyFields.Strings = (
    'ID_PRODOTTO')
  Left = 448
  Top = 152
  Height = 148
  Width = 162
  object qyProdotto: TOraQuery
    SQL.Strings = (
      'SELECT P.*,'
      '       M.MANDANTE, C.CATEGORIA, S.SUBMANDANTE'
      
        '  FROM TB_PRODOTTI P, TB_MANDANTI M, TB_CATEGORIA_PRODOTTO C, TB' +
        '_SUBMANDANTI S'
      ' WHERE P.ID_MANDANTE    = M.ID_MANDANTE    (+)'
      '   AND P.ID_CATEGORIA   = C.ID_CATEGORIA   (+)'
      '   AND P.ID_SUBMANDANTE = S.ID_SUBMANDANTE (+)'
      ' ORDER BY P.PRODOTTO')
    Left = 16
    Top = 24
    object qyProdottoID_PRODOTTO: TFloatField
      DisplayLabel = 'ID'
      FieldName = 'ID_PRODOTTO'
    end
    object qyProdottoPRODOTTO: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'PRODOTTO'
      Size = 200
    end
    object qyProdottoUNITA_MISURA: TStringField
      DisplayLabel = 'Unit'#224' di Misura'
      FieldName = 'UNITA_MISURA'
      Size = 10
    end
    object qyProdottoID_MANDANTE: TFloatField
      FieldName = 'ID_MANDANTE'
      Visible = False
    end
    object qyProdottoID_CATEGORIA: TFloatField
      FieldName = 'ID_CATEGORIA'
      Visible = False
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
    object qyProdottoMANDANTE: TStringField
      DisplayLabel = 'Mandante'
      FieldName = 'MANDANTE'
      Size = 500
    end
    object qyProdottoSUBMANDANTE: TStringField
      DisplayLabel = 'Submandante'
      FieldName = 'SUBMANDANTE'
      Size = 200
    end
    object qyProdottoCATEGORIA: TStringField
      DisplayLabel = 'Categoria'
      FieldName = 'CATEGORIA'
      Size = 300
    end
    object qyProdottoID_SUBMANDANTE: TFloatField
      FieldName = 'ID_SUBMANDANTE'
      Visible = False
    end
  end
  object dsProdotto: TDataSource
    DataSet = qyProdotto
    Left = 72
    Top = 24
  end
end
