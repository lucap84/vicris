inherited dmBrIncarico: TdmBrIncarico
  hDataSet = qyIncarico
  hKeyFields.Strings = (
    'cod_inc')
  Height = 136
  Width = 229
  object qyIncarico: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM INCARICO'
      ' ORDER BY COD_INC')
    Left = 32
    Top = 24
    object qyIncaricoCOD_INC: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_INC'
      Required = True
      Size = 6
    end
    object qyIncaricoDES_INC: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DES_INC'
      Size = 120
    end
    object qyIncaricoCOD_USR: TStringField
      FieldName = 'COD_USR'
      Visible = False
      Size = 12
    end
    object qyIncaricoDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object qyIncaricoDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
  end
  object dsIncarico: TDataSource
    DataSet = qyIncarico
    Left = 128
    Top = 24
  end
end
