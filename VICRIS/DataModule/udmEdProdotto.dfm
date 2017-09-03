inherited dmEdProdotto: TdmEdProdotto
  hDataSet = cdsProdotto
  hKeyFields.Strings = (
    'ID_PRODOTTO')
  Height = 218
  Width = 320
  inherited OraSession: TOraSession
    Connected = True
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
      end>
  end
end
