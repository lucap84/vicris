inherited fmBrProdotto: TfmBrProdotto
  Left = 382
  Top = 192
  Caption = 'Prodotti'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hReport = rpBrowse
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrProdotto.dsProdotto
  end
  inherited plBrowse: TppBDEPipeline
    DataSource = dmBrProdotto.dsProdotto
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 20638
      object ppShape1: TppShape [2]
        UserName = 'Shape1'
        Brush.Color = 13224393
        ParentWidth = True
        mmHeight = 4498
        mmLeft = 0
        mmTop = 16140
        mmWidth = 190080
        BandType = 0
      end
      object ppLabel1: TppLabel [3]
        UserName = 'Label1'
        Caption = 'Prodotto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 16669
        mmWidth = 60854
        BandType = 0
      end
      object ppLabel2: TppLabel [4]
        UserName = 'Label2'
        Caption = 'Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 62177
        mmTop = 16669
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel3: TppLabel [5]
        UserName = 'Label3'
        Caption = 'Mandante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 96044
        mmTop = 16669
        mmWidth = 66146
        BandType = 0
      end
      object ppLabel4: TppLabel [6]
        UserName = 'Label4'
        Caption = 'U.M.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 162984
        mmTop = 16669
        mmWidth = 26458
        BandType = 0
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 4233
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'PRODOTTO'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3175
        mmLeft = 529
        mmTop = 529
        mmWidth = 60854
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CATEGORIA'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3175
        mmLeft = 62177
        mmTop = 529
        mmWidth = 33073
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'MANDANTE'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3175
        mmLeft = 96044
        mmTop = 529
        mmWidth = 66146
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'UNITA_MISURA'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3175
        mmLeft = 162984
        mmTop = 529
        mmWidth = 26458
        BandType = 4
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited pplaDateSlash: TppLabel [1]
      end
      inherited svPageCount: TppSystemVariable [2]
      end
      inherited laPag: TppLabel [3]
      end
      inherited ppLine2: TppLine [4]
      end
      inherited svPageNo: TppSystemVariable [5]
        mmLeft = 168275
      end
    end
  end
end
