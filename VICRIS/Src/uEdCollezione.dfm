inherited fmEdCollezione: TfmEdCollezione
  Left = 532
  Top = 480
  Width = 400
  Height = 150
  Caption = 'Collezione'
  Constraints.MaxHeight = 150
  Constraints.MaxWidth = 500
  Constraints.MinHeight = 150
  Constraints.MinWidth = 400
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deDesClz
  PixelsPerInch = 96
  TextHeight = 13
  object laDesClz: TLabel [0]
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
  inherited pnTools: TPanel
    Top = 66
    Width = 392
    TabOrder = 1
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
  object deDesClz: TDBEdit [2]
    Left = 144
    Top = 22
    Width = 238
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'DES_CLZ'
    DataSource = dmEdCollezione.dsCollezione
    TabOrder = 0
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
