inherited fmBrAnalisiVendite: TfmBrAnalisiVendite
  Left = 322
  Top = 199
  Height = 640
  Caption = 'Analisi Vendite'
  Constraints.MinHeight = 640
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = grBrowse
  hReport = rpBrowse
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
    DataSource = dmBrAnalisiVendite.dsAnalisiVendite
    Left = 40
    Top = 544
    object plBrowseppField1: TppField
      FieldAlias = 'DATA_VENDITA'
      FieldName = 'DATA_VENDITA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plBrowseppField2: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plBrowseppField3: TppField
      FieldAlias = 'PRODOTTO'
      FieldName = 'PRODOTTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plBrowseppField4: TppField
      FieldAlias = 'PREZZO_VENDITA'
      FieldName = 'PREZZO_VENDITA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plBrowseppField5: TppField
      FieldAlias = 'QUANTITA'
      FieldName = 'QUANTITA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plBrowseppField6: TppField
      FieldAlias = 'IMPORTO_TOTALE'
      FieldName = 'IMPORTO_TOTALE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plBrowseppField7: TppField
      FieldAlias = 'IVA'
      FieldName = 'IVA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plBrowseppField8: TppField
      FieldAlias = 'TOTALE_IVATO'
      FieldName = 'TOTALE_IVATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plBrowseppField9: TppField
      FieldAlias = 'PREZZO_ACQUISTO'
      FieldName = 'PREZZO_ACQUISTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plBrowseppField10: TppField
      FieldAlias = 'GUADAGNO'
      FieldName = 'GUADAGNO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plBrowseppField11: TppField
      FieldAlias = 'MANDANTE'
      FieldName = 'MANDANTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plBrowseppField12: TppField
      FieldAlias = 'SUBMANDANTE'
      FieldName = 'SUBMANDANTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object plBrowseppField13: TppField
      FieldAlias = 'PROVINCIA'
      FieldName = 'PROVINCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object plBrowseppField14: TppField
      FieldAlias = 'LOCALITA'
      FieldName = 'LOCALITA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object plBrowseppField15: TppField
      FieldAlias = 'CATEGORIA'
      FieldName = 'CATEGORIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object plBrowseppField16: TppField
      FieldAlias = 'FLAG_VICRIS'
      FieldName = 'FLAG_VICRIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object plBrowseppField17: TppField
      FieldAlias = 'SCONTO'
      FieldName = 'SCONTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object plBrowseppField18: TppField
      FieldAlias = 'DES_VICRIS'
      FieldName = 'DES_VICRIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object plBrowseppField19: TppField
      FieldAlias = 'ID_VENDITA'
      FieldName = 'ID_VENDITA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
  end
  inherited rpBrowse: TppReport
    Left = 88
    Top = 544
    DataPipelineName = 'plBrowse'
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 22490
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 13224393
        ParentWidth = True
        mmHeight = 5292
        mmLeft = 0
        mmTop = 17198
        mmWidth = 190080
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 529
        mmTop = 17727
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 19844
        mmTop = 17727
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Prezzo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 109009
        mmTop = 17727
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Quantit'#224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 121709
        mmTop = 17727
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Totale'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 143669
        mmTop = 17727
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Mandante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 165629
        mmTop = 17727
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Prodotto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 44450
        mmTop = 17727
        mmWidth = 63765
        BandType = 0
      end
    end
    inherited ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmHeight = 4763
      object shDetail: TppShape
        UserName = 'shDetail'
        Brush.Color = 14540253
        ParentWidth = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 0
        mmWidth = 190080
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'DATA_VENDITA'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3598
        mmLeft = 529
        mmTop = 529
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'NOME'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3598
        mmLeft = 19844
        mmTop = 529
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'PRODOTTO'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3598
        mmLeft = 44450
        mmTop = 529
        mmWidth = 63765
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'PREZZO_VENDITA'
        DataPipeline = plBrowse
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3598
        mmLeft = 109009
        mmTop = 529
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'QUANTITA'
        DataPipeline = plBrowse
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3598
        mmLeft = 121709
        mmTop = 529
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'IMPORTO_TOTALE'
        DataPipeline = plBrowse
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3598
        mmLeft = 143669
        mmTop = 529
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'MANDANTE'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3598
        mmLeft = 165629
        mmTop = 529
        mmWidth = 23813
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 19315
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 43921
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 108479
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 121179
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 143140
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 165100
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 0
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 24342
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Width = 3
        Weight = 2.000000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 5292
        mmWidth = 189177
        BandType = 7
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Totale '#8364
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 1323
        mmTop = 6879
        mmWidth = 26458
        BandType = 7
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Totale Kg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 1323
        mmTop = 11377
        mmWidth = 26458
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Prezzo Medio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 1323
        mmTop = 15875
        mmWidth = 26458
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'IMPORTO_TOTALE'
        DataPipeline = plBrowse
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3598
        mmLeft = 28575
        mmTop = 6879
        mmWidth = 21167
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'QUANTITA'
        DataPipeline = plBrowse
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3598
        mmLeft = 28575
        mmTop = 11377
        mmWidth = 21167
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'PREZZO_VENDITA'
        DataPipeline = plBrowse
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'plBrowse'
        mmHeight = 3598
        mmLeft = 28575
        mmTop = 15875
        mmWidth = 21167
        BandType = 7
      end
    end
    object grpField: TppGroup
      BreakName = 'CATEGORIA'
      DataPipeline = plBrowse
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      UserName = 'grpField'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plBrowse'
      object grpFieldHead: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = 16113353
          ParentHeight = True
          ParentWidth = True
          mmHeight = 6085
          mmLeft = 0
          mmTop = 0
          mmWidth = 190080
          BandType = 3
          GroupNo = 0
        end
        object dbGrpField: TppDBText
          UserName = 'dbGrpField'
          DataPipeline = plBrowse
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'plBrowse'
          mmHeight = 3810
          mmLeft = 19844
          mmTop = 1058
          mmWidth = 88371
          BandType = 3
          GroupNo = 0
        end
        object laGrpTitle: TppLabel
          UserName = 'laGrpTitle'
          AutoSize = False
          Caption = 'Totale per'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 529
          mmTop = 1058
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'PREZZO_VENDITA'
          DataPipeline = plBrowse
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = grpField
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcAverage
          LookAhead = True
          DataPipelineName = 'plBrowse'
          mmHeight = 3810
          mmLeft = 109009
          mmTop = 1058
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'QUANTITA'
          DataPipeline = plBrowse
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = grpField
          TextAlignment = taRightJustified
          Transparent = True
          LookAhead = True
          DataPipelineName = 'plBrowse'
          mmHeight = 3810
          mmLeft = 121709
          mmTop = 1058
          mmWidth = 21167
          BandType = 3
          GroupNo = 0
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'IMPORTO_TOTALE'
          DataPipeline = plBrowse
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = grpField
          TextAlignment = taRightJustified
          Transparent = True
          LookAhead = True
          DataPipelineName = 'plBrowse'
          mmHeight = 3810
          mmLeft = 143669
          mmTop = 1058
          mmWidth = 21167
          BandType = 3
          GroupNo = 0
        end
      end
      object grpFieldFoot: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
      end
    end
  end
  inherited rbExtraOptions: TExtraOptions
    Top = 544
  end
  inherited SMExport: TSMExportToXLS
    Options = [soFieldMask, soShowMessage, soWaitCursor, soDisableControls, soColLines, soRowLines, soColorsFonts, soExportBlankValues]
  end
end
