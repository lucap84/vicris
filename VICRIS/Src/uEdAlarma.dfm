inherited fmEdAlarma: TfmEdAlarma
  Left = 328
  Top = 198
  Width = 540
  Height = 410
  Caption = 'Allarme'
  Constraints.MinHeight = 410
  Constraints.MinWidth = 540
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deCodEvt
  PixelsPerInch = 96
  TextHeight = 13
  object laEvt: TLabel [0]
    Left = 16
    Top = 24
    Width = 77
    Height = 20
    Caption = 'EVENTO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laFlgFrq: TLabel [1]
    Left = 16
    Top = 56
    Width = 115
    Height = 20
    Caption = 'FREQUENZA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laFlgAtv: TLabel [2]
    Left = 16
    Top = 88
    Width = 63
    Height = 20
    Caption = 'STATO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laDesOgg: TLabel [3]
    Left = 16
    Top = 120
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
  object laDesTxt: TLabel [4]
    Left = 16
    Top = 152
    Width = 63
    Height = 20
    Caption = 'TESTO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pnTools: TPanel
    Top = 326
    Width = 532
    TabOrder = 4
    inherited bbCommit: TBitBtn
      Left = 117
    end
    inherited bbRollBack: TBitBtn
      Left = 212
    end
    inherited bbPrior: TBitBtn
      Left = 21
    end
    inherited bbNext: TBitBtn
      Left = 307
    end
    inherited bbPrint: TBitBtn
      Left = 402
    end
  end
  object cbFlgFrq: TDBLookupComboBox [6]
    Left = 152
    Top = 56
    Width = 145
    Height = 21
    DataField = 'FLG_FRQ'
    DataSource = dmEdAlarma.dsAlarma
    KeyField = 'COD_VAL_FIL_SHR'
    ListField = 'DES_FIL_SHR'
    TabOrder = 2
  end
  object cbFlgAtv: TDBLookupComboBox [7]
    Left = 152
    Top = 88
    Width = 145
    Height = 21
    DataField = 'FLG_ATV'
    DataSource = dmEdAlarma.dsAlarma
    KeyField = 'COD_VAL_FIL_SHR'
    ListField = 'DES_FIL_SHR'
    TabOrder = 3
  end
  object deCodEvt: TDBSearch [8]
    Tag = 1011
    Left = 152
    Top = 24
    Width = 81
    Height = 21
    Color = clYellow
    DataField = 'COD_EVT'
    DataSource = dmEdAlarma.dsAlarma
    TabOrder = 0
    hCmpDes = deDesEvt
  end
  object deDesEvt: TEdit [9]
    Left = 240
    Top = 24
    Width = 287
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    ReadOnly = True
    TabOrder = 1
  end
  object deDesOgg: TDBEdit [10]
    Left = 152
    Top = 120
    Width = 375
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'DES_OGG'
    DataSource = dmEdAlarma.dsAlarma
    TabOrder = 5
  end
  object deDesTxt: TDBMemo [11]
    Left = 152
    Top = 152
    Width = 375
    Height = 159
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataField = 'DES_TXT'
    DataSource = dmEdAlarma.dsAlarma
    TabOrder = 6
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
