inherited dmBrMandante: TdmBrMandante
  hDataSet = qyMandante
  hKeyFields.Strings = (
    'id_mandante')
  Left = 301
  Top = 306
  Height = 179
  Width = 213
  object qyMandante: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM TB_MANDANTI'
      ' ORDER BY MANDANTE')
    Left = 32
    Top = 24
    object qyMandanteID_MANDANTE: TFloatField
      FieldName = 'ID_MANDANTE'
      Visible = False
    end
    object qyMandanteMANDANTE: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'MANDANTE'
      Size = 200
    end
    object qyMandanteINDIRIZZO: TStringField
      DisplayWidth = 3241
      FieldName = 'INDIRIZZO'
      Visible = False
      Size = 2000
    end
    object qyMandanteCITTA: TStringField
      DisplayLabel = 'Citt'#224
      DisplayWidth = 162
      FieldName = 'CITTA'
      Size = 100
    end
    object qyMandanteCAP: TStringField
      DisplayLabel = 'C.A.P.'
      DisplayWidth = 9
      FieldName = 'CAP'
      Size = 5
    end
    object qyMandanteCELLULARE: TStringField
      DisplayLabel = 'Cell.'
      DisplayWidth = 33
      FieldName = 'CELLULARE'
    end
    object qyMandanteTELEFONO_1: TStringField
      DisplayLabel = 'Tel. 1'
      DisplayWidth = 33
      FieldName = 'TELEFONO_1'
    end
    object qyMandanteTELEFONO_2: TStringField
      DisplayLabel = 'Tel. 2'
      DisplayWidth = 33
      FieldName = 'TELEFONO_2'
    end
    object qyMandanteFAX: TStringField
      FieldName = 'FAX'
      Visible = False
    end
    object qyMandanteMAIL: TStringField
      DisplayLabel = 'eMail'
      FieldName = 'MAIL'
      Size = 100
    end
    object qyMandanteSITO: TStringField
      FieldName = 'SITO'
      Visible = False
      Size = 100
    end
    object qyMandantePARTITA_IVA: TStringField
      DisplayLabel = 'Partita IVA'
      FieldName = 'PARTITA_IVA'
      Size = 16
    end
    object qyMandanteCODICE_FISCALE: TStringField
      DisplayLabel = 'Codice Fiscale'
      FieldName = 'CODICE_FISCALE'
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
  end
  object dsMandante: TDataSource
    DataSet = qyMandante
    Left = 88
    Top = 24
  end
end
