inherited dmEdVendita: TdmEdVendita
  hDataSet = cdsVendita
  hKeyFields.Strings = (
    'id_vendita')
  Left = 541
  Top = 270
  Height = 234
  Width = 366
  inherited OraSession: TOraSession
    Connected = True
    EncryptedPassword = 'A9FFB6FFBCFFADFFB6FFACFF'
  end
  object qyVendita: TOraQuery
    Session = OraSession
    SQL.Strings = (
      
        'SELECT V.ID_VENDITA, V.DATA_VENDITA, V.ID_CLIENTE, V.NUMERO_FATT' +
        'URA, V.DATA_FATTURA, V.NOTE, V.FLAG_VICRIS, '
      '       V.COD_USR, V.DES_PDL, V.DAT_AGG_REC,'
      '       SUM(M.IMPORTO_TOTALE) IMPORTO_TOTALE,'
      '       SUM(M.IMPOSTA)        IMPOSTA,'
      '       SUM(M.TOTALE_IVATO)   TOTALE_IVATO'
      '  FROM TB_VENDITE V, TB_MOVIMENTI M'
      ' WHERE V.ID_VENDITA = :ID_VENDITA'
      '   AND V.ID_VENDITA = M.ID_VENDITA (+)'
      
        ' GROUP BY V.ID_VENDITA, V.DATA_VENDITA, V.ID_CLIENTE, V.NUMERO_F' +
        'ATTURA, V.DATA_FATTURA, V.NOTE, V.FLAG_VICRIS, '
      '          V.COD_USR, V.DES_PDL, V.DAT_AGG_REC')
    Options.FieldsOrigin = True
    Left = 64
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_VENDITA'
        Value = Null
      end>
    object qyVenditaID_VENDITA: TFloatField
      FieldName = 'ID_VENDITA'
      Origin = 'TB_VENDITE.ID_VENDITA'
      Required = True
    end
    object qyVenditaDATA_VENDITA: TDateTimeField
      FieldName = 'DATA_VENDITA'
      Origin = 'TB_VENDITE.DATA_VENDITA'
    end
    object qyVenditaID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
      Origin = 'TB_VENDITE.ID_CLIENTE'
    end
    object qyVenditaNUMERO_FATTURA: TStringField
      FieldName = 'NUMERO_FATTURA'
      Origin = 'TB_VENDITE.NUMERO_FATTURA'
    end
    object qyVenditaDATA_FATTURA: TDateTimeField
      FieldName = 'DATA_FATTURA'
      Origin = 'TB_VENDITE.DATA_FATTURA'
    end
    object qyVenditaNOTE: TStringField
      FieldName = 'NOTE'
      Origin = 'TB_VENDITE.NOTE'
      Size = 2000
    end
    object qyVenditaFLAG_VICRIS: TStringField
      FieldName = 'FLAG_VICRIS'
      Origin = 'TB_VENDITE.FLAG_VICRIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyVenditaCOD_USR: TStringField
      FieldName = 'COD_USR'
      Origin = 'TB_VENDITE.COD_USR'
      Size = 12
    end
    object qyVenditaDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Origin = 'TB_VENDITE.DES_PDL'
      Size = 60
    end
    object qyVenditaDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Origin = 'TB_VENDITE.DAT_AGG_REC'
    end
    object qyVenditaIMPORTO_TOTALE: TFloatField
      FieldName = 'IMPORTO_TOTALE'
      Origin = 'IMPORTO_TOTALE'
      ProviderFlags = []
    end
    object qyVenditaIMPOSTA: TFloatField
      FieldName = 'IMPOSTA'
      Origin = 'IMPOSTA'
      ProviderFlags = []
    end
    object qyVenditaTOTALE_IVATO: TFloatField
      FieldName = 'TOTALE_IVATO'
      Origin = 'TOTALE_IVATO'
      ProviderFlags = []
    end
  end
  object poVendita: TDataSetProvider
    DataSet = qyVendita
    OnGetTableName = poVenditaGetTableName
    Left = 120
    Top = 64
  end
  object cdsVendita: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poVendita'
    Left = 184
    Top = 64
    object cdsVenditaID_VENDITA: TFloatField
      FieldName = 'ID_VENDITA'
      Origin = 'TB_VENDITE.ID_VENDITA'
    end
    object cdsVenditaDATA_VENDITA: TDateTimeField
      FieldName = 'DATA_VENDITA'
      Origin = 'TB_VENDITE.DATA_VENDITA'
    end
    object cdsVenditaID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
      Origin = 'TB_VENDITE.ID_CLIENTE'
    end
    object cdsVenditaDATA_FATTURA: TDateTimeField
      FieldName = 'DATA_FATTURA'
      Origin = 'TB_VENDITE.DATA_FATTURA'
    end
    object cdsVenditaNUMERO_FATTURA: TStringField
      FieldName = 'NUMERO_FATTURA'
      Origin = 'TB_VENDITE.NUMERO_FATTURA'
    end
    object cdsVenditaNOTE: TStringField
      FieldName = 'NOTE'
      Origin = 'TB_VENDITE.NOTE'
      Size = 2000
    end
    object cdsVenditaFLAG_VICRIS: TStringField
      FieldName = 'FLAG_VICRIS'
      Origin = 'TB_VENDITE.FLAG_VICRIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsVenditaCOD_USR: TStringField
      FieldName = 'COD_USR'
      Origin = 'TB_VENDITE.COD_USR'
      Size = 12
    end
    object cdsVenditaDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Origin = 'TB_VENDITE.DES_PDL'
      Size = 60
    end
    object cdsVenditaDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Origin = 'TB_VENDITE.DAT_AGG_REC'
    end
    object cdsVenditaIMPORTO_TOTALE: TFloatField
      FieldName = 'IMPORTO_TOTALE'
      Origin = 'IMPORTO_TOTALE'
      ProviderFlags = []
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object cdsVenditaIMPOSTA: TFloatField
      FieldName = 'IMPOSTA'
      Origin = 'IMPOSTA'
      ProviderFlags = []
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object cdsVenditaTOTALE_IVATO: TFloatField
      FieldName = 'TOTALE_IVATO'
      Origin = 'TOTALE_IVATO'
      ProviderFlags = []
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
  end
  object dsVendita: TDataSource
    DataSet = cdsVendita
    Left = 248
    Top = 64
  end
  object qyMovimenti: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT M.ID_VENDITA, M.ID_MOVIMENTO,'
      
        '       M.ID_PRODOTTO, M.PREZZO_VENDITA, M.QUANTITA, M.SCONTO, M.' +
        'IMPORTO_TOTALE, M.PREZZO_ACQUISTO,'
      
        '       M.NUMERO_FATTURA, M.DATA_FATTURA, M.NUMERO_BOLLA, M.DATA_' +
        'BOLLA,'
      
        '       M.COD_USR, M.DES_PDL, M.DAT_AGG_REC, M.IVA, M.IMPOSTA, M.' +
        'TOTALE_IVATO,'
      '       P.PRODOTTO'
      '  FROM TB_MOVIMENTI M, TB_PRODOTTI P'
      ' WHERE M.ID_VENDITA = :ID_VENDITA'
      '   AND M.ID_PRODOTTO = P.ID_PRODOTTO (+)'
      ' ORDER BY M.ID_MOVIMENTO')
    MasterSource = dsVendita
    Options.FieldsOrigin = True
    Left = 72
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_VENDITA'
        ParamType = ptInput
        Value = Null
      end>
    object qyMovimentiID_VENDITA: TFloatField
      FieldName = 'ID_VENDITA'
      Origin = 'TB_MOVIMENTI.ID_VENDITA'
    end
    object qyMovimentiID_MOVIMENTO: TFloatField
      FieldName = 'ID_MOVIMENTO'
      Origin = 'TB_MOVIMENTI.ID_MOVIMENTO'
    end
    object qyMovimentiID_PRODOTTO: TFloatField
      FieldName = 'ID_PRODOTTO'
      Origin = 'TB_MOVIMENTI.ID_PRODOTTO'
    end
    object qyMovimentiPREZZO_VENDITA: TFloatField
      FieldName = 'PREZZO_VENDITA'
      Origin = 'TB_MOVIMENTI.PREZZO_VENDITA'
    end
    object qyMovimentiQUANTITA: TFloatField
      FieldName = 'QUANTITA'
      Origin = 'TB_MOVIMENTI.QUANTITA'
    end
    object qyMovimentiSCONTO: TFloatField
      FieldName = 'SCONTO'
      Origin = 'TB_MOVIMENTI.SCONTO'
    end
    object qyMovimentiIMPORTO_TOTALE: TFloatField
      FieldName = 'IMPORTO_TOTALE'
      Origin = 'TB_MOVIMENTI.IMPORTO_TOTALE'
    end
    object qyMovimentiPREZZO_ACQUISTO: TFloatField
      FieldName = 'PREZZO_ACQUISTO'
      Origin = 'TB_MOVIMENTI.PREZZO_ACQUISTO'
    end
    object qyMovimentiNUMERO_FATTURA: TStringField
      FieldName = 'NUMERO_FATTURA'
      Origin = 'TB_MOVIMENTI.NUMERO_FATTURA'
      Size = 12
    end
    object qyMovimentiDATA_FATTURA: TDateTimeField
      FieldName = 'DATA_FATTURA'
      Origin = 'TB_MOVIMENTI.DATA_FATTURA'
    end
    object qyMovimentiNUMERO_BOLLA: TStringField
      FieldName = 'NUMERO_BOLLA'
      Origin = 'TB_MOVIMENTI.NUMERO_BOLLA'
      Size = 12
    end
    object qyMovimentiDATA_BOLLA: TDateTimeField
      FieldName = 'DATA_BOLLA'
      Origin = 'TB_MOVIMENTI.DATA_BOLLA'
    end
    object qyMovimentiCOD_USR: TStringField
      FieldName = 'COD_USR'
      Origin = 'TB_MOVIMENTI.COD_USR'
      Size = 12
    end
    object qyMovimentiDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Origin = 'TB_MOVIMENTI.DES_PDL'
      Size = 60
    end
    object qyMovimentiDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Origin = 'TB_MOVIMENTI.DAT_AGG_REC'
    end
    object qyMovimentiPRODOTTO: TStringField
      FieldName = 'PRODOTTO'
      Origin = 'TB_PRODOTTI.PRODOTTO'
      ProviderFlags = []
      Size = 200
    end
    object qyMovimentiIVA: TFloatField
      FieldName = 'IVA'
      Origin = 'TB_MOVIMENTI.IVA'
    end
    object qyMovimentiIMPOSTA: TFloatField
      FieldName = 'IMPOSTA'
      Origin = 'TB_MOVIMENTI.IMPOSTA'
    end
    object qyMovimentiTOTALE_IVATO: TFloatField
      FieldName = 'TOTALE_IVATO'
      Origin = 'TB_MOVIMENTI.TOTALE_IVATO'
    end
  end
  object poMovimenti: TDataSetProvider
    DataSet = qyMovimenti
    OnGetTableName = poMovimentiGetTableName
    Left = 144
    Top = 120
  end
  object cdsMovimenti: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_VENDITA'
    MasterFields = 'ID_VENDITA'
    MasterSource = dsVendita
    PacketRecords = 0
    Params = <>
    ProviderName = 'poMovimenti'
    OnCalcFields = cdsMovimentiCalcFields
    Left = 216
    Top = 120
    object cdsMovimentiID_VENDITA: TFloatField
      FieldName = 'ID_VENDITA'
      Origin = 'TB_MOVIMENTI.ID_VENDITA'
      Visible = False
    end
    object cdsMovimentiID_MOVIMENTO: TFloatField
      FieldName = 'ID_MOVIMENTO'
      Origin = 'TB_MOVIMENTI.ID_MOVIMENTO'
      Visible = False
    end
    object cdsMovimentiID_PRODOTTO: TFloatField
      DisplayLabel = 'Id'
      DisplayWidth = 5
      FieldName = 'ID_PRODOTTO'
      Origin = 'TB_MOVIMENTI.ID_PRODOTTO'
    end
    object cdsMovimentiPRODOTTO: TStringField
      DisplayLabel = 'Prodotto'
      DisplayWidth = 20
      FieldName = 'PRODOTTO'
      Origin = 'TB_PRODOTTI.PRODOTTO'
      ProviderFlags = []
      Size = 200
    end
    object cdsMovimentiQUANTITA: TFloatField
      DisplayLabel = 'Qt'#224
      FieldName = 'QUANTITA'
      Origin = 'TB_MOVIMENTI.QUANTITA'
      OnChange = cdsMovimentiQUANTITAChange
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object cdsMovimentiPREZZO_VENDITA: TFloatField
      DisplayLabel = 'Prezzo'
      FieldName = 'PREZZO_VENDITA'
      Origin = 'TB_MOVIMENTI.PREZZO_VENDITA'
      OnChange = cdsMovimentiPREZZO_VENDITAChange
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object cdsMovimentiIMPORTO_TOTALE: TFloatField
      DisplayLabel = 'Totale'
      FieldName = 'IMPORTO_TOTALE'
      Origin = 'TB_MOVIMENTI.IMPORTO_TOTALE'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object cdsMovimentiPREZZO_ACQUISTO: TFloatField
      DisplayLabel = 'Costo'
      FieldName = 'PREZZO_ACQUISTO'
      Origin = 'TB_MOVIMENTI.PREZZO_ACQUISTO'
      OnChange = cdsMovimentiPREZZO_ACQUISTOChange
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object cdsMovimentiguadagno: TFloatField
      DisplayLabel = 'Gadagno (%)'
      FieldKind = fkCalculated
      FieldName = 'guadagno'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00 %'
      EditFormat = '###0.00'
      Calculated = True
    end
    object cdsMovimentiNUMERO_FATTURA: TStringField
      DisplayLabel = 'N'#176' Fattura'
      FieldName = 'NUMERO_FATTURA'
      Origin = 'TB_MOVIMENTI.NUMERO_FATTURA'
      Size = 12
    end
    object cdsMovimentiDATA_FATTURA: TDateTimeField
      DisplayLabel = 'Data Fattura'
      FieldName = 'DATA_FATTURA'
      Origin = 'TB_MOVIMENTI.DATA_FATTURA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsMovimentiNUMERO_BOLLA: TStringField
      DisplayLabel = 'N'#176' DdT'
      FieldName = 'NUMERO_BOLLA'
      Origin = 'TB_MOVIMENTI.NUMERO_BOLLA'
      Size = 12
    end
    object cdsMovimentiDATA_BOLLA: TDateTimeField
      DisplayLabel = 'Data DdT'
      FieldName = 'DATA_BOLLA'
      Origin = 'TB_MOVIMENTI.DATA_BOLLA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsMovimentiCOD_USR: TStringField
      FieldName = 'COD_USR'
      Origin = 'TB_MOVIMENTI.COD_USR'
      Visible = False
      Size = 12
    end
    object cdsMovimentiSCONTO: TFloatField
      DisplayLabel = '% Sconto'
      FieldName = 'SCONTO'
      Origin = 'TB_MOVIMENTI.SCONTO'
      OnChange = cdsMovimentiSCONTOChange
      DisplayFormat = '#,##0.00 %'
      EditFormat = '###0.00'
    end
    object cdsMovimentiDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Origin = 'TB_MOVIMENTI.DES_PDL'
      Visible = False
      Size = 60
    end
    object cdsMovimentiDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Origin = 'TB_MOVIMENTI.DAT_AGG_REC'
      Visible = False
    end
    object cdsMovimentiIVA: TFloatField
      DisplayLabel = '% IVA'
      FieldName = 'IVA'
      Origin = 'TB_MOVIMENTI.IVA'
      OnChange = cdsMovimentiIVAChange
      DisplayFormat = '#,##0.00 %'
      EditFormat = '###0.00'
    end
    object cdsMovimentiIMPOSTA: TFloatField
      DisplayLabel = 'Imposta'
      FieldName = 'IMPOSTA'
      Origin = 'TB_MOVIMENTI.IMPOSTA'
      Visible = False
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object cdsMovimentiTOTALE_IVATO: TFloatField
      DisplayLabel = 'Totale Ivato'
      FieldName = 'TOTALE_IVATO'
      Origin = 'TB_MOVIMENTI.TOTALE_IVATO'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
  end
  object dsMovimenti: TDataSource
    DataSet = cdsMovimenti
    Left = 288
    Top = 120
  end
end
