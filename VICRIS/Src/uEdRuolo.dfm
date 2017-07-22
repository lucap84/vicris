inherited fmEdRuolo: TfmEdRuolo
  Left = 378
  Top = 220
  Width = 670
  Height = 370
  Caption = 'Ruolo'
  Constraints.MaxHeight = 370
  Constraints.MaxWidth = 670
  Constraints.MinHeight = 370
  Constraints.MinWidth = 670
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deCodInc
  PixelsPerInch = 96
  TextHeight = 13
  object laInc: TLabel [0]
    Left = 8
    Top = 8
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
  object laPmr: TLabel [1]
    Left = 8
    Top = 40
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
  object laPer: TLabel [2]
    Left = 8
    Top = 72
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
  object laDesNte: TLabel [3]
    Left = 8
    Top = 136
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
  object laDat: TLabel [4]
    Left = 8
    Top = 104
    Width = 87
    Height = 20
    Caption = 'PERIODO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laDatIni: TLabel [5]
    Left = 168
    Top = 104
    Width = 30
    Height = 20
    Caption = 'dal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laDatFin: TLabel [6]
    Left = 432
    Top = 104
    Width = 20
    Height = 20
    Caption = 'al:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pnTools: TPanel
    Top = 286
    Width = 662
    TabOrder = 9
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
  object deCodInc: TDBSearch [8]
    Tag = 1007
    Left = 168
    Top = 8
    Width = 81
    Height = 21
    Color = clYellow
    DataField = 'COD_INC'
    DataSource = dmEdRuolo.dsRuolo
    TabOrder = 0
    hCmpDes = deDesInc
  end
  object deCodPmr: TDBSearch [9]
    Tag = 1006
    Left = 168
    Top = 40
    Width = 81
    Height = 21
    Color = clYellow
    DataField = 'COD_PMR'
    DataSource = dmEdRuolo.dsRuolo
    TabOrder = 2
    hCmpDes = deDesPmr
  end
  object deCodPer: TDBSearch [10]
    Tag = 1008
    Left = 168
    Top = 72
    Width = 81
    Height = 21
    Color = clYellow
    DataField = 'COD_AUT'
    DataSource = dmEdRuolo.dsRuolo
    TabOrder = 4
    hCmpDes = deDesPer
  end
  object deDesPer: TEdit [11]
    Left = 256
    Top = 72
    Width = 393
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
  object deDesPmr: TEdit [12]
    Left = 256
    Top = 40
    Width = 393
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object deDesInc: TEdit [13]
    Left = 256
    Top = 8
    Width = 393
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object deDesNte: TDBMemo [14]
    Left = 168
    Top = 136
    Width = 482
    Height = 129
    DataField = 'DES_NTE'
    DataSource = dmEdRuolo.dsRuolo
    ScrollBars = ssVertical
    TabOrder = 8
  end
  object dtDatIni: TDBEditDateTimePicker [15]
    Left = 208
    Top = 104
    Width = 186
    Height = 21
    Date = 0.886890000001585400
    Time = 0.886890000001585400
    TabOrder = 6
    DataField = 'DAT_INI'
    DataSource = dmEdRuolo.dsRuolo
    ReadOnly = False
    DefaultEditMask = '!99/99/9999;1;_'
    AutoApplyEditMask = True
  end
  object dtDatFin: TDBEditDateTimePicker [16]
    Left = 464
    Top = 104
    Width = 186
    Height = 21
    Date = 0.886890000001585400
    Time = 0.886890000001585400
    TabOrder = 7
    DataField = 'DAT_FIN'
    DataSource = dmEdRuolo.dsRuolo
    ReadOnly = False
    DefaultEditMask = '!99/99/9999;1;_'
    AutoApplyEditMask = True
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
