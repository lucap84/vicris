inherited dmEdEditrice: TdmEdEditrice
  hDataSet = cdsEditrice
  hKeyFields.Strings = (
    'cod_ced')
  Height = 186
  Width = 312
  object qyEditrice: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM EDITRICE'
      ' WHERE COD_CED = :COD_CED')
    Options.FieldsOrigin = True
    Left = 40
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_CED'
        Value = Null
      end>
  end
  object poEditrice: TDataSetProvider
    DataSet = qyEditrice
    Left = 104
    Top = 88
  end
  object cdsEditrice: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poEditrice'
    Left = 168
    Top = 88
    object cdsEditriceCOD_CED: TStringField
      FieldName = 'COD_CED'
      Required = True
      Size = 6
    end
    object cdsEditriceCOD_NAZ: TStringField
      FieldName = 'COD_NAZ'
      Size = 6
    end
    object cdsEditriceCOD_CTA: TStringField
      FieldName = 'COD_CTA'
      Size = 6
    end
    object cdsEditriceDES_CED: TStringField
      FieldName = 'DES_CED'
      Size = 60
    end
    object cdsEditriceCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsEditriceDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsEditriceDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
  end
  object dsEditrice: TDataSource
    DataSet = cdsEditrice
    Left = 232
    Top = 88
  end
end
