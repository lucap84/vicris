inherited fmEdEditrice: TfmEdEditrice
  Left = 490
  Top = 370
  Width = 450
  Height = 230
  Caption = 'Casa Editrice'
  Constraints.MaxHeight = 230
  Constraints.MaxWidth = 500
  Constraints.MinHeight = 230
  Constraints.MinWidth = 450
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deDesCed
  PixelsPerInch = 96
  TextHeight = 13
  object laDesCed: TLabel [0]
    Left = 8
    Top = 8
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
  object laNaz: TLabel [1]
    Left = 8
    Top = 52
    Width = 84
    Height = 20
    Caption = 'NAZIONE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laCta: TLabel [2]
    Left = 8
    Top = 96
    Width = 60
    Height = 20
    Caption = 'CITTA'#39':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pnTools: TPanel
    Top = 146
    Width = 442
    TabOrder = 5
    inherited bbCommit: TBitBtn
      Left = 141
    end
    inherited bbRollBack: TBitBtn
      Left = 195
    end
    inherited bbPrior: TBitBtn
      Left = 87
    end
    inherited bbNext: TBitBtn
      Left = 249
    end
    inherited bbPrint: TBitBtn
      Left = 303
    end
  end
  object deCodNaz: TDBSearch [4]
    Tag = 1001
    Left = 144
    Top = 52
    Width = 65
    Height = 21
    Color = clYellow
    DataField = 'COD_NAZ'
    DataSource = dmEdEditrice.dsEditrice
    TabOrder = 1
    hCmpDes = deDesNaz
  end
  object deDesNaz: TEdit [5]
    Left = 215
    Top = 52
    Width = 219
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    ReadOnly = True
    TabOrder = 2
  end
  object deDesCta: TEdit [6]
    Left = 215
    Top = 96
    Width = 219
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    ReadOnly = True
    TabOrder = 4
  end
  object deDesCed: TDBEdit [7]
    Left = 144
    Top = 8
    Width = 290
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'DES_CED'
    DataSource = dmEdEditrice.dsEditrice
    TabOrder = 0
  end
  object deCodCta: TDBSearch [8]
    Tag = 1002
    Left = 144
    Top = 96
    Width = 65
    Height = 21
    Color = clYellow
    DataField = 'COD_CTA'
    DataSource = dmEdEditrice.dsEditrice
    TabOrder = 3
    hCmpDes = deDesCta
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
