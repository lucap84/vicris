inherited fmBrAnalisiVendite: TfmBrAnalisiVendite
  Left = 281
  Top = 280
  Caption = 'Analisi Vendite'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
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
    PopupMenu = puAnalisiVendite
  end
  object pnlateAnalisi: TPanel [3]
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
    object Label7: TLabel
      Left = 8
      Top = 216
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
    object Label8: TLabel
      Left = 8
      Top = 235
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
    object Label9: TLabel
      Left = 8
      Top = 258
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
    object Label11: TLabel
      Left = 8
      Top = 186
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
    end
    object dePrezzoInizio: TEdit
      Left = 96
      Top = 232
      Width = 121
      Height = 21
      TabOrder = 6
      OnChange = FiltersChange
      OnKeyPress = PrezzoKeyPress
    end
    object dePrezzoFine: TEdit
      Left = 96
      Top = 256
      Width = 121
      Height = 21
      TabOrder = 7
      OnChange = FiltersChange
      OnKeyPress = PrezzoKeyPress
    end
  end
  object cbCategoria: TDBLookupComboBox [4]
    Left = 95
    Top = 184
    Width = 145
    Height = 21
    KeyField = 'ID_CATEGORIA'
    ListField = 'CATEGORIA'
    ListSource = dmBrAnalisiVendite.dsCategoria
    TabOrder = 3
  end
  inherited alBrowse: TActionList
    Left = 8
    Top = 472
    object acExpXls: TAction
      Category = 'Record'
      Caption = 'Esporta Dati....'
      Hint = 'Esporta i dati visualizzati su file Excel...'
      OnExecute = acExpXlsExecute
      OnUpdate = acExpXlsUpdate
    end
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
  object puAnalisiVendite: TPopupMenu
    Left = 144
    Top = 312
    object piExpXls: TMenuItem
      Action = acExpXls
    end
  end
  object SMExport: TSMExportToXLS
    AnimatedStatus = True
    DataFormats.DateSeparator = '/'
    DataFormats.TimeSeparator = ':'
    DataFormats.FourDigitYear = True
    DataFormats.LeadingZerosInDate = True
    DataFormats.ThousandSeparator = '.'
    DataFormats.DecimalSeparator = ','
    DataFormats.CurrencyString = #8364
    DataFormats.BooleanTrue = 'True'
    DataFormats.BooleanFalse = 'False'
    KeyGenerator = 'SMExport 4.50'
    SelectedRecord = False
    BlankIfZero = True
    RightToLeft = False
    Columns = <>
    DataSet = dmBrAnalisiVendite.qyAnalisiVendite
    ColumnSource = csDataSet
    ActionAfterExport = aeOpenView
    FileName = 'C:\Users\MarcoC.HSC2K3MAIN\Desktop\SMExport.XLS'
    AddTitle = True
    CharacterSet = csANSI_WINDOWS
    ExportStyle.Style = esNormal
    ExportStyle.OddColor = clBlack
    ExportStyle.EvenColor = clBlack
    Left = 96
    Top = 312
  end
  object sdExcel: TSaveDialog
    DefaultExt = 'xls'
    Filter = 'Cartella di lavoro Excel 97-2003|*.xls'
    Title = 'Salva con Nome...'
    Left = 96
    Top = 360
  end
end
