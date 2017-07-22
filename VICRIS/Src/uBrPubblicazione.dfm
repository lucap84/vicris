inherited fmBrPubblicazione: TfmBrPubblicazione
  Caption = 'Pubblicazioni'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hReport = rpBrowse
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrPubblicazione.dsPubblicazione
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_PUB'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_PUB'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_ISB'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_CDU'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_OGG'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_CED'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_CLZ'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_PMR'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_TAG'
        Width = 101
        Visible = True
      end>
  end
  inherited plBrowse: TppBDEPipeline
    DataSource = dmBrPubblicazione.dsPubblicazione
    object plBrowseppField1: TppField
      FieldAlias = 'COD_PUB'
      FieldName = 'COD_PUB'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plBrowseppField2: TppField
      FieldAlias = 'DES_PUB'
      FieldName = 'DES_PUB'
      FieldLength = 250
      DisplayWidth = 30
      Position = 1
    end
    object plBrowseppField3: TppField
      FieldAlias = 'COD_ISB'
      FieldName = 'COD_ISB'
      FieldLength = 20
      DisplayWidth = 15
      Position = 2
    end
    object plBrowseppField4: TppField
      FieldAlias = 'COD_CDU'
      FieldName = 'COD_CDU'
      FieldLength = 60
      DisplayWidth = 10
      Position = 3
    end
    object plBrowseppField5: TppField
      FieldAlias = 'DES_OGG'
      FieldName = 'DES_OGG'
      FieldLength = 120
      DisplayWidth = 20
      Position = 4
    end
    object plBrowseppField6: TppField
      FieldAlias = 'DES_CED'
      FieldName = 'DES_CED'
      FieldLength = 120
      DisplayWidth = 20
      Position = 5
    end
    object plBrowseppField7: TppField
      FieldAlias = 'DES_CLZ'
      FieldName = 'DES_CLZ'
      FieldLength = 60
      DisplayWidth = 20
      Position = 6
    end
    object plBrowseppField8: TppField
      FieldAlias = 'DES_PMR'
      FieldName = 'DES_PMR'
      FieldLength = 60
      DisplayWidth = 20
      Position = 7
    end
    object plBrowseppField9: TppField
      FieldAlias = 'DES_CDU'
      FieldName = 'DES_CDU'
      FieldLength = 181
      DisplayWidth = 181
      Position = 8
    end
    object plBrowseppField10: TppField
      FieldAlias = 'NUM_EDZ'
      FieldName = 'NUM_EDZ'
      FieldLength = 6
      DisplayWidth = 6
      Position = 9
    end
    object plBrowseppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'AAA_PUB'
      FieldName = 'AAA_PUB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object plBrowseppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_PAG'
      FieldName = 'NUM_PAG'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
  end
  inherited rpBrowse: TppReport
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.mmPaperHeight = 210080
    PrinterSetup.mmPaperWidth = 297128
    DataPipelineName = 'plBrowse'
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 19315
      object ppShape1: TppShape [0]
        UserName = 'Shape1'
        Brush.Color = 13224393
        mmHeight = 4498
        mmLeft = 529
        mmTop = 14817
        mmWidth = 276226
        BandType = 0
      end
      inherited pplaTitle: TppLabel
        mmWidth = 275167
      end
      inherited ppLine1: TppLine
        mmWidth = 276226
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Codice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 1058
        mmTop = 15346
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Titolo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 13758
        mmTop = 15346
        mmWidth = 66146
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'ISBN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 80698
        mmTop = 15346
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Casa Editrice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 105304
        mmTop = 15346
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Collezione'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 141817
        mmTop = 15346
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Istituzione'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 178330
        mmTop = 15346
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Oggetto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 236538
        mmTop = 15346
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'C.D.U.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 214842
        mmTop = 15346
        mmWidth = 20902
        BandType = 0
      end
    end
    inherited ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmHeight = 4233
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'COD_PUB'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 529
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'COD_ISB'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3260
        mmLeft = 80698
        mmTop = 529
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'DES_CED'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3260
        mmLeft = 105304
        mmTop = 529
        mmWidth = 35719
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'DES_CLZ'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3175
        mmLeft = 141817
        mmTop = 529
        mmWidth = 35719
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'DES_PUB'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3175
        mmLeft = 13758
        mmTop = 529
        mmWidth = 66146
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'DES_OGG'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3175
        mmLeft = 236538
        mmTop = 529
        mmWidth = 39688
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo3'
        CharWrap = False
        DataField = 'DES_PMR'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3175
        mmLeft = 178330
        mmTop = 529
        mmWidth = 35719
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBMemo4: TppDBMemo
        UserName = 'DBMemo4'
        CharWrap = False
        DataField = 'COD_CDU'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3175
        mmLeft = 214842
        mmTop = 529
        mmWidth = 20902
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited svPageNo: TppSystemVariable
        mmHeight = 4763
        mmLeft = 255853
      end
      inherited pplaDateSlash: TppLabel
        mmLeft = 264055
      end
      inherited svPageCount: TppSystemVariable
        mmLeft = 268288
      end
      inherited laPag: TppLabel
        mmHeight = 4763
        mmLeft = 240771
        mmWidth = 14288
      end
      inherited ppLine2: TppLine
        mmWidth = 276226
      end
    end
    object ppPageStyle1: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 179917
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 153459
        mmLeft = 529
        mmTop = 19315
        mmWidth = 6350
        BandType = 9
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 153459
        mmLeft = 80169
        mmTop = 19315
        mmWidth = 6350
        BandType = 9
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 153459
        mmLeft = 104775
        mmTop = 19315
        mmWidth = 6350
        BandType = 9
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 153459
        mmLeft = 141288
        mmTop = 19315
        mmWidth = 6350
        BandType = 9
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 153459
        mmLeft = 177800
        mmTop = 19315
        mmWidth = 6350
        BandType = 9
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 153459
        mmLeft = 214313
        mmTop = 19315
        mmWidth = 6350
        BandType = 9
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 153459
        mmLeft = 236009
        mmTop = 19315
        mmWidth = 6350
        BandType = 9
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 153459
        mmLeft = 270405
        mmTop = 19315
        mmWidth = 6350
        BandType = 9
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 153459
        mmLeft = 13229
        mmTop = 19315
        mmWidth = 6350
        BandType = 9
      end
    end
  end
end
