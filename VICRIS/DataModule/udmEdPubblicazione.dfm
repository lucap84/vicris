inherited dmEdPubblicazione: TdmEdPubblicazione
  hDataSet = cdsPubblicazione
  hKeyFields.Strings = (
    'cod_pub')
  Left = 328
  Top = 339
  Height = 266
  Width = 369
  object poPubblicazione: TDataSetProvider
    DataSet = qyPubblicazione
    Options = [poCascadeUpdates, poPropogateChanges]
    OnGetTableName = poPubblicazioneGetTableName
    Left = 144
    Top = 104
  end
  object cdsPubblicazione: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poPubblicazione'
    Left = 216
    Top = 104
    object cdsPubblicazioneCOD_PUB: TStringField
      FieldName = 'COD_PUB'
      Origin = 'PUBBLICAZIONE.COD_PUB'
      Required = True
      Size = 6
    end
    object cdsPubblicazioneDES_PUB: TStringField
      FieldName = 'DES_PUB'
      Origin = 'PUBBLICAZIONE.DES_PUB'
      Size = 120
    end
    object cdsPubblicazioneFLG_TIP_PUB: TStringField
      FieldName = 'FLG_TIP_PUB'
      Origin = 'PUBBLICAZIONE.FLG_TIP_PUB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPubblicazioneFLG_TIP_AUT: TStringField
      FieldName = 'FLG_TIP_AUT'
      Origin = 'PUBBLICAZIONE.FLG_TIP_AUT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPubblicazioneCOD_NAZ: TStringField
      FieldName = 'COD_NAZ'
      Origin = 'PUBBLICAZIONE.COD_NAZ'
      Size = 6
    end
    object cdsPubblicazioneCOD_CTA: TStringField
      FieldName = 'COD_CTA'
      Origin = 'PUBBLICAZIONE.COD_CTA'
      Size = 6
    end
    object cdsPubblicazioneCOD_ISB: TStringField
      FieldName = 'COD_ISB'
      Origin = 'PUBBLICAZIONE.COD_ISB'
    end
    object cdsPubblicazioneAAA_PUB: TFloatField
      FieldName = 'AAA_PUB'
      Origin = 'PUBBLICAZIONE.AAA_PUB'
    end
    object cdsPubblicazioneNUM_EDZ: TStringField
      FieldName = 'NUM_EDZ'
      Origin = 'PUBBLICAZIONE.NUM_EDZ'
      Size = 6
    end
    object cdsPubblicazioneNUM_PAG: TFloatField
      FieldName = 'NUM_PAG'
      Origin = 'PUBBLICAZIONE.NUM_PAG'
    end
    object cdsPubblicazioneDES_NTE: TStringField
      FieldName = 'DES_NTE'
      Origin = 'PUBBLICAZIONE.DES_NTE'
      Size = 1000
    end
    object cdsPubblicazioneCOD_SCF: TStringField
      FieldName = 'COD_SCF'
      Origin = 'PUBBLICAZIONE.COD_SCF'
      Size = 6
    end
    object cdsPubblicazioneCOD_LVL: TStringField
      FieldName = 'COD_LVL'
      Origin = 'PUBBLICAZIONE.COD_LVL'
      Size = 6
    end
    object cdsPubblicazioneCOD_OGG: TStringField
      FieldName = 'COD_OGG'
      Origin = 'PUBBLICAZIONE.COD_OGG'
      Size = 6
    end
    object cdsPubblicazioneCOD_CED: TStringField
      FieldName = 'COD_CED'
      Origin = 'PUBBLICAZIONE.COD_CED'
      Size = 6
    end
    object cdsPubblicazioneCOD_CLZ: TStringField
      FieldName = 'COD_CLZ'
      Origin = 'PUBBLICAZIONE.COD_CLZ'
      Size = 6
    end
    object cdsPubblicazioneCOD_PMR: TStringField
      FieldName = 'COD_PMR'
      Origin = 'PUBBLICAZIONE.COD_PMR'
      Size = 6
    end
    object cdsPubblicazioneCOD_USR: TStringField
      FieldName = 'COD_USR'
      Origin = 'PUBBLICAZIONE.COD_USR'
      Size = 12
    end
    object cdsPubblicazioneDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Origin = 'PUBBLICAZIONE.DES_PDL'
      Size = 60
    end
    object cdsPubblicazioneDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Origin = 'PUBBLICAZIONE.DAT_AGG_REC'
    end
    object cdsPubblicazionecod_aut: TStringField
      FieldKind = fkCalculated
      FieldName = 'cod_aut'
      Size = 6
      Calculated = True
    end
    object cdsPubblicazioneDES_NAZ: TStringField
      FieldName = 'DES_NAZ'
      Origin = 'NAZIONE.DES_NAZ'
      ProviderFlags = []
      Size = 60
    end
    object cdsPubblicazioneDES_CTA: TStringField
      FieldName = 'DES_CTA'
      Origin = 'CITTA.DES_CTA'
      ProviderFlags = []
      Size = 60
    end
    object cdsPubblicazioneDES_CDU: TStringField
      FieldName = 'DES_CDU'
      ProviderFlags = []
      Size = 183
    end
    object cdsPubblicazioneDES_CED: TStringField
      FieldName = 'DES_CED'
      Origin = 'EDITRICE.DES_CED'
      ProviderFlags = []
      Size = 120
    end
    object cdsPubblicazioneDES_CLZ: TStringField
      FieldName = 'DES_CLZ'
      Origin = 'COLLEZIONE.DES_CLZ'
      ProviderFlags = []
      Size = 60
    end
    object cdsPubblicazioneDES_PMR: TStringField
      FieldName = 'DES_PMR'
      Origin = 'PROMOTORE.DES_PMR'
      ProviderFlags = []
      Size = 60
    end
    object cdsPubblicazioneDES_TIP_PUB: TStringField
      FieldName = 'DES_TIP_PUB'
      Origin = 'FILSHR.DES_FIL_SHR'
      ProviderFlags = []
      Size = 120
    end
    object cdsPubblicazioneDES_TIP_AUT: TStringField
      FieldName = 'DES_TIP_AUT'
      Origin = 'FILSHR.DES_FIL_SHR'
      ProviderFlags = []
      Size = 120
    end
    object cdsPubblicazioneCOD_UBI: TStringField
      FieldName = 'COD_UBI'
      Origin = 'PUBBLICAZIONE.COD_UBI'
      Size = 6
    end
    object cdsPubblicazioneDES_UBI: TStringField
      FieldName = 'DES_UBI'
      Origin = 'UBI.DES_UBI'
      ProviderFlags = []
      Size = 120
    end
    object cdsPubblicazioneDES_TAG: TStringField
      FieldName = 'DES_TAG'
      Origin = 'PUBBLICAZIONE.DES_TAG'
      Size = 1000
    end
  end
  object dsPubblicazione: TDataSource
    DataSet = cdsPubblicazione
    Left = 288
    Top = 104
  end
  object qyPubblicazione: TOraQuery
    Session = OraSession
    SQL.Strings = (
      
        'SELECT P.COD_PUB, P.DES_PUB, P.FLG_TIP_PUB, P.FLG_TIP_AUT, P.COD' +
        '_NAZ, P.COD_CTA, P.COD_ISB,'
      
        '       P.AAA_PUB, P.NUM_EDZ, P.NUM_PAG, P.DES_NTE, P.COD_UBI, P.' +
        'COD_SCF, P.COD_LVL, P.COD_OGG, P.COD_CED,'
      
        '       P.COD_CLZ, P.COD_PMR, P.COD_USR, P.DES_PDL, P.DAT_AGG_REC' +
        ', P.DES_TAG,'
      '       N.DES_NAZ, C.DES_CTA,'
      '       O.COD_CDU || '#39' - '#39' || O.DES_OGG DES_CDU,'
      '       E.DES_CED,'
      '       CL.DES_CLZ,'
      '       PP.DES_PMR,'
      '       U.DES_UBI,'
      '       F.DES_FIL_SHR  DES_TIP_PUB,'
      '       F2.DES_FIL_SHR DES_TIP_AUT'
      '  FROM PUBBLICAZIONE P,'
      '       NAZIONE N, CITTA C, UBI U,'
      '       OGGETTO O, EDITRICE E, COLLEZIONE CL, PROMOTORE PP,'
      '       FILSHR F, FILSHR F2'
      ' WHERE P.COD_PUB          = :COD_PUB'
      '   AND F.COD_FIL_SHR      = '#39'FLG_TIP_PUB'#39
      '   AND F.COD_VAL_FIL_SHR  = P.FLG_TIP_PUB'
      '   AND F2.COD_FIL_SHR     = '#39'FLG_TIP_AUT'#39
      '   AND F2.COD_VAL_FIL_SHR = P.FLG_TIP_AUT'
      '   AND P.COD_NAZ          = N.COD_NAZ  (+)'
      '   AND P.COD_NAZ          = C.COD_NAZ  (+)'
      '   AND P.COD_CTA          = C.COD_CTA  (+)'
      '   AND P.COD_OGG          = O.COD_OGG  (+)'
      '   AND P.COD_CED          = E.COD_CED  (+)'
      '   AND P.COD_CLZ          = CL.COD_CLZ (+)'
      '   AND P.COD_PMR          = PP.COD_PMR (+)'
      '   AND P.COD_UBI          = U.COD_UBI  (+)')
    Options.FieldsOrigin = True
    Left = 64
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_PUB'
        Value = Null
      end>
    object qyPubblicazioneCOD_PUB: TStringField
      FieldName = 'COD_PUB'
      Origin = 'PUBBLICAZIONE.COD_PUB'
      Required = True
      Size = 6
    end
    object qyPubblicazioneDES_PUB: TStringField
      FieldName = 'DES_PUB'
      Origin = 'PUBBLICAZIONE.DES_PUB'
      Size = 250
    end
    object qyPubblicazioneFLG_TIP_PUB: TStringField
      FieldName = 'FLG_TIP_PUB'
      Origin = 'PUBBLICAZIONE.FLG_TIP_PUB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyPubblicazioneFLG_TIP_AUT: TStringField
      FieldName = 'FLG_TIP_AUT'
      Origin = 'PUBBLICAZIONE.FLG_TIP_AUT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyPubblicazioneCOD_NAZ: TStringField
      FieldName = 'COD_NAZ'
      Origin = 'PUBBLICAZIONE.COD_NAZ'
      Size = 6
    end
    object qyPubblicazioneCOD_CTA: TStringField
      FieldName = 'COD_CTA'
      Origin = 'PUBBLICAZIONE.COD_CTA'
      Size = 6
    end
    object qyPubblicazioneCOD_ISB: TStringField
      FieldName = 'COD_ISB'
      Origin = 'PUBBLICAZIONE.COD_ISB'
    end
    object qyPubblicazioneAAA_PUB: TFloatField
      FieldName = 'AAA_PUB'
      Origin = 'PUBBLICAZIONE.AAA_PUB'
    end
    object qyPubblicazioneNUM_EDZ: TStringField
      FieldName = 'NUM_EDZ'
      Origin = 'PUBBLICAZIONE.NUM_EDZ'
      Size = 6
    end
    object qyPubblicazioneNUM_PAG: TFloatField
      FieldName = 'NUM_PAG'
      Origin = 'PUBBLICAZIONE.NUM_PAG'
    end
    object qyPubblicazioneDES_NTE: TStringField
      FieldName = 'DES_NTE'
      Origin = 'PUBBLICAZIONE.DES_NTE'
      Size = 1000
    end
    object qyPubblicazioneCOD_SCF: TStringField
      FieldName = 'COD_SCF'
      Origin = 'PUBBLICAZIONE.COD_SCF'
      Size = 6
    end
    object qyPubblicazioneCOD_LVL: TStringField
      FieldName = 'COD_LVL'
      Origin = 'PUBBLICAZIONE.COD_LVL'
      Size = 6
    end
    object qyPubblicazioneCOD_OGG: TStringField
      FieldName = 'COD_OGG'
      Origin = 'PUBBLICAZIONE.COD_OGG'
      Size = 6
    end
    object qyPubblicazioneCOD_CED: TStringField
      FieldName = 'COD_CED'
      Origin = 'PUBBLICAZIONE.COD_CED'
      Size = 6
    end
    object qyPubblicazioneCOD_CLZ: TStringField
      FieldName = 'COD_CLZ'
      Origin = 'PUBBLICAZIONE.COD_CLZ'
      Size = 6
    end
    object qyPubblicazioneCOD_PMR: TStringField
      FieldName = 'COD_PMR'
      Origin = 'PUBBLICAZIONE.COD_PMR'
      Size = 6
    end
    object qyPubblicazioneCOD_USR: TStringField
      FieldName = 'COD_USR'
      Origin = 'PUBBLICAZIONE.COD_USR'
      Size = 12
    end
    object qyPubblicazioneDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Origin = 'PUBBLICAZIONE.DES_PDL'
      Size = 60
    end
    object qyPubblicazioneDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Origin = 'PUBBLICAZIONE.DAT_AGG_REC'
    end
    object qyPubblicazioneDES_NAZ: TStringField
      FieldName = 'DES_NAZ'
      Origin = 'NAZIONE.DES_NAZ'
      ProviderFlags = []
      Size = 60
    end
    object qyPubblicazioneDES_CTA: TStringField
      FieldName = 'DES_CTA'
      Origin = 'CITTA.DES_CTA'
      ProviderFlags = []
      Size = 60
    end
    object qyPubblicazioneDES_CDU: TStringField
      FieldName = 'DES_CDU'
      ProviderFlags = []
      Size = 183
    end
    object qyPubblicazioneDES_CED: TStringField
      FieldName = 'DES_CED'
      Origin = 'EDITRICE.DES_CED'
      ProviderFlags = []
      Size = 120
    end
    object qyPubblicazioneDES_CLZ: TStringField
      FieldName = 'DES_CLZ'
      Origin = 'COLLEZIONE.DES_CLZ'
      ProviderFlags = []
      Size = 120
    end
    object qyPubblicazioneDES_PMR: TStringField
      FieldName = 'DES_PMR'
      Origin = 'PROMOTORE.DES_PMR'
      ProviderFlags = []
      Size = 120
    end
    object qyPubblicazioneDES_TIP_PUB: TStringField
      FieldName = 'DES_TIP_PUB'
      Origin = 'FILSHR.DES_FIL_SHR'
      ProviderFlags = []
      Size = 120
    end
    object qyPubblicazioneDES_TIP_AUT: TStringField
      FieldName = 'DES_TIP_AUT'
      Origin = 'FILSHR.DES_FIL_SHR'
      ProviderFlags = []
      Size = 120
    end
    object qyPubblicazioneCOD_UBI: TStringField
      FieldName = 'COD_UBI'
      Origin = 'PUBBLICAZIONE.COD_UBI'
      Size = 6
    end
    object qyPubblicazioneDES_UBI: TStringField
      FieldName = 'DES_UBI'
      Origin = 'UBI.DES_UBI'
      ProviderFlags = []
      Size = 120
    end
    object qyPubblicazioneDES_TAG: TStringField
      FieldName = 'DES_TAG'
      Origin = 'PUBBLICAZIONE.DES_TAG'
      Size = 1000
    end
  end
  object qyDetAutPub: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM DETAUTPUB'
      ' WHERE COD_PUB = :COD_PUB'
      ' ORDER BY COD_AUT')
    MasterSource = dsPubblicazione
    Left = 72
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'COD_PUB'
        ParamType = ptInput
      end>
  end
  object poDetAutPub: TDataSetProvider
    DataSet = qyDetAutPub
    Left = 144
    Top = 168
  end
  object cdsDetAutPub: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_PUB'
    MasterFields = 'COD_PUB'
    MasterSource = dsPubblicazione
    PacketRecords = 0
    Params = <>
    ProviderName = 'poDetAutPub'
    OnCalcFields = cdsDetAutPubCalcFields
    Left = 216
    Top = 168
    object cdsDetAutPubCOD_PUB: TStringField
      FieldName = 'COD_PUB'
      Required = True
      Visible = False
      Size = 6
    end
    object cdsDetAutPubCOD_AUT: TStringField
      DisplayLabel = 'Codice Autore'
      FieldName = 'COD_AUT'
      Required = True
      Size = 6
    end
    object cdsDetAutPubdes_nom_aut: TStringField
      DisplayLabel = 'Nome'
      FieldKind = fkCalculated
      FieldName = 'des_nom_aut'
      ReadOnly = True
      Size = 120
      Calculated = True
    end
    object cdsDetAutPubdes_cog_aut: TStringField
      DisplayLabel = 'Cognome'
      FieldKind = fkCalculated
      FieldName = 'des_cog_aut'
      ReadOnly = True
      Size = 120
      Calculated = True
    end
    object cdsDetAutPubCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsDetAutPubDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object cdsDetAutPubDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
  end
  object dsDetAutPub: TDataSource
    DataSet = cdsDetAutPub
    Left = 288
    Top = 168
  end
  object qyAut: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT DES_NOM, DES_COG'
      '  FROM AUTORE'
      ' WHERE COD_AUT = :COD_AUT')
    Left = 248
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_AUT'
      end>
    object qyAutDES_NOM: TStringField
      FieldName = 'DES_NOM'
      Size = 120
    end
    object qyAutDES_COG: TStringField
      FieldName = 'DES_COG'
      Size = 120
    end
  end
  object qyCheckDupPub: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT COUNT(*) NUM'
      '  FROM PUBBLICAZIONE'
      ' WHERE COD_PUB = :COD_PUB'
      '   AND COD_PUB <> :COD_PUB_ORI')
    Left = 144
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_PUB'
      end
      item
        DataType = ftUnknown
        Name = 'COD_PUB_ORI'
      end>
    object qyCheckDupPubNUM: TFloatField
      FieldName = 'NUM'
    end
  end
end
