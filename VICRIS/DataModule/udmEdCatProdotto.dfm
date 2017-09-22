inherited dmEdCatProdotto: TdmEdCatProdotto
  hDataSet = cdsCatProdotto
  hKeyFields.Strings = (
    'id_categoria')
  Height = 178
  Width = 366
  inherited OraSession: TOraSession
    EncryptedPassword = 'A9FFB6FFBCFFADFFB6FFACFF'
  end
  object qyCatProdotto: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM TB_CATEGORIE_PRODOTTI'
      ' WHERE ID_CATEGORIA = :ID_CATEGORIA')
    Left = 48
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_CATEGORIA'
        Value = Null
      end>
  end
  object poCatProdotto: TDataSetProvider
    DataSet = qyCatProdotto
    Left = 128
    Top = 72
  end
  object cdsCatProdotto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poCatProdotto'
    Left = 208
    Top = 72
    object cdsCatProdottoID_CATEGORIA: TFloatField
      FieldName = 'ID_CATEGORIA'
    end
    object cdsCatProdottoCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 150
    end
    object cdsCatProdottoCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsCatProdottoDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsCatProdottoDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
  end
  object dsCatProdotto: TDataSource
    DataSet = cdsCatProdotto
    Left = 280
    Top = 72
  end
end
