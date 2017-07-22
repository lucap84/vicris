object dmGlobal: TdmGlobal
  OldCreateOrder = False
  Left = 420
  Top = 326
  Height = 240
  Width = 385
  object OraGlobal: TOraSession
    Options.Charset = 'WE8ISO8859P15'
    Options.DateFormat = 'DD-MON-RR'
    Options.DateLanguage = 'ITALIAN'
    Options.KeepDesignConnected = False
    Username = 'VICRIS'
    Server = 'VICRIS'
    AutoCommit = False
    LoginPrompt = False
    Schema = 'VICRIS'
    Left = 16
    Top = 16
    EncryptedPassword = 'A9FFB6FFBCFFADFFB6FFACFF'
  end
  object spAggNumPrg: TOraStoredProc
    StoredProcName = 'SP_AGGNUMPRG'
    Session = OraGlobal
    SQL.Strings = (
      'begin'
      
        '  SP_AGGNUMPRG(:ICOD, :ICOD_USR, :IDES_PDL, :IDAT_AGG_REC, :OCOD' +
        '_PRG);'
      'end;')
    Left = 104
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'ICOD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ICOD_USR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDES_PDL'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'IDAT_AGG_REC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OCOD_PRG'
        ParamType = ptOutput
      end>
  end
  object spDimNumPrg: TOraStoredProc
    StoredProcName = 'SP_DIMNUMPRG'
    Session = OraGlobal
    SQL.Strings = (
      'begin'
      
        '  SP_DIMNUMPRG(:ICOD, :INUM_PRG, :ICOD_USR, :IDES_PDL, :IDAT_AGG' +
        '_REC);'
      'end;')
    Left = 176
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'ICOD'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INUM_PRG'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ICOD_USR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDES_PDL'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'IDAT_AGG_REC'
        ParamType = ptInput
      end>
  end
  object qyGetNpaDet: TOraQuery
    Session = OraGlobal
    SQL.Strings = (
      'SELECT FN_GETNPADET NPA_DET'
      '  FROM DUAL')
    Left = 104
    Top = 96
    object qyGetNpaDetNPA_DET: TFloatField
      FieldName = 'NPA_DET'
    end
  end
  object spIrtDmoLck: TOraStoredProc
    StoredProcName = 'SP_IRTDMOLCK'
    Session = OraGlobal
    SQL.Strings = (
      'begin'
      
        '  SP_IRTDMOLCK(:ICOD_KEY, :ICOD_VAL_KEY, :IFLG_OPR, :ICOD_USR, :' +
        'IDES_PDL, :IDAT_AGG_REC);'
      'end;')
    Left = 176
    Top = 96
    ParamData = <
      item
        DataType = ftString
        Name = 'ICOD_KEY'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ICOD_VAL_KEY'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'IFLG_OPR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ICOD_USR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDES_PDL'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'IDAT_AGG_REC'
        ParamType = ptInput
      end>
  end
  object qyChkDmoLck: TOraQuery
    Session = OraGlobal
    SQL.Strings = (
      'SELECT COUNT(NPA_DMO_LCK) NUM'
      '  FROM DMOLCK'
      ' WHERE COD_KEY     = :COD_KEY'
      '   AND COD_VAL_KEY = :COD_VAL_KEY')
    Left = 32
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_KEY'
      end
      item
        DataType = ftUnknown
        Name = 'COD_VAL_KEY'
      end>
    object qyChkDmoLckNUM: TFloatField
      FieldName = 'NUM'
    end
  end
  object qyFilShr: TOraQuery
    Session = OraGlobal
    SQL.Strings = (
      'SELECT *'
      '  FROM FILSHR'
      ' WHERE COD_FIL_SHR = :COD_FIL_SHR'
      ' ORDER BY COD_VAL_FIL_SHR')
    Left = 32
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_FIL_SHR'
      end>
    object qyFilShrCOD_FIL_SHR: TStringField
      FieldName = 'COD_FIL_SHR'
      Required = True
      Size = 60
    end
    object qyFilShrCOD_VAL_FIL_SHR: TStringField
      FieldName = 'COD_VAL_FIL_SHR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyFilShrDES_FIL_SHR: TStringField
      FieldName = 'DES_FIL_SHR'
      Size = 120
    end
  end
  object qyCheckDupRec: TOraQuery
    Session = OraGlobal
    SQL.Strings = (
      'SELECT COUNT(*) NUM'
      '  FROM PUBBLICAZIONE'
      ' WHERE COD_PUB = :COD_PUB')
    Left = 104
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_PUB'
      end>
    object qyCheckDupRecNUM: TFloatField
      FieldName = 'NUM'
    end
  end
  object qyCheckMax: TOraQuery
    Session = OraGlobal
    SQL.Strings = (
      'SELECT NUM_PRG'
      '  FROM NUMPRG'
      ' WHERE COD = :COD')
    Left = 176
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD'
      end>
    object qyCheckMaxNUM_PRG: TFloatField
      FieldName = 'NUM_PRG'
      Required = True
    end
  end
  object spAggNumPrgAaa: TOraStoredProc
    StoredProcName = 'SP_AGGNUMPRGAAA'
    Session = OraGlobal
    SQL.Strings = (
      'begin'
      
        '  SP_AGGNUMPRGAAA(:IAAA, :ITIP, :ICOD, :ICOD_USR, :IDES_PDL, :ID' +
        'AT_AGG_REC, :OCOD_PRG);'
      'end;')
    Left = 280
    Top = 24
    ParamData = <
      item
        DataType = ftFloat
        Name = 'IAAA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ITIP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ICOD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ICOD_USR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDES_PDL'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'IDAT_AGG_REC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OCOD_PRG'
        ParamType = ptOutput
      end>
  end
  object spDimNumPrgAaa: TOraStoredProc
    StoredProcName = 'SP_DIMNUMPRGAAA'
    Session = OraGlobal
    SQL.Strings = (
      'begin'
      
        '  SP_DIMNUMPRGAAA(:IAAA, :ITIP, :ICOD, :INUM_PRG, :ICOD_USR, :ID' +
        'ES_PDL, :IDAT_AGG_REC);'
      'end;')
    Left = 280
    Top = 96
    ParamData = <
      item
        DataType = ftFloat
        Name = 'IAAA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ITIP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ICOD'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INUM_PRG'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ICOD_USR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDES_PDL'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'IDAT_AGG_REC'
        ParamType = ptInput
      end>
  end
end
