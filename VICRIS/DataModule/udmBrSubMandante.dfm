inherited dmBrSubMandante: TdmBrSubMandante
  hDataSet = qySubMandante
  hKeyFields.Strings = (
    'id_submandante')
  Height = 124
  Width = 185
  object qySubMandante: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM TB_SUBMANDANTI'
      ' ORDER BY SUBMANDANTE')
    Left = 24
    Top = 16
    object qySubMandanteID_SUBMANDANTE: TFloatField
      FieldName = 'ID_SUBMANDANTE'
      Visible = False
    end
    object qySubMandanteSUBMANDANTE: TStringField
      DisplayLabel = 'Submandante'
      DisplayWidth = 50
      FieldName = 'SUBMANDANTE'
      Size = 200
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
