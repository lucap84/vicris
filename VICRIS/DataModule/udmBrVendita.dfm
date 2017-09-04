inherited dmBrVendita: TdmBrVendita
  hDataSet = qyVendita
  hKeyFields.Strings = (
    'ID_VENDITA')
  object qyVendita: TOraQuery
    SQL.Strings = (
      
        'SELECT V.ID_VENDITA, V.DATA, V.ID_CLIENTE, V.DATA_FATTURA, V.NUM' +
        'ERO_FATTURA, V.NOTE,'
      '       C.NOME,'
      '       COUNT(M.ID_PRODOTTO) NUM_ART,'
      '       SUM(M.IMPORTO)       TOT_VEN'
      '  FROM TB_VENDITE V, TB_CLIENTI C, TB_MOVIMENTI M'
      ' WHERE V.ID_CLIENTE = C.ID_CLIENTE'
      '   AND V.ID_VENDITA = M.ID_VENDITA (+)'
      
        ' GROUP BY V.ID_VENDITA, V.DATA, V.ID_CLIENTE, V.DATA_FATTURA, V.' +
        'NUMERO_FATTURA, V.NOTE,'
      '          C.NOME'
      ' ORDER BY V.DATA DESC')
    Left = 16
    Top = 16
    object qyVenditaID_VENDITA: TFloatField
      DisplayLabel = 'Id'
      FieldName = 'ID_VENDITA'
    end
    object qyVenditaDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object qyVenditaID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
      Visible = False
    end
    object qyVenditaNOME: TStringField
      DisplayLabel = 'Ragione Sociale'
      FieldName = 'NOME'
      Size = 500
    end
    object qyVenditaDATA_FATTURA: TDateTimeField
      DisplayLabel = 'Data Fattura'
      FieldName = 'DATA_FATTURA'
    end
    object qyVenditaNUMERO_FATTURA: TStringField
      DisplayLabel = 'N'#176' Fattura'
      FieldName = 'NUMERO_FATTURA'
    end
    object qyVenditaNOTE: TStringField
      FieldName = 'NOTE'
      Visible = False
      Size = 2000
    end
    object qyVenditaNUM_ART: TFloatField
      DisplayLabel = 'N'#176' Prodotti'
      FieldName = 'NUM_ART'
      DisplayFormat = '#,##0.00'
    end
    object qyVenditaTOT_VEN: TFloatField
      DisplayLabel = 'Totale Vendita'
      FieldName = 'TOT_VEN'
      DisplayFormat = '#,##0.00'
    end
  end
  object dsVendita: TDataSource
    DataSet = qyVendita
    Left = 72
    Top = 16
  end
end
