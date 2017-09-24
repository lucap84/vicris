inherited dmBrCliente: TdmBrCliente
  hDataSet = qyCliente
  hKeyFields.Strings = (
    'id_cliente')
  Left = 301
  Top = 306
  Height = 128
  Width = 194
  object qyCliente: TOraQuery
    SQL.Strings = (
      'SELECT C.*, P.PROVINCIA, L.LOCALITA'
      '  FROM TB_CLIENTI C, TB_PROVINCE P, TB_LOCALITA L'
      ' WHERE C.ID_PROVINCIA = P.ID_PROVINCIA (+)'
      '   AND C.ID_LOCALITA  = L.ID_LOCALITA  (+)'
      ' ORDER BY C.NOME')
    Left = 32
    Top = 16
    object qyClienteID_CLIENTE: TFloatField
      FieldName = 'ID_CLIENTE'
      Visible = False
    end
    object qyClienteNOME: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 50
      FieldName = 'NOME'
      Size = 500
    end
    object qyClienteREFERENTE: TStringField
      FieldName = 'REFERENTE'
      Visible = False
      Size = 100
    end
    object qyClienteINDIRIZZO: TStringField
      FieldName = 'INDIRIZZO'
      Visible = False
      Size = 2000
    end
    object qyClienteINDIRIZZO_SPEDIZIONE: TStringField
      FieldName = 'INDIRIZZO_SPEDIZIONE'
      Visible = False
      Size = 2000
    end
    object qyClienteCITTA: TStringField
      DisplayLabel = 'Citt'#224
      DisplayWidth = 15
      FieldName = 'CITTA'
      Size = 100
    end
    object qyClienteCAP: TStringField
      FieldName = 'CAP'
      Visible = False
      Size = 5
    end
    object qyClienteTELEFONO: TStringField
      DisplayLabel = 'Telefono'
      DisplayWidth = 10
      FieldName = 'TELEFONO'
      Size = 40
    end
    object qyClienteCELLULARE: TStringField
      DisplayLabel = 'Cellulare'
      DisplayWidth = 10
      FieldName = 'CELLULARE'
      Size = 40
    end
    object qyClienteFAX: TStringField
      FieldName = 'FAX'
      Visible = False
    end
    object qyClienteMAIL: TStringField
      DisplayLabel = 'eMail'
      DisplayWidth = 15
      FieldName = 'MAIL'
      Size = 200
    end
    object qyClienteSITO: TStringField
      FieldName = 'SITO'
      Visible = False
      Size = 200
    end
    object qyClientePARTITA_IVA: TStringField
      FieldName = 'PARTITA_IVA'
      Visible = False
      Size = 16
    end
    object qyClienteCODICE_FISCALE: TStringField
      FieldName = 'CODICE_FISCALE'
      Visible = False
      Size = 16
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
      Size = 5
    end
    object qyClienteCODICE_CAB: TStringField
      FieldName = 'CODICE_CAB'
      Visible = False
      Size = 5
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
    object qyClienteID_PROVINCIA: TFloatField
      FieldName = 'ID_PROVINCIA'
      Visible = False
    end
    object qyClienteID_LOCALITA: TFloatField
      FieldName = 'ID_LOCALITA'
      Visible = False
    end
    object qyClientePROVINCIA: TStringField
      DisplayLabel = 'Prov.'
      FieldName = 'PROVINCIA'
      Size = 2
    end
    object qyClienteLOCALITA: TStringField
      DisplayLabel = 'Localit'#224
      DisplayWidth = 15
      FieldName = 'LOCALITA'
      Size = 100
    end
    object qyClienteFLAG_ACTIVE: TStringField
      FieldName = 'FLAG_ACTIVE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object dsCliente: TDataSource
    DataSet = qyCliente
    Left = 88
    Top = 16
  end
end
