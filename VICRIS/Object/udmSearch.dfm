object dmSearch: TdmSearch
  OldCreateOrder = False
  OnCreate = dmSearchCreate
  Left = 645
  Top = 285
  Height = 405
  Width = 298
  object OraSearch: TOraSession
    Options.Charset = 'WE8ISO8859P15'
    Options.DateFormat = 'DD-MON-RR'
    Options.DateLanguage = 'ITALIAN'
    Options.KeepDesignConnected = False
    Username = 'VICRIS'
    Server = 'VICRIS'
    AutoCommit = False
    LoginPrompt = False
    Schema = 'VICRIS'
    Left = 16
    Top = 16
    EncryptedPassword = 'A9FFB6FFBCFFADFFB6FFACFF'
  end
  object qyCli: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      
        'SELECT ID_CLIENTE, NOME, REFERENTE, INDIRIZZO, CITTA, NOME DESCR' +
        'IZIONE'
      '  FROM TB_CLIENTI'
      
        ' WHERE ID_CLIENTE BETWEEN NVL(:ID_CLIENTE, 0) AND NVL(:ID_CLIENT' +
        'E, 999999999999)'
      ' ORDER BY NOME')
    FetchAll = True
    Left = 64
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_CLIENTE'
      end>
    object qyCliID_CLIENTE: TFloatField
      DisplayLabel = 'Codice'
      FieldName = 'ID_CLIENTE'
    end
    object qyCliNOME: TStringField
      DisplayLabel = 'Ragione Sociale'
      FieldName = 'NOME'
      Size = 500
    end
    object qyCliREFERENTE: TStringField
      DisplayLabel = 'Referente'
      FieldName = 'REFERENTE'
      Size = 100
    end
    object qyCliINDIRIZZO: TStringField
      DisplayLabel = 'Indirizzo'
      FieldName = 'INDIRIZZO'
      Size = 2000
    end
    object qyCliCITTA: TStringField
      DisplayLabel = 'Citt'#224
      FieldName = 'CITTA'
      Size = 100
    end
    object qyCliDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Visible = False
      Size = 500
    end
  end
  object qyMan: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      
        'SELECT ID_MANDANTE, MANDANTE, INDIRIZZO, CITTA, MANDANTE DESCRIZ' +
        'IONE'
      '  FROM TB_MANDANTI'
      
        ' WHERE ID_MANDANTE BETWEEN NVL(:ID_MANDANTE, 0) AND NVL(:ID_MAND' +
        'ANTE, 999999999999)'
      ' ORDER BY MANDANTE')
    Left = 120
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_MANDANTE'
      end>
    object qyManID_MANDANTE: TFloatField
      FieldName = 'ID_MANDANTE'
    end
    object qyManMANDANTE: TStringField
      FieldName = 'MANDANTE'
      Size = 500
    end
    object qyManINDIRIZZO: TStringField
      FieldName = 'INDIRIZZO'
      Size = 2000
    end
    object qyManCITTA: TStringField
      FieldName = 'CITTA'
      Size = 100
    end
    object qyManDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Visible = False
      Size = 500
    end
  end
  object qyLoc: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      'SELECT ID_LOCALITA, LOCALITA, LOCALITA DESCRIZIONE'
      '  FROM TB_LOCALITA'
      
        ' WHERE LOCALITA BETWEEN NVL(:LOCALITA, '#39' '#39') AND NVL(:LOCALITA, '#39 +
        'zzzzzzzzzz'#39')'
      ' ORDER BY LOCALITA')
    Left = 184
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LOCALITA'
      end>
    object qyLocID_LOCALITA: TFloatField
      DisplayLabel = 'Id'
      FieldName = 'ID_LOCALITA'
      Required = True
    end
    object qyLocLOCALITA: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'LOCALITA'
      Size = 300
    end
    object qyLocDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Visible = False
      Size = 300
    end
  end
  object qyCatPro: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      'SELECT ID_CATEGORIA, CATEGORIA, CATEGORIA DESCRIZIONE'
      '  FROM TB_CATEGORIA_PRODOTTO'
      
        ' WHERE ID_CATEGORIA BETWEEN NVL(:ID_CATEGORIA, 0) AND NVL(:ID_CA' +
        'TEGORIA, 999999999999)'
      ' ORDER BY CATEGORIA')
    Left = 64
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_CATEGORIA'
      end>
    object qyCatProID_CATEGORIA: TFloatField
      DisplayLabel = 'Id'
      FieldName = 'ID_CATEGORIA'
    end
    object qyCatProCATEGORIA: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'CATEGORIA'
      Size = 300
    end
    object qyCatProDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Visible = False
      Size = 300
    end
  end
  object qyPro: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      'SELECT P.ID_PRODOTTO, P.PRODOTTO, P.UNITA_MISURA, P.NOTE,'
      '       M.MANDANTE, C.CATEGORIA, S.CATEGORIA SUB_CATEGORIA,'
      '       P.PRODOTTO DESCRIZIONE'
      
        '  FROM TB_PRODOTTI P, TB_MANDANTI M, TB_CATEGORIA_PRODOTTO C, TB' +
        '_CATEGORIA_PRODOTTO S'
      ' WHERE P.ID_MANDANTE     = M.ID_MANDANTE  (+)'
      '   AND P.ID_CATEGORIA    = C.ID_CATEGORIA (+)'
      '   AND P.ID_SUBCATEGORIA = S.ID_CATEGORIA (+)'
      ' ORDER BY P.PRODOTTO')
    Left = 128
    Top = 160
    object qyProID_PRODOTTO: TFloatField
      FieldName = 'ID_PRODOTTO'
    end
    object qyProPRODOTTO: TStringField
      FieldName = 'PRODOTTO'
      Size = 200
    end
    object qyProUNITA_MISURA: TStringField
      FieldName = 'UNITA_MISURA'
    end
    object qyProNOTE: TStringField
      FieldName = 'NOTE'
      Size = 2000
    end
    object qyProMANDANTE: TStringField
      FieldName = 'MANDANTE'
      Size = 500
    end
    object qyProCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 300
    end
    object qyProSUB_CATEGORIA: TStringField
      FieldName = 'SUB_CATEGORIA'
      Size = 300
    end
    object qyProDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Visible = False
      Size = 200
    end
  end
end
