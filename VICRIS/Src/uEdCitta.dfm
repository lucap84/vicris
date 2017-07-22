inherited fmEdCitta: TfmEdCitta
  Left = 465
  Top = 294
  Width = 400
  Height = 180
  Caption = 'Citt'#224
  Constraints.MaxHeight = 180
  Constraints.MaxWidth = 500
  Constraints.MinHeight = 180
  Constraints.MinWidth = 400
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deCodNaz
  PixelsPerInch = 96
  TextHeight = 13
  object laNaz: TLabel [0]
    Left = 8
    Top = 8
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
    Top = 48
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
  inherited pnTools: TPanel
    Top = 96
    Width = 392
    TabOrder = 3
    inherited bbCommit: TBitBtn
      Left = 116
    end
    inherited bbRollBack: TBitBtn
      Left = 170
    end
    inherited bbPrior: TBitBtn
      Left = 62
    end
    inherited bbNext: TBitBtn
      Left = 224
    end
    inherited bbPrint: TBitBtn
      Left = 278
    end
  end
  object deCodNaz: TDBSearch [3]
    Tag = 1001
    Left = 112
    Top = 8
    Width = 65
    Height = 21
    Color = clYellow
    DataField = 'COD_NAZ'
    DataSource = dmEdCitta.dsCitta
    TabOrder = 0
    hCmpDes = deDesNaz
  end
  object deDesCta: TDBEdit [4]
    Left = 112
    Top = 48
    Width = 268
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'DES_CTA'
    DataSource = dmEdCitta.dsCitta
    TabOrder = 2
  end
  object deDesNaz: TEdit [5]
    Left = 183
    Top = 8
    Width = 197
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    ReadOnly = True
    TabOrder = 1
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
