object dmChkUsr: TdmChkUsr
  OldCreateOrder = False
  Left = 458
  Top = 209
  Height = 284
  Width = 318
  object OraChkUsr: TOraSession
    Options.Charset = 'WE8ISO8859P15'
    Options.DateFormat = 'DD-MON-RR'
    Options.DateLanguage = 'ITALIAN'
    Options.KeepDesignConnected = False
    Username = 'USR'
    Server = 'USR'
    AutoCommit = False
    LoginPrompt = False
    Schema = 'USR'
    Left = 16
    Top = 16
    EncryptedPassword = 'AAFFACFFADFF'
  end
  object qyUserExists: TOraQuery
    Session = OraChkUsr
    SQL.Strings = (
      'SELECT DES_USR, FLG_TIP_USR'
      '  FROM USR'
      ' WHERE COD_USR = :COD_USR'
      '   AND COD_PWD = :COD_PWD')
    Left = 80
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_USR'
      end
      item
        DataType = ftUnknown
        Name = 'COD_PWD'
      end>
    object qyUserExistsDES_USR: TStringField
      FieldName = 'DES_USR'
      Size = 120
    end
    object qyUserExistsFLG_TIP_USR: TStringField
      FieldName = 'FLG_TIP_USR'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object qyAplEnabled: TOraQuery
    Session = OraChkUsr
    SQL.Strings = (
      'SELECT COD_USR, COD_APL, FLG_ATV'
      '  FROM USRAPL'
      ' WHERE COD_USR = :COD_USR'
      '   AND COD_APL = :COD_APL')
    Left = 160
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_USR'
      end
      item
        DataType = ftUnknown
        Name = 'COD_APL'
      end>
    object qyAplEnabledCOD_USR: TStringField
      FieldName = 'COD_USR'
      Required = True
      Size = 6
    end
    object qyAplEnabledCOD_APL: TStringField
      FieldName = 'COD_APL'
      Required = True
      FixedChar = True
      Size = 18
    end
    object qyAplEnabledFLG_ATV: TStringField
      FieldName = 'FLG_ATV'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object qyAplInfos: TOraQuery
    Session = OraChkUsr
    SQL.Strings = (
      'SELECT *'
      '  FROM APL'
      ' WHERE COD_APL = :COD_APL')
    Left = 80
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_APL'
      end>
    object qyAplInfosCOD_APL: TStringField
      FieldName = 'COD_APL'
      Required = True
      Size = 6
    end
    object qyAplInfosDES_APL: TStringField
      FieldName = 'DES_APL'
      Size = 120
    end
    object qyAplInfosDBS_NOM: TStringField
      FieldName = 'DBS_NOM'
      Size = 120
    end
    object qyAplInfosDBS_USR: TStringField
      FieldName = 'DBS_USR'
      Size = 120
    end
    object qyAplInfosDBS_PWD: TStringField
      FieldName = 'DBS_PWD'
      Size = 120
    end
    object qyAplInfosDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object qyAplInfosDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
  end
  object osSetUsrAtv: TOraSQL
    Session = OraChkUsr
    SQL.Strings = (
      'UPDATE USRAPL'
      '   SET FLG_ATV = :FLG_ATV'
      ' WHERE COD_USR = :COD_USR'
      '   AND COD_APL = :COD_APL')
    Left = 240
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FLG_ATV'
      end
      item
        DataType = ftUnknown
        Name = 'COD_USR'
      end
      item
        DataType = ftUnknown
        Name = 'COD_APL'
      end>
  end
  object qyUsrTrzApl: TOraQuery
    Session = OraChkUsr
    SQL.Strings = (
      'SELECT *'
      '  FROM USRAPLTRZ'
      ' WHERE COD_APL = :COD_APL'
      '   AND COD_TRZ = :COD_TRZ'
      '   AND COD_USR = :COD_USR')
    Left = 160
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_APL'
      end
      item
        DataType = ftUnknown
        Name = 'COD_TRZ'
      end
      item
        DataType = ftUnknown
        Name = 'COD_USR'
      end>
    object qyUsrTrzAplCOD_USR: TStringField
      FieldName = 'COD_USR'
      Required = True
    end
    object qyUsrTrzAplCOD_APL: TStringField
      FieldName = 'COD_APL'
      Required = True
      Size = 6
    end
    object qyUsrTrzAplCOD_TRZ: TStringField
      FieldName = 'COD_TRZ'
      Required = True
      Size = 6
    end
    object qyUsrTrzAplFLG_IRT: TStringField
      FieldName = 'FLG_IRT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyUsrTrzAplFLG_UPD: TStringField
      FieldName = 'FLG_UPD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyUsrTrzAplFLG_DEL: TStringField
      FieldName = 'FLG_DEL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyUsrTrzAplFLG_VIS: TStringField
      FieldName = 'FLG_VIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyUsrTrzAplFLG_PRT: TStringField
      FieldName = 'FLG_PRT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyUsrTrzAplFLG_ABL: TStringField
      FieldName = 'FLG_ABL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyUsrTrzAplDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object qyUsrTrzAplDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
  end
  object qyCheckTrz: TOraQuery
    Session = OraChkUsr
    SQL.Strings = (
      'SELECT *'
      '  FROM TRZ'
      ' WHERE COD_TRZ = :COD_TRZ'
      '   AND COD_APL = :COD_APL')
    Left = 240
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_TRZ'
      end
      item
        DataType = ftUnknown
        Name = 'COD_APL'
      end>
    object qyCheckTrzCOD_TRZ: TStringField
      FieldName = 'COD_TRZ'
      Required = True
    end
    object qyCheckTrzCOD_APL: TStringField
      FieldName = 'COD_APL'
      Required = True
      Size = 6
    end
    object qyCheckTrzDES_TRZ: TStringField
      FieldName = 'DES_TRZ'
      Size = 120
    end
    object qyCheckTrzDES_HNT: TStringField
      FieldName = 'DES_HNT'
      Size = 120
    end
    object qyCheckTrzDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object qyCheckTrzDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
  end
  object osIrtTrz: TOraSQL
    Session = OraChkUsr
    SQL.Strings = (
      
        'INSERT INTO TRZ (COD_TRZ, COD_APL, DES_TRZ, DES_HNT, DES_PDL, DA' +
        'T_AGG_REC)'
      
        '       VALUES   (:COD_TRZ, :COD_APL, :DES_TRZ, :DES_HNT, :DES_PD' +
        'L, :DAT_AGG_REC)')
    Left = 240
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_TRZ'
      end
      item
        DataType = ftUnknown
        Name = 'COD_APL'
      end
      item
        DataType = ftUnknown
        Name = 'DES_TRZ'
      end
      item
        DataType = ftUnknown
        Name = 'DES_HNT'
      end
      item
        DataType = ftUnknown
        Name = 'DES_PDL'
      end
      item
        DataType = ftUnknown
        Name = 'DAT_AGG_REC'
      end>
  end
  object spIrtUsrAplTrz: TOraStoredProc
    StoredProcName = 'SP_IRTUSRAPLTRZ'
    Session = OraChkUsr
    SQL.Strings = (
      'begin'
      
        '  SP_IRTUSRAPLTRZ(:ICOD_APL, :ICOD_TRZ, :IDES_PDL, :IDAT_AGG_REC' +
        ');'
      'end;')
    Left = 160
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'ICOD_APL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ICOD_TRZ'
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
