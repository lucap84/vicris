inherited dmBrAutore: TdmBrAutore
  hDataSet = qyAutore
  hKeyFields.Strings = (
    'cod_aut')
  Height = 179
  Width = 213
  object qyAutore: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM AUTORE'
      ' ORDER BY COD_AUT DESC')
    Left = 64
    Top = 72
    object qyAutoreCOD_AUT: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_AUT'
      Required = True
      Size = 6
    end
    object qyAutoreDES_NOM: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 30
      FieldName = 'DES_NOM'
      Size = 120
    end
    object qyAutoreDES_COG: TStringField
      DisplayLabel = 'Cognome'
      DisplayWidth = 30
      FieldName = 'DES_COG'
      Size = 120
    end
    object qyAutoreDES_NTE: TStringField
      DisplayLabel = 'Note'
      DisplayWidth = 50
      FieldName = 'DES_NTE'
      Size = 1000
    end
    object qyAutoreDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object qyAutoreDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
  end
  object dsAutore: TDataSource
    DataSet = qyAutore
    Left = 120
    Top = 72
  end
end
