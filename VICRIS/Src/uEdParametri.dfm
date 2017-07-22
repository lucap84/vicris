inherited fmEdParametri: TfmEdParametri
  Left = 366
  Top = 176
  Width = 616
  Height = 550
  Caption = 'Impostazioni'
  Constraints.MaxHeight = 550
  Constraints.MaxWidth = 616
  Constraints.MinHeight = 500
  Constraints.MinWidth = 616
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTools: TPanel
    Top = 466
    Width = 608
    inherited bbCommit: TBitBtn
      Left = 137
    end
    inherited bbRollBack: TBitBtn
      Left = 246
    end
    inherited bbPrior: TBitBtn
      Left = 28
    end
    inherited bbNext: TBitBtn
      Left = 355
    end
    inherited bbPrint: TBitBtn
      Left = 464
    end
  end
  object pcParametri: TPageControl [1]
    Left = 0
    Top = 0
    Width = 608
    Height = 466
    ActivePage = teParametri1
    Align = alClient
    TabOrder = 1
    object teParametri1: TTabSheet
      Caption = 'teParametri1'
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 32
        Height = 13
        Caption = 'Label1'
      end
    end
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
