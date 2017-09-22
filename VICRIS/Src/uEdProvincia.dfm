inherited fmEdProvincia: TfmEdProvincia
  Width = 760
  Height = 140
  Caption = 'fmEdProvincia'
  Constraints.MinHeight = 140
  Constraints.MinWidth = 760
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deProvincia
  PixelsPerInch = 96
  TextHeight = 13
  object laProvincia: TLabel [0]
    Left = 8
    Top = 10
    Width = 103
    Height = 20
    Caption = 'PROVINCIA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pnTools: TPanel
    Top = 44
    Width = 744
    inherited bbCommit: TBitBtn
      Left = 179
    end
    inherited bbRollBack: TBitBtn
      Left = 316
    end
    inherited bbPrior: TBitBtn
      Left = 42
    end
    inherited bbNext: TBitBtn
      Left = 453
    end
    inherited bbPrint: TBitBtn
      Left = 590
    end
  end
  object deProvincia: TDBEdit [2]
    Left = 128
    Top = 8
    Width = 608
    Height = 28
    Anchors = [akLeft, akTop, akRight]
    DataField = 'PROVINCIA'
    DataSource = dmEdProvincia.dsProvincia
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
