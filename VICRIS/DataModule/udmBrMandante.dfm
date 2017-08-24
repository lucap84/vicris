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
    Left = 64
    Top = 72
    object qyMandanteID_MANDANTE: TFloatField
      FieldName = 'ID_MANDANTE'
      Visible = False
    end
    object qyMandanteID_MANDANTE_OLD: TFloatField
      FieldName = 'ID_MANDANTE_OLD'
      Visible = False
    end
    object qyMandanteMANDANTE: TStringField
      FieldName = 'MANDANTE'
      Size = 500
    end
    object qyMandanteINDIRIZZO: TStringField
      FieldName = 'INDIRIZZO'
      Size = 2000
    end
    object qyMandanteCITTA: TStringField
      FieldName = 'CITTA'
      Size = 100
    end
    object qyMandanteCAP: TStringField
      FieldName = 'CAP'
      Size = 5
    end
    object qyMandantePROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      Size = 3
    end
    object qyMandanteCELLULARE: TStringField
      FieldName = 'CELLULARE'
    end
    object qyMandanteTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
    end
    object qyMandanteTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
    end
    object qyMandanteFAX: TStringField
      FieldName = 'FAX'
    end
    object qyMandanteMAIL: TStringField
      FieldName = 'MAIL'
      Size = 300
    end
    object qyMandanteSITO: TStringField
      FieldName = 'SITO'
      Size = 200
    end
    object qyMandantePARTITA_IVA: TStringField
      FieldName = 'PARTITA_IVA'
    end
    object qyMandanteCODICE_FISCALE: TStringField
      FieldName = 'CODICE_FISCALE'
    end
    object qyMandanteNOTE: TStringField
      FieldName = 'NOTE'
      Size = 4000
    end
    object qyMandanteBANCA: TStringField
      FieldName = 'BANCA'
      Size = 1000
    end
    object qyMandanteIBAN: TStringField
      FieldName = 'IBAN'
      Size = 40
    end
    object qyMandanteCODICE_ABI: TStringField
      FieldName = 'CODICE_ABI'
      Size = 5
    end
    object qyMandanteCODICE_CAB: TStringField
      FieldName = 'CODICE_CAB'
      Size = 5
    end
    object qyMandanteCONTO_CORRENTE: TStringField
      FieldName = 'CONTO_CORRENTE'
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
  end
  object dsMandante: TDataSource
    DataSet = qyMandante
    Left = 120
    Top = 72
  end
end
