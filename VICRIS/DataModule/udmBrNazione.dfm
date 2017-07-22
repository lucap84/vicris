inherited dmBrNazione: TdmBrNazione
  hDataSet = qyNazione
  hKeyFields.Strings = (
    'cod_naz')
  Height = 199
  Width = 219
  object qyNazione: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM NAZIONE'
      ' ORDER BY COD_NAZ DESC')
    Left = 64
    Top = 72
    object qyNazioneCOD_NAZ: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_NAZ'
      Required = True
      Size = 6
    end
    object qyNazioneDES_NAZ: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DES_NAZ'
      Size = 60
    end
    object qyNazioneDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object qyNazioneDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
  end
  object dsNazione: TDataSource
    DataSet = qyNazione
    Left = 120
    Top = 72
  end
end
