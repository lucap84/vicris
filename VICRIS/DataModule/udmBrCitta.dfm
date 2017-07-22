inherited dmBrCitta: TdmBrCitta
  hDataSet = qyCitta
  hKeyFields.Strings = (
    'cod_naz'
    'cod_cta')
  object qyCitta: TOraQuery
    SQL.Strings = (
      'SELECT C.COD_CTA, C.DES_CTA, N.DES_NAZ, N.COD_NAZ'
      '  FROM CITTA C, NAZIONE N'
      ' WHERE C.COD_NAZ = N.COD_NAZ'
      ' ORDER BY C.COD_CTA DESC')
    Left = 64
    Top = 72
    object qyCittaDES_NAZ: TStringField
      DisplayLabel = 'Nazione'
      DisplayWidth = 30
      FieldName = 'DES_NAZ'
      Size = 60
    end
    object qyCittaCOD_CTA: TStringField
      DisplayLabel = 'Cod. Citt'#224
      FieldName = 'COD_CTA'
      Required = True
      Size = 6
    end
    object qyCittaDES_CTA: TStringField
      DisplayLabel = 'Descrizione Citt'#224
      DisplayWidth = 30
      FieldName = 'DES_CTA'
      Size = 60
    end
    object qyCittaCOD_NAZ: TStringField
      FieldName = 'COD_NAZ'
      Required = True
      Visible = False
      Size = 6
    end
  end
  object dsCitta: TDataSource
    DataSet = qyCitta
    Left = 120
    Top = 72
  end
end
