inherited fmEdEvento: TfmEdEvento
  Left = 465
  Top = 361
  Width = 470
  Height = 180
  Caption = 'Evento'
  Constraints.MaxHeight = 180
  Constraints.MaxWidth = 470
  Constraints.MinHeight = 180
  Constraints.MinWidth = 470
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deDesEvt
  PixelsPerInch = 96
  TextHeight = 13
  object laDesEvt: TLabel [0]
    Left = 8
    Top = 22
    Width = 128
    Height = 20
    Caption = 'DESCRIZIONE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laDatEvt: TLabel [1]
    Left = 8
    Top = 54
    Width = 53
    Height = 20
    Caption = 'DATA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pnTools: TPanel
    Top = 96
    Width = 462
    TabOrder = 2
    inherited bbCommit: TBitBtn
      Left = 97
    end
    inherited bbRollBack: TBitBtn
      Left = 180
    end
    inherited bbPrior: TBitBtn
      Left = 14
    end
    inherited bbNext: TBitBtn
      Left = 263
    end
    inherited bbPrint: TBitBtn
      Left = 346
    end
  end
  object deDesEvt: TDBEdit [3]
    Left = 144
    Top = 22
    Width = 313
    Height = 21
    DataField = 'DES_EVT'
    DataSource = dmEdEvento.dsEvento
    TabOrder = 0
  end
  object dtDatEvt: TDBEditDateTimePicker [4]
    Left = 144
    Top = 54
    Width = 186
    Height = 21
    Date = 40934.971226307870000000
    Time = 40934.971226307870000000
    TabOrder = 1
    DataField = 'DAT_EVT'
    DataSource = dmEdEvento.dsEvento
    ReadOnly = False
    DefaultEditMask = '!99/99/9999;1;_'
    AutoApplyEditMask = True
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
