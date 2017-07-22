inherited fmEdPubblicazione: TfmEdPubblicazione
  Left = 303
  Top = 0
  Width = 670
  Height = 730
  Caption = 'Pubblicazione'
  Constraints.MaxHeight = 730
  Constraints.MaxWidth = 670
  Constraints.MinHeight = 730
  Constraints.MinWidth = 670
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deDesPub
  hReport = rpEdit
  PixelsPerInch = 96
  TextHeight = 13
  object pcPub: TPageControl [0]
    Left = 0
    Top = 0
    Width = 662
    Height = 646
    ActivePage = tePub
    Align = alClient
    MultiLine = True
    TabOrder = 1
    object tePub: TTabSheet
      Caption = 'Pubblicazione'
      DesignSize = (
        654
        618)
      object laDesPub: TLabel
        Left = 8
        Top = 40
        Width = 68
        Height = 20
        Caption = 'TITOLO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laFlgTipPub: TLabel
        Left = 8
        Top = 72
        Width = 46
        Height = 20
        Caption = 'TIPO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laFlgTipAut: TLabel
        Left = 8
        Top = 104
        Width = 119
        Height = 20
        Caption = 'REDATTO DA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laCodIsb: TLabel
        Left = 8
        Top = 136
        Width = 48
        Height = 20
        Caption = 'ISBN:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laEdzAaaPag: TLabel
        Left = 8
        Top = 168
        Width = 157
        Height = 20
        Caption = 'ED. \ ANNO \ PAG.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laCed: TLabel
        Left = 8
        Top = 264
        Width = 143
        Height = 20
        Caption = 'CASA EDITRICE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laNaz: TLabel
        Left = 8
        Top = 296
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
      object laCta: TLabel
        Left = 8
        Top = 328
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
      object laClz: TLabel
        Left = 8
        Top = 360
        Width = 117
        Height = 20
        Caption = 'COLLEZIONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laOgg: TLabel
        Left = 8
        Top = 392
        Width = 59
        Height = 20
        Caption = 'C.D.U.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laDesNte: TLabel
        Left = 8
        Top = 456
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
      object laPmr: TLabel
        Left = 8
        Top = 424
        Width = 117
        Height = 20
        Caption = 'ISTITUZIONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laAut: TLabel
        Left = 8
        Top = 592
        Width = 79
        Height = 20
        Caption = 'AUTORE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laUbi: TLabel
        Left = 8
        Top = 200
        Width = 115
        Height = 20
        Caption = 'UBICAZIONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laCodPub: TLabel
        Left = 8
        Top = 8
        Width = 74
        Height = 20
        Caption = 'CODICE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laLvlScf: TLabel
        Left = 8
        Top = 232
        Width = 157
        Height = 20
        Caption = 'RIPIANO \ SCAFF.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object deDesPub: TDBEdit
        Left = 168
        Top = 40
        Width = 482
        Height = 21
        DataField = 'DES_PUB'
        DataSource = dmEdPubblicazione.dsPubblicazione
        TabOrder = 2
      end
      object deCodIsb: TDBEdit
        Left = 168
        Top = 136
        Width = 281
        Height = 21
        DataField = 'COD_ISB'
        DataSource = dmEdPubblicazione.dsPubblicazione
        TabOrder = 5
      end
      object deNumEdz: TDBEdit
        Left = 168
        Top = 168
        Width = 81
        Height = 21
        DataField = 'NUM_EDZ'
        DataSource = dmEdPubblicazione.dsPubblicazione
        TabOrder = 6
      end
      object deCodCed: TDBSearch
        Tag = 1003
        Left = 168
        Top = 264
        Width = 81
        Height = 21
        Color = clYellow
        DataField = 'COD_CED'
        DataSource = dmEdPubblicazione.dsPubblicazione
        TabOrder = 11
        hCmpDes = deDesCed
      end
      object deDesCed: TEdit
        Left = 256
        Top = 264
        Width = 393
        Height = 21
        ReadOnly = True
        TabOrder = 12
      end
      object deCodNaz: TDBSearch
        Tag = 1001
        Left = 168
        Top = 296
        Width = 81
        Height = 21
        Color = clYellow
        DataField = 'COD_NAZ'
        DataSource = dmEdPubblicazione.dsPubblicazione
        TabOrder = 13
        hCmpDes = deDesNaz
      end
      object deDesNaz: TEdit
        Left = 256
        Top = 296
        Width = 393
        Height = 21
        ReadOnly = True
        TabOrder = 14
      end
      object deCodCta: TDBSearch
        Tag = 1002
        Left = 168
        Top = 328
        Width = 81
        Height = 21
        Color = clYellow
        DataField = 'COD_CTA'
        DataSource = dmEdPubblicazione.dsPubblicazione
        TabOrder = 15
        hCmpDes = deDesCta
      end
      object deDesCta: TEdit
        Left = 256
        Top = 328
        Width = 393
        Height = 21
        ReadOnly = True
        TabOrder = 16
      end
      object deCodClz: TDBSearch
        Tag = 1004
        Left = 168
        Top = 360
        Width = 81
        Height = 21
        Color = clYellow
        DataField = 'COD_CLZ'
        DataSource = dmEdPubblicazione.dsPubblicazione
        TabOrder = 17
        hCmpDes = deDesClz
      end
      object deDesClz: TEdit
        Left = 256
        Top = 360
        Width = 393
        Height = 21
        ReadOnly = True
        TabOrder = 18
      end
      object deCodOgg: TDBSearch
        Tag = 1005
        Left = 168
        Top = 392
        Width = 81
        Height = 21
        Color = clYellow
        DataField = 'COD_OGG'
        DataSource = dmEdPubblicazione.dsPubblicazione
        TabOrder = 19
        hCmpDes = deDesOgg
      end
      object deDesOgg: TEdit
        Left = 256
        Top = 392
        Width = 393
        Height = 21
        ReadOnly = True
        TabOrder = 20
      end
      object deDesNte: TDBMemo
        Left = 168
        Top = 456
        Width = 482
        Height = 129
        DataField = 'DES_NTE'
        DataSource = dmEdPubblicazione.dsPubblicazione
        ScrollBars = ssVertical
        TabOrder = 23
      end
      object cbFlgTipPub: TDBLookupComboBox
        Left = 168
        Top = 72
        Width = 145
        Height = 21
        DataField = 'FLG_TIP_PUB'
        DataSource = dmEdPubblicazione.dsPubblicazione
        KeyField = 'COD_VAL_FIL_SHR'
        ListField = 'DES_FIL_SHR'
        TabOrder = 3
      end
      object cbFlgTipAut: TDBLookupComboBox
        Left = 168
        Top = 104
        Width = 145
        Height = 21
        DataField = 'FLG_TIP_AUT'
        DataSource = dmEdPubblicazione.dsPubblicazione
        KeyField = 'COD_VAL_FIL_SHR'
        ListField = 'DES_FIL_SHR'
        TabOrder = 4
      end
      object deCodPmr: TDBSearch
        Tag = 1006
        Left = 168
        Top = 424
        Width = 81
        Height = 21
        Color = clYellow
        DataField = 'COD_PMR'
        DataSource = dmEdPubblicazione.dsPubblicazione
        TabOrder = 21
        hCmpDes = deDesPmr
      end
      object deDesPmr: TEdit
        Left = 256
        Top = 424
        Width = 393
        Height = 21
        ReadOnly = True
        TabOrder = 22
      end
      object deAaaPub: TDBEdit
        Left = 368
        Top = 168
        Width = 81
        Height = 21
        DataField = 'AAA_PUB'
        DataSource = dmEdPubblicazione.dsPubblicazione
        TabOrder = 7
      end
      object deNumPag: TDBEdit
        Left = 567
        Top = 168
        Width = 81
        Height = 21
        DataField = 'NUM_PAG'
        DataSource = dmEdPubblicazione.dsPubblicazione
        TabOrder = 8
      end
      object deCodAut: TDBSearch
        Tag = 1000
        Left = 168
        Top = 592
        Width = 81
        Height = 21
        Color = clYellow
        DataField = 'cod_aut'
        DataSource = dmEdPubblicazione.dsPubblicazione
        TabOrder = 24
        hCmpDes = deDesAut
      end
      object deDesAut: TEdit
        Left = 256
        Top = 592
        Width = 368
        Height = 21
        ReadOnly = True
        TabOrder = 25
      end
      object deCodLvl: TDBEdit
        Left = 168
        Top = 232
        Width = 81
        Height = 21
        DataField = 'COD_LVL'
        DataSource = dmEdPubblicazione.dsPubblicazione
        TabOrder = 9
      end
      object deCodScf: TDBEdit
        Left = 368
        Top = 232
        Width = 81
        Height = 21
        DataField = 'COD_SCF'
        DataSource = dmEdPubblicazione.dsPubblicazione
        TabOrder = 10
      end
      object bbAddAut: TBitBtn
        Left = 629
        Top = 592
        Width = 21
        Height = 21
        Action = acAddAut
        TabOrder = 26
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          18000000000000060000120B0000120B00000000000000000000C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4AAB1B4AAB1B4AAB1B4AAB1B4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4AA
          B1B4AAB1B4AAB1B4AAB1B4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4009369009369009369009369AAB1B4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D47F7F7F7F
          7F7F7F7F7F7F7F7FAAB1B4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D400936933FF6633FF66009369AAB1B4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D47F7F7FCE
          CECECECECE7F7F7FAAB1B4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D400936933FF6633FF66009369AAB1B4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D47F7F7FCE
          CECECECECE7F7F7FAAB1B4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D400936933FF6633FF66009369AAB1B4AAB1B4AAB1
          B4AAB1B4AAB1B4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D47F7F7FCE
          CECECECECE7F7F7FAAB1B4AAB1B4AAB1B4AAB1B4AAB1B4C8D0D4C8D0D4C8D0D4
          00936900936900936900936900936933FF6633FF660093690093690093690093
          69009369AAB1B4C8D0D4C8D0D4C8D0D47F7F7F7F7F7F7F7F7F7F7F7F7F7F7FCE
          CECECECECE7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FAAB1B4C8D0D4C8D0D4C8D0D4
          00936933FF6633FF6633FF6633FF6633FF6633FF6633FF6633FF6633FF6633FF
          66009369AAB1B4C8D0D4C8D0D4C8D0D47F7F7FCECECECECECECECECECECECECE
          CECECECECECECECECECECECECECECECECE7F7F7FAAB1B4C8D0D4C8D0D4C8D0D4
          00936933FF6633FF6633FF6633FF6633FF6633FF6633FF6633FF6633FF6633FF
          66009369AAB1B4C8D0D4C8D0D4C8D0D47F7F7FCECECECECECECECECECECECECE
          CECECECECECECECECECECECECECECECECE7F7F7FAAB1B4C8D0D4C8D0D4C8D0D4
          00936900936900936900936900936933FF6633FF660093690093690093690093
          69009369C8D0D4C8D0D4C8D0D4C8D0D47F7F7F7F7F7F7F7F7F7F7F7F7F7F7FCE
          CECECECECE7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D400936933FF6633FF66009369AAB1B4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D47F7F7FCE
          CECECECECE7F7F7FAAB1B4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D400936933FF6633FF66009369AAB1B4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D47F7F7FCE
          CECECECECE7F7F7FAAB1B4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D400936933FF6633FF66009369AAB1B4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D47F7F7FCE
          CECECECECE7F7F7FAAB1B4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4009369009369009369009369C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D47F7F7F7F
          7F7F7F7F7F7F7F7FC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4}
        NumGlyphs = 2
        Spacing = 0
      end
      object deCodPub: TDBEdit
        Left = 168
        Top = 8
        Width = 145
        Height = 21
        DataField = 'COD_PUB'
        DataSource = dmEdPubblicazione.dsPubblicazione
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object bbNumManPrv: TButton
        Left = 317
        Top = 7
        Width = 105
        Height = 25
        Action = acNumMan
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object deCodUbi: TDBSearch
        Tag = 1010
        Left = 168
        Top = 200
        Width = 81
        Height = 21
        Color = clYellow
        DataField = 'COD_UBI'
        DataSource = dmEdPubblicazione.dsPubblicazione
        TabOrder = 27
        hCmpDes = deDesUbi
      end
      object deDesUbi: TEdit
        Left = 256
        Top = 200
        Width = 393
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 28
      end
    end
    object teDetAutPub: TTabSheet
      Caption = 'Autori'
      ImageIndex = 1
      object grDetAutPub: TDBGridAux
        Left = 0
        Top = 0
        Width = 654
        Height = 618
        OptionsEx = [dgeStretch]
        Align = alClient
        DataSource = dmEdPubblicazione.dsDetAutPub
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = pugr
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_AUT'
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'des_nom_aut'
            Width = 275
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'des_cog_aut'
            Width = 275
            Visible = True
          end>
      end
    end
    object teTags: TTabSheet
      Caption = 'Tags'
      ImageIndex = 2
      object deDesTag: TDBMemo
        Left = 0
        Top = 0
        Width = 654
        Height = 618
        Align = alClient
        DataField = 'DES_TAG'
        DataSource = dmEdPubblicazione.dsPubblicazione
        MaxLength = 1000
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  inherited pnTools: TPanel
    Top = 646
    Width = 662
    inherited bbCommit: TBitBtn
      Left = 258
    end
    inherited bbRollBack: TBitBtn
      Left = 312
    end
    inherited bbPrior: TBitBtn
      Left = 203
    end
    inherited bbNext: TBitBtn
      Left = 367
    end
    inherited bbPrint: TBitBtn
      Left = 421
    end
  end
  inherited alEdit: TActionList
    object acAddAut: TAction [5]
      Category = 'grRecord'
      Hint = 'Inserisce un autore per questa pubblicazione'
      OnExecute = acAddAutExecute
      OnUpdate = acAddAutUpdate
    end
  end
  inherited plEdit: TppBDEPipeline
    DataSource = dmEdPubblicazione.dsPubblicazione
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
    inherited ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmHeight = 65881
      object srDetAutPub: TppSubReport
        UserName = 'srDetAutPub'
        ExpandAll = True
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = rrTstPub
        TraverseAllData = False
        DataPipelineName = 'plDetAutPub'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 60854
        mmWidth = 190080
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = plDetAutPub
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 15000
          PrinterSetup.mmMarginLeft = 10000
          PrinterSetup.mmMarginRight = 10000
          PrinterSetup.mmMarginTop = 15000
          PrinterSetup.mmPaperHeight = 297128
          PrinterSetup.mmPaperWidth = 210080
          PrinterSetup.PaperSize = 9
          Units = utScreenPixels
          Version = '7.03'
          mmColumnWidth = 0
          DataPipelineName = 'plDetAutPub'
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              DataField = 'COD_AUT'
              DataPipeline = plDetAutPub
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plDetAutPub'
              mmHeight = 3969
              mmLeft = 1058
              mmTop = 529
              mmWidth = 14552
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              DataField = 'des_nom_aut'
              DataPipeline = plDetAutPub
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plDetAutPub'
              mmHeight = 3969
              mmLeft = 16404
              mmTop = 529
              mmWidth = 85990
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              DataField = 'des_cog_aut'
              DataPipeline = plDetAutPub
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plDetAutPub'
              mmHeight = 3969
              mmLeft = 103188
              mmTop = 529
              mmWidth = 85990
              BandType = 4
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5027
              mmLeft = 529
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
            object ppLine5: TppLine
              UserName = 'Line5'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5027
              mmLeft = 15875
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
            object ppLine6: TppLine
              UserName = 'Line6'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5027
              mmLeft = 102659
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
            object ppLine7: TppLine
              UserName = 'Line7'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5027
              mmLeft = 189442
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'COD_PUB'
            DataPipeline = plDetAutPub
            OutlineSettings.CreateNode = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'plDetAutPub'
            object ppGroupHeaderBand1: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 12171
              mmPrintPosition = 0
              object ppShape2: TppShape
                UserName = 'Shape2'
                Brush.Color = 13224393
                mmHeight = 9790
                mmLeft = 529
                mmTop = 2381
                mmWidth = 189177
                BandType = 3
                GroupNo = 0
              end
              object ppLabel15: TppLabel
                UserName = 'Label15'
                AutoSize = False
                Caption = 'Autori'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4191
                mmLeft = 1058
                mmTop = 2910
                mmWidth = 188119
                BandType = 3
                GroupNo = 0
              end
              object ppLabel16: TppLabel
                UserName = 'Label16'
                AutoSize = False
                Caption = 'Codice'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4233
                mmLeft = 1058
                mmTop = 7408
                mmWidth = 14552
                BandType = 3
                GroupNo = 0
              end
              object ppLabel17: TppLabel
                UserName = 'Label17'
                AutoSize = False
                Caption = 'Nome'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4191
                mmLeft = 16404
                mmTop = 7408
                mmWidth = 85990
                BandType = 3
                GroupNo = 0
              end
              object ppLabel18: TppLabel
                UserName = 'Label18'
                AutoSize = False
                Caption = 'Cognome'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4191
                mmLeft = 103188
                mmTop = 7408
                mmWidth = 85990
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 265
              mmPrintPosition = 0
              object ppLine3: TppLine
                UserName = 'Line3'
                Weight = 0.750000000000000000
                mmHeight = 265
                mmLeft = 529
                mmTop = 0
                mmWidth = 189177
                BandType = 5
                GroupNo = 0
              end
            end
          end
        end
      end
      object rrTstPub: TppRegion
        UserName = 'rrTstPub'
        ParentWidth = True
        Pen.Style = psClear
        Stretch = True
        mmHeight = 60590
        mmLeft = 0
        mmTop = 0
        mmWidth = 190080
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 13224393
          mmHeight = 59267
          mmLeft = 529
          mmTop = 529
          mmWidth = 40746
          BandType = 4
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          AutoSize = False
          Caption = 'Codice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1058
          mmTop = 1058
          mmWidth = 39688
          BandType = 4
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          AutoSize = False
          Caption = 'Titolo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1058
          mmTop = 5556
          mmWidth = 39688
          BandType = 4
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          AutoSize = False
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1058
          mmTop = 10054
          mmWidth = 39688
          BandType = 4
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          AutoSize = False
          Caption = 'Redatto Da'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1058
          mmTop = 14552
          mmWidth = 39688
          BandType = 4
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          AutoSize = False
          Caption = 'ISBN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1058
          mmTop = 19050
          mmWidth = 39688
          BandType = 4
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          AutoSize = False
          Caption = 'Ed. / Anno / N'#176' Pag.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1058
          mmTop = 23548
          mmWidth = 39688
          BandType = 4
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          AutoSize = False
          Caption = 'Casa Editrice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1058
          mmTop = 28046
          mmWidth = 39688
          BandType = 4
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          AutoSize = False
          Caption = 'Nazione / Citt'#224
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1058
          mmTop = 32544
          mmWidth = 39688
          BandType = 4
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          AutoSize = False
          Caption = 'Collezione'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1058
          mmTop = 37042
          mmWidth = 39688
          BandType = 4
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          AutoSize = False
          Caption = 'C.D.U.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1058
          mmTop = 41540
          mmWidth = 39688
          BandType = 4
        end
        object ppLabel11: TppLabel
          UserName = 'Label101'
          AutoSize = False
          Caption = 'Istituzione'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1058
          mmTop = 46038
          mmWidth = 39688
          BandType = 4
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          AutoSize = False
          Caption = 'Note'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1058
          mmTop = 50536
          mmWidth = 39688
          BandType = 4
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'COD_PUB'
          DataPipeline = plEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plEdit'
          mmHeight = 3969
          mmLeft = 41540
          mmTop = 1058
          mmWidth = 147638
          BandType = 4
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'DES_PUB'
          DataPipeline = plEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plEdit'
          mmHeight = 3969
          mmLeft = 41540
          mmTop = 5556
          mmWidth = 147638
          BandType = 4
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          DataField = 'DES_TIP_PUB'
          DataPipeline = plEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plEdit'
          mmHeight = 3969
          mmLeft = 41540
          mmTop = 10054
          mmWidth = 147638
          BandType = 4
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          DataField = 'DES_TIP_AUT'
          DataPipeline = plEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plEdit'
          mmHeight = 3969
          mmLeft = 41540
          mmTop = 14552
          mmWidth = 147638
          BandType = 4
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          DataField = 'COD_ISB'
          DataPipeline = plEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plEdit'
          mmHeight = 3969
          mmLeft = 41540
          mmTop = 19050
          mmWidth = 147638
          BandType = 4
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'NUM_EDZ'
          DataPipeline = plEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plEdit'
          mmHeight = 3969
          mmLeft = 41540
          mmTop = 23548
          mmWidth = 26458
          BandType = 4
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          DataField = 'AAA_PUB'
          DataPipeline = plEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEdit'
          mmHeight = 3969
          mmLeft = 71438
          mmTop = 23548
          mmWidth = 26458
          BandType = 4
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          DataField = 'NUM_PAG'
          DataPipeline = plEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEdit'
          mmHeight = 3969
          mmLeft = 101336
          mmTop = 23548
          mmWidth = 26458
          BandType = 4
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          DataField = 'DES_CED'
          DataPipeline = plEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plEdit'
          mmHeight = 3969
          mmLeft = 41540
          mmTop = 28046
          mmWidth = 147638
          BandType = 4
        end
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          DataField = 'DES_NAZ'
          DataPipeline = plEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plEdit'
          mmHeight = 3969
          mmLeft = 41540
          mmTop = 32544
          mmWidth = 56356
          BandType = 4
        end
        object ppDBText11: TppDBText
          UserName = 'DBText101'
          DataField = 'DES_CLZ'
          DataPipeline = plEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plEdit'
          mmHeight = 3969
          mmLeft = 41540
          mmTop = 37042
          mmWidth = 147638
          BandType = 4
        end
        object ppDBText12: TppDBText
          UserName = 'DBText12'
          DataField = 'DES_CDU'
          DataPipeline = plEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plEdit'
          mmHeight = 3969
          mmLeft = 41540
          mmTop = 41540
          mmWidth = 147638
          BandType = 4
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          DataField = 'DES_PMR'
          DataPipeline = plEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plEdit'
          mmHeight = 3969
          mmLeft = 41540
          mmTop = 46038
          mmWidth = 147638
          BandType = 4
        end
        object ppLabel13: TppLabel
          UserName = 'Label11'
          AutoSize = False
          Caption = ' / '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 68263
          mmTop = 23548
          mmWidth = 2910
          BandType = 4
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          AutoSize = False
          Caption = ' / '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 98161
          mmTop = 23548
          mmWidth = 2910
          BandType = 4
        end
        object ppDBMemo1: TppDBMemo
          UserName = 'DBMemo1'
          CharWrap = False
          DataField = 'DES_NTE'
          DataPipeline = plEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Stretch = True
          Transparent = True
          DataPipelineName = 'plEdit'
          mmHeight = 3969
          mmLeft = 41540
          mmTop = 50536
          mmWidth = 147638
          BandType = 4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object ppDBText17: TppDBText
          UserName = 'DBText102'
          DataField = 'DES_CTA'
          DataPipeline = plEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plEdit'
          mmHeight = 3969
          mmLeft = 98161
          mmTop = 32544
          mmWidth = 56356
          BandType = 4
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          AutoSize = False
          Caption = 'Ubicazione (Lvl / Scf)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 1058
          mmTop = 55033
          mmWidth = 39688
          BandType = 4
        end
        object ppDBText18: TppDBText
          UserName = 'DBText18'
          DataField = 'COD_LVL'
          DataPipeline = plEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'plEdit'
          mmHeight = 3969
          mmLeft = 41540
          mmTop = 54769
          mmWidth = 26458
          BandType = 4
        end
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          DataField = 'COD_SCF'
          DataPipeline = plEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plEdit'
          mmHeight = 3969
          mmLeft = 71438
          mmTop = 54769
          mmWidth = 26458
          BandType = 4
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          AutoSize = False
          Caption = ' / '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3969
          mmLeft = 68263
          mmTop = 54769
          mmWidth = 2910
          BandType = 4
        end
      end
    end
  end
  object plDetAutPub: TppBDEPipeline
    DataSource = dmEdPubblicazione.dsDetAutPub
    SkipWhenNoRecords = False
    UserName = 'plDetAutPub'
    Left = 72
    Top = 40
  end
end
