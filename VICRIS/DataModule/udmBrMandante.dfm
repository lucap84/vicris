inherited dmBrMandante: TdmBrMandante
  hDataSet = qyMandante
  hKeyFields.Strings = (
    'id_mandante')
  Left = 301
  Top = 306
  Height = 133
  Width = 172
  object qyMandante: TOraQuery
    SQL.Strings = (
      'SELECT M.*, P.PROVINCIA'
      '  FROM TB_MANDANTI M, TB_PROVINCE P'
      ' WHERE M.ID_PROVINCIA = P.ID_PROVINCIA (+)'
      ' ORDER BY M.MANDANTE')
    Left = 32
    Top = 24
    object qyMandanteID_MANDANTE: TFloatField
      FieldName = 'ID_MANDANTE'
      Visible = False
    end
    object qyMandanteMANDANTE: TStringField
      DisplayLabel = 'Mandante'
      DisplayWidth = 50
      FieldName = 'MANDANTE'
      Size = 200
    end
    object qyMandanteINDIRIZZO: TStringField
      DisplayWidth = 2000
      FieldName = 'INDIRIZZO'
      Visible = False
      Size = 2000
    end
    object qyMandanteCITTA: TStringField
      DisplayLabel = 'Citt'#224
      DisplayWidth = 15
      FieldName = 'CITTA'
      Size = 100
    end
    object qyMandanteCAP: TStringField
      DisplayWidth = 9
      FieldName = 'CAP'
      Visible = False
      Size = 5
    end
    object qyMandanteCELLULARE: TStringField
      DisplayLabel = 'Cellulare'
      DisplayWidth = 10
      FieldName = 'CELLULARE'
    end
    object qyMandanteTELEFONO_1: TStringField
      DisplayLabel = 'Telefono'
      DisplayWidth = 10
      FieldName = 'TELEFONO_1'
    end
    object qyMandanteTELEFONO_2: TStringField
      DisplayLabel = 'Telefono'
      DisplayWidth = 10
      FieldName = 'TELEFONO_2'
    end
    object qyMandanteFAX: TStringField
      FieldName = 'FAX'
      Visible = False
    end
    object qyMandanteMAIL: TStringField
      DisplayLabel = 'eMail'
      DisplayWidth = 20
      FieldName = 'MAIL'
      Size = 100
    end
    object qyMandanteSITO: TStringField
      FieldName = 'SITO'
      Visible = False
      Size = 100
    end
    object qyMandantePARTITA_IVA: TStringField
      FieldName = 'PARTITA_IVA'
      Visible = False
      Size = 16
    end
    object qyMandanteCODICE_FISCALE: TStringField
      FieldName = 'CODICE_FISCALE'
      Visible = False
      Size = 16
    end
    object qyMandanteNOTE: TStringField
      FieldName = 'NOTE'
      Visible = False
      Size = 4000
    end
    object qyMandanteIBAN: TStringField
      FieldName = 'IBAN'
      Visible = False
      Size = 40
    end
    object qyMandanteCODICE_ABI: TStringField
      FieldName = 'CODICE_ABI'
      Visible = False
      Size = 5
    end
    object qyMandanteCODICE_CAB: TStringField
      FieldName = 'CODICE_CAB'
      Visible = False
      Size = 5
    end
    object qyMandanteCONTO_CORRENTE: TStringField
      FieldName = 'CONTO_CORRENTE'
      Visible = False
    end
    object qyMandanteCOD_USR: TStringField
      FieldName = 'COD_USR'
      Visible = False
      Size = 12
    end
    object qyMandanteDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object qyMandanteDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
    object qyMandanteBANCA: TStringField
      FieldName = 'BANCA'
      Visible = False
      Size = 250
    end
    object qyMandanteID_PROVINCIA: TFloatField
      FieldName = 'ID_PROVINCIA'
      Visible = False
    end
    object qyMandantePROVINCIA: TStringField
      DisplayLabel = 'Prov.'
      FieldName = 'PROVINCIA'
      Size = 2
    end
  end
  object dsMandante: TDataSource
    DataSet = qyMandante
    Left = 88
    Top = 24
  end
end
