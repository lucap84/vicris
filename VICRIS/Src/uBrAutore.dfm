inherited fmBrAutore: TfmBrAutore
  Caption = 'Autori'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hReport = rpBrowse
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrAutore.dsAutore
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_AUT'
        Title.Alignment = taCenter
        Width = 162
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_NOM'
        Title.Alignment = taCenter
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_COG'
        Title.Alignment = taCenter
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_NTE'
        Title.Alignment = taCenter
        Width = 256
        Visible = True
      end>
  end
  inherited plBrowse: TppBDEPipeline
    DataSource = dmBrAutore.dsAutore
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 20108
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 13224393
        mmHeight = 6085
        mmLeft = 529
        mmTop = 14023
        mmWidth = 189177
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Codice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 1058
        mmTop = 14552
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 20373
        mmTop = 14552
        mmWidth = 84138
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Cognome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 105304
        mmTop = 14552
        mmWidth = 83873
        BandType = 0
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 5821
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'COD_AUT'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 4763
        mmLeft = 1058
        mmTop = 529
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'DES_NOM'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 4763
        mmLeft = 20373
        mmTop = 529
        mmWidth = 84138
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'DES_COG'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 4763
        mmLeft = 105304
        mmTop = 529
        mmWidth = 83873
        BandType = 4
      end
    end
    object ppPageStyle1: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 266965
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 239713
        mmLeft = 529
        mmTop = 20108
        mmWidth = 10054
        BandType = 9
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 239713
        mmLeft = 19844
        mmTop = 20108
        mmWidth = 10054
        BandType = 9
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 239713
        mmLeft = 104775
        mmTop = 20108
        mmWidth = 10054
        BandType = 9
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 239713
        mmLeft = 179652
        mmTop = 20108
        mmWidth = 10054
        BandType = 9
      end
    end
  end
end
