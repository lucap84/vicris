inherited dmEdApl: TdmEdApl
  hDataSet = cdsApl
  hKeyFields.Strings = (
    'cod_apl')
  hTipAttNum = hPrgMan
  Height = 251
  Width = 313
  inherited OraSession: TOraSession
    Username = 'USR'
    Password = 'USR'
    Server = 'USR'
    Schema = 'USR'
  end
  object qyApl: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM APL'
      ' WHERE COD_APL = :COD_APL')
    Left = 40
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_APL'
        Value = Null
      end>
  end
  object poApl: TDataSetProvider
    DataSet = qyApl
    Left = 104
    Top = 88
  end
  object cdsApl: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poApl'
    Left = 168
    Top = 88
    object cdsAplCOD_APL: TStringField
      FieldName = 'COD_APL'
      Required = True
      Size = 6
    end
    object cdsAplDES_APL: TStringField
      FieldName = 'DES_APL'
      Size = 120
    end
    object cdsAplDBS_NOM: TStringField
      FieldName = 'DBS_NOM'
      Size = 120
    end
    object cdsAplDBS_USR: TStringField
      FieldName = 'DBS_USR'
      Size = 120
    end
    object cdsAplDBS_PWD: TStringField
      FieldName = 'DBS_PWD'
      Size = 120
    end
    object cdsAplFLG_TIP_USR: TStringField
      FieldName = 'FLG_TIP_USR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsAplDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsAplDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
  end
  object dsApl: TDataSource
    DataSet = cdsApl
    Left = 232
    Top = 88
  end
end
