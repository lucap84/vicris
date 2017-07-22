inherited dmBrApl: TdmBrApl
  hDataSet = qyApl
  hKeyFields.Strings = (
    'cod_apl')
  Height = 170
  Width = 227
  object qyApl: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM APL'
      ' ORDER BY COD_APL')
    Left = 56
    Top = 40
    object qyAplCOD_APL: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_APL'
      Required = True
      Size = 6
    end
    object qyAplDES_APL: TStringField
      DisplayLabel = 'Descrizione'
      DisplayWidth = 60
      FieldName = 'DES_APL'
      Size = 120
    end
    object qyAplDBS_NOM: TStringField
      FieldName = 'DBS_NOM'
      Visible = False
      Size = 120
    end
    object qyAplDBS_USR: TStringField
      FieldName = 'DBS_USR'
      Visible = False
      Size = 120
    end
    object qyAplDBS_PWD: TStringField
      FieldName = 'DBS_PWD'
      Visible = False
      Size = 120
    end
    object qyAplDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object qyAplDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
  end
  object dsApl: TDataSource
    DataSet = qyApl
    Left = 112
    Top = 40
  end
end
