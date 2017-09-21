inherited dmBrLocalita: TdmBrLocalita
  hDataSet = qyLocalita
  hKeyFields.Strings = (
    'id_localita')
  Left = 674
  Top = 294
  Height = 164
  Width = 198
  object qyLocalita: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM TB_LOCALITA'
      ' ORDER BY LOCALITA')
    Left = 48
    Top = 48
    object qyLocalitaID_LOCALITA: TFloatField
      DisplayLabel = 'Id'
      FieldName = 'ID_LOCALITA'
      Required = True
    end
    object qyLocalitaLOCALITA: TStringField
      DisplayLabel = 'Descrizione'
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
    Left = 120
    Top = 48
  end
end
