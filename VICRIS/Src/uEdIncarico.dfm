inherited fmEdIncarico: TfmEdIncarico
  Left = 535
  Top = 300
  Width = 400
  Height = 150
  Caption = 'Incarico'
  Constraints.MaxHeight = 150
  Constraints.MaxWidth = 500
  Constraints.MinHeight = 150
  Constraints.MinWidth = 400
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deDesInc
  PixelsPerInch = 96
  TextHeight = 13
  object laDesInc: TLabel [0]
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
  object deDesInc: TDBEdit [2]
    Left = 144
    Top = 22
    Width = 238
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'DES_INC'
    DataSource = dmEdIncarico.dsIncarico
    TabOrder = 1
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
