inherited dmEdEvento: TdmEdEvento
  hDataSet = cdsEvento
  hKeyFields.Strings = (
    'cod_evt')
  Height = 194
  Width = 304
  object qyEvento: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM EVENTO'
      ' WHERE COD_EVT = :COD_EVT')
    Left = 40
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_EVT'
        Value = Null
      end>
  end
  object poEvento: TDataSetProvider
    DataSet = qyEvento
    Left = 104
    Top = 88
  end
  object cdsEvento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poEvento'
    Left = 168
    Top = 88
    object cdsEventoCOD_EVT: TStringField
      FieldName = 'COD_EVT'
      Required = True
      Size = 6
    end
    object cdsEventoDES_EVT: TStringField
      FieldName = 'DES_EVT'
      Size = 120
    end
    object cdsEventoDAT_EVT: TDateTimeField
      FieldName = 'DAT_EVT'
    end
    object cdsEventoCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsEventoDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsEventoDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
  end
  object dsEvento: TDataSource
    DataSet = cdsEvento
    Left = 232
    Top = 88
  end
end
