inherited fmEdProdotto: TfmEdProdotto
  Left = 302
  Top = 179
  Width = 760
  Height = 320
  ActiveControl = deProdotto
  Caption = 'Prodotto'
  Constraints.MinHeight = 320
  Constraints.MinWidth = 760
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object laNote: TLabel [0]
    Left = 8
    Top = 160
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
  object laProdotto: TLabel [1]
    Left = 8
    Top = 10
    Width = 102
    Height = 20
    Caption = 'PRODOTTO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laUnitaMisura: TLabel [2]
    Left = 8
    Top = 40
    Width = 43
    Height = 20
    Caption = 'U.M.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laMandante: TLabel [3]
    Left = 8
    Top = 70
    Width = 103
    Height = 20
    Caption = 'MANDANTE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laCategoria: TLabel [4]
    Left = 8
    Top = 100
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
  object laSubCategoria: TLabel [5]
    Left = 8
    Top = 130
    Width = 108
    Height = 20
    Caption = 'SOTTO CAT.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pnTools: TPanel
    Top = 224
    Width = 744
    TabOrder = 9
    inherited bbCommit: TBitBtn
      Left = 179
    end
    inherited bbRollBack: TBitBtn
      Left = 316
    end
    inherited bbPrior: TBitBtn
      Left = 41
    end
    inherited bbNext: TBitBtn
      Left = 453
    end
    inherited bbPrint: TBitBtn
      Left = 590
    end
  end
  object deNote: TDBMemo [7]
    Left = 128
    Top = 158
    Width = 608
    Height = 58
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataField = 'NOTE'
    DataSource = dmEdProdotto.dsProdotto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object deProdotto: TDBEdit [8]
    Left = 128
    Top = 8
    Width = 608
    Height = 28
    Anchors = [akLeft, akTop, akRight]
    DataField = 'PRODOTTO'
    DataSource = dmEdProdotto.dsProdotto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object deUnitaMisura: TDBEdit [9]
    Left = 128
    Top = 38
    Width = 608
    Height = 28
    Anchors = [akLeft, akTop, akRight]
    DataField = 'UNITA_MISURA'
    DataSource = dmEdProdotto.dsProdotto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object deMandante: TDBSearch [10]
    Tag = 1001
    Left = 128
    Top = 68
    Width = 50
    Height = 28
    Color = clYellow
    DataField = 'ID_MANDANTE'
    DataSource = dmEdProdotto.dsProdotto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    hCmpDes = deDesMandante
  end
  object deCategoria: TDBSearch [11]
    Tag = 1003
    Left = 128
    Top = 98
    Width = 50
    Height = 28
    Color = clYellow
    DataField = 'ID_CATEGORIA'
    DataSource = dmEdProdotto.dsProdotto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    hCmpDes = deDesCategoria
  end
  object deSubCategoria: TDBSearch [12]
    Tag = 1003
    Left = 128
    Top = 128
    Width = 50
    Height = 28
    Color = clYellow
    DataField = 'ID_SUBCATEGORIA'
    DataSource = dmEdProdotto.dsProdotto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    hCmpDes = deDesSubCategoria
  end
  object deDesMandante: TEdit [13]
    Left = 181
    Top = 68
    Width = 555
    Height = 28
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object deDesCategoria: TEdit [14]
    Left = 181
    Top = 98
    Width = 555
    Height = 28
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object deDesSubCategoria: TEdit [15]
    Left = 181
    Top = 128
    Width = 555
    Height = 28
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  inherited alEdit: TActionList
    Left = 720
    Top = 264
  end
  inherited pugr: TPopupMenu
    Left = 756
    Top = 264
  end
  inherited plEdit: TppBDEPipeline
    Left = 792
    Top = 264
  end
  inherited rpEdit: TppReport
    Left = 828
    Top = 264
    DataPipelineName = 'plEdit'
  end
end
