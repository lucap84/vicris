inherited dmEdCitta: TdmEdCitta
  hDataSet = cdsCitta
  hKeyFields.Strings = (
    'cod_naz'
    'cod_cta')
  Height = 209
  Width = 312
  object qyCitta: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM CITTA'
      ' WHERE COD_NAZ = :COD_NAZ'
      '   AND COD_CTA = :COD_CTA')
    Options.FieldsOrigin = True
    Left = 40
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_NAZ'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'COD_CTA'
        Value = Null
      end>
  end
  object poCitta: TDataSetProvider
    DataSet = qyCitta
    Left = 104
    Top = 88
  end
  object cdsCitta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poCitta'
    Left = 168
    Top = 88
    object cdsCittaCOD_NAZ: TStringField
      FieldName = 'COD_NAZ'
      Origin = 'CITTA.COD_NAZ'
      Required = True
      Size = 6
    end
    object cdsCittaCOD_CTA: TStringField
      FieldName = 'COD_CTA'
      Origin = 'CITTA.COD_CTA'
      Required = True
      Size = 6
    end
    object cdsCittaDES_CTA: TStringField
      FieldName = 'DES_CTA'
      Origin = 'CITTA.DES_CTA'
      Size = 60
    end
    object cdsCittaCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsCittaDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Origin = 'CITTA.DES_PDL'
      Size = 60
    end
    object cdsCittaDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Origin = 'CITTA.DAT_AGG_REC'
    end
  end
  object dsCitta: TDataSource
    DataSet = cdsCitta
    Left = 232
    Top = 88
  end
end
