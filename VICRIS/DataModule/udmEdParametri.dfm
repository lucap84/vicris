inherited dmEdParametri: TdmEdParametri
  hdmType = hdmRead
  hTipAttNum = hPrgMan
  object qyParametri: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM PARAMETRI'
      ' ORDER BY NUM_ORD')
    Left = 80
    Top = 64
    object qyParametriNPA_PAR: TFloatField
      FieldName = 'NPA_PAR'
      Required = True
    end
    object qyParametriCOD_PAR: TStringField
      FieldName = 'COD_PAR'
      Required = True
    end
    object qyParametriDES_PAR: TStringField
      FieldName = 'DES_PAR'
      Size = 60
    end
    object qyParametriDES_CAT_PAR: TStringField
      FieldName = 'DES_CAT_PAR'
      Size = 60
    end
    object qyParametriCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object qyParametriDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object qyParametriDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
    object qyParametriVAL_PAR: TStringField
      FieldName = 'VAL_PAR'
      Size = 60
    end
    object qyParametriNUM_ORD: TFloatField
      FieldName = 'NUM_ORD'
      Required = True
    end
  end
end
