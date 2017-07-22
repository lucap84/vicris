inherited dmBrPubblicazione: TdmBrPubblicazione
  hDataSet = qyPubblicazione
  hKeyFields.Strings = (
    'cod_pub')
  Height = 138
  Width = 197
  object qyPubblicazione: TOraQuery
    SQL.Strings = (
      'SELECT P.COD_PUB, P.DES_PUB, '
      '       P.COD_ISB, E.DES_CED, C.DES_CLZ, PP.DES_PMR,'
      
        '       O.COD_CDU, O.DES_OGG, O.COD_CDU || '#39' '#39' || O.DES_OGG DES_C' +
        'DU,'
      '       P.NUM_EDZ, P.AAA_PUB, P.NUM_PAG, P.DES_TAG'
      
        '  FROM PUBBLICAZIONE P, OGGETTO O, EDITRICE E, COLLEZIONE C, PRO' +
        'MOTORE PP'
      ' WHERE P.COD_OGG = O.COD_OGG  (+)'
      '   AND P.COD_CLZ = C.COD_CLZ  (+)'
      '   AND P.COD_CED = E.COD_CED  (+)'
      '   AND P.COD_PMR = PP.COD_PMR (+)'
      ' ORDER BY P.COD_PUB DESC')
    Left = 32
    Top = 24
    object qyPubblicazioneCOD_PUB: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_PUB'
      Required = True
      Size = 6
    end
    object qyPubblicazioneDES_PUB: TStringField
      DisplayLabel = 'Titolo'
      DisplayWidth = 30
      FieldName = 'DES_PUB'
      Size = 250
    end
    object qyPubblicazioneCOD_ISB: TStringField
      DisplayLabel = 'ISBN'
      DisplayWidth = 15
      FieldName = 'COD_ISB'
    end
    object qyPubblicazioneCOD_CDU: TStringField
      DisplayLabel = 'C.D.U.'
      DisplayWidth = 10
      FieldName = 'COD_CDU'
      Size = 60
    end
    object qyPubblicazioneDES_OGG: TStringField
      DisplayLabel = 'Oggetto'
      DisplayWidth = 20
      FieldName = 'DES_OGG'
      Size = 120
    end
    object qyPubblicazioneDES_CED: TStringField
      DisplayLabel = 'Casa Editrice'
      DisplayWidth = 20
      FieldName = 'DES_CED'
      Size = 120
    end
    object qyPubblicazioneDES_CLZ: TStringField
      DisplayLabel = 'Collezione'
      DisplayWidth = 20
      FieldName = 'DES_CLZ'
      Size = 120
    end
    object qyPubblicazioneDES_PMR: TStringField
      DisplayLabel = 'Istituzione'
      DisplayWidth = 20
      FieldName = 'DES_PMR'
      Size = 120
    end
    object qyPubblicazioneDES_CDU: TStringField
      FieldName = 'DES_CDU'
      Visible = False
      Size = 181
    end
    object qyPubblicazioneNUM_EDZ: TStringField
      FieldName = 'NUM_EDZ'
      Visible = False
      Size = 6
    end
    object qyPubblicazioneAAA_PUB: TFloatField
      FieldName = 'AAA_PUB'
      Visible = False
    end
    object qyPubblicazioneNUM_PAG: TFloatField
      FieldName = 'NUM_PAG'
      Visible = False
    end
    object qyPubblicazioneDES_TAG: TStringField
      DisplayLabel = 'Tags'
      FieldName = 'DES_TAG'
      Size = 1000
    end
  end
  object dsPubblicazione: TDataSource
    DataSet = qyPubblicazione
    Left = 112
    Top = 24
  end
end
