inherited dmEdVendita: TdmEdVendita
  hDataSet = cdsVendita
  hKeyFields.Strings = (
    'ID_VENDITA')
  Height = 234
  Width = 366
  inherited OraSession: TOraSession
    EncryptedPassword = 'A9FFB6FFBCFFADFFB6FFACFF'
  end
  object qyVendita: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM TB_VENDITE'
      ' WHERE ID_VENDITA = :ID_VENDITA')
    Left = 64
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_VENDITA'
        Value = Null
      end>
  end
  object poVendita: TDataSetProvider
    DataSet = qyVendita
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
    end
    object cdsVenditaID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
    end
    object cdsVenditaDATA_VENDITA: TDateTimeField
      FieldName = 'DATA_VENDITA'
    end
    object cdsVenditaDATA_FATTURA: TDateTimeField
      FieldName = 'DATA_FATTURA'
    end
    object cdsVenditaNUMERO_FATTURA: TStringField
      FieldName = 'NUMERO_FATTURA'
    end
    object cdsVenditaNOTE: TStringField
      FieldName = 'NOTE'
      Size = 2000
    end
    object cdsVenditaCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsVenditaDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsVenditaDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
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
      'SELECT M.*, P.PRODOTTO'
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
      ReadOnly = True
      Size = 200
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
    end
    object cdsMovimentiID_PRODOTTO: TFloatField
      DisplayLabel = 'Id'
      FieldName = 'ID_PRODOTTO'
      Origin = 'TB_MOVIMENTI.ID_PRODOTTO'
    end
    object cdsMovimentiPREZZO_VENDITA: TFloatField
      FieldName = 'PREZZO_VENDITA'
      Origin = 'TB_MOVIMENTI.PREZZO_VENDITA'
    end
    object cdsMovimentiQUANTITA: TFloatField
      DisplayLabel = 'Qt'#224
      FieldName = 'QUANTITA'
      Origin = 'TB_MOVIMENTI.QUANTITA'
      OnChange = cdsMovimentiQUANTITAChange
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object cdsMovimentiSCONTO: TFloatField
      DisplayLabel = '% Sconto'
      FieldName = 'SCONTO'
      Origin = 'TB_MOVIMENTI.SCONTO'
      OnChange = cdsMovimentiSCONTOChange
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object cdsMovimentiIMPORTO_TOTALE: TFloatField
      FieldName = 'IMPORTO_TOTALE'
      Origin = 'TB_MOVIMENTI.IMPORTO_TOTALE'
    end
    object cdsMovimentiPREZZO_ACQUISTO: TFloatField
      DisplayLabel = 'Costo Acquisto'
      FieldName = 'PREZZO_ACQUISTO'
      Origin = 'TB_MOVIMENTI.PREZZO_ACQUISTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object cdsMovimentiCOD_USR: TStringField
      FieldName = 'COD_USR'
      Origin = 'TB_MOVIMENTI.COD_USR'
      Visible = False
      Size = 12
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
    object cdsMovimentiPRODOTTO: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'PRODOTTO'
      Origin = 'TB_PRODOTTI.PRODOTTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
  end
  object dsMovimenti: TDataSource
    DataSet = cdsMovimenti
    Left = 288
    Top = 120
  end
end
