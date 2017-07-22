inherited fmEdAutore: TfmEdAutore
  Left = 446
  Top = 187
  Width = 400
  Caption = 'Autore'
  Constraints.MaxHeight = 400
  Constraints.MaxWidth = 500
  Constraints.MinWidth = 400
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deDesNom
  hReport = rpEdit
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTools: TPanel
    Width = 392
    inherited bbCommit: TBitBtn
      Left = 116
    end
    inherited bbRollBack: TBitBtn
      Left = 170
    end
    inherited bbPrior: TBitBtn
      Left = 62
    end
    inherited bbNext: TBitBtn
      Left = 224
    end
    inherited bbPrint: TBitBtn
      Left = 278
    end
  end
  object pcAutore: TPageControl [1]
    Left = 0
    Top = 0
    Width = 392
    Height = 216
    ActivePage = teAutore
    Align = alClient
    TabOrder = 1
    object teAutore: TTabSheet
      Caption = 'Autore'
      DesignSize = (
        384
        188)
      object laDesNom: TLabel
        Left = 8
        Top = 8
        Width = 57
        Height = 20
        Caption = 'NOME:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laDesCog: TLabel
        Left = 8
        Top = 52
        Width = 96
        Height = 20
        Caption = 'COGNOME:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laDesNte: TLabel
        Left = 8
        Top = 106
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
      object deDesNom: TDBEdit
        Left = 112
        Top = 8
        Width = 266
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'DES_NOM'
        DataSource = dmEdAutore.dsAutore
        TabOrder = 0
      end
      object deDesCog: TDBEdit
        Left = 112
        Top = 52
        Width = 266
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'DES_COG'
        DataSource = dmEdAutore.dsAutore
        TabOrder = 1
      end
      object mmDesNte: TDBMemo
        Left = 112
        Top = 106
        Width = 266
        Height = 75
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataField = 'DES_NTE'
        DataSource = dmEdAutore.dsAutore
        TabOrder = 2
      end
    end
    object teDetAutPub: TTabSheet
      Caption = 'Pubblicazioni'
      ImageIndex = 1
      object grDetAutPub: TDBGridAux
        Left = 0
        Top = 0
        Width = 384
        Height = 188
        OptionsEx = [dgeStretch]
        Align = alClient
        DataSource = dmEdAutore.dsDetAutPub
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_PUB'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DES_PUB'
            Width = 1504
            Visible = True
          end>
      end
    end
  end
  inherited plEdit: TppBDEPipeline
    DataSource = dmEdAutore.dsAutore
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
    inherited ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmHeight = 43127
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 13224393
        mmHeight = 18785
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
        Caption = 'Nome'
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
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'COD_AUT'
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
        DataField = 'DES_NOM'
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
        mmTop = 14552
        mmWidth = 147638
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
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
        mmTop = 14552
        mmWidth = 39688
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Cognome'
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
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'DES_COG'
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
      object srDetAutPub: TppSubReport
        UserName = 'srDetAutPub'
        ExpandAll = True
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'plDetAutPub'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 38100
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
              DataField = 'COD_PUB'
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
              DataField = 'DES_PUB'
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
              mmWidth = 172773
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
            BreakName = 'COD_AUT'
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
                Caption = 'Pubblicazioni'
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
                Caption = 'Titolo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4233
                mmLeft = 16404
                mmTop = 7408
                mmWidth = 172773
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
          object raCodeModule1: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {00}
    end
  end
  object plDetAutPub: TppBDEPipeline
    DataSource = dmEdAutore.dsDetAutPub
    SkipWhenNoRecords = False
    UserName = 'plDetAutPub'
    Left = 72
    Top = 40
  end
end
