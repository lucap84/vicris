inherited dmEdNazione: TdmEdNazione
  hDataSet = cdsNazione
  hKeyFields.Strings = (
    'cod_naz')
  Height = 227
  Width = 331
  object qyNazione: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM NAZIONE'
      ' WHERE COD_NAZ = :COD_NAZ')
    Left = 40
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_NAZ'
        Value = Null
      end>
  end
  object poNazione: TDataSetProvider
    DataSet = qyNazione
    Left = 104
    Top = 88
  end
  object cdsNazione: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poNazione'
    Left = 168
    Top = 88
    object cdsNazioneCOD_NAZ: TStringField
      FieldName = 'COD_NAZ'
      Required = True
      Size = 6
    end
    object cdsNazioneDES_NAZ: TStringField
      FieldName = 'DES_NAZ'
      Size = 60
    end
    object cdsNazioneCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsNazioneDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsNazioneDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
  end
  object dsNazione: TDataSource
    DataSet = cdsNazione
    Left = 232
    Top = 88
  end
end
