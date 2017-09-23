inherited dmBrAnalisiVendite: TdmBrAnalisiVendite
  hDataSet = qyAnalisiVendite
  Left = 322
  Top = 274
  Height = 353
  Width = 194
  object qyAnalisiVendite: TOraQuery
    SQL.Strings = (
      
        'SELECT V.DATA_VENDITA, C.NOME, P.PRODOTTO, M.QUANTITA, M.PREZZO_' +
        'VENDITA, M.SCONTO, M.IMPORTO_TOTALE, F.MANDANTE, SF.SUBMANDANTE,' +
        ' PN.PROVINCIA, L.LOCALITA, CP.CATEGORIA'
      
        '  FROM TB_VENDITE V, TB_CLIENTI C, TB_MOVIMENTI M, TB_PRODOTTI P' +
        ', TB_MANDANTI F, TB_SUBMANDANTI SF, TB_CATEGORIE_PRODOTTI CP,'
      '       TB_LOCALITA L, TB_PROVINCE PN'
      ' WHERE V.ID_CLIENTE     = C.ID_CLIENTE      (+)'
      '   AND V.ID_VENDITA     = M.ID_MOVIMENTO    (+)'
      '   AND M.ID_PRODOTTO    = P.ID_PRODOTTO     (+)'
      '   AND P.ID_MANDANTE    = F.ID_MANDANTE     (+)'
      '   AND P.ID_SUBMANDANTE = SF.ID_SUBMANDANTE (+)'
      '   AND P.ID_CATEGORIA   = CP.ID_CATEGORIA   (+)'
      '   AND C.ID_LOCALITA    = L.ID_LOCALITA     (+)'
      '   AND C.ID_PROVINCIA   = PN.ID_PROVINCIA   (+)'
      '   '
      '   -- Data Vendita Range'
      '   AND V.DATA_VENDITA   BETWEEN :DATA_INIZIO AND :DATA_FINE'
      '   -- Cliente'
      '   AND C.ID_CLIENTE     = NVL(:ID_CLIENTE, C.ID_CLIENTE)'
      '   -- Mandante'
      
        '   AND NVL(F.ID_MANDANTE, -1)    = NVL(:ID_MANDANTE, NVL(F.ID_MA' +
        'NDANTE, -1))'
      '   -- Submandante'
      
        '   AND NVL(SF.ID_SUBMANDANTE, -1) = NVL(:ID_SUBMANDANTE, NVL(SF.' +
        'ID_SUBMANDANTE, -1))'
      '   -- Categoria'
      
        '   AND NVL(CP.ID_CATEGORIA, -1) = NVL(:ID_CATEGORIA, NVL(CP.ID_C' +
        'ATEGORIA, -1))'
      '   -- Prezzo Vendita'
      '   AND M.PREZZO_VENDITA BETWEEN :PREZZO_INIZIO AND :PREZZO_FINE'
      ''
      ' ORDER BY 2, 1 DESC')
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
        Name = 'ID_MANDANTE'
      end
      item
        DataType = ftUnknown
        Name = 'ID_SUBMANDANTE'
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
      end>
    object qyAnalisiVenditeDATA_VENDITA: TDateTimeField
      DisplayLabel = 'Data Vendita'
      FieldName = 'DATA_VENDITA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qyAnalisiVenditeNOME: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 30
      FieldName = 'NOME'
      Size = 500
    end
    object qyAnalisiVenditePRODOTTO: TStringField
      DisplayLabel = 'Prodotto'
      DisplayWidth = 20
      FieldName = 'PRODOTTO'
      Size = 200
    end
    object qyAnalisiVenditeQUANTITA: TFloatField
      DisplayLabel = 'Qt'#224
      DisplayWidth = 5
      FieldName = 'QUANTITA'
      DisplayFormat = '#,##0.00'
    end
    object qyAnalisiVenditePREZZO_VENDITA: TFloatField
      DisplayLabel = 'Prezzo'
      DisplayWidth = 8
      FieldName = 'PREZZO_VENDITA'
      DisplayFormat = '#,##0.00'
    end
    object qyAnalisiVenditeSCONTO: TFloatField
      DisplayLabel = '% Sconto'
      DisplayWidth = 5
      FieldName = 'SCONTO'
      DisplayFormat = '#,##0.00'
    end
    object qyAnalisiVenditeIMPORTO_TOTALE: TFloatField
      DisplayLabel = 'Totale'
      DisplayWidth = 8
      FieldName = 'IMPORTO_TOTALE'
      DisplayFormat = '#,##0.00'
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
      Size = 200
    end
    object qyAnalisiVenditePROVINCIA: TStringField
      DisplayLabel = 'Prov.'
      FieldName = 'PROVINCIA'
      Size = 2
    end
    object qyAnalisiVenditeLOCALITA: TStringField
      DisplayLabel = 'Localit'#224
      DisplayWidth = 15
      FieldName = 'LOCALITA'
      Size = 100
    end
    object qyAnalisiVenditeCATEGORIA: TStringField
      DisplayLabel = 'Categoria'
      DisplayWidth = 20
      FieldName = 'CATEGORIA'
      Size = 150
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
      ' ORDER BY 3, 2')
    Left = 32
    Top = 88
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
      ' ORDER BY 3,2')
    Left = 32
    Top = 208
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
      ' ORDER BY 3, 2')
    Left = 32
    Top = 144
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
