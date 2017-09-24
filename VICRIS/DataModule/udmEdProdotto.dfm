inherited dmEdProdotto: TdmEdProdotto
  hDataSet = cdsProdotto
  hKeyFields.Strings = (
    'id_prodotto')
  Height = 218
  Width = 320
  inherited OraSession: TOraSession
    EncryptedPassword = 'A9FFB6FFBCFFADFFB6FFACFF'
  end
  object poProdotto: TDataSetProvider
    DataSet = qyProdotto
    Left = 104
    Top = 80
  end
  object cdsProdotto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poProdotto'
    Left = 176
    Top = 80
    object cdsProdottoID_PRODOTTO: TFloatField
      FieldName = 'ID_PRODOTTO'
    end
    object cdsProdottoPRODOTTO: TStringField
      FieldName = 'PRODOTTO'
      Size = 200
    end
    object cdsProdottoID_MANDANTE: TFloatField
      FieldName = 'ID_MANDANTE'
    end
    object cdsProdottoID_SUBMANDANTE: TFloatField
      FieldName = 'ID_SUBMANDANTE'
    end
    object cdsProdottoID_CATEGORIA: TFloatField
      FieldName = 'ID_CATEGORIA'
    end
    object cdsProdottoUNITA_MISURA: TStringField
      FieldName = 'UNITA_MISURA'
      Size = 10
    end
    object cdsProdottoNOTE: TStringField
      FieldName = 'NOTE'
      Size = 2000
    end
    object cdsProdottoCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsProdottoDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsProdottoDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
    object cdsProdottoFLAG_ACTIVE: TStringField
      FieldName = 'FLAG_ACTIVE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsProdotto: TDataSource
    DataSet = cdsProdotto
    Left = 240
    Top = 80
  end
  object qyProdotto: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT P.*'
      '  FROM TB_PRODOTTI P'
      ' WHERE P.ID_PRODOTTO = :ID_PRODOTTO')
    Left = 32
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_PRODOTTO'
        Value = Null
      end>
  end
end
