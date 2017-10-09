inherited dmBrLocalita: TdmBrLocalita
  hDataSet = qyLocalita
  hKeyFields.Strings = (
    'id_localita')
  Left = 674
  Top = 294
  Height = 122
  Width = 162
  object qyLocalita: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM TB_LOCALITA'
      ' ORDER BY ID_LOCALITA DESC')
    Left = 16
    Top = 16
    object qyLocalitaID_LOCALITA: TFloatField
      FieldName = 'ID_LOCALITA'
      Required = True
      Visible = False
    end
    object qyLocalitaLOCALITA: TStringField
      DisplayLabel = 'Regione'
      FieldName = 'LOCALITA'
      Size = 100
    end
    object qyLocalitaCOD_USR: TStringField
      FieldName = 'COD_USR'
      Visible = False
      Size = 12
    end
    object qyLocalitaDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object qyLocalitaDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
  end
  object dsLocalita: TDataSource
    DataSet = qyLocalita
    Left = 88
    Top = 16
  end
end
