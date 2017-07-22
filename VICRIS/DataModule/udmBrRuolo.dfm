inherited dmBrRuolo: TdmBrRuolo
  hDataSet = qyRuolo
  hKeyFields.Strings = (
    'npa_rol')
  Left = 564
  Top = 306
  object qyRuolo: TOraQuery
    SQL.Strings = (
      'SELECT R.NPA_ROL, '
      '       R.COD_INC, I.DES_INC,'
      '       R.COD_AUT, P.DES_NOM || '#39' '#39' || P.DES_COG DES_AUT,'
      '       R.COD_PMR, PM.DES_PMR,'
      '       R.DAT_INI, R.DAT_FIN'
      '  FROM RUOLO R, INCARICO I, AUTORE P, PROMOTORE PM'
      ' WHERE R.COD_INC = I.COD_INC'
      '   AND R.COD_AUT = P.COD_AUT'
      '   AND R.COD_PMR = PM.COD_PMR'
      ' ORDER BY 3, 7, 5, 8 DESC')
    Left = 64
    Top = 72
    object qyRuoloCOD_INC: TStringField
      FieldName = 'COD_INC'
      Required = True
      Visible = False
      Size = 6
    end
    object qyRuoloCOD_PMR: TStringField
      FieldName = 'COD_PMR'
      Required = True
      Visible = False
      Size = 6
    end
    object qyRuoloCOD_AUT: TStringField
      FieldName = 'COD_AUT'
      Visible = False
      Size = 6
    end
    object qyRuoloDAT_INI: TDateTimeField
      DisplayLabel = 'Inizio'
      FieldName = 'DAT_INI'
    end
    object qyRuoloDAT_FIN: TDateTimeField
      DisplayLabel = 'Fine'
      FieldName = 'DAT_FIN'
    end
    object qyRuoloNPA_ROL: TFloatField
      FieldName = 'NPA_ROL'
      Required = True
      Visible = False
    end
    object qyRuoloDES_INC: TStringField
      DisplayLabel = 'Incarico'
      FieldName = 'DES_INC'
      Size = 120
    end
    object qyRuoloDES_PMR: TStringField
      DisplayLabel = 'Istituzione'
      FieldName = 'DES_PMR'
      Size = 120
    end
    object qyRuoloDES_AUT: TStringField
      DisplayLabel = 'Persona'
      FieldName = 'DES_AUT'
      Size = 241
    end
  end
  object dsRuolo: TDataSource
    DataSet = qyRuolo
    Left = 120
    Top = 72
  end
end
