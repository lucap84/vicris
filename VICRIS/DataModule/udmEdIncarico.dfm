inherited dmEdIncarico: TdmEdIncarico
  hDataSet = cdsIncarico
  hKeyFields.Strings = (
    'cod_inc')
  Left = 456
  Top = 183
  Height = 250
  Width = 318
  object qyIncarico: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM INCARICO'
      ' WHERE COD_INC = :COD_INC')
    Left = 40
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_INC'
        Value = Null
      end>
  end
  object poIncarico: TDataSetProvider
    DataSet = qyIncarico
    Left = 104
    Top = 88
  end
  object cdsIncarico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poIncarico'
    Left = 168
    Top = 88
    object cdsIncaricoCOD_INC: TStringField
      FieldName = 'COD_INC'
      Required = True
      Size = 6
    end
    object cdsIncaricoDES_INC: TStringField
      FieldName = 'DES_INC'
      Size = 120
    end
    object cdsIncaricoCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsIncaricoDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsIncaricoDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
  end
  object dsIncarico: TDataSource
    DataSet = cdsIncarico
    Left = 232
    Top = 88
  end
end
