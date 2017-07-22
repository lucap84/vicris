inherited dmBrEvento: TdmBrEvento
  hDataSet = qyEvento
  hKeyFields.Strings = (
    'cod_evt')
  Height = 141
  Width = 224
  object qyEvento: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM EVENTO'
      ' ORDER BY COD_EVT DESC')
    Left = 32
    Top = 24
    object qyEventoCOD_EVT: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_EVT'
      Required = True
      Size = 6
    end
    object qyEventoDES_EVT: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DES_EVT'
      Size = 120
    end
    object qyEventoDAT_EVT: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DAT_EVT'
    end
    object qyEventoCOD_USR: TStringField
      FieldName = 'COD_USR'
      Visible = False
      Size = 12
    end
    object qyEventoDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object qyEventoDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
  end
  object dsEvento: TDataSource
    DataSet = qyEvento
    Left = 128
    Top = 24
  end
end
