inherited dmEdOggetto: TdmEdOggetto
  hDataSet = cdsOggetto
  hKeyFields.Strings = (
    'cod_ogg')
  Height = 192
  Width = 302
  object qyOggetto: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM OGGETTO'
      ' WHERE COD_OGG = :COD_OGG')
    Left = 40
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_OGG'
        Value = Null
      end>
  end
  object poOggetto: TDataSetProvider
    DataSet = qyOggetto
    Left = 104
    Top = 88
  end
  object cdsOggetto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poOggetto'
    Left = 168
    Top = 88
    object cdsOggettoCOD_OGG: TStringField
      FieldName = 'COD_OGG'
      Required = True
      Size = 6
    end
    object cdsOggettoCOD_CDU: TStringField
      FieldName = 'COD_CDU'
      Size = 60
    end
    object cdsOggettoDES_OGG: TStringField
      FieldName = 'DES_OGG'
      Size = 120
    end
    object cdsOggettoCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsOggettoDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsOggettoDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
    object cdsOggettoCOD_UBI: TStringField
      FieldName = 'COD_UBI'
      Size = 6
    end
  end
  object dsOggetto: TDataSource
    DataSet = cdsOggetto
    Left = 232
    Top = 88
  end
end
