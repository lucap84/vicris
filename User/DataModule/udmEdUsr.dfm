inherited dmEdUsr: TdmEdUsr
  hDataSet = cdsUsr
  hKeyFields.Strings = (
    'cod_usr')
  hTipAttNum = hPrgMan
  Height = 357
  Width = 305
  inherited OraSession: TOraSession
    Username = 'usr'
    Password = 'usr'
    Server = 'usr'
    Schema = 'USR'
  end
  object qyUsr: TOraQuery
    Session = OraSession
    SQL.Strings = (
      'SELECT *'
      '  FROM USR'
      ' WHERE COD_USR = :COD_USR')
    Left = 40
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_USR'
        Value = Null
      end>
  end
  object poUsr: TDataSetProvider
    DataSet = qyUsr
    Left = 104
    Top = 88
  end
  object cdsUsr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'poUsr'
    Left = 168
    Top = 88
    object cdsUsrCOD_USR: TStringField
      FieldName = 'COD_USR'
      Required = True
      Size = 12
    end
    object cdsUsrCOD_PWD: TStringField
      FieldName = 'COD_PWD'
      Size = 12
    end
    object cdsUsrDES_USR: TStringField
      FieldName = 'DES_USR'
      Size = 120
    end
    object cdsUsrFLG_TIP_USR: TStringField
      FieldName = 'FLG_TIP_USR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsUsrDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Size = 60
    end
    object cdsUsrDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
    end
  end
  object dsUsr: TDataSource
    DataSet = cdsUsr
    Left = 232
    Top = 88
  end
  object qyUsrApl: TOraQuery
    Session = OraSession
    SQL.Strings = (
      
        'SELECT U.COD_USR, U.COD_APL, U.FLG_ATV, U.DES_PDL, U.DAT_AGG_REC' +
        ','
      '       A.DES_APL, A.FLG_TIP_USR'
      '  FROM USRAPL U, APL A'
      ' WHERE U.COD_USR = :COD_USR'
      '   AND U.COD_APL = A.COD_APL')
    MasterSource = dsUsr
    Options.FieldsOrigin = True
    Left = 40
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_USR'
        Value = Null
      end>
    object qyUsrAplCOD_USR: TStringField
      FieldName = 'COD_USR'
      Origin = 'USRAPL.COD_USR'
      Required = True
      Size = 12
    end
    object qyUsrAplCOD_APL: TStringField
      FieldName = 'COD_APL'
      Origin = 'USRAPL.COD_APL'
      Required = True
      Size = 6
    end
    object qyUsrAplFLG_ATV: TStringField
      FieldName = 'FLG_ATV'
      Origin = 'USRAPL.FLG_ATV'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyUsrAplDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Origin = 'USRAPL.DES_PDL'
      Size = 60
    end
    object qyUsrAplDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Origin = 'USRAPL.DAT_AGG_REC'
    end
    object qyUsrAplDES_APL: TStringField
      FieldName = 'DES_APL'
      Origin = 'APL.DES_APL'
      ProviderFlags = []
      Size = 120
    end
    object qyUsrAplFLG_TIP_USR: TStringField
      FieldName = 'FLG_TIP_USR'
      Origin = 'APL.FLG_TIP_USR'
      ProviderFlags = []
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object poUsrApl: TDataSetProvider
    DataSet = qyUsrApl
    OnGetTableName = poUsrAplGetTableName
    Left = 104
    Top = 152
  end
  object cdsUsrApl: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_USR'
    MasterFields = 'COD_USR'
    MasterSource = dsUsr
    PacketRecords = 0
    Params = <>
    ProviderName = 'poUsrApl'
    Left = 168
    Top = 152
    object cdsUsrAplCOD_USR: TStringField
      FieldName = 'COD_USR'
      Required = True
      Visible = False
      Size = 12
    end
    object cdsUsrAplCOD_APL: TStringField
      FieldName = 'COD_APL'
      Origin = 'USRAPL.COD_APL'
      Required = True
      Visible = False
      Size = 6
    end
    object cdsUsrAplDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Origin = 'USRAPL.DES_PDL'
      Size = 60
    end
    object cdsUsrAplFLG_ATV: TStringField
      DisplayLabel = 'Stato'
      FieldName = 'FLG_ATV'
      Origin = 'USRAPL.FLG_ATV'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsUsrAplDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Origin = 'USRAPL.DAT_AGG_REC'
      Visible = False
    end
    object cdsUsrAplDES_APL: TStringField
      DisplayLabel = 'Applicazione'
      FieldName = 'DES_APL'
      Origin = 'APL.DES_APL'
      ProviderFlags = []
      Visible = False
      Size = 120
    end
    object cdsUsrAplFLG_TIP_USR: TStringField
      FieldName = 'FLG_TIP_USR'
      Origin = 'APL.FLG_TIP_USR'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsUsrApl: TDataSource
    DataSet = cdsUsrApl
    Left = 232
    Top = 152
  end
  object qyUsrAplTrz: TOraQuery
    Session = OraSession
    SQL.Strings = (
      
        'SELECT U.COD_USR, U.COD_APL, U.COD_TRZ, U.FLG_IRT, U.FLG_UPD, U.' +
        'FLG_DEL, U.FLG_VIS,'
      '       U.FLG_PRT, U.FLG_ABL, U.DES_PDL, U.DAT_AGG_REC, T.DES_TRZ'
      '  FROM USRAPLTRZ U, TRZ T'
      ' WHERE U.COD_USR = :COD_USR'
      '   AND U.COD_APL = :COD_APL'
      '   AND U.COD_APL = T.COD_APL'
      '   AND U.COD_TRZ = T.COD_TRZ')
    MasterSource = dsUsrApl
    Options.FieldsOrigin = True
    Left = 40
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_USR'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'COD_APL'
        Value = Null
      end>
    object qyUsrAplTrzCOD_USR: TStringField
      FieldName = 'COD_USR'
      Origin = 'USRAPLTRZ.COD_USR'
      Required = True
      Visible = False
      Size = 12
    end
    object qyUsrAplTrzCOD_APL: TStringField
      FieldName = 'COD_APL'
      Origin = 'USRAPLTRZ.COD_APL'
      Required = True
      Size = 6
    end
    object qyUsrAplTrzCOD_TRZ: TStringField
      FieldName = 'COD_TRZ'
      Origin = 'USRAPLTRZ.COD_TRZ'
      Required = True
    end
    object qyUsrAplTrzFLG_IRT: TStringField
      FieldName = 'FLG_IRT'
      Origin = 'USRAPLTRZ.FLG_IRT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyUsrAplTrzFLG_UPD: TStringField
      FieldName = 'FLG_UPD'
      Origin = 'USRAPLTRZ.FLG_UPD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyUsrAplTrzFLG_DEL: TStringField
      FieldName = 'FLG_DEL'
      Origin = 'USRAPLTRZ.FLG_DEL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyUsrAplTrzFLG_VIS: TStringField
      FieldName = 'FLG_VIS'
      Origin = 'USRAPLTRZ.FLG_VIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyUsrAplTrzFLG_PRT: TStringField
      FieldName = 'FLG_PRT'
      Origin = 'USRAPLTRZ.FLG_PRT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyUsrAplTrzFLG_ABL: TStringField
      FieldName = 'FLG_ABL'
      Origin = 'USRAPLTRZ.FLG_ABL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyUsrAplTrzDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Origin = 'USRAPLTRZ.DES_PDL'
      Size = 60
    end
    object qyUsrAplTrzDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Origin = 'USRAPLTRZ.DAT_AGG_REC'
    end
    object qyUsrAplTrzDES_TRZ: TStringField
      FieldName = 'DES_TRZ'
      Origin = 'TRZ.DES_TRZ'
      ProviderFlags = []
      Size = 120
    end
  end
  object poUsrAplTrz: TDataSetProvider
    DataSet = qyUsrAplTrz
    OnGetTableName = poUsrAplTrzGetTableName
    Left = 104
    Top = 224
  end
  object cdsUsrAplTrz: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_USR;COD_APL'
    MasterFields = 'COD_USR;COD_APL'
    MasterSource = dsUsrApl
    PacketRecords = 0
    Params = <>
    ProviderName = 'poUsrAplTrz'
    Left = 168
    Top = 224
    object cdsUsrAplTrzCOD_USR: TStringField
      FieldName = 'COD_USR'
      Required = True
      Visible = False
      Size = 12
    end
    object cdsUsrAplTrzCOD_APL: TStringField
      FieldName = 'COD_APL'
      Origin = 'USRAPLTRZ.COD_APL'
      Required = True
      Visible = False
      Size = 6
    end
    object cdsUsrAplTrzCOD_TRZ: TStringField
      FieldName = 'COD_TRZ'
      Origin = 'USRAPLTRZ.COD_TRZ'
      Required = True
      Visible = False
    end
    object cdsUsrAplTrzDES_TRZ: TStringField
      DisplayLabel = 'Transazione'
      FieldName = 'DES_TRZ'
      Origin = 'TRZ.DES_TRZ'
      ProviderFlags = []
      Size = 120
    end
    object cdsUsrAplTrzFLG_ABL: TStringField
      DisplayLabel = 'Abilitato'
      FieldName = 'FLG_ABL'
      Origin = 'USRAPLTRZ.FLG_ABL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsUsrAplTrzFLG_IRT: TStringField
      DisplayLabel = 'Ins.'
      FieldName = 'FLG_IRT'
      Origin = 'USRAPLTRZ.FLG_IRT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsUsrAplTrzFLG_UPD: TStringField
      DisplayLabel = 'Varia'
      FieldName = 'FLG_UPD'
      Origin = 'USRAPLTRZ.FLG_UPD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsUsrAplTrzFLG_DEL: TStringField
      DisplayLabel = 'Canc.'
      FieldName = 'FLG_DEL'
      Origin = 'USRAPLTRZ.FLG_DEL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsUsrAplTrzFLG_VIS: TStringField
      DisplayLabel = 'Vis.'
      FieldName = 'FLG_VIS'
      Origin = 'USRAPLTRZ.FLG_VIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsUsrAplTrzFLG_PRT: TStringField
      DisplayLabel = 'Stampa'
      FieldName = 'FLG_PRT'
      Origin = 'USRAPLTRZ.FLG_PRT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsUsrAplTrzDES_PDL: TStringField
      FieldName = 'DES_PDL'
      Origin = 'USRAPLTRZ.DES_PDL'
      Visible = False
      Size = 60
    end
    object cdsUsrAplTrzDAT_AGG_REC: TDateTimeField
      FieldName = 'DAT_AGG_REC'
      Origin = 'USRAPLTRZ.DAT_AGG_REC'
      Visible = False
    end
  end
  object dsUsrAplTrz: TDataSource
    DataSet = cdsUsrAplTrz
    Left = 232
    Top = 224
  end
  object osIrtUsrApl: TOraSQL
    Session = OraSession
    SQL.Strings = (
      '-- Inserimento Applicazioni per Utente!'
      'INSERT INTO USRAPL (COD_USR, COD_APL, DES_PDL, DAT_AGG_REC)'
      
        'SELECT :COD_USR COD_USR, A.COD_APL, :DES_PDL DES_PDL, SYSDATE DA' +
        'T_AGG_REC'
      '  FROM APL A'
      ' WHERE A.FLG_TIP_USR BETWEEN '#39'0'#39' AND :FLG_TIP_USR'
      '   AND A.COD_APL NOT IN (SELECT U.COD_APL'
      '                           FROM USRAPL U'
      '                          WHERE U.COD_USR = :COD_USR)')
    Left = 152
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_USR'
      end
      item
        DataType = ftUnknown
        Name = 'DES_PDL'
      end
      item
        DataType = ftUnknown
        Name = 'FLG_TIP_USR'
      end>
  end
  object osIrtUsrAplTrz: TOraSQL
    Session = OraSession
    SQL.Strings = (
      '-- Inserimento Transazioni per Utente!'
      
        'INSERT INTO USRAPLTRZ (COD_USR, COD_APL, COD_TRZ, FLG_ABL, FLG_I' +
        'RT, FLG_UPD, FLG_DEL, FLG_VIS, FLG_PRT, DES_PDL, DAT_AGG_REC)'
      'SELECT :COD_USR COD_USR,'
      '       T.COD_APL,'
      '       T.COD_TRZ,'
      '       :FLG FLG_ABL,'
      '       :FLG FLG_IRT,'
      '       :FLG FLG_UPD,'
      '       :FLG FLG_DEL,'
      '       :FLG FLG_VIS,'
      '       :FLG FLG_PRT,'
      '       :DES_PDL DES_PDL,'
      '       SYSDATE DAT_AGG_REC'
      '  FROM USR U, USRAPL A, TRZ T'
      ' WHERE U.COD_USR = :COD_USR'
      '   AND U.COD_USR = A.COD_USR'
      '   AND A.COD_APL = T.COD_APL'
      '   AND T.COD_APL||T.COD_TRZ NOT IN (SELECT U.COD_APL||U.COD_TRZ'
      '                                      FROM USRAPLTRZ U'
      '                                     WHERE U.COD_USR = :COD_USR)'
      '')
    Left = 232
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_USR'
      end
      item
        DataType = ftUnknown
        Name = 'FLG'
      end
      item
        DataType = ftUnknown
        Name = 'DES_PDL'
      end>
  end
end
