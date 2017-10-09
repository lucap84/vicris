inherited fmEdLocalita: TfmEdLocalita
  Left = 538
  Top = 589
  Width = 760
  Height = 170
  ActiveControl = deLocalita
  Caption = 'Regione'
  Constraints.MinHeight = 170
  Constraints.MinWidth = 760
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deLocalita
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTools: TPanel
    Top = 74
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
  object pcLocalita: TPageControl [1]
    Left = 0
    Top = 0
    Width = 744
    Height = 74
    ActivePage = teLocalita
    Align = alClient
    TabOrder = 1
    object teLocalita: TTabSheet
      Caption = 'Regione'
      object laNome: TLabel
        Left = 8
        Top = 10
        Width = 95
        Height = 20
        Caption = 'REGIONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object deLocalita: TDBEdit
        Left = 128
        Top = 8
        Width = 608
        Height = 28
        DataField = 'LOCALITA'
        DataSource = dmEdLocalita.dsLocalita
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
