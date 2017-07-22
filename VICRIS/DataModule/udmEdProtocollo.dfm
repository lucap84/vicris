inherited dmEdProtocollo: TdmEdProtocollo
  hDataSet = cdsProtocollo
  hKeyFields.Strings = (
    'aaa_ptc'
    'flg_tip_ptc'
    'cod_ptc')
  Left = 613
  Top = 275
  Height = 212
  Width = 373
  object qyProtocollo: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT P.AAA_PTC, P.FLG_TIP_PTC, P.COD_PTC,'
      '       P.DAT_PTC, P.DAT_DOC, P.DAT_FIN,'
      '       P.FLG_FMT_PTC, P.DES_OGG,'
      '       P.COD_NAZ, P.COD_CTA,'
      '       P.COD_AUT, P.COD_INC, P.COD_PMR,'
      '       P.DES_NTE, '
      '       P.COD_USR, P.DES_PDL, P.DAT_AGG_REC,'
      '       N.DES_NAZ, C.DES_CTA,'
      '       PM.DES_PMR,'
      '       I.DES_INC,'
      '       PP.DES_NOM || '#39' '#39' || PP.DES_COG DES_AUT,'
      '       F.DES_FIL_SHR  DES_TIP_PTC,'
      '       F2.DES_FIL_SHR DES_FMT_PTC,'
      '       P.FLG_TIP_PTC||'#39'/'#39'||P.COD_PTC||'#39'/'#39'||P.AAA_PTC COD'
      '  FROM PROTOCOLLO P,'
      '       NAZIONE N, CITTA C,'
      '       PROMOTORE PM, INCARICO I, AUTORE PP,'
      '       FILSHR F, FILSHR F2'
      ' WHERE P.AAA_PTC          = :AAA_PTC'
      '   AND P.FLG_TIP_PTC      = :FLG_TIP_PTC'
      '   AND P.COD_PTC          = :COD_PTC'
      '   AND F.COD_FIL_SHR      = '#39'FLG_TIP_PTC'#39
      '   AND F.COD_VAL_FIL_SHR  = P.FLG_TIP_PTC'
      '   AND F2.COD_FIL_SHR     = '#39'FLG_FMT_PTC'#39
      '   AND F2.COD_VAL_FIL_SHR = P.FLG_FMT_PTC'
      '   AND P.COD_NAZ          = N.COD_NAZ  (+)'
      '   AND P.COD_NAZ          = C.COD_NAZ  (+)'
      '   AND P.COD_CTA          = C.COD_CTA  (+)'
      '   AND P.COD_PMR          = PM.COD_PMR (+)'
      '   AND P.COD_INC          = I.COD_INC  (+)'
      '   AND P.COD_AUT          = PP.COD_AUT (+)')
    Options.FieldsOrigin = True
    Left = 64
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AAA_PTC'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'FLG_TIP_PTC'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'COD_PTC'
        Value = Null
      end>
    object qyProtocolloAAA_PTC: TFloatField
      FieldName = 'AAA_PTC'
      Origin = 'PROTOCOLLO.AAA_PTC'
      Required = True
    end
    object qyProtocolloFLG_TIP_PTC: TStringField
      FieldName = 'FLG_TIP_PTC'
      Origin = 'PROTOCOLLO.FLG_TIP_PTC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyProtocolloCOD_PTC: TStringField
      FieldName = 'COD_PTC'
      Origin = 'PROTOCOLLO.COD_PTC'
      Required = True
      Size = 6
    end
    object qyProtocolloDAT_PTC: TDateTimeField
      FieldName = 'DAT_PTC'
      Origin = 'PROTOCOLLO.DAT_PTC'
    end
    object qyProtocolloDAT_DOC: TDateTimeField
      FieldName = 'DAT_DOC'
      Origin = 'PROTOCOLLO.DAT_DOC'
    end
    object qyProtocolloDAT_FIN: TDateTimeField
      FieldName = 'DAT_FIN'
      Origin = 'PROTOCOLLO.DAT_FIN'
    end
    object qyProtocolloFLG_FMT_PTC: TStringField
      FieldName = 'FLG_FMT_PTC'
      Origin = 'PROTOCOLLO.FLG_FMT_PTC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyProtocolloDES_OGG: TStringField
      FieldName = 'DES_OGG'
      Origin = 'PROTOCOLLO.DES_OGG'
      Size = 120
    end
    object qyProtocolloCOD_NAZ: TStringField
      FieldName = 'COD_NAZ'
      Origin = 'PROTOCOLLO.COD_NAZ'
      Size = 6
    end
    object qyProtocolloCOD_CTA: TStringField
      FieldName = 'COD_CTA'
      Origin = 'PROTOCOLLO.COD_CTA'
      Size = 6
    end
    object qyProtocolloCOD_AUT: TStringField
      FieldName = 'COD_AUT'
      Origin = 'PROTOCOLLO.COD_AUT'
      Size = 6
    end
    object qyProtocolloCOD_INC: TStringField
      FieldName = 'COD_INC'
      Origin = 'PROTOCOLLO.COD_INC'
      Size = 6
    end
    object qyProtocolloCOD_PMR: TStringField
      FieldName = 'COD_PMR'
      Origin = 'PROTOCOLLO.COD_PMR'
      Size = 6
    end
    object qyProtocolloDES_NTE: TStringField
      FieldName = 'DES_NTE'
      Origin = 'PROTOCOLLO.DES_NTE'
      Size = 1000
    end
    object qyProtocolloCOD_USR: TStringField
      FieldName = 'COD_USR'
      Origin = 'PROTOCOLLO.COD_USR'
      Size = 12
    end
    object qyProtocolloDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Origin = 'PROTOCOLLO.DES_PDL'
      Size = 60
    end
    object qyProtocolloDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Origin = 'PROTOCOLLO.DAT_AGG_REC'
    end
    object qyProtocolloDES_NAZ: TStringField
      FieldName = 'DES_NAZ'
      Origin = 'NAZIONE.DES_NAZ'
      ProviderFlags = []
      Size = 60
    end
    object qyProtocolloDES_CTA: TStringField
      FieldName = 'DES_CTA'
      Origin = 'CITTA.DES_CTA'
      ProviderFlags = []
      Size = 60
    end
    object qyProtocolloDES_PMR: TStringField
      FieldName = 'DES_PMR'
      Origin = 'PROMOTORE.DES_PMR'
      ProviderFlags = []
      Size = 120
    end
    object qyProtocolloDES_INC: TStringField
      FieldName = 'DES_INC'
      Origin = 'INCARICO.DES_INC'
      ProviderFlags = []
      Size = 120
    end
    object qyProtocolloDES_AUT: TStringField
      FieldName = 'DES_AUT'
      ProviderFlags = []
      Size = 241
    end
    object qyProtocolloDES_TIP_PTC: TStringField
      FieldName = 'DES_TIP_PTC'
      Origin = 'FILSHR.DES_FIL_SHR'
      ProviderFlags = []
      Size = 120
    end
    object qyProtocolloDES_FMT_PTC: TStringField
      FieldName = 'DES_FMT_PTC'
      Origin = 'FILSHR.DES_FIL_SHR'
      ProviderFlags = []
      Size = 120
    end
    object qyProtocolloCOD: TStringField
      FieldName = 'COD'
      ProviderFlags = []
      Size = 49
    end
  end
  object poProtocollo: TDataSetProvider
    DataSet = qyProtocollo
    Options = [poCascadeUpdates, poPropogateChanges]
    OnGetTableName = poProtocolloGetTableName
    Left = 144
    Top = 104
  end
  object cdsProtocollo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poProtocollo'
    Left = 216
    Top = 104
    object cdsProtocolloAAA_PTC: TFloatField
      FieldName = 'AAA_PTC'
      Origin = 'PROTOCOLLO.AAA_PTC'
      Required = True
    end
    object cdsProtocolloFLG_TIP_PTC: TStringField
      FieldName = 'FLG_TIP_PTC'
      Origin = 'PROTOCOLLO.FLG_TIP_PTC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsProtocolloCOD_PTC: TStringField
      FieldName = 'COD_PTC'
      Origin = 'PROTOCOLLO.COD_PTC'
      Required = True
      Size = 6
    end
    object cdsProtocolloDAT_PTC: TDateTimeField
      FieldName = 'DAT_PTC'
      Origin = 'PROTOCOLLO.DAT_PTC'
    end
    object cdsProtocolloDAT_DOC: TDateTimeField
      FieldName = 'DAT_DOC'
      Origin = 'PROTOCOLLO.DAT_DOC'
    end
    object cdsProtocolloDAT_FIN: TDateTimeField
      FieldName = 'DAT_FIN'
      Origin = 'PROTOCOLLO.DAT_FIN'
    end
    object cdsProtocolloFLG_FMT_PTC: TStringField
      FieldName = 'FLG_FMT_PTC'
      Origin = 'PROTOCOLLO.FLG_FMT_PTC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsProtocolloDES_OGG: TStringField
      FieldName = 'DES_OGG'
      Origin = 'PROTOCOLLO.DES_OGG'
      Size = 120
    end
    object cdsProtocolloCOD_NAZ: TStringField
      FieldName = 'COD_NAZ'
      Origin = 'PROTOCOLLO.COD_NAZ'
      Size = 6
    end
    object cdsProtocolloCOD_CTA: TStringField
      FieldName = 'COD_CTA'
      Origin = 'PROTOCOLLO.COD_CTA'
      Size = 6
    end
    object cdsProtocolloCOD_AUT: TStringField
      FieldName = 'COD_AUT'
      Origin = 'PROTOCOLLO.COD_AUT'
      Size = 6
    end
    object cdsProtocolloCOD_INC: TStringField
      FieldName = 'COD_INC'
      Origin = 'PROTOCOLLO.COD_INC'
      Size = 6
    end
    object cdsProtocolloCOD_PMR: TStringField
      FieldName = 'COD_PMR'
      Origin = 'PROTOCOLLO.COD_PMR'
      Size = 6
    end
    object cdsProtocolloDES_NTE: TStringField
      FieldName = 'DES_NTE'
      Origin = 'PROTOCOLLO.DES_NTE'
      Size = 1000
    end
    object cdsProtocolloCOD_USR: TStringField
      FieldName = 'COD_USR'
      Origin = 'PROTOCOLLO.COD_USR'
      Size = 12
    end
    object cdsProtocolloDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Origin = 'PROTOCOLLO.DES_PDL'
      Size = 60
    end
    object cdsProtocolloDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Origin = 'PROTOCOLLO.DAT_AGG_REC'
    end
    object cdsProtocolloDES_NAZ: TStringField
      FieldName = 'DES_NAZ'
      Origin = 'NAZIONE.DES_NAZ'
      ProviderFlags = []
      Size = 60
    end
    object cdsProtocolloDES_CTA: TStringField
      FieldName = 'DES_CTA'
      Origin = 'CITTA.DES_CTA'
      ProviderFlags = []
      Size = 60
    end
    object cdsProtocolloDES_PMR: TStringField
      FieldName = 'DES_PMR'
      Origin = 'PROMOTORE.DES_PMR'
      ProviderFlags = []
      Size = 120
    end
    object cdsProtocolloDES_INC: TStringField
      FieldName = 'DES_INC'
      Origin = 'INCARICO.DES_INC'
      ProviderFlags = []
      Size = 120
    end
    object cdsProtocolloDES_AUT: TStringField
      FieldName = 'DES_AUT'
      ProviderFlags = []
      Size = 241
    end
    object cdsProtocolloDES_TIP_PTC: TStringField
      FieldName = 'DES_TIP_PTC'
      Origin = 'FILSHR.DES_FIL_SHR'
      ProviderFlags = []
      Size = 120
    end
    object cdsProtocolloDES_FMT_PTC: TStringField
      FieldName = 'DES_FMT_PTC'
      Origin = 'FILSHR.DES_FIL_SHR'
      ProviderFlags = []
      Size = 120
    end
    object cdsProtocolloCOD: TStringField
      FieldName = 'COD'
      ProviderFlags = []
      Size = 49
    end
  end
  object dsProtocollo: TDataSource
    DataSet = cdsProtocollo
    Left = 288
    Top = 104
  end
end
