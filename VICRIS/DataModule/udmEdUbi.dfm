inherited dmEdUbi: TdmEdUbi
  hDataSet = cdsUbi
  hKeyFields.Strings = (
    'cod_ubi')
  Left = 438
  Top = 214
  Height = 215
  Width = 317
  object qyUbi: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM UBI'
      ' WHERE COD_UBI = :COD_UBI')
    Left = 40
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_UBI'
        Value = Null
      end>
  end
  object poUbi: TDataSetProvider
    DataSet = qyUbi
    Left = 104
    Top = 88
  end
  object cdsUbi: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poUbi'
    Left = 168
    Top = 88
    object cdsUbiCOD_UBI: TStringField
      FieldName = 'COD_UBI'
      Required = True
      Size = 6
    end
    object cdsUbiDES_UBI: TStringField
      FieldName = 'DES_UBI'
      Size = 120
    end
    object cdsUbiCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsUbiDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsUbiDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
  end
  object dsUbi: TDataSource
    DataSet = cdsUbi
    Left = 232
    Top = 88
  end
end
