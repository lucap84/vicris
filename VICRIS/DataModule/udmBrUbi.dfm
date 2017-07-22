inherited dmBrUbi: TdmBrUbi
  hDataSet = qyUbi
  hKeyFields.Strings = (
    'cod_ubi')
  object qyUbi: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM UBI'
      ' ORDER BY COD_UBI DESC')
    Left = 64
    Top = 72
    object qyUbiCOD_UBI: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_UBI'
      Required = True
      Size = 6
    end
    object qyUbiDES_UBI: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DES_UBI'
      Size = 120
    end
    object qyUbiCOD_USR: TStringField
      FieldName = 'COD_USR'
      Visible = False
      Size = 12
    end
    object qyUbiDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object qyUbiDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
  end
  object dsUbi: TDataSource
    DataSet = qyUbi
    Left = 120
    Top = 72
  end
end
