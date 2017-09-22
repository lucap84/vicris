inherited dmEdMandante: TdmEdMandante
  hDataSet = cdsMandante
  hKeyFields.Strings = (
    'id_mandante')
  Left = 504
  Top = 360
  Height = 222
  Width = 317
  inherited OraSession: TOraSession
    EncryptedPassword = 'A9FFB6FFBCFFADFFB6FFACFF'
  end
  object qyMandante: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM TB_MANDANTI'
      ' WHERE ID_MANDANTE = :ID_MANDANTE')
    Left = 40
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_MANDANTE'
        Value = Null
      end>
  end
  object poMandante: TDataSetProvider
    DataSet = qyMandante
    Left = 104
    Top = 88
  end
  object cdsMandante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poMandante'
    Left = 168
    Top = 88
    object cdsMandanteID_MANDANTE: TFloatField
      FieldName = 'ID_MANDANTE'
    end
    object cdsMandanteID_MANDANTE_OLD: TFloatField
      FieldName = 'ID_MANDANTE_OLD'
    end
    object cdsMandanteMANDANTE: TStringField
      FieldName = 'MANDANTE'
      Size = 200
    end
    object cdsMandanteINDIRIZZO: TStringField
      FieldName = 'INDIRIZZO'
      Size = 2000
    end
    object cdsMandanteCITTA: TStringField
      FieldName = 'CITTA'
      Size = 100
    end
    object cdsMandanteCAP: TStringField
      FieldName = 'CAP'
      Size = 5
    end
    object cdsMandanteCELLULARE: TStringField
      FieldName = 'CELLULARE'
    end
    object cdsMandanteTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
    end
    object cdsMandanteTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
    end
    object cdsMandanteFAX: TStringField
      FieldName = 'FAX'
    end
    object cdsMandanteMAIL: TStringField
      FieldName = 'MAIL'
      Size = 100
    end
    object cdsMandanteSITO: TStringField
      FieldName = 'SITO'
      Size = 100
    end
    object cdsMandantePARTITA_IVA: TStringField
      FieldName = 'PARTITA_IVA'
      Size = 16
    end
    object cdsMandanteCODICE_FISCALE: TStringField
      FieldName = 'CODICE_FISCALE'
      Size = 16
    end
    object cdsMandanteNOTE: TStringField
      FieldName = 'NOTE'
      Size = 4000
    end
    object cdsMandanteBANCA: TStringField
      FieldName = 'BANCA'
      Size = 250
    end
    object cdsMandanteIBAN: TStringField
      FieldName = 'IBAN'
      Size = 40
    end
    object cdsMandanteCODICE_ABI: TStringField
      FieldName = 'CODICE_ABI'
      Size = 5
    end
    object cdsMandanteCODICE_CAB: TStringField
      FieldName = 'CODICE_CAB'
      Size = 5
    end
    object cdsMandanteCONTO_CORRENTE: TStringField
      FieldName = 'CONTO_CORRENTE'
    end
    object cdsMandanteCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsMandanteDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsMandanteDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
    object cdsMandanteID_PROVINCIA: TFloatField
      FieldName = 'ID_PROVINCIA'
    end
  end
  object dsMandante: TDataSource
    DataSet = cdsMandante
    Left = 232
    Top = 88
  end
end
