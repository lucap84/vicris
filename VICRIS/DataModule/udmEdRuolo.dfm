inherited dmEdRuolo: TdmEdRuolo
  hDataSet = cdsRuolo
  hKeyFields.Strings = (
    'npa_rol')
  hTipAttNum = hPrgMan
  Left = 374
  Top = 237
  Height = 208
  Width = 348
  object qyRuolo: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT R.NPA_ROL, '
      '       R.COD_INC, I.DES_INC,'
      '       R.COD_PMR, PP.DES_PMR,'
      '       R.COD_AUT, P.DES_NOM || '#39' '#39' || P.DES_COG DES_AUT,'
      '       R.DAT_INI, R.DAT_FIN,'
      '       R.DES_NTE,'
      '       R.COD_USR, R.DES_PDL, R.DAT_AGG_REC'
      '  FROM RUOLO R, INCARICO I, AUTORE P, PROMOTORE PP'
      ' WHERE R.NPA_ROL          = :NPA_ROL'
      '   AND R.COD_INC          = I.COD_INC  (+)'
      '   AND R.COD_AUT          = P.COD_AUT  (+)'
      '   AND R.COD_PMR          = PP.COD_PMR (+)')
    Options.FieldsOrigin = True
    Left = 64
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NPA_ROL'
        Value = Null
      end>
    object qyRuoloNPA_ROL: TFloatField
      FieldName = 'NPA_ROL'
      Origin = 'RUOLO.NPA_ROL'
      Required = True
    end
    object qyRuoloCOD_INC: TStringField
      FieldName = 'COD_INC'
      Origin = 'RUOLO.COD_INC'
      Required = True
      Size = 6
    end
    object qyRuoloDES_INC: TStringField
      FieldName = 'DES_INC'
      Origin = 'INCARICO.DES_INC'
      ProviderFlags = []
      Size = 120
    end
    object qyRuoloCOD_PMR: TStringField
      FieldName = 'COD_PMR'
      Origin = 'RUOLO.COD_PMR'
      Required = True
      Size = 6
    end
    object qyRuoloDES_PMR: TStringField
      FieldName = 'DES_PMR'
      Origin = 'PROMOTORE.DES_PMR'
      ProviderFlags = []
      Size = 120
    end
    object qyRuoloCOD_AUT: TStringField
      FieldName = 'COD_AUT'
      Origin = 'RUOLO.COD_AUT'
      Size = 6
    end
    object qyRuoloDES_AUT: TStringField
      FieldName = 'DES_AUT'
      ProviderFlags = []
      Size = 241
    end
    object qyRuoloDAT_INI: TDateTimeField
      FieldName = 'DAT_INI'
      Origin = 'RUOLO.DAT_INI'
    end
    object qyRuoloDAT_FIN: TDateTimeField
      FieldName = 'DAT_FIN'
      Origin = 'RUOLO.DAT_FIN'
    end
    object qyRuoloDES_NTE: TStringField
      FieldName = 'DES_NTE'
      Origin = 'RUOLO.DES_NTE'
      Size = 1000
    end
    object qyRuoloCOD_USR: TStringField
      FieldName = 'COD_USR'
      Origin = 'RUOLO.COD_USR'
      Size = 12
    end
    object qyRuoloDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Origin = 'RUOLO.DES_PDL'
      Size = 60
    end
    object qyRuoloDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Origin = 'RUOLO.DAT_AGG_REC'
    end
  end
  object poRuolo: TDataSetProvider
    DataSet = qyRuolo
    Options = [poCascadeUpdates, poPropogateChanges]
    OnGetTableName = poRuoloGetTableName
    Left = 144
    Top = 104
  end
  object cdsRuolo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poRuolo'
    Left = 216
    Top = 104
    object cdsRuoloNPA_ROL: TFloatField
      FieldName = 'NPA_ROL'
      Origin = 'RUOLO.NPA_ROL'
      Required = True
    end
    object cdsRuoloCOD_INC: TStringField
      FieldName = 'COD_INC'
      Origin = 'RUOLO.COD_INC'
      Required = True
      Size = 6
    end
    object cdsRuoloDES_INC: TStringField
      FieldName = 'DES_INC'
      Origin = 'INCARICO.DES_INC'
      ProviderFlags = []
      Size = 120
    end
    object cdsRuoloCOD_PMR: TStringField
      FieldName = 'COD_PMR'
      Origin = 'RUOLO.COD_PMR'
      Required = True
      Size = 6
    end
    object cdsRuoloDES_PMR: TStringField
      FieldName = 'DES_PMR'
      Origin = 'PROMOTORE.DES_PMR'
      ProviderFlags = []
      Size = 120
    end
    object cdsRuoloCOD_AUT: TStringField
      FieldName = 'COD_AUT'
      Origin = 'RUOLO.COD_AUT'
      Size = 6
    end
    object cdsRuoloDES_AUT: TStringField
      FieldName = 'DES_AUT'
      ProviderFlags = []
      Size = 241
    end
    object cdsRuoloDAT_INI: TDateTimeField
      FieldName = 'DAT_INI'
      Origin = 'RUOLO.DAT_INI'
    end
    object cdsRuoloDAT_FIN: TDateTimeField
      FieldName = 'DAT_FIN'
      Origin = 'RUOLO.DAT_FIN'
    end
    object cdsRuoloDES_NTE: TStringField
      FieldName = 'DES_NTE'
      Origin = 'RUOLO.DES_NTE'
      Size = 1000
    end
    object cdsRuoloCOD_USR: TStringField
      FieldName = 'COD_USR'
      Origin = 'RUOLO.COD_USR'
      Size = 12
    end
    object cdsRuoloDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Origin = 'RUOLO.DES_PDL'
      Size = 60
    end
    object cdsRuoloDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Origin = 'RUOLO.DAT_AGG_REC'
    end
  end
  object dsRuolo: TDataSource
    DataSet = cdsRuolo
    Left = 288
    Top = 104
  end
end
