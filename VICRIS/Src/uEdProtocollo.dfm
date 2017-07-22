inherited fmEdProtocollo: TfmEdProtocollo
  Left = 363
  Top = 118
  Width = 670
  Height = 690
  Caption = 'Protocollo'
  Constraints.MaxHeight = 700
  Constraints.MaxWidth = 670
  Constraints.MinHeight = 690
  Constraints.MinWidth = 670
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = cbFlgTipPtc
  PixelsPerInch = 96
  TextHeight = 13
  object laNaz: TLabel [0]
    Left = 8
    Top = 168
    Width = 84
    Height = 20
    Caption = 'NAZIONE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laCta: TLabel [1]
    Left = 8
    Top = 200
    Width = 60
    Height = 20
    Caption = 'CITTA'#39':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laDesOgg: TLabel [2]
    Left = 8
    Top = 248
    Width = 92
    Height = 20
    Caption = 'OGGETTO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laPtc: TLabel [3]
    Left = 16
    Top = 8
    Width = 74
    Height = 20
    Caption = 'CODICE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laDatPtc: TLabel [4]
    Left = 8
    Top = 40
    Width = 110
    Height = 20
    Caption = 'DATA PROT.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laDatDoc: TLabel [5]
    Left = 8
    Top = 72
    Width = 101
    Height = 20
    Caption = 'DATA DOC.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laDatFin: TLabel [6]
    Left = 8
    Top = 104
    Width = 86
    Height = 20
    Caption = 'DATA A/P:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laFlgFmtPtc: TLabel [7]
    Left = 8
    Top = 136
    Width = 92
    Height = 20
    Caption = 'FORMATO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laPer: TLabel [8]
    Left = 8
    Top = 280
    Width = 91
    Height = 20
    Caption = 'PERSONA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laInc: TLabel [9]
    Left = 8
    Top = 344
    Width = 92
    Height = 20
    Caption = 'INCARICO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laPmr: TLabel [10]
    Left = 8
    Top = 312
    Width = 117
    Height = 20
    Caption = 'ISTITUZIONE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laDesNte: TLabel [11]
    Left = 8
    Top = 376
    Width = 53
    Height = 20
    Caption = 'NOTE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pnTools: TPanel
    Top = 606
    Width = 662
    TabOrder = 20
    inherited bbCommit: TBitBtn
      Left = 151
    end
    inherited bbRollBack: TBitBtn
      Left = 270
    end
    inherited bbPrior: TBitBtn
      Left = 32
    end
    inherited bbNext: TBitBtn
      Left = 389
    end
    inherited bbPrint: TBitBtn
      Left = 508
    end
  end
  object cbFlgTipPtc: TDBLookupComboBox [13]
    Left = 256
    Top = 8
    Width = 145
    Height = 21
    DataField = 'FLG_TIP_PTC'
    DataSource = dmEdProtocollo.dsProtocollo
    KeyField = 'COD_VAL_FIL_SHR'
    ListField = 'DES_FIL_SHR'
    TabOrder = 1
  end
  object deCodNaz: TDBSearch [14]
    Tag = 1001
    Left = 168
    Top = 168
    Width = 81
    Height = 21
    Color = clYellow
    DataField = 'COD_NAZ'
    DataSource = dmEdProtocollo.dsProtocollo
    TabOrder = 8
    hCmpDes = deDesNaz
  end
  object deDesNaz: TEdit [15]
    Left = 256
    Top = 168
    Width = 393
    Height = 21
    ReadOnly = True
    TabOrder = 9
  end
  object deCodCta: TDBSearch [16]
    Tag = 1002
    Left = 168
    Top = 200
    Width = 81
    Height = 21
    Color = clYellow
    DataField = 'COD_CTA'
    DataSource = dmEdProtocollo.dsProtocollo
    TabOrder = 10
    hCmpDes = deDesCta
  end
  object deDesOgg: TDBEdit [17]
    Left = 168
    Top = 248
    Width = 482
    Height = 21
    DataField = 'DES_OGG'
    DataSource = dmEdProtocollo.dsProtocollo
    TabOrder = 12
  end
  object deAaaPtc: TDBEdit [18]
    Left = 408
    Top = 8
    Width = 81
    Height = 21
    DataField = 'AAA_PTC'
    DataSource = dmEdProtocollo.dsProtocollo
    Enabled = False
    ReadOnly = True
    TabOrder = 2
  end
  object deCodPtc: TDBEdit [19]
    Left = 168
    Top = 8
    Width = 81
    Height = 21
    DataField = 'COD_PTC'
    DataSource = dmEdProtocollo.dsProtocollo
    Enabled = False
    ReadOnly = True
    TabOrder = 0
  end
  object deDesCta: TEdit [20]
    Left = 256
    Top = 200
    Width = 393
    Height = 21
    ReadOnly = True
    TabOrder = 11
  end
  object deNumPtc: TDBEdit [21]
    Left = 504
    Top = 6
    Width = 153
    Height = 24
    Color = clSkyBlue
    DataField = 'COD'
    DataSource = dmEdProtocollo.dsProtocollo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object dtDatPtc: TDBEditDateTimePicker [22]
    Left = 168
    Top = 40
    Width = 186
    Height = 21
    Date = 40585.798890868060000000
    Time = 40585.798890868060000000
    TabOrder = 4
    DataField = 'DAT_PTC'
    DataSource = dmEdProtocollo.dsProtocollo
    ReadOnly = False
    DefaultEditMask = '!99/99/9999;1;_'
    AutoApplyEditMask = True
  end
  object dtDatDoc: TDBEditDateTimePicker [23]
    Left = 168
    Top = 72
    Width = 186
    Height = 21
    Date = 40585.798890868060000000
    Time = 40585.798890868060000000
    TabOrder = 5
    DataField = 'DAT_DOC'
    DataSource = dmEdProtocollo.dsProtocollo
    ReadOnly = False
    DefaultEditMask = '!99/99/9999;1;_'
    AutoApplyEditMask = True
  end
  object dtDatFin: TDBEditDateTimePicker [24]
    Left = 168
    Top = 104
    Width = 186
    Height = 21
    Date = 40585.798890868060000000
    Time = 40585.798890868060000000
    TabOrder = 6
    DataField = 'DAT_FIN'
    DataSource = dmEdProtocollo.dsProtocollo
    ReadOnly = False
    DefaultEditMask = '!99/99/9999;1;_'
    AutoApplyEditMask = True
  end
  object cbFlgFmtPtc: TDBLookupComboBox [25]
    Left = 168
    Top = 136
    Width = 145
    Height = 21
    DataField = 'FLG_FMT_PTC'
    DataSource = dmEdProtocollo.dsProtocollo
    KeyField = 'COD_VAL_FIL_SHR'
    ListField = 'DES_FIL_SHR'
    TabOrder = 7
  end
  object deCodPer: TDBSearch [26]
    Tag = 1008
    Left = 168
    Top = 280
    Width = 81
    Height = 21
    Color = clYellow
    DataField = 'COD_AUT'
    DataSource = dmEdProtocollo.dsProtocollo
    TabOrder = 13
    hCmpDes = deDesPer
  end
  object deDesPer: TEdit [27]
    Left = 256
    Top = 280
    Width = 393
    Height = 21
    ReadOnly = True
    TabOrder = 14
  end
  object deCodInc: TDBSearch [28]
    Tag = 1007
    Left = 168
    Top = 344
    Width = 81
    Height = 21
    Color = clYellow
    DataField = 'COD_INC'
    DataSource = dmEdProtocollo.dsProtocollo
    TabOrder = 17
    hCmpDes = deDesInc
  end
  object deDesInc: TEdit [29]
    Left = 256
    Top = 344
    Width = 393
    Height = 21
    ReadOnly = True
    TabOrder = 18
  end
  object deCodPmr: TDBSearch [30]
    Tag = 1006
    Left = 168
    Top = 312
    Width = 81
    Height = 21
    Color = clYellow
    DataField = 'COD_PMR'
    DataSource = dmEdProtocollo.dsProtocollo
    TabOrder = 15
    hCmpDes = deDesPmr
  end
  object deDesPmr: TEdit [31]
    Left = 256
    Top = 312
    Width = 393
    Height = 21
    ReadOnly = True
    TabOrder = 16
  end
  object deDesNte: TDBMemo [32]
    Left = 168
    Top = 376
    Width = 481
    Height = 153
    DataField = 'DES_NTE'
    DataSource = dmEdProtocollo.dsProtocollo
    TabOrder = 19
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
