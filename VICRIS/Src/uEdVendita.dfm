inherited fmEdVendita: TfmEdVendita
  Left = 322
  Top = 202
  Width = 847
  Height = 610
  Caption = 'Vendita'
  Constraints.MinHeight = 610
  Constraints.MinWidth = 847
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deIdCliente
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTools: TPanel
    Top = 514
    Width = 831
    TabOrder = 3
    inherited bbCommit: TBitBtn
      Left = 203
    end
    inherited bbRollBack: TBitBtn
      Left = 356
    end
    inherited bbPrior: TBitBtn
      Left = 50
    end
    inherited bbNext: TBitBtn
      Left = 509
    end
    inherited bbPrint: TBitBtn
      Left = 662
    end
  end
  object pnBackVendita: TPanel [1]
    Left = 0
    Top = 0
    Width = 831
    Height = 161
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      831
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
      DataField = 'DATA_VENDITA'
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
      Width = 695
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
      Width = 597
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
    object ckFlagVicris: TDBCheckBox
      Left = 653
      Top = 42
      Width = 169
      Height = 17
      Anchors = [akTop]
      Caption = 'VENDITA VICRIS'
      DataField = 'FLAG_VICRIS'
      DataSource = dmEdVendita.dsVendita
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object pnTitleMovimenti: TPanel [2]
    Left = 0
    Top = 161
    Width = 831
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
    Width = 831
    Height = 169
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      831
      169)
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
      Left = 253
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
      Left = 462
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
      Left = 625
      Top = 40
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
    object laFatturaMov: TLabel
      Left = 8
      Top = 100
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
    object laDdtMov: TLabel
      Left = 8
      Top = 130
      Width = 42
      Height = 20
      Caption = 'DDT:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laGuadagno: TLabel
      Left = 558
      Top = 70
      Width = 137
      Height = 20
      Caption = 'GUAGAGNO (%)'
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
      Width = 597
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
      Left = 332
      Top = 38
      Width = 121
      Height = 28
      DataField = 'PREZZO_VENDITA'
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
      Left = 542
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
      Color = clRed
      DataField = 'PREZZO_ACQUISTO'
      DataSource = dmEdVendita.dsMovimenti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object deTotale: TDBEdit
      Left = 702
      Top = 38
      Width = 121
      Height = 28
      Color = clMoneyGreen
      DataField = 'IMPORTO_TOTALE'
      DataSource = dmEdVendita.dsMovimenti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object dtDataFatturaMov: TDBEditDateTimePicker
      Left = 128
      Top = 98
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
      TabOrder = 7
      DataField = 'DATA_FATTURA'
      DataSource = dmEdVendita.dsMovimenti
      ReadOnly = False
      DefaultEditMask = '!99/99/9999;1;_'
      AutoApplyEditMask = True
    end
    object deNumeroFatturaMov: TDBEdit
      Left = 316
      Top = 98
      Width = 186
      Height = 28
      Color = clGreen
      DataField = 'NUMERO_FATTURA'
      DataSource = dmEdVendita.dsMovimenti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object dtDataBollaMov: TDBEditDateTimePicker
      Left = 128
      Top = 128
      Width = 186
      Height = 28
      Date = 42982.809528541660000000
      Time = 42982.809528541660000000
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      DataField = 'DATA_BOLLA'
      DataSource = dmEdVendita.dsMovimenti
      ReadOnly = False
      DefaultEditMask = '!99/99/9999;1;_'
      AutoApplyEditMask = True
    end
    object deNumeroBollaMov: TDBEdit
      Left = 316
      Top = 128
      Width = 186
      Height = 28
      Color = clSkyBlue
      DataField = 'NUMERO_BOLLA'
      DataSource = dmEdVendita.dsMovimenti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object deGuadagno: TDBEdit
      Left = 702
      Top = 68
      Width = 121
      Height = 28
      Color = clMoneyGreen
      DataField = 'guadagno'
      DataSource = dmEdVendita.dsMovimenti
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
  end
  object nvMovimenti: TDBNavigator [4]
    Left = 0
    Top = 361
    Width = 831
    Height = 56
    DataSource = dmEdVendita.dsMovimenti
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    Align = alTop
    Flat = True
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 4
    BeforeAction = nvMovimentiBeforeAction
    OnClick = nvMovimentiClick
  end
  object grMovimenti: TDBGridAux [5]
    Left = 0
    Top = 417
    Width = 831
    Height = 97
    Align = alClient
    DataSource = dmEdVendita.dsMovimenti
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -21
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
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
