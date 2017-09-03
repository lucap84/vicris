inherited fmEdCatProdotto: TfmEdCatProdotto
  Width = 760
  Height = 140
  ActiveControl = deCategoria
  Caption = 'Categoria Prodotto'
  Constraints.MinHeight = 140
  Constraints.MinWidth = 760
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deCategoria
  PixelsPerInch = 96
  TextHeight = 13
  object laCategoria: TLabel [0]
    Left = 8
    Top = 10
    Width = 110
    Height = 20
    Caption = 'CATEGORIA:'
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
  object deCategoria: TDBEdit [2]
    Left = 128
    Top = 8
    Width = 608
    Height = 28
    DataField = 'CATEGORIA'
    DataSource = dmEdCatProdotto.dsCatProdotto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  inherited alEdit: TActionList
    Left = 520
  end
  inherited pugr: TPopupMenu
    Left = 556
  end
  inherited plEdit: TppBDEPipeline
    Left = 592
  end
  inherited rpEdit: TppReport
    Left = 628
    DataPipelineName = 'plEdit'
  end
end
