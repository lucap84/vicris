inherited dmEdAutore: TdmEdAutore
  hDataSet = cdsAutore
  hKeyFields.Strings = (
    'cod_aut')
  Left = 364
  Top = 157
  Height = 604
  Width = 393
  inherited OraSession: TOraSession
    Connected = False
  end
  object qyAutore: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM AUTORE'
      ' WHERE COD_AUT = :COD_AUT')
    Left = 40
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_AUT'
        Value = Null
      end>
  end
  object poAutore: TDataSetProvider
    DataSet = qyAutore
    Left = 104
    Top = 88
  end
  object cdsAutore: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poAutore'
    Left = 168
    Top = 88
    object cdsAutoreCOD_AUT: TStringField
      FieldName = 'COD_AUT'
      Required = True
      Size = 6
    end
    object cdsAutoreDES_NOM: TStringField
      FieldName = 'DES_NOM'
      Size = 120
    end
    object cdsAutoreDES_COG: TStringField
      FieldName = 'DES_COG'
      Size = 120
    end
    object cdsAutoreDES_NTE: TStringField
      FieldName = 'DES_NTE'
      Size = 1000
    end
    object cdsAutoreCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsAutoreDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsAutoreDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
    object cdsAutoreFLG_TIT: TStringField
      FieldName = 'FLG_TIT'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsAutore: TDataSource
    DataSet = cdsAutore
    Left = 232
    Top = 88
  end
  object qyDetAutPub: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT D.COD_AUT, D.COD_PUB, P.DES_PUB'
      '  FROM DETAUTPUB D, PUBBLICAZIONE P'
      ' WHERE D.COD_AUT = :COD_AUT'
      '   AND D.COD_PUB = P.COD_PUB')
    MasterSource = dsAutore
    Left = 48
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'COD_AUT'
        ParamType = ptInput
      end>
    object qyDetAutPubCOD_AUT: TStringField
      FieldName = 'COD_AUT'
      Required = True
      Visible = False
      Size = 6
    end
    object qyDetAutPubCOD_PUB: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_PUB'
      Required = True
      Size = 6
    end
    object qyDetAutPubDES_PUB: TStringField
      DisplayLabel = 'Titolo'
      FieldName = 'DES_PUB'
      Size = 250
    end
  end
  object dsDetAutPub: TDataSource
    DataSet = qyDetAutPub
    Left = 112
    Top = 152
  end
end
