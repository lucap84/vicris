inherited fmBrAnalisiVendite: TfmBrAnalisiVendite
  Left = 589
  Top = 258
  Caption = 'Analisi Vendite'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = grBrowse
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel [0]
    Left = 8
    Top = 186
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
  inherited grBrowse: TDBGridAux
    Left = 249
    Width = 485
    DataSource = dmBrAnalisiVendite.dsAnalisiVendite
  end
  object pnlateAnalisi: TPanel [3]
    Left = 0
    Top = 0
    Width = 249
    Height = 501
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object laDataVendita: TLabel
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
    object laDataInizio: TLabel
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
    object laDataFine: TLabel
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
    object laClienti: TLabel
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
    object laMandanti: TLabel
      Left = 8
      Top = 185
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
    object laSubmandanti: TLabel
      Left = 8
      Top = 258
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
    object laPrezzoVendita: TLabel
      Left = 8
      Top = 344
      Width = 129
      Height = 13
      AutoSize = False
      Caption = 'Prezzo Vendita ('#8364')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laPrezzoInizio: TLabel
      Left = 8
      Top = 363
      Width = 75
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Minimo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laPrezzoFine: TLabel
      Left = 8
      Top = 386
      Width = 75
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Massimo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laCategoria: TLabel
      Left = 8
      Top = 314
      Width = 75
      Height = 13
      AutoSize = False
      Caption = 'Categoria'
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
      Width = 145
      Height = 21
      Date = 43001.442648865740000000
      Time = 43001.442648865740000000
      TabOrder = 1
      OnChange = FiltersChange
    end
    object dtDataFine: TDateTimePicker
      Left = 95
      Top = 80
      Width = 145
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
    end
    object cbMandanti: TDBLookupComboBox
      Left = 95
      Top = 183
      Width = 145
      Height = 21
      KeyField = 'ID_MANDANTE'
      ListField = 'MANDANTE'
      ListSource = dmBrAnalisiVendite.dsMandanti
      TabOrder = 4
    end
    object cbSubmandanti: TDBLookupComboBox
      Left = 95
      Top = 256
      Width = 145
      Height = 21
      KeyField = 'ID_SUBMANDANTE'
      ListField = 'SUBMANDANTE'
      ListSource = dmBrAnalisiVendite.dsSubmandanti
      TabOrder = 5
    end
    object dePrezzoInizio: TEdit
      Left = 95
      Top = 360
      Width = 145
      Height = 21
      TabOrder = 7
      OnChange = FiltersChange
      OnKeyPress = PrezzoKeyPress
    end
    object dePrezzoFine: TEdit
      Left = 95
      Top = 384
      Width = 145
      Height = 21
      TabOrder = 8
      OnChange = FiltersChange
      OnKeyPress = PrezzoKeyPress
    end
    object cbCategoria: TDBLookupComboBox
      Left = 95
      Top = 312
      Width = 145
      Height = 21
      KeyField = 'ID_CATEGORIA'
      ListField = 'CATEGORIA'
      ListSource = dmBrAnalisiVendite.dsCategoria
      TabOrder = 6
    end
    object rgFlagVicris: TRadioGroup
      Left = 8
      Top = 416
      Width = 233
      Height = 51
      Caption = ' Provenienza Vendita '
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 2
      Items.Strings = (
        'Labriola'
        'Vicris'
        'Entrambe')
      ParentFont = False
      TabOrder = 9
      OnClick = FiltersChange
    end
    object rgClienti: TRadioGroup
      Left = 8
      Top = 131
      Width = 233
      Height = 30
      Caption = ' Clienti '
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'NON Attivi'
        'Attivi'
        'Entrambi')
      TabOrder = 10
      OnClick = FiltersChange
    end
    object rgMandanti: TRadioGroup
      Left = 8
      Top = 204
      Width = 233
      Height = 30
      Caption = ' Mandanti '
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'NON Attivi'
        'Attivi'
        'Entrambi')
      TabOrder = 11
      OnClick = FiltersChange
    end
    object rgSubmandanti: TRadioGroup
      Left = 8
      Top = 277
      Width = 233
      Height = 30
      Caption = ' Submandanti '
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'NON Attivi'
        'Attivi'
        'Entrambi')
      TabOrder = 12
      OnClick = FiltersChange
    end
  end
  inherited alBrowse: TActionList
    Left = 8
    Top = 472
  end
  inherited plBrowse: TppBDEPipeline
    Left = 40
    Top = 472
  end
  inherited rpBrowse: TppReport
    Left = 88
    Top = 472
    DataPipelineName = 'plBrowse'
  end
  inherited rbExtraOptions: TExtraOptions
    Top = 472
  end
end
