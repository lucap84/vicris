inherited dmEdCliente: TdmEdCliente
  hDataSet = cdsCliente
  hKeyFields.Strings = (
    'id_cliente')
  Left = 406
  Top = 278
  Height = 253
  Width = 394
  inherited OraSession: TOraSession
    EncryptedPassword = 'A9FFB6FFBCFFADFFB6FFACFF'
  end
  object qyCliente: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM TB_CLIENTI'
      ' WHERE ID_CLIENTE = :ID_CLIENTE')
    Left = 40
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CLIENTE'
        Value = Null
      end>
  end
  object poCliente: TDataSetProvider
    DataSet = qyCliente
    Left = 104
    Top = 88
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poCliente'
    Left = 168
    Top = 88
    object cdsClienteID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
    end
    object cdsClienteID_CLIENTE_OLD: TFloatField
      FieldName = 'ID_CLIENTE_OLD'
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 500
    end
    object cdsClienteREFERENTE: TStringField
      FieldName = 'REFERENTE'
      Size = 100
    end
    object cdsClienteINDIRIZZO: TStringField
      FieldName = 'INDIRIZZO'
      Size = 2000
    end
    object cdsClienteINDIRIZZO_SPEDIZIONE: TStringField
      FieldName = 'INDIRIZZO_SPEDIZIONE'
      Size = 2000
    end
    object cdsClienteCITTA: TStringField
      FieldName = 'CITTA'
      Size = 100
    end
    object cdsClienteCAP: TStringField
      FieldName = 'CAP'
      Size = 5
    end
    object cdsClientePROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      Size = 3
    end
    object cdsClienteTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 40
    end
    object cdsClienteCELLULARE: TStringField
      FieldName = 'CELLULARE'
      Size = 40
    end
    object cdsClienteFAX: TStringField
      FieldName = 'FAX'
    end
    object cdsClienteMAIL: TStringField
      FieldName = 'MAIL'
      Size = 200
    end
    object cdsClienteSITO: TStringField
      FieldName = 'SITO'
      Size = 2000
    end
    object cdsClientePARTITA_IVA: TStringField
      FieldName = 'PARTITA_IVA'
    end
    object cdsClienteCODICE_FISCALE: TStringField
      FieldName = 'CODICE_FISCALE'
    end
    object cdsClienteLOCALITA: TStringField
      FieldName = 'LOCALITA'
      Size = 50
    end
    object cdsClienteBANCA: TStringField
      FieldName = 'BANCA'
      Size = 1000
    end
    object cdsClienteIBAN: TStringField
      FieldName = 'IBAN'
      Size = 40
    end
    object cdsClienteCODICE_ABI: TStringField
      FieldName = 'CODICE_ABI'
      Size = 7
    end
    object cdsClienteCODICE_CAB: TStringField
      FieldName = 'CODICE_CAB'
      Size = 7
    end
    object cdsClienteNOTE: TStringField
      FieldName = 'NOTE'
      Size = 4000
    end
    object cdsClienteCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsClienteDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsClienteDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 232
    Top = 88
  end
  object qyCommenti: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM COMMENTI_CLIENTI'
      ' WHERE ID_CLIENTE = :ID_CLIENTE'
      ' ORDER BY DATA_COMMENTO')
    MasterSource = dsCliente
    Left = 56
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_CLIENTE'
      end>
  end
  object poCommenti: TDataSetProvider
    DataSet = qyCommenti
    Left = 136
    Top = 152
  end
  object cdsCommenti: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CLIENTE'
    MasterFields = 'ID_CLIENTE'
    MasterSource = dsCliente
    PacketRecords = 0
    Params = <>
    ProviderName = 'poCommenti'
    Left = 216
    Top = 152
    object cdsCommentiID_COMMENTO: TFloatField
      FieldName = 'ID_COMMENTO'
      Visible = False
    end
    object cdsCommentiID_COMMENTO_OLD: TFloatField
      FieldName = 'ID_COMMENTO_OLD'
      Visible = False
    end
    object cdsCommentiID_CLIENTE_OLD: TFloatField
      FieldName = 'ID_CLIENTE_OLD'
      Visible = False
    end
    object cdsCommentiID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
      Visible = False
    end
    object cdsCommentiDATA_COMMENTO: TDateTimeField
      FieldName = 'DATA_COMMENTO'
    end
    object cdsCommentiCOMMENTO: TStringField
      FieldName = 'COMMENTO'
      Size = 4000
    end
    object cdsCommentiCOD_USR: TStringField
      FieldName = 'COD_USR'
      Visible = False
      Size = 12
    end
    object cdsCommentiDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object cdsCommentiDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
  end
  object dsCommenti: TDataSource
    DataSet = cdsCommenti
    Left = 280
    Top = 152
  end
end
