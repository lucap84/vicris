inherited fmEdOggetto: TfmEdOggetto
  Left = 428
  Top = 164
  Width = 400
  Height = 210
  Caption = 'C.D.U.'
  Constraints.MaxHeight = 210
  Constraints.MaxWidth = 485
  Constraints.MinHeight = 210
  Constraints.MinWidth = 400
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deCodCdu
  PixelsPerInch = 96
  TextHeight = 13
  object laCodCdu: TLabel [0]
    Left = 8
    Top = 8
    Width = 59
    Height = 20
    Caption = 'C.D.U.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laDesOgg: TLabel [1]
    Left = 8
    Top = 52
    Width = 92
    Height = 20
    Caption = 'OGGETTO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laUbi: TLabel [2]
    Left = 8
    Top = 96
    Width = 115
    Height = 20
    Caption = 'UBICAZIONE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pnTools: TPanel
    Top = 126
    Width = 392
    TabOrder = 2
    inherited bbCommit: TBitBtn
      Left = 117
    end
    inherited bbRollBack: TBitBtn
      Left = 171
    end
    inherited bbPrior: TBitBtn
      Left = 63
    end
    inherited bbNext: TBitBtn
      Left = 225
    end
    inherited bbPrint: TBitBtn
      Left = 279
    end
  end
  object deDesOgg: TDBEdit [4]
    Left = 137
    Top = 52
    Width = 251
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'DES_OGG'
    DataSource = dmEdOggetto.dsOggetto
    TabOrder = 1
  end
  object deCodCdu: TDBEdit [5]
    Left = 137
    Top = 8
    Width = 251
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'COD_CDU'
    DataSource = dmEdOggetto.dsOggetto
    TabOrder = 0
  end
  object deCodUbi: TDBSearch [6]
    Tag = 1010
    Left = 135
    Top = 96
    Width = 65
    Height = 21
    Color = clYellow
    DataField = 'COD_UBI'
    DataSource = dmEdOggetto.dsOggetto
    TabOrder = 3
    hCmpDes = deDesUbi
  end
  object deDesUbi: TEdit [7]
    Left = 212
    Top = 96
    Width = 176
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    ReadOnly = True
    TabOrder = 4
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
