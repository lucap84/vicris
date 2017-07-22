inherited dmBrOggetto: TdmBrOggetto
  hDataSet = qyOggetto
  hKeyFields.Strings = (
    'cod_ogg')
  Left = 452
  Top = 270
  Height = 141
  Width = 178
  object dsOggetto: TDataSource
    DataSet = qyOggetto
    Left = 96
    Top = 32
  end
  object qyOggetto: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM OGGETTO'
      ' ORDER BY COD_OGG DESC')
    Left = 40
    Top = 32
    object qyOggettoCOD_OGG: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_OGG'
      Required = True
      Size = 6
    end
    object qyOggettoCOD_CDU: TStringField
      DisplayLabel = 'C.D.U.'
      FieldName = 'COD_CDU'
      Size = 60
    end
    object qyOggettoDES_OGG: TStringField
      DisplayLabel = 'Oggetto'
      FieldName = 'DES_OGG'
      Size = 120
    end
    object qyOggettoDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object qyOggettoDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
  end
end
