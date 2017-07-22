inherited dmBrEditrice: TdmBrEditrice
  hDataSet = qyEditrice
  hKeyFields.Strings = (
    'cod_ced')
  Height = 155
  Width = 171
  object qyEditrice: TOraQuery
    SQL.Strings = (
      'SELECT E.COD_CED, E.DES_CED, N.DES_NAZ, C.DES_CTA '
      '  FROM EDITRICE E, NAZIONE N, CITTA C'
      ' WHERE E.COD_NAZ = N.COD_NAZ (+)'
      '   AND E.COD_NAZ = C.COD_NAZ (+)'
      '   AND E.COD_CTA = C.COD_CTA (+)'
      ' ORDER BY E.COD_CED DESC')
    Left = 24
    Top = 40
    object qyEditriceCOD_CED: TStringField
      DisplayLabel = 'Codice'
      DisplayWidth = 7
      FieldName = 'COD_CED'
      Required = True
      Size = 6
    end
    object qyEditriceDES_CED: TStringField
      DisplayLabel = 'Descrizione'
      DisplayWidth = 133
      FieldName = 'DES_CED'
      Size = 120
    end
    object qyEditriceDES_NAZ: TStringField
      DisplayLabel = 'Nazione'
      DisplayWidth = 66
      FieldName = 'DES_NAZ'
      Size = 60
    end
    object qyEditriceDES_CTA: TStringField
      DisplayLabel = 'Citt'#224
      FieldName = 'DES_CTA'
      Size = 60
    end
  end
  object dsEditrice: TDataSource
    DataSet = qyEditrice
    Left = 88
    Top = 40
  end
end
