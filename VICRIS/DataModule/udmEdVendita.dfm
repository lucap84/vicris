inherited dmEdVendita: TdmEdVendita
  hDataSet = cdsVendita
  hKeyFields.Strings = (
    'ID_VENDITA')
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
    object cdsVenditaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object cdsVenditaID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
    end
    object cdsVenditaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 400
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
      'SELECT *'
      '  FROM TB_MOVIMENTI'
      ' WHERE ID_VENDITA = :ID_VENDITA'
      ' ORDER BY ID_MOVIMENTI')
    MasterSource = dsVendita
    Left = 72
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_VENDITA'
        Value = Null
      end>
  end
  object poMovimenti: TDataSetProvider
    DataSet = qyMovimenti
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
    object cdsMovimentiID_MOVIMENTI: TFloatField
      FieldName = 'ID_MOVIMENTI'
      Visible = False
    end
    object cdsMovimentiID_VENDITA: TFloatField
      FieldName = 'ID_VENDITA'
      Visible = False
    end
    object cdsMovimentiID_PRODOTTO: TFloatField
      DisplayLabel = 'Id'
      FieldName = 'ID_PRODOTTO'
    end
    object cdsMovimentiPREZZO: TFloatField
      DisplayLabel = 'Prezzo'
      FieldName = 'PREZZO'
      OnChange = cdsMovimentiPREZZOChange
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object cdsMovimentiPREZZO_LIRA: TStringField
      FieldName = 'PREZZO_LIRA'
      Visible = False
    end
    object cdsMovimentiQUANTITA: TFloatField
      DisplayLabel = 'Qt'#224
      FieldName = 'QUANTITA'
      OnChange = cdsMovimentiQUANTITAChange
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object cdsMovimentiSCONTO: TFloatField
      DisplayLabel = '% Sconto'
      FieldName = 'SCONTO'
      OnChange = cdsMovimentiSCONTOChange
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object cdsMovimentiIMPORTO: TFloatField
      DisplayLabel = 'Totale'
      FieldName = 'IMPORTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object cdsMovimentiIMPORTO_LIRA: TStringField
      FieldName = 'IMPORTO_LIRA'
      Visible = False
      Size = 30
    end
    object cdsMovimentiDATA_FATTURA: TDateTimeField
      FieldName = 'DATA_FATTURA'
      Visible = False
    end
    object cdsMovimentiNUMERO_FATTURA: TStringField
      FieldName = 'NUMERO_FATTURA'
      Visible = False
      Size = 10
    end
    object cdsMovimentiPREZZO_ACQUISTO: TFloatField
      DisplayLabel = 'Costo Acquisto'
      FieldName = 'PREZZO_ACQUISTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object cdsMovimentiCOD_USR: TStringField
      FieldName = 'COD_USR'
      Visible = False
      Size = 12
    end
    object cdsMovimentiDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object cdsMovimentiDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
  end
  object dsMovimenti: TDataSource
    DataSet = cdsMovimenti
    Left = 288
    Top = 120
  end
end
