inherited dmEdAlarma: TdmEdAlarma
  hDataSet = cdsAlarma
  hKeyFields.Strings = (
    'cod_evt')
  hTipAttNum = hPrgMan
  Left = 393
  Top = 357
  Height = 178
  Width = 295
  object qyAlarma: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM ALARMA'
      ' WHERE COD_EVT = :COD_EVT')
    Left = 40
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_EVT'
        Value = Null
      end>
  end
  object poAlarma: TDataSetProvider
    DataSet = qyAlarma
    Left = 104
    Top = 88
  end
  object cdsAlarma: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poAlarma'
    Left = 168
    Top = 88
    object cdsAlarmaCOD_EVT: TStringField
      FieldName = 'COD_EVT'
      Required = True
      Size = 6
    end
    object cdsAlarmaFLG_FRQ: TStringField
      FieldName = 'FLG_FRQ'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsAlarmaFLG_ATV: TStringField
      FieldName = 'FLG_ATV'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsAlarmaCOD_USR: TStringField
      FieldName = 'COD_USR'
      Size = 12
    end
    object cdsAlarmaDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsAlarmaDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
    object cdsAlarmaDES_OGG: TStringField
      FieldName = 'DES_OGG'
      Size = 120
    end
    object cdsAlarmaDES_TXT: TStringField
      FieldName = 'DES_TXT'
      Size = 1000
    end
  end
  object dsAlarma: TDataSource
    DataSet = cdsAlarma
    Left = 232
    Top = 88
  end
end
