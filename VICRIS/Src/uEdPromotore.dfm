inherited fmEdPromotore: TfmEdPromotore
  Left = 464
  Top = 173
  Width = 670
  Height = 420
  Caption = 'Istituzione'
  Constraints.MaxHeight = 420
  Constraints.MaxWidth = 670
  Constraints.MinHeight = 420
  Constraints.MinWidth = 670
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deDesPmr
  PixelsPerInch = 96
  TextHeight = 13
  object laDesPmr: TLabel [0]
    Left = 8
    Top = 16
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
  object laNumTel: TLabel [1]
    Left = 8
    Top = 48
    Width = 92
    Height = 20
    Caption = 'TELEFONI:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laNumCelFax: TLabel [2]
    Left = 8
    Top = 80
    Width = 123
    Height = 20
    Caption = 'MOBILE \ FAX:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laNaz: TLabel [3]
    Left = 8
    Top = 112
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
  object laCta: TLabel [4]
    Left = 8
    Top = 144
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
  object laDesInd: TLabel [5]
    Left = 8
    Top = 176
    Width = 97
    Height = 20
    Caption = 'INDIRIZZO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laDesNte: TLabel [6]
    Left = 8
    Top = 208
    Width = 53
    Height = 20
    Caption = 'NOTE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pnTools: TPanel
    Top = 325
    Width = 654
    TabOrder = 11
    inherited bbCommit: TBitBtn
      Left = 216
    end
    inherited bbRollBack: TBitBtn
      Left = 307
    end
    inherited bbPrior: TBitBtn
      Left = 125
    end
    inherited bbNext: TBitBtn
      Left = 399
    end
    inherited bbPrint: TBitBtn
      Left = 490
    end
  end
  object deDesPmr: TDBEdit [8]
    Left = 168
    Top = 16
    Width = 485
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'DES_PMR'
    DataSource = dmEdPromotore.dsPromotore
    TabOrder = 0
  end
  object deNumTel1: TDBEdit [9]
    Left = 168
    Top = 48
    Width = 200
    Height = 21
    DataField = 'NUM_TEL_1'
    DataSource = dmEdPromotore.dsPromotore
    TabOrder = 1
  end
  object deNumCel: TDBEdit [10]
    Left = 168
    Top = 80
    Width = 200
    Height = 21
    DataField = 'NUM_CEL'
    DataSource = dmEdPromotore.dsPromotore
    TabOrder = 3
  end
  object deNumTel2: TDBEdit [11]
    Left = 450
    Top = 48
    Width = 200
    Height = 21
    DataField = 'NUM_TEL_2'
    DataSource = dmEdPromotore.dsPromotore
    TabOrder = 2
  end
  object deNumFax: TDBEdit [12]
    Left = 450
    Top = 80
    Width = 200
    Height = 21
    DataField = 'NUM_FAX'
    DataSource = dmEdPromotore.dsPromotore
    TabOrder = 4
  end
  object deDesInd: TDBEdit [13]
    Left = 168
    Top = 176
    Width = 482
    Height = 21
    DataField = 'DES_IND'
    DataSource = dmEdPromotore.dsPromotore
    TabOrder = 9
  end
  object deCodCta: TDBSearch [14]
    Tag = 1002
    Left = 168
    Top = 144
    Width = 81
    Height = 21
    Color = clYellow
    DataField = 'COD_CTA'
    DataSource = dmEdPromotore.dsPromotore
    TabOrder = 7
    hCmpDes = deDesCta
  end
  object deCodNaz: TDBSearch [15]
    Tag = 1001
    Left = 168
    Top = 112
    Width = 81
    Height = 21
    Color = clYellow
    DataField = 'COD_NAZ'
    DataSource = dmEdPromotore.dsPromotore
    TabOrder = 5
    hCmpDes = deDesNaz
  end
  object deDesNaz: TEdit [16]
    Left = 256
    Top = 112
    Width = 393
    Height = 21
    ReadOnly = True
    TabOrder = 6
  end
  object deDesCta: TEdit [17]
    Left = 256
    Top = 144
    Width = 393
    Height = 21
    ReadOnly = True
    TabOrder = 8
  end
  object deDesNte: TDBMemo [18]
    Left = 168
    Top = 208
    Width = 481
    Height = 105
    DataField = 'DES_NTE'
    DataSource = dmEdPromotore.dsPromotore
    TabOrder = 10
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
