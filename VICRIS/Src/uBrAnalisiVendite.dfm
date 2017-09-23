inherited fmBrAnalisiVendite: TfmBrAnalisiVendite
  Left = 281
  Top = 280
  Caption = 'Analisi Vendite'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    Left = 249
    Width = 485
    DataSource = dmBrAnalisiVendite.dsAnalisiVendite
  end
  object pnlateAnalisi: TPanel [2]
    Left = 0
    Top = 0
    Width = 249
    Height = 501
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 40
      Width = 75
      Height = 13
      AutoSize = False
      Caption = 'Data Vendita'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 57
      Width = 75
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Inizio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 82
      Width = 75
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Fine'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 112
      Width = 75
      Height = 13
      AutoSize = False
      Caption = 'Clienti'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 137
      Width = 75
      Height = 13
      AutoSize = False
      Caption = 'Mandanti'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 162
      Width = 75
      Height = 13
      AutoSize = False
      Caption = 'Submandanti'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnTopAnalisi: TPanel
      Left = 0
      Top = 0
      Width = 249
      Height = 34
      Align = alTop
      BevelInner = bvLowered
      Caption = 'FILTRI'
      Color = 13224393
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object dtDataInizio: TDateTimePicker
      Left = 95
      Top = 55
      Width = 92
      Height = 21
      Date = 43001.442648865740000000
      Time = 43001.442648865740000000
      TabOrder = 1
      OnChange = FiltersChange
    end
    object dtDataFine: TDateTimePicker
      Left = 95
      Top = 80
      Width = 92
      Height = 21
      Date = 43001.442648865740000000
      Time = 43001.442648865740000000
      TabOrder = 2
      OnChange = FiltersChange
    end
    object cbClienti: TDBLookupComboBox
      Left = 95
      Top = 110
      Width = 145
      Height = 21
      KeyField = 'ID_CLIENTE'
      ListField = 'NOME'
      ListSource = dmBrAnalisiVendite.dsClienti
      TabOrder = 3
      OnCloseUp = FiltersChange
    end
    object cbMandanti: TDBLookupComboBox
      Left = 95
      Top = 135
      Width = 145
      Height = 21
      KeyField = 'ID_MANDANTE'
      ListField = 'MANDANTE'
      ListSource = dmBrAnalisiVendite.dsMandanti
      TabOrder = 4
      OnCloseUp = FiltersChange
    end
    object cbSubmandanti: TDBLookupComboBox
      Left = 95
      Top = 160
      Width = 145
      Height = 21
      KeyField = 'ID_SUBMANDANTE'
      ListField = 'SUBMANDANTE'
      ListSource = dmBrAnalisiVendite.dsSubmandanti
      TabOrder = 5
      OnCloseUp = FiltersChange
    end
  end
  inherited alBrowse: TActionList
    Left = 8
    Top = 472
  end
  inherited plBrowse: TppBDEPipeline
    Left = 8
    Top = 440
  end
  inherited rpBrowse: TppReport
    Left = 64
    Top = 440
    DataPipelineName = 'plBrowse'
  end
  inherited rbExtraOptions: TExtraOptions
    Left = 104
    Top = 440
  end
end
