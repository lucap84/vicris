inherited dmBrAnalisiVendite: TdmBrAnalisiVendite
  hDataSet = qyAnalisiVendite
  hKeyFields.Strings = (
    'id_vendita')
  Left = 771
  Top = 333
  Height = 353
  Width = 194
  object qyAnalisiVendite: TOraQuery
    SQL.Strings = (
      
        'SELECT V.ID_VENDITA, V.DATA_VENDITA, C.NOME, P.PRODOTTO, M.QUANT' +
        'ITA, M.PREZZO_VENDITA, M.SCONTO, M.IMPORTO_TOTALE, M.IVA, M.TOTA' +
        'LE_IVATO, M.PREZZO_ACQUISTO, F.MANDANTE, SF.SUBMANDANTE, PN.PROV' +
        'INCIA, L.LOCALITA, CP.CATEGORIA, V.FLAG_VICRIS,'
      '       CASE WHEN V.FLAG_VICRIS = '#39'1'#39' THEN'
      '         '#39'VICRIS'#39
      '       ELSE'
      '         NULL'
      '       END DES_VICRIS,'
      '       CASE WHEN NVL(M.PREZZO_ACQUISTO, 0) <> 0 THEN'
      
        '         ((M.IMPORTO_TOTALE / (M.PREZZO_ACQUISTO * M.QUANTITA)) ' +
        '* 100) - 100'
      '       ELSE'
      '         100'
      '       END GUADAGNO'
      
        '  FROM TB_VENDITE V, TB_CLIENTI C, TB_MOVIMENTI M, TB_PRODOTTI P' +
        ', TB_MANDANTI F, TB_SUBMANDANTI SF, TB_CATEGORIE_PRODOTTI CP,'
      '       TB_LOCALITA L, TB_PROVINCE PN'
      ' WHERE V.ID_CLIENTE     = C.ID_CLIENTE      (+)'
      '   AND V.ID_VENDITA     = M.ID_VENDITA      (+)'
      '   AND M.ID_PRODOTTO    = P.ID_PRODOTTO     (+)'
      '   AND P.ID_MANDANTE    = F.ID_MANDANTE     (+)'
      '   AND P.ID_SUBMANDANTE = SF.ID_SUBMANDANTE (+)'
      '   AND P.ID_CATEGORIA   = CP.ID_CATEGORIA   (+)'
      '   AND C.ID_LOCALITA    = L.ID_LOCALITA     (+)'
      '   AND C.ID_PROVINCIA   = PN.ID_PROVINCIA   (+)'
      '   '
      '   -- Data Vendita Range'
      
        '   AND TRUNC(V.DATA_VENDITA)   BETWEEN :DATA_INIZIO AND :DATA_FI' +
        'NE'
      '   -- Cliente'
      
        '   AND NVL(C.ID_CLIENTE, '#39'1'#39')     = NVL(:ID_CLIENTE, NVL(C.ID_CL' +
        'IENTE, '#39'1'#39'))'
      
        '   AND NVL(C.FLAG_ACTIVE, '#39'1'#39')    BETWEEN :FLAG_ACTIVE_CLI_INI A' +
        'ND :FLAG_ACTIVE_CLI_FIN'
      '   -- Mandante'
      
        '   AND NVL(F.ID_MANDANTE, -1)    = NVL(:ID_MANDANTE, NVL(F.ID_MA' +
        'NDANTE, -1))'
      
        '   AND NVL(C.FLAG_ACTIVE, '#39'1'#39')    BETWEEN :FLAG_ACTIVE_MAN_INI A' +
        'ND :FLAG_ACTIVE_MAN_FIN'
      '   -- Submandante'
      
        '   AND NVL(SF.ID_SUBMANDANTE, -1) = NVL(:ID_SUBMANDANTE, NVL(SF.' +
        'ID_SUBMANDANTE, -1))'
      
        '   AND NVL(C.FLAG_ACTIVE, '#39'1'#39')    BETWEEN :FLAG_ACTIVE_SUB_INI A' +
        'ND :FLAG_ACTIVE_SUB_FIN'
      '   -- Categoria'
      
        '   AND NVL(CP.ID_CATEGORIA, -1) = NVL(:ID_CATEGORIA, NVL(CP.ID_C' +
        'ATEGORIA, -1))'
      '   -- Prezzo Vendita'
      
        '   AND NVL(M.PREZZO_VENDITA, 0) BETWEEN :PREZZO_INIZIO AND :PREZ' +
        'ZO_FINE'
      '   -- Prezzo Acquisto'
      
        '   AND NVL(M.PREZZO_ACQUISTO, 0) BETWEEN :ACQUISTO_INIZIO AND :A' +
        'CQUISTO_FINE'
      ''
      
        '   AND V.FLAG_VICRIS BETWEEN :FLAG_VICRIS_INI AND :FLAG_VICRIS_F' +
        'IN'
      ''
      ' ORDER BY 1 DESC, 2')
    Left = 32
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATA_INIZIO'
      end
      item
        DataType = ftUnknown
        Name = 'DATA_FINE'
      end
      item
        DataType = ftUnknown
        Name = 'ID_CLIENTE'
      end
      item
        DataType = ftUnknown
        Name = 'FLAG_ACTIVE_CLI_INI'
      end
      item
        DataType = ftUnknown
        Name = 'FLAG_ACTIVE_CLI_FIN'
      end
      item
        DataType = ftUnknown
        Name = 'ID_MANDANTE'
      end
      item
        DataType = ftUnknown
        Name = 'FLAG_ACTIVE_MAN_INI'
      end
      item
        DataType = ftUnknown
        Name = 'FLAG_ACTIVE_MAN_FIN'
      end
      item
        DataType = ftUnknown
        Name = 'ID_SUBMANDANTE'
      end
      item
        DataType = ftUnknown
        Name = 'FLAG_ACTIVE_SUB_INI'
      end
      item
        DataType = ftUnknown
        Name = 'FLAG_ACTIVE_SUB_FIN'
      end
      item
        DataType = ftUnknown
        Name = 'ID_CATEGORIA'
      end
      item
        DataType = ftUnknown
        Name = 'PREZZO_INIZIO'
      end
      item
        DataType = ftUnknown
        Name = 'PREZZO_FINE'
      end
      item
        DataType = ftUnknown
        Name = 'ACQUISTO_INIZIO'
      end
      item
        DataType = ftUnknown
        Name = 'ACQUISTO_FINE'
      end
      item
        DataType = ftUnknown
        Name = 'FLAG_VICRIS_INI'
      end
      item
        DataType = ftUnknown
        Name = 'FLAG_VICRIS_FIN'
      end>
    object qyAnalisiVenditeDATA_VENDITA: TDateTimeField
      DisplayLabel = 'Data Vendita'
      DisplayWidth = 10
      FieldName = 'DATA_VENDITA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qyAnalisiVenditeNOME: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 20
      FieldName = 'NOME'
      Size = 500
    end
    object qyAnalisiVenditePRODOTTO: TStringField
      DisplayLabel = 'Prodotto'
      DisplayWidth = 15
      FieldName = 'PRODOTTO'
      Size = 200
    end
    object qyAnalisiVenditePREZZO_VENDITA: TFloatField
      DisplayLabel = 'Prezzo'
      DisplayWidth = 8
      FieldName = 'PREZZO_VENDITA'
      DisplayFormat = '#,##0.00'
    end
    object qyAnalisiVenditeQUANTITA: TFloatField
      DisplayLabel = 'Qt'#224
      DisplayWidth = 5
      FieldName = 'QUANTITA'
      DisplayFormat = '#,##0.00'
    end
    object qyAnalisiVenditeIMPORTO_TOTALE: TFloatField
      DisplayLabel = 'Totale'
      DisplayWidth = 8
      FieldName = 'IMPORTO_TOTALE'
      DisplayFormat = '#,##0.00'
    end
    object qyAnalisiVenditeIVA: TFloatField
      DisplayLabel = '% IVA'
      DisplayWidth = 8
      FieldName = 'IVA'
      DisplayFormat = '#,##0.00 %'
    end
    object qyAnalisiVenditeTOTALE_IVATO: TFloatField
      DisplayLabel = 'Totale Ivato'
      DisplayWidth = 8
      FieldName = 'TOTALE_IVATO'
      DisplayFormat = '#,##0.00'
    end
    object qyAnalisiVenditePREZZO_ACQUISTO: TFloatField
      DisplayLabel = 'Costo Unitario'
      DisplayWidth = 8
      FieldName = 'PREZZO_ACQUISTO'
      DisplayFormat = '#,##0.00'
    end
    object qyAnalisiVenditeGUADAGNO: TFloatField
      DisplayLabel = 'Guadagno (%)'
      DisplayWidth = 8
      FieldName = 'GUADAGNO'
      DisplayFormat = '#,##0.00 %'
    end
    object qyAnalisiVenditeMANDANTE: TStringField
      DisplayLabel = 'Mandante'
      DisplayWidth = 20
      FieldName = 'MANDANTE'
      Size = 200
    end
    object qyAnalisiVenditeSUBMANDANTE: TStringField
      DisplayLabel = 'Submandante'
      DisplayWidth = 20
      FieldName = 'SUBMANDANTE'
      Visible = False
      Size = 200
    end
    object qyAnalisiVenditePROVINCIA: TStringField
      DisplayLabel = 'Prov.'
      FieldName = 'PROVINCIA'
      Size = 2
    end
    object qyAnalisiVenditeLOCALITA: TStringField
      DisplayLabel = 'Regione'
      DisplayWidth = 15
      FieldName = 'LOCALITA'
      Size = 100
    end
    object qyAnalisiVenditeCATEGORIA: TStringField
      DisplayLabel = 'Categoria'
      DisplayWidth = 20
      FieldName = 'CATEGORIA'
      Visible = False
      Size = 150
    end
    object qyAnalisiVenditeFLAG_VICRIS: TStringField
      FieldName = 'FLAG_VICRIS'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qyAnalisiVenditeSCONTO: TFloatField
      DisplayLabel = '% Sconto'
      DisplayWidth = 5
      FieldName = 'SCONTO'
      Visible = False
      DisplayFormat = '#,##0.00'
    end
    object qyAnalisiVenditeDES_VICRIS: TStringField
      DisplayLabel = 'Vendita Vicris'
      DisplayWidth = 10
      FieldName = 'DES_VICRIS'
      FixedChar = True
      Size = 6
    end
    object qyAnalisiVenditeID_VENDITA: TFloatField
      FieldName = 'ID_VENDITA'
      Required = True
      Visible = False
    end
  end
  object dsAnalisiVendite: TDataSource
    DataSet = qyAnalisiVendite
    Left = 104
    Top = 24
  end
  object qyMandanti: TOraQuery
    SQL.Strings = (
      'SELECT -1 ID_MANDANTE, '#39'Tutti'#39' MANDANTE, 0 ORD'
      '  FROM DUAL'
      ' UNION'
      'SELECT ID_MANDANTE, MANDANTE, 1 ORD'
      '  FROM TB_MANDANTI'
      ' WHERE FLAG_ACTIVE BETWEEN :FLAG_ACTIVE_INI AND :FLAG_ACTIVE_FIN'
      ' ORDER BY 3, 2')
    Left = 32
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FLAG_ACTIVE_INI'
      end
      item
        DataType = ftUnknown
        Name = 'FLAG_ACTIVE_FIN'
      end>
    object qyMandantiID_MANDANTE: TFloatField
      FieldName = 'ID_MANDANTE'
      Required = True
    end
    object qyMandantiMANDANTE: TStringField
      FieldName = 'MANDANTE'
      Size = 200
    end
  end
  object qySubmandanti: TOraQuery
    SQL.Strings = (
      'SELECT -1 ID_SUBMANDANTE, '#39'Tutti'#39' SUBMANDANTE, 0 ORD'
      '  FROM DUAL'
      ' UNION'
      'SELECT ID_SUBMANDANTE, SUBMANDANTE, 1 ORD'
      '  FROM TB_SUBMANDANTI'
      ' WHERE FLAG_ACTIVE BETWEEN :FLAG_ACTIVE_INI AND :FLAG_ACTIVE_FIN'
      ' ORDER BY 3,2')
    Left = 32
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FLAG_ACTIVE_INI'
      end
      item
        DataType = ftUnknown
        Name = 'FLAG_ACTIVE_FIN'
      end>
    object qySubmandantiID_SUBMANDANTE: TFloatField
      FieldName = 'ID_SUBMANDANTE'
      Required = True
    end
    object qySubmandantiSUBMANDANTE: TStringField
      FieldName = 'SUBMANDANTE'
      Size = 200
    end
  end
  object qyClienti: TOraQuery
    SQL.Strings = (
      'SELECT -1 ID_CLIENTE, '#39'Tutti'#39' NOME, 0 ORD'
      '  FROM DUAL'
      ' UNION'
      'SELECT ID_CLIENTE, NOME, 1 ORD'
      '  FROM TB_CLIENTI'
      ' WHERE FLAG_ACTIVE BETWEEN :FLAG_ACTIVE_INI AND :FLAG_ACTIVE_FIN'
      ' ORDER BY 3, 2')
    Left = 32
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FLAG_ACTIVE_INI'
      end
      item
        DataType = ftUnknown
        Name = 'FLAG_ACTIVE_FIN'
      end>
    object qyClientiID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object qyClientiNOME: TStringField
      FieldName = 'NOME'
      Size = 500
    end
  end
  object dsMandanti: TDataSource
    DataSet = qyMandanti
    OnDataChange = FiltersDataChange
    Left = 104
    Top = 88
  end
  object dsClienti: TDataSource
    DataSet = qyClienti
    OnDataChange = FiltersDataChange
    Left = 104
    Top = 144
  end
  object dsSubmandanti: TDataSource
    DataSet = qySubmandanti
    OnDataChange = FiltersDataChange
    Left = 104
    Top = 208
  end
  object qyCategoria: TOraQuery
    SQL.Strings = (
      'SELECT -1 ID_CATEGORIA, '#39'Tutte'#39' CATEGORIA, 0 ORD'
      '  FROM DUAL'
      ' UNION'
      'SELECT ID_CATEGORIA, CATEGORIA, 1 ORD'
      '  FROM TB_CATEGORIE_PRODOTTI'
      ' ORDER BY 3, 2')
    Left = 32
    Top = 264
    object qyCategoriaID_CATEGORIA: TFloatField
      FieldName = 'ID_CATEGORIA'
    end
    object qyCategoriaCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 150
    end
    object qyCategoriaORD: TFloatField
      FieldName = 'ORD'
    end
  end
  object dsCategoria: TDataSource
    DataSet = qyCategoria
    OnDataChange = FiltersDataChange
    Left = 104
    Top = 264
  end
end
