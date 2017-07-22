inherited dmEdPromotore: TdmEdPromotore
  hDataSet = cdsPromotore
  hKeyFields.Strings = (
    'cod_pmr')
  Left = 472
  Top = 312
  Height = 219
  Width = 358
  object qyPromotore: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM PROMOTORE'
      ' WHERE COD_PMR = :COD_PMR')
    Left = 48
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_PMR'
        Value = Null
      end>
  end
  object poPromotore: TDataSetProvider
    DataSet = qyPromotore
    Left = 128
    Top = 112
  end
  object cdsPromotore: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poPromotore'
    Left = 208
    Top = 112
    object cdsPromotoreCOD_PMR: TStringField
      FieldName = 'COD_PMR'
      Required = True
      Size = 6
    end
    object cdsPromotoreDES_PMR: TStringField
      FieldName = 'DES_PMR'
      Size = 120
    end
    object cdsPromotoreDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsPromotoreDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
    object cdsPromotoreCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsPromotoreDES_IND: TStringField
      FieldName = 'DES_IND'
      Size = 250
    end
    object cdsPromotoreCOD_NAZ: TStringField
      FieldName = 'COD_NAZ'
      Size = 6
    end
    object cdsPromotoreCOD_CTA: TStringField
      FieldName = 'COD_CTA'
      Size = 6
    end
    object cdsPromotoreNUM_TEL_1: TStringField
      FieldName = 'NUM_TEL_1'
    end
    object cdsPromotoreNUM_TEL_2: TStringField
      FieldName = 'NUM_TEL_2'
    end
    object cdsPromotoreNUM_CEL: TStringField
      FieldName = 'NUM_CEL'
    end
    object cdsPromotoreNUM_FAX: TStringField
      FieldName = 'NUM_FAX'
    end
    object cdsPromotoreCOD_EML: TStringField
      FieldName = 'COD_EML'
    end
    object cdsPromotoreDES_NTE: TStringField
      FieldName = 'DES_NTE'
      Size = 1000
    end
  end
  object dsPromotore: TDataSource
    DataSet = cdsPromotore
    Left = 280
    Top = 112
  end
end
