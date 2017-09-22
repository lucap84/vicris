inherited dmEdProvincia: TdmEdProvincia
  hDataSet = cdsProvincia
  hKeyFields.Strings = (
    'id_provincia')
  Height = 224
  Width = 352
  inherited OraSession: TOraSession
    EncryptedPassword = 'A9FFB6FFBCFFADFFB6FFACFF'
  end
  object qyProvincia: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM TB_PROVINCE'
      ' WHERE ID_PROVINCIA = :ID_PROVINCIA')
    Left = 32
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_PROVINCIA'
        Value = Null
      end>
  end
  object poProvincia: TDataSetProvider
    DataSet = qyProvincia
    Left = 112
    Top = 72
  end
  object cdsProvincia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poProvincia'
    Left = 192
    Top = 72
    object cdsProvinciaID_PROVINCIA: TFloatField
      FieldName = 'ID_PROVINCIA'
      Required = True
    end
    object cdsProvinciaPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      Size = 2
    end
    object cdsProvinciaCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsProvinciaDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsProvinciaDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
  end
  object dsProvincia: TDataSource
    DataSet = cdsProvincia
    Left = 264
    Top = 72
  end
end
