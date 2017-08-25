inherited dmEdLocalita: TdmEdLocalita
  hDataSet = cdsLocalita
  hKeyFields.Strings = (
    'id_localita')
  Left = 1287
  Top = 292
  Height = 243
  Width = 463
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
end
