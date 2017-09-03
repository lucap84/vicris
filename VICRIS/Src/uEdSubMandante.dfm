inherited fmEdSubMandante: TfmEdSubMandante
  Left = 357
  Top = 296
  Width = 760
  Height = 150
  ActiveControl = deDescrizione
  Caption = 'Submandante'
  Constraints.MinHeight = 150
  Constraints.MinWidth = 760
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deDescrizione
  PixelsPerInch = 96
  TextHeight = 13
  object laDescrizione: TLabel [0]
    Left = 8
    Top = 10
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
    Top = 54
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
  object deDescrizione: TDBEdit [2]
    Left = 128
    Top = 8
    Width = 608
    Height = 28
    Anchors = [akLeft, akTop, akRight]
    DataField = 'SUBMANDANTE'
    DataSource = dmEdSubMandante.dsSubMandante
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
