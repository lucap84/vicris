inherited dmBrProtocollo: TdmBrProtocollo
  hDataSet = qyProtocollo
  hKeyFields.Strings = (
    'aaa_ptc'
    'flg_tip_ptc'
    'cod_ptc')
  object qyProtocollo: TOraQuery
    SQL.Strings = (
      'SELECT P.AAA_PTC, P.FLG_TIP_PTC, P.COD_PTC,'
      '       P.FLG_TIP_PTC||'#39'/'#39'||P.COD_PTC||'#39'/'#39'||P.AAA_PTC COD,'
      '       P.DAT_DOC, P.DAT_PTC, P.DAT_FIN,'
      
        '       P.DES_OGG, PM.DES_PMR, I.DES_INC, PP.DES_NOM || '#39' '#39' || PP' +
        '.DES_COG DES_AUT'
      '  FROM PROTOCOLLO P, PROMOTORE PM, INCARICO I, AUTORE PP'
      ' WHERE P.COD_PMR = PM.COD_PMR (+)'
      '   AND P.COD_INC = I.COD_INC  (+)'
      '   AND P.COD_AUT = PP.COD_AUT (+)'
      
        ' ORDER BY P.DAT_PTC DESC, P.DAT_DOC DESC, P.FLG_TIP_PTC, P.COD_P' +
        'TC DESC')
    Left = 32
    Top = 24
    object qyProtocolloAAA_PTC: TFloatField
      FieldName = 'AAA_PTC'
      Required = True
      Visible = False
    end
    object qyProtocolloFLG_TIP_PTC: TStringField
      FieldName = 'FLG_TIP_PTC'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qyProtocolloCOD_PTC: TStringField
      FieldName = 'COD_PTC'
      Required = True
      Visible = False
      Size = 6
    end
    object qyProtocolloCOD: TStringField
      DisplayLabel = 'Protocollo'
      FieldName = 'COD'
      Size = 49
    end
    object qyProtocolloDAT_DOC: TDateTimeField
      DisplayLabel = 'Data Doc.'
      FieldName = 'DAT_DOC'
    end
    object qyProtocolloDAT_PTC: TDateTimeField
      DisplayLabel = 'Data Prot.'
      FieldName = 'DAT_PTC'
    end
    object qyProtocolloDAT_FIN: TDateTimeField
      DisplayLabel = 'Data Invio/Ricez.'
      FieldName = 'DAT_FIN'
    end
    object qyProtocolloDES_OGG: TStringField
      DisplayLabel = 'Oggetto'
      FieldName = 'DES_OGG'
      Size = 120
    end
    object qyProtocolloDES_PMR: TStringField
      DisplayLabel = 'Istituzione'
      FieldName = 'DES_PMR'
      Size = 120
    end
    object qyProtocolloDES_INC: TStringField
      DisplayLabel = 'Incarico'
      FieldName = 'DES_INC'
      Size = 120
    end
    object qyProtocolloDES_AUT: TStringField
      DisplayLabel = 'Persona'
      FieldName = 'DES_AUT'
      Size = 241
    end
  end
  object dsProtocollo: TDataSource
    DataSet = qyProtocollo
    Left = 112
    Top = 24
  end
end
