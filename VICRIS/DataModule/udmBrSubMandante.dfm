inherited dmBrSubMandante: TdmBrSubMandante
  hDataSet = qySubMandante
  hKeyFields.Strings = (
    'ID_SUBMANDANTE')
  Height = 162
  Width = 205
  object qySubMandante: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM TB_SUBMANDANTE'
      ' ORDER BY ID_SUBMANDANTE')
    Left = 24
    Top = 16
    object qySubMandanteID_SUBMANDANTE: TFloatField
      DisplayLabel = 'Id'
      FieldName = 'ID_SUBMANDANTE'
    end
    object qySubMandanteSUBMANDANTE: TStringField
      DisplayLabel = 'Ragione Sociale'
      FieldName = 'SUBMANDANTE'
      Size = 500
    end
    object qySubMandanteCOD_USR: TStringField
      FieldName = 'COD_USR'
      Visible = False
      Size = 12
    end
    object qySubMandanteDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object qySubMandanteDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
  end
  object dsSubMandante: TDataSource
    DataSet = qySubMandante
    Left = 104
    Top = 16
  end
end
