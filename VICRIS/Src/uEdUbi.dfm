inherited fmEdUbi: TfmEdUbi
  Width = 400
  Height = 140
  Caption = 'Ubicazione'
  Constraints.MaxHeight = 140
  Constraints.MaxWidth = 500
  Constraints.MinHeight = 140
  Constraints.MinWidth = 400
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deDesUbi
  PixelsPerInch = 96
  TextHeight = 13
  object laDesUbi: TLabel [0]
    Left = 8
    Top = 14
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
    Top = 56
    Width = 392
    inherited bbCommit: TBitBtn
      Left = 79
    end
    inherited bbRollBack: TBitBtn
      Left = 149
    end
    inherited bbPrior: TBitBtn
      Left = 8
    end
    inherited bbNext: TBitBtn
      Left = 219
    end
    inherited bbPrint: TBitBtn
      Left = 290
    end
  end
  object deDesUbi: TDBEdit [2]
    Left = 144
    Top = 14
    Width = 242
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'DES_UBI'
    DataSource = dmEdUbi.dsUbi
    TabOrder = 1
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
