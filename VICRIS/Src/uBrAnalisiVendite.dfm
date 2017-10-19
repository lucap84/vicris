inherited fmBrAnalisiVendite: TfmBrAnalisiVendite
  Left = 278
  Top = 218
  Height = 640
  Caption = 'Analisi Vendite'
  Constraints.MinHeight = 640
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = grBrowse
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTools: TPanel
    Top = 541
  end
  inherited pnBackBrowse: TPanel
    Left = 249
    Width = 485
    Height = 541
    inherited grBrowse: TDBGridAux
      Width = 485
      Height = 435
      OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting]
      DataSource = dmBrAnalisiVendite.dsAnalisiVendite
    end
    object pnSummary: TPanel
      Left = 0
      Top = 435
      Width = 485
      Height = 106
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 1
      DesignSize = (
        485
        106)
      object Label1: TLabel
        Left = 354
        Top = 2
        Width = 125
        Height = 20
        Anchors = [akTop]
        Caption = 'Riepilogo Totali'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laSumTotale: TLabel
        Left = 256
        Top = 33
        Width = 90
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop]
        AutoSize = False
        Caption = 'Totale '#8364
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laSumQuantita: TLabel
        Left = 256
        Top = 58
        Width = 90
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop]
        AutoSize = False
        Caption = 'Totale Kg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laAvgPrezzo: TLabel
        Left = 256
        Top = 83
        Width = 90
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop]
        AutoSize = False
        Caption = 'Prezzo Medio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object deSumTotale: TDBEdit
        Left = 360
        Top = 30
        Width = 121
        Height = 21
        Anchors = [akTop]
        Color = clMoneyGreen
        DataField = 'sum_IMPORTO_TOTALE'
        DataSource = dmBrAnalisiVendite.dsAnalisiVendite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object deSumQuantita: TDBEdit
        Left = 360
        Top = 55
        Width = 121
        Height = 21
        Anchors = [akTop]
        Color = clMoneyGreen
        DataField = 'sum_QUANTITA'
        DataSource = dmBrAnalisiVendite.dsAnalisiVendite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object deAvgPrezzo: TDBEdit
        Left = 360
        Top = 80
        Width = 121
        Height = 21
        Anchors = [akTop]
        Color = clMoneyGreen
        DataField = 'avg_PREZZO_VENDITA'
        DataSource = dmBrAnalisiVendite.dsAnalisiVendite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object pnlateAnalisi: TPanel [2]
    Left = 0
    Top = 0
    Width = 249
    Height = 541
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
      Top = 181
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
      Top = 394
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
      Top = 248
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
      Top = 267
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
      Top = 290
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
      Top = 463
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
    object laPrezzoAcquisto: TLabel
      Left = 8
      Top = 320
      Width = 129
      Height = 13
      AutoSize = False
      Caption = 'Prezzo Acquisto ('#8364')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object laAcquistoInizio: TLabel
      Left = 8
      Top = 339
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
    object laAcquistoFine: TLabel
      Left = 8
      Top = 362
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
      Top = 179
      Width = 145
      Height = 21
      KeyField = 'ID_MANDANTE'
      ListField = 'MANDANTE'
      ListSource = dmBrAnalisiVendite.dsMandanti
      TabOrder = 5
    end
    object cbSubmandanti: TDBLookupComboBox
      Left = 95
      Top = 392
      Width = 145
      Height = 21
      KeyField = 'ID_SUBMANDANTE'
      ListField = 'SUBMANDANTE'
      ListSource = dmBrAnalisiVendite.dsSubmandanti
      TabOrder = 7
    end
    object dePrezzoInizio: TEdit
      Left = 95
      Top = 264
      Width = 145
      Height = 21
      TabOrder = 10
      OnChange = FiltersChange
      OnKeyPress = PrezzoKeyPress
    end
    object dePrezzoFine: TEdit
      Left = 95
      Top = 288
      Width = 145
      Height = 21
      TabOrder = 11
      OnChange = FiltersChange
      OnKeyPress = PrezzoKeyPress
    end
    object cbCategoria: TDBLookupComboBox
      Left = 95
      Top = 461
      Width = 145
      Height = 21
      KeyField = 'ID_CATEGORIA'
      ListField = 'CATEGORIA'
      ListSource = dmBrAnalisiVendite.dsCategoria
      TabOrder = 9
    end
    object rgFlagVicris: TRadioGroup
      Left = 8
      Top = 488
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
      TabOrder = 14
      OnClick = FiltersChange
    end
    object rgClienti: TRadioGroup
      Left = 8
      Top = 131
      Width = 233
      Height = 30
      Caption = ' Clienti '
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        'NON Attivi'
        'Attivi'
        'Entrambi')
      TabOrder = 4
      OnClick = FiltersChange
    end
    object rgMandanti: TRadioGroup
      Left = 8
      Top = 200
      Width = 233
      Height = 30
      Caption = ' Mandanti '
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        'NON Attivi'
        'Attivi'
        'Entrambi')
      TabOrder = 6
      OnClick = FiltersChange
    end
    object rgSubmandanti: TRadioGroup
      Left = 8
      Top = 413
      Width = 233
      Height = 30
      Caption = ' Submandanti '
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        'NON Attivi'
        'Attivi'
        'Entrambi')
      TabOrder = 8
      OnClick = FiltersChange
    end
    object deAcquistoFine: TEdit
      Left = 95
      Top = 360
      Width = 145
      Height = 21
      TabOrder = 12
      OnChange = FiltersChange
      OnKeyPress = PrezzoKeyPress
    end
    object deAcquistoInizio: TEdit
      Left = 95
      Top = 336
      Width = 145
      Height = 21
      TabOrder = 13
      OnChange = FiltersChange
      OnKeyPress = PrezzoKeyPress
    end
  end
  inherited alBrowse: TActionList
    Left = 8
    Top = 544
  end
  inherited plBrowse: TppBDEPipeline
    Left = 40
    Top = 544
  end
  inherited rpBrowse: TppReport
    Left = 88
    Top = 544
    DataPipelineName = 'plBrowse'
  end
  inherited rbExtraOptions: TExtraOptions
    Top = 544
  end
end
