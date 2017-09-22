inherited dmBrProvincia: TdmBrProvincia
  hDataSet = qyProvincia
  hKeyFields.Strings = (
    'id_provincia')
  Height = 117
  Width = 163
  object qyProvincia: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM TB_PROVINCE'
      ' ORDER BY PROVINCIA')
    Left = 16
    Top = 16
    object qyProvinciaID_PROVINCIA: TFloatField
      FieldName = 'ID_PROVINCIA'
      Required = True
      Visible = False
    end
    object qyProvinciaPROVINCIA: TStringField
      DisplayLabel = 'Provincia'
      FieldName = 'PROVINCIA'
      Size = 2
    end
    object qyProvinciaCOD_USR: TStringField
      FieldName = 'COD_USR'
      Visible = False
      Size = 12
    end
    object qyProvinciaDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object qyProvinciaDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
  end
  object dsProvincia: TDataSource
    DataSet = qyProvincia
    Left = 96
    Top = 16
  end
end
