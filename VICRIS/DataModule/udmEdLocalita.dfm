inherited dmEdLocalita: TdmEdLocalita
  hDataSet = cdsLocalita
  hKeyFields.Strings = (
    'id_localita')
  Left = 313
  Top = 237
  Height = 325
  Width = 546
  inherited OraSession: TOraSession
    EncryptedPassword = 'A9FFB6FFBCFFADFFB6FFACFF'
  end
  object poLocalita: TDataSetProvider
    DataSet = qyLocalita
    Left = 184
    Top = 104
  end
  object cdsLocalita: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poLocalita'
    Left = 272
    Top = 104
    object cdsLocalitaID_LOCALITA: TFloatField
      FieldName = 'ID_LOCALITA'
      Required = True
    end
    object cdsLocalitaLOCALITA: TStringField
      FieldName = 'LOCALITA'
      Size = 300
    end
    object cdsLocalitaCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsLocalitaDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsLocalitaDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
  end
  object dsLocalita: TDataSource
    DataSet = cdsLocalita
    Left = 368
    Top = 104
  end
  object qyLocalita: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM TB_LOCALITA'
      ' WHERE ID_LOCALITA = :ID_LOCALITA')
    Left = 88
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOCALITA'
        Value = Null
      end>
  end
  object qyProvincia: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM TB_PROVINCIA'
      ' WHERE ID_LOCALITA = :ID_LOCALITA'
      ' ORDER BY PROVINCIA')
    Left = 104
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOCALITA'
      end>
  end
  object poProvincia: TDataSetProvider
    DataSet = qyProvincia
    Left = 192
    Top = 160
  end
  object cdsProvincia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poProvincia'
    Left = 280
    Top = 160
  end
  object dsProvincia: TDataSource
    DataSet = cdsProvincia
    Left = 376
    Top = 160
  end
end
