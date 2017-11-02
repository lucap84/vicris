object dmSearch: TdmSearch
  OldCreateOrder = False
  OnCreate = dmSearchCreate
  Left = 527
  Top = 279
  Height = 269
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
      '   AND FLAG_ACTIVE = '#39'1'#39
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
      DisplayLabel = 'Id'
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
      '   AND FLAG_ACTIVE = '#39'1'#39
      ' ORDER BY MANDANTE')
    Left = 120
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_MANDANTE'
      end>
    object qyManID_MANDANTE: TFloatField
      DisplayLabel = 'Id'
      FieldName = 'ID_MANDANTE'
    end
    object qyManMANDANTE: TStringField
      DisplayLabel = 'Ragione Sociale'
      FieldName = 'MANDANTE'
      Size = 500
    end
    object qyManINDIRIZZO: TStringField
      DisplayLabel = 'Indirizzo'
      FieldName = 'INDIRIZZO'
      Size = 2000
    end
    object qyManCITTA: TStringField
      DisplayLabel = 'Citt'#224
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
      
        ' WHERE ID_LOCALITA BETWEEN NVL(:ID_LOCALITA, 0) AND NVL(:ID_LOCA' +
        'LITA, 999999999999)'
      ' ORDER BY LOCALITA')
    Left = 184
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_LOCALITA'
      end>
    object qyLocID_LOCALITA: TFloatField
      DisplayLabel = 'Id'
      FieldName = 'ID_LOCALITA'
      Required = True
    end
    object qyLocLOCALITA: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'LOCALITA'
      Size = 100
    end
    object qyLocDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Visible = False
      Size = 100
    end
  end
  object qyCatPro: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      'SELECT ID_CATEGORIA, CATEGORIA, CATEGORIA DESCRIZIONE'
      '  FROM TB_CATEGORIE_PRODOTTI'
      
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
      '       M.MANDANTE, C.CATEGORIA, S.SUBMANDANTE,'
      '       P.PRODOTTO DESCRIZIONE'
      
        '  FROM TB_PRODOTTI P, TB_MANDANTI M, TB_CATEGORIE_PRODOTTI C, TB' +
        '_SUBMANDANTI S'
      
        ' WHERE P.ID_PRODOTTO BETWEEN NVL(:ID_PRODOTTO, 0) AND NVL(:ID_PR' +
        'ODOTTO, 999999999999)'
      '   AND P.ID_MANDANTE           = M.ID_MANDANTE  (+)'
      '   AND P.ID_CATEGORIA          = C.ID_CATEGORIA (+)'
      '   AND P.ID_SUBMANDANTE        = S.ID_SUBMANDANTE (+)'
      '   AND P.FLAG_ACTIVE           = '#39'1'#39
      '   AND NVL(M.FLAG_ACTIVE, '#39'1'#39') = '#39'1'#39
      ' ORDER BY P.PRODOTTO')
    Left = 128
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_PRODOTTO'
      end>
    object qyProID_PRODOTTO: TFloatField
      DisplayLabel = 'Id'
      DisplayWidth = 5
      FieldName = 'ID_PRODOTTO'
    end
    object qyProPRODOTTO: TStringField
      DisplayLabel = 'Prodotto'
      DisplayWidth = 25
      FieldName = 'PRODOTTO'
      Size = 200
    end
    object qyProUNITA_MISURA: TStringField
      DisplayLabel = 'Unit'#224' di Misura'
      FieldName = 'UNITA_MISURA'
      Size = 10
    end
    object qyProNOTE: TStringField
      FieldName = 'NOTE'
      Visible = False
      Size = 2000
    end
    object qyProMANDANTE: TStringField
      DisplayLabel = 'Mandante'
      DisplayWidth = 30
      FieldName = 'MANDANTE'
      Size = 200
    end
    object qyProSUBMANDANTE: TStringField
      DisplayLabel = 'Submandante'
      DisplayWidth = 30
      FieldName = 'SUBMANDANTE'
      Size = 200
    end
    object qyProCATEGORIA: TStringField
      DisplayLabel = 'Categoria'
      DisplayWidth = 30
      FieldName = 'CATEGORIA'
      Size = 150
    end
    object qyProDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Visible = False
      Size = 200
    end
  end
  object qySubMan: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      'SELECT ID_SUBMANDANTE, SUBMANDANTE, SUBMANDANTE DESCRIZIONE'
      '  FROM TB_SUBMANDANTI'
      
        ' WHERE ID_SUBMANDANTE BETWEEN NVL(:ID_SUBMANDANTE, 0) AND NVL(:I' +
        'D_SUBMANDANTE, 999999999999)'
      '   AND FLAG_ACTIVE = '#39'1'#39
      ' ORDER BY SUBMANDANTE')
    Left = 192
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_SUBMANDANTE'
      end>
    object qySubManID_SUBMANDANTE: TFloatField
      DisplayLabel = 'Id'
      FieldName = 'ID_SUBMANDANTE'
    end
    object qySubManSUBMANDANTE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'SUBMANDANTE'
      Size = 200
    end
    object qySubManDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Visible = False
      Size = 200
    end
  end
  object qyPrn: TOraQuery
    Session = OraSearch
    SQL.Strings = (
      'SELECT ID_PROVINCIA, PROVINCIA, PROVINCIA DESCRIZIONE'
      '  FROM TB_PROVINCE'
      
        ' WHERE ID_PROVINCIA BETWEEN NVL(:ID_PROVINCIA, 0) AND NVL(:ID_PR' +
        'OVINCIA, 999999999999)'
      ' ORDER BY PROVINCIA')
    Left = 240
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_PROVINCIA'
      end>
    object qyPrnID_PROVINCIA: TFloatField
      DisplayLabel = 'Id'
      FieldName = 'ID_PROVINCIA'
      Required = True
    end
    object qyPrnPROVINCIA: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'PROVINCIA'
      Size = 2
    end
    object qyPrnDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Visible = False
      Size = 2
    end
  end
end
