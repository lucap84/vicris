inherited dmBrVendita: TdmBrVendita
  hDataSet = qyVendita
  hKeyFields.Strings = (
    'id_vendita')
  Height = 121
  Width = 143
  object qyVendita: TOraQuery
    SQL.Strings = (
      
        'SELECT V.ID_VENDITA, V.DATA_VENDITA, V.ID_CLIENTE, V.DATA_FATTUR' +
        'A, V.NUMERO_FATTURA, V.NOTE,'
      '       C.NOME, V.FLAG_VICRIS,'
      '       CASE WHEN V.FLAG_VICRIS = '#39'1'#39' THEN'
      '         '#39'VICRIS'#39
      '       ELSE'
      '         NULL'
      '       END DES_VICRIS,'
      '       COUNT(M.ID_PRODOTTO) NUM_ART,'
      '       SUM(M.IMPORTO_TOTALE) TOT_VEN'
      '  FROM TB_VENDITE V, TB_CLIENTI C, TB_MOVIMENTI M'
      ' WHERE V.ID_CLIENTE = C.ID_CLIENTE'
      '   AND V.ID_VENDITA = M.ID_VENDITA (+)'
      
        ' GROUP BY V.ID_VENDITA, V.DATA_VENDITA, V.ID_CLIENTE, V.DATA_FAT' +
        'TURA, V.NUMERO_FATTURA, V.NOTE,'
      '          C.NOME, V.FLAG_VICRIS,'
      '       CASE WHEN V.FLAG_VICRIS = '#39'1'#39' THEN'
      '         '#39'VICRIS'#39
      '       ELSE'
      '         NULL'
      '       END'
      ' ORDER BY V.DATA_VENDITA DESC, C.NOME')
    Left = 16
    Top = 16
    object qyVenditaID_VENDITA: TFloatField
      FieldName = 'ID_VENDITA'
      Visible = False
    end
    object qyVenditaDATA_VENDITA: TDateTimeField
      DisplayLabel = 'Data Vendita'
      FieldName = 'DATA_VENDITA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qyVenditaNOME: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 50
      FieldName = 'NOME'
      Size = 500
    end
    object qyVenditaNUM_ART: TFloatField
      DisplayLabel = 'N'#176' Articoli'
      FieldName = 'NUM_ART'
      DisplayFormat = '#,##0.00'
    end
    object qyVenditaTOT_VEN: TFloatField
      DisplayLabel = 'Totale Vendita'
      FieldName = 'TOT_VEN'
      DisplayFormat = '#,##0.00'
    end
    object qyVenditaNOTE: TStringField
      DisplayLabel = 'Note'
      DisplayWidth = 75
      FieldName = 'NOTE'
      Size = 2000
    end
    object qyVenditaDATA_FATTURA: TDateTimeField
      FieldName = 'DATA_FATTURA'
      Visible = False
    end
    object qyVenditaNUMERO_FATTURA: TStringField
      FieldName = 'NUMERO_FATTURA'
      Visible = False
    end
    object qyVenditaDES_VICRIS: TStringField
      DisplayLabel = 'Vendita Vicris'
      FieldName = 'DES_VICRIS'
      FixedChar = True
      Size = 6
    end
    object qyVenditaID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
      Visible = False
    end
    object qyVenditaFLAG_VICRIS: TStringField
      FieldName = 'FLAG_VICRIS'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object dsVendita: TDataSource
    DataSet = qyVendita
    Left = 72
    Top = 16
  end
end
