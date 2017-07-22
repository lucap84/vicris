inherited dmBrAlarma: TdmBrAlarma
  hDataSet = qyAlarma
  hKeyFields.Strings = (
    'cod_evt')
  hKeyValues.Strings = (
    'cod_evt')
  Height = 136
  Width = 214
  object qyAlarma: TOraQuery
    SQL.Strings = (
      
        'SELECT A.COD_EVT, E.DES_EVT, F.DES_FIL_SHR DES_STT, F2.DES_FIL_S' +
        'HR DES_FRQ '
      '  FROM ALARMA A, EVENTO E, FILSHR F, FILSHR F2'
      ' WHERE A.COD_EVT          = E.COD_EVT'
      '   AND F.COD_FIL_SHR      = '#39'FLG_ATV'#39
      '   AND F.COD_VAL_FIL_SHR  = A.FLG_ATV'
      '   AND F2.COD_FIL_SHR     = '#39'FLG_FRQ'#39
      '   AND F2.COD_VAL_FIL_SHR = A.FLG_FRQ'
      ' ORDER BY E.DES_EVT')
    Left = 32
    Top = 24
    object qyAlarmaCOD_EVT: TStringField
      DisplayLabel = 'Codice Evento'
      FieldName = 'COD_EVT'
      Required = True
      Size = 6
    end
    object qyAlarmaDES_EVT: TStringField
      DisplayLabel = 'Descrizione Evento'
      FieldName = 'DES_EVT'
      Size = 120
    end
    object qyAlarmaDES_STT: TStringField
      DisplayLabel = 'Stato'
      FieldName = 'DES_STT'
      Size = 120
    end
    object qyAlarmaDES_FRQ: TStringField
      DisplayLabel = 'Frequenza'
      FieldName = 'DES_FRQ'
      Size = 120
    end
  end
  object dsAlarma: TDataSource
    DataSet = qyAlarma
    Left = 128
    Top = 24
  end
end
