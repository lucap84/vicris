inherited dmBrCliente: TdmBrCliente
  hDataSet = qyCliente
  hKeyFields.Strings = (
    'id_cliente')
  Left = 301
  Top = 306
  Height = 179
  Width = 213
  object qyCliente: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM TB_CLIENTI'
      ' ORDER BY NOME')
    Left = 64
    Top = 72
    object qyClienteID_CLIENTE: TFloatField
      DisplayLabel = 'Id'
      FieldName = 'ID_CLIENTE'
    end
    object qyClienteID_CLIENTE_OLD: TFloatField
      FieldName = 'ID_CLIENTE_OLD'
      Visible = False
    end
    object qyClienteNOME: TStringField
      DisplayLabel = 'Ragione Sociale'
      FieldName = 'NOME'
      Size = 500
    end
    object qyClienteREFERENTE: TStringField
      DisplayLabel = 'Referente'
      FieldName = 'REFERENTE'
      Size = 100
    end
    object qyClienteINDIRIZZO: TStringField
      DisplayLabel = 'Indirizzo'
      FieldName = 'INDIRIZZO'
      Size = 2000
    end
    object qyClienteINDIRIZZO_SPEDIZIONE: TStringField
      FieldName = 'INDIRIZZO_SPEDIZIONE'
      Visible = False
      Size = 2000
    end
    object qyClienteCITTA: TStringField
      DisplayLabel = 'Citt'#224
      FieldName = 'CITTA'
      Visible = False
      Size = 100
    end
    object qyClienteCAP: TStringField
      FieldName = 'CAP'
      Size = 5
    end
    object qyClientePROVINCIA: TStringField
      DisplayLabel = 'Prov.'
      FieldName = 'PROVINCIA'
      Size = 3
    end
    object qyClienteTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Visible = False
      Size = 40
    end
    object qyClienteCELLULARE: TStringField
      FieldName = 'CELLULARE'
      Visible = False
      Size = 40
    end
    object qyClienteFAX: TStringField
      FieldName = 'FAX'
      Visible = False
    end
    object qyClienteMAIL: TStringField
      FieldName = 'MAIL'
      Visible = False
      Size = 200
    end
    object qyClienteSITO: TStringField
      FieldName = 'SITO'
      Visible = False
      Size = 2000
    end
    object qyClientePARTITA_IVA: TStringField
      DisplayLabel = 'P.IVA'
      FieldName = 'PARTITA_IVA'
    end
    object qyClienteCODICE_FISCALE: TStringField
      DisplayLabel = 'Codice Fiscale'
      FieldName = 'CODICE_FISCALE'
    end
    object qyClienteLOCALITA: TStringField
      FieldName = 'LOCALITA'
      Visible = False
      Size = 50
    end
    object qyClienteBANCA: TStringField
      FieldName = 'BANCA'
      Visible = False
      Size = 1000
    end
    object qyClienteIBAN: TStringField
      FieldName = 'IBAN'
      Visible = False
      Size = 40
    end
    object qyClienteCODICE_ABI: TStringField
      FieldName = 'CODICE_ABI'
      Visible = False
      Size = 7
    end
    object qyClienteCODICE_CAB: TStringField
      FieldName = 'CODICE_CAB'
      Visible = False
      Size = 7
    end
    object qyClienteNOTE: TStringField
      FieldName = 'NOTE'
      Visible = False
      Size = 4000
    end
    object qyClienteCOD_USR: TStringField
      FieldName = 'COD_USR'
      Visible = False
      Size = 12
    end
    object qyClienteDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object qyClienteDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
  end
  object dsCliente: TDataSource
    DataSet = qyCliente
    Left = 120
    Top = 72
  end
end
