inherited dmBrPromotore: TdmBrPromotore
  hDataSet = qyPromotore
  hKeyFields.Strings = (
    'cod_pmr')
  object qyPromotore: TOraQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM PROMOTORE'
      ' ORDER BY COD_PMR DESC')
    Left = 64
    Top = 72
    object qyPromotoreCOD_PMR: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_PMR'
      Required = True
      Size = 6
    end
    object qyPromotoreDES_PMR: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DES_PMR'
      Size = 60
    end
    object qyPromotoreDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Visible = False
      Size = 60
    end
    object qyPromotoreDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Visible = False
    end
  end
  object dsPromotore: TDataSource
    DataSet = qyPromotore
    Left = 120
    Top = 72
  end
end
