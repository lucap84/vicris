inherited dmBrPersona: TdmBrPersona
  hDataSet = qyPersona
  hKeyFields.Strings = (
    'cod_aut')
  Left = 688
  Top = 220
  Height = 161
  Width = 192
  object qyPersona: TOraQuery
    SQL.Strings = (
      'SELECT P.*, N.DES_NAZ, C.DES_CTA, F.DES_FIL_SHR DES_TIT'
      '  FROM AUTORE P, NAZIONE N, CITTA C, FILSHR F'
      ' WHERE P.COD_NAZ         = N.COD_NAZ (+)'
      '   AND P.COD_NAZ         = C.COD_NAZ (+)'
      '   AND P.COD_CTA         = C.COD_CTA (+)'
      '   AND F.COD_FIL_SHR     = '#39'FLG_TIT'#39
      '   AND F.COD_VAL_FIL_SHR = P.FLG_TIT'
      ' ORDER BY P.COD_AUT DESC')
    Left = 24
    Top = 40
    object qyPersonaCOD_AUT: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_AUT'
      Required = True
      Size = 6
    end
    object qyPersonaDES_TIT: TStringField
      DisplayLabel = 'Titolo'
      FieldName = 'DES_TIT'
      Size = 120
    end
    object qyPersonaDES_NOM: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'DES_NOM'
      Size = 120
    end
    object qyPersonaDES_COG: TStringField
      DisplayLabel = 'Cognome'
      FieldName = 'DES_COG'
      Size = 120
    end
    object qyPersonaDES_IND: TStringField
      FieldName = 'DES_IND'
      Visible = False
      Size = 250
    end
    object qyPersonaNUM_TEL_1: TStringField
      FieldName = 'NUM_TEL_1'
      Visible = False
    end
    object qyPersonaNUM_TEL_2: TStringField
      FieldName = 'NUM_TEL_2'
      Visible = False
    end
    object qyPersonaNUM_CEL: TStringField
      FieldName = 'NUM_CEL'
      Visible = False
    end
    object qyPersonaNUM_FAX: TStringField
      FieldName = 'NUM_FAX'
      Visible = False
    end
    object qyPersonaFLG_TIT: TStringField
      FieldName = 'FLG_TIT'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qyPersonaCOD_NAZ: TStringField
      FieldName = 'COD_NAZ'
      Visible = False
      Size = 6
    end
    object qyPersonaCOD_CTA: TStringField
      FieldName = 'COD_CTA'
      Visible = False
      Size = 6
    end
    object qyPersonaCOD_USR: TStringField
      FieldName = 'COD_USR'
      Visible = False
      Size = 12
    end
    object qyPersonaDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object qyPersonaDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
    object qyPersonaDES_NAZ: TStringField
      DisplayLabel = 'Nazione'
      FieldName = 'DES_NAZ'
      Visible = False
      Size = 60
    end
    object qyPersonaDES_CTA: TStringField
      DisplayLabel = 'Citt'#224
      FieldName = 'DES_CTA'
      Visible = False
      Size = 60
    end
  end
  object dsPersona: TDataSource
    DataSet = qyPersona
    Left = 88
    Top = 40
  end
end
