inherited fmEdNazione: TfmEdNazione
  Width = 400
  Height = 140
  Caption = 'Nazione'
  Constraints.MaxHeight = 140
  Constraints.MaxWidth = 500
  Constraints.MinHeight = 140
  Constraints.MinWidth = 400
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deDesNaz
  PixelsPerInch = 96
  TextHeight = 13
  object laDesNaz: TLabel [0]
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
    TabOrder = 1
    inherited bbCommit: TBitBtn
      Left = 111
    end
    inherited bbRollBack: TBitBtn
      Left = 165
    end
    inherited bbPrior: TBitBtn
      Left = 57
    end
    inherited bbNext: TBitBtn
      Left = 219
    end
    inherited bbPrint: TBitBtn
      Left = 273
    end
  end
  object deDesNaz: TDBEdit [2]
    Left = 144
    Top = 14
    Width = 242
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'DES_NAZ'
    DataSource = dmEdNazione.dsNazione
    TabOrder = 0
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
