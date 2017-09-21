inherited fmEdVendita: TfmEdVendita
  Left = 322
  Top = 202
  Width = 760
  Height = 610
  Caption = 'Vendita'
  Constraints.MinHeight = 610
  Constraints.MinWidth = 760
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deIdCliente
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTools: TPanel
    Top = 514
    Width = 744
    TabOrder = 4
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
  object pnBackVendita: TPanel [1]
    Left = 0
    Top = 0
    Width = 744
    Height = 161
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      744
      161)
    object laNote: TLabel
      Left = 8
      Top = 70
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
    object laFattura: TLabel
      Left = 8
      Top = 130
      Width = 87
      Height = 20
      Caption = 'FATTURA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laData: TLabel
      Left = 8
      Top = 40
      Width = 53
      Height = 20
      Caption = 'DATA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laCliente: TLabel
      Left = 8
      Top = 10
      Width = 80
      Height = 20
      Caption = 'CLIENTE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dtDataFattura: TDBEditDateTimePicker
      Left = 128
      Top = 128
      Width = 186
      Height = 28
      Date = 42982.809528541660000000
      Time = 42982.809528541660000000
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      DataField = 'DATA_FATTURA'
      DataSource = dmEdVendita.dsVendita
      ReadOnly = False
      DefaultEditMask = '!99/99/9999;1;_'
      AutoApplyEditMask = True
    end
    object dtData: TDBEditDateTimePicker
      Left = 128
      Top = 38
      Width = 186
      Height = 28
      Date = 42982.809528541660000000
      Time = 42982.809528541660000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      DataField = 'DATA'
      DataSource = dmEdVendita.dsVendita
      ReadOnly = False
      DefaultEditMask = '!99/99/9999;1;_'
      AutoApplyEditMask = True
    end
    object deNumeroFattura: TDBEdit
      Left = 316
      Top = 128
      Width = 186
      Height = 28
      Color = clGreen
      DataField = 'NUMERO_FATTURA'
      DataSource = dmEdVendita.dsVendita
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object deNote: TDBMemo
      Left = 128
      Top = 68
      Width = 608
      Height = 58
      Anchors = [akLeft, akTop, akRight]
      DataField = 'NOTE'
      DataSource = dmEdVendita.dsVendita
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object deIdCliente: TDBSearch
      Tag = 1000
      Left = 128
      Top = 8
      Width = 95
      Height = 28
      Color = clYellow
      DataField = 'ID_CLIENTE'
      DataSource = dmEdVendita.dsVendita
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      hCmpDes = deCliente
    end
    object deCliente: TEdit
      Left = 226
      Top = 8
      Width = 510
      Height = 28
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object pnTitleMovimenti: TPanel [2]
    Left = 0
    Top = 161
    Width = 744
    Height = 31
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Movimenti'
    Color = 9834512
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object pnBackNewMov: TPanel [3]
    Left = 0
    Top = 192
    Width = 744
    Height = 100
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      744
      100)
    object laProdotto: TLabel
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
    object Label1: TLabel
      Left = 268
      Top = 40
      Width = 77
      Height = 20
      Caption = 'PREZZO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laSconto: TLabel
      Left = 494
      Top = 40
      Width = 78
      Height = 20
      Caption = 'SCONTO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laQuantita: TLabel
      Left = 8
      Top = 40
      Width = 98
      Height = 20
      Caption = 'QUANTITA'#39':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laCosto: TLabel
      Left = 8
      Top = 70
      Width = 66
      Height = 20
      Caption = 'COSTO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laTotale: TLabel
      Left = 268
      Top = 70
      Width = 73
      Height = 20
      Caption = 'TOTALE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object deProdotto: TDBSearch
      Tag = 1004
      Left = 128
      Top = 8
      Width = 95
      Height = 28
      Color = clYellow
      DataField = 'ID_PRODOTTO'
      DataSource = dmEdVendita.dsMovimenti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      hCmpDes = deDesProdotto
    end
    object deDesProdotto: TEdit
      Left = 226
      Top = 8
      Width = 510
      Height = 28
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object dePrezzo: TDBEdit
      Left = 350
      Top = 38
      Width = 121
      Height = 28
      DataField = 'PREZZO'
      DataSource = dmEdVendita.dsMovimenti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object deSconto: TDBEdit
      Left = 576
      Top = 38
      Width = 73
      Height = 28
      DataField = 'SCONTO'
      DataSource = dmEdVendita.dsMovimenti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object deQuantita: TDBEdit
      Left = 128
      Top = 38
      Width = 121
      Height = 28
      DataField = 'QUANTITA'
      DataSource = dmEdVendita.dsMovimenti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object deCosto: TDBEdit
      Left = 128
      Top = 68
      Width = 121
      Height = 28
      DataField = 'PREZZO_ACQUISTO'
      DataSource = dmEdVendita.dsMovimenti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object deTotale: TDBEdit
      Left = 350
      Top = 68
      Width = 121
      Height = 28
      Color = clMoneyGreen
      DataField = 'IMPORTO'
      DataSource = dmEdVendita.dsMovimenti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
  end
  object grMovimenti: TCRDBGrid [4]
    Left = 0
    Top = 320
    Width = 744
    Height = 194
    Align = alClient
    DataSource = dmEdVendita.dsMovimenti
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODOTTO'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODOTTO'
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PREZZO'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTITA'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCONTO'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTO'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PREZZO_ACQUISTO'
        Width = 94
        Visible = True
      end>
  end
  object nvMovimenti: TDBNavigator [5]
    Left = 0
    Top = 292
    Width = 744
    Height = 28
    DataSource = dmEdVendita.dsMovimenti
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    Align = alTop
    Flat = True
    TabOrder = 5
    OnClick = nvMovimentiClick
  end
  inherited alEdit: TActionList
    Left = 560
    Top = 72
  end
  inherited pugr: TPopupMenu
    Left = 596
    Top = 72
  end
  inherited plEdit: TppBDEPipeline
    Left = 632
    Top = 72
  end
  inherited rpEdit: TppReport
    Left = 668
    Top = 72
    DataPipelineName = 'plEdit'
  end
  inherited rbExtraOptions: TExtraOptions
    Left = 704
    Top = 72
  end
end
