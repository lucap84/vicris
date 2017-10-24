inherited fmEdProdotto: TfmEdProdotto
  Left = 302
  Top = 179
  Width = 760
  Height = 355
  ActiveControl = deProdotto
  Caption = 'Prodotto'
  Constraints.MinHeight = 355
  Constraints.MinWidth = 760
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deProdotto
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
    Top = 130
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
  object laSubMandante: TLabel [5]
    Left = 8
    Top = 100
    Width = 140
    Height = 20
    Caption = 'SUBMANDANTE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pnTools: TPanel
    Top = 259
    Width = 744
    TabOrder = 10
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
    Left = 143
    Top = 158
    Width = 593
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
    Left = 143
    Top = 8
    Width = 593
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
    Left = 143
    Top = 38
    Width = 593
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
    Left = 143
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
    Left = 143
    Top = 128
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
  object deSubmandante: TDBSearch [12]
    Tag = 1005
    Left = 143
    Top = 98
    Width = 50
    Height = 28
    Color = clYellow
    DataField = 'ID_SUBMANDANTE'
    DataSource = dmEdProdotto.dsProdotto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    hCmpDes = deDesSubmandante
  end
  object deDesMandante: TEdit [13]
    Left = 196
    Top = 68
    Width = 540
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
    Left = 196
    Top = 128
    Width = 540
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
  object deDesSubmandante: TEdit [15]
    Left = 196
    Top = 98
    Width = 540
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
  object ckFlagActive: TDBCheckBox [16]
    Left = 8
    Top = 223
    Width = 105
    Height = 33
    Alignment = taLeftJustify
    Anchors = [akLeft]
    Caption = 'ATTIVO'
    Color = clBtnFace
    DataField = 'FLAG_ACTIVE'
    DataSource = dmEdProdotto.dsProdotto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 9
    ValueChecked = '1'
    ValueUnchecked = '0'
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
