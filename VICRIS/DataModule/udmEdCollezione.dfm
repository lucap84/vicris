inherited dmEdCollezione: TdmEdCollezione
  hDataSet = cdsCollezione
  hKeyFields.Strings = (
    'cod_clz')
  Left = 315
  Top = 352
  Height = 196
  Width = 340
  object qyCollezione: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM COLLEZIONE'
      ' WHERE COD_CLZ = :COD_CLZ')
    Left = 40
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_CLZ'
        Value = Null
      end>
  end
  object poCollezione: TDataSetProvider
    DataSet = qyCollezione
    Left = 104
    Top = 88
  end
  object cdsCollezione: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poCollezione'
    Left = 168
    Top = 88
    object cdsCollezioneCOD_CLZ: TStringField
      FieldName = 'COD_CLZ'
      Required = True
      Size = 6
    end
    object cdsCollezioneDES_CLZ: TStringField
      FieldName = 'DES_CLZ'
      Size = 60
    end
    object cdsCollezioneCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsCollezioneDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsCollezioneDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
  end
  object dsCollezione: TDataSource
    DataSet = cdsCollezione
    Left = 232
    Top = 88
  end
end
