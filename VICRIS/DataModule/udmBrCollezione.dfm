inherited dmBrCollezione: TdmBrCollezione
  hDataSet = qyCollezione
  hKeyFields.Strings = (
    'cod_clz')
  Left = 692
  Top = 386
  Height = 125
  Width = 219
  object qyCollezione: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM COLLEZIONE'
      ' ORDER BY COD_CLZ DESC')
    Left = 32
    Top = 24
    object qyCollezioneCOD_CLZ: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_CLZ'
      Required = True
      Size = 6
    end
    object qyCollezioneDES_CLZ: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DES_CLZ'
      Size = 60
    end
    object qyCollezioneCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object qyCollezioneDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object qyCollezioneDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
  end
  object dsCollezione: TDataSource
    DataSet = qyCollezione
    Left = 128
    Top = 24
  end
end
