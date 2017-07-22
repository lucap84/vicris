inherited dmBrUsr: TdmBrUsr
  hDataSet = qyUsr
  hKeyFields.Strings = (
    'cod_usr')
  Height = 160
  Width = 194
  object qyUsr: TOraQuery
    SQL.Strings = (
      'SELECT U.COD_USR, U.DES_USR, F.DES_FIL_SHR'
      '  FROM USR U, FILSHR F'
      ' WHERE F.COD_FIL_SHR     = '#39'FLG_TIP_USR'#39
      '   AND F.COD_VAL_FIL_SHR = U.FLG_TIP_USR'
      '   AND U.COD_USR         <> '#39'super'#39
      ' ORDER BY U.COD_USR')
    Left = 56
    Top = 40
    object qyUsrCOD_USR: TStringField
      DisplayLabel = 'Codice'
      FieldName = 'COD_USR'
      Required = True
      Size = 12
    end
    object qyUsrDES_USR: TStringField
      DisplayLabel = 'Descrizione'
      FieldName = 'DES_USR'
      Size = 120
    end
    object qyUsrDES_FIL_SHR: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'DES_FIL_SHR'
      Size = 120
    end
  end
  object dsUsr: TDataSource
    DataSet = qyUsr
    Left = 112
    Top = 40
  end
end
