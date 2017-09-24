inherited dmEdSubMandante: TdmEdSubMandante
  hDataSet = cdsSubMandante
  hKeyFields.Strings = (
    'id_submandante')
  Height = 176
  Width = 428
  inherited OraSession: TOraSession
    EncryptedPassword = 'A9FFB6FFBCFFADFFB6FFACFF'
  end
  object qySubMandante: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM TB_SUBMANDANTI'
      ' WHERE ID_SUBMANDANTE = :ID_SUBMANDANTE')
    Left = 40
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_SUBMANDANTE'
        Value = Null
      end>
  end
  object poSubMandante: TDataSetProvider
    DataSet = qySubMandante
    Left = 136
    Top = 72
  end
  object cdsSubMandante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poSubMandante'
    Left = 240
    Top = 72
    object cdsSubMandanteID_SUBMANDANTE: TFloatField
      FieldName = 'ID_SUBMANDANTE'
    end
    object cdsSubMandanteSUBMANDANTE: TStringField
      FieldName = 'SUBMANDANTE'
      Size = 200
    end
    object cdsSubMandanteCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsSubMandanteDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsSubMandanteDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
    object cdsSubMandanteFLAG_ACTIVE: TStringField
      FieldName = 'FLAG_ACTIVE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsSubMandante: TDataSource
    DataSet = cdsSubMandante
    Left = 344
    Top = 72
  end
end
