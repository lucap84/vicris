inherited fmBrPromotore: TfmBrPromotore
  Caption = 'Istituzioni'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hReport = rpBrowse
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrPromotore.dsPromotore
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_PMR'
        Width = 179
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_PMR'
        Width = 549
        Visible = True
      end>
  end
  inherited plBrowse: TppBDEPipeline
    DataSource = dmBrPromotore.dsPromotore
    object plBrowseppField1: TppField
      FieldAlias = 'COD_PMR'
      FieldName = 'COD_PMR'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plBrowseppField2: TppField
      FieldAlias = 'DES_PMR'
      FieldName = 'DES_PMR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object plBrowseppField3: TppField
      FieldAlias = 'DES_PDL'
      FieldName = 'DES_PDL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object plBrowseppField4: TppField
      FieldAlias = 'DAT_AGG_REC'
      FieldName = 'DAT_AGG_REC'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
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
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Descrizione'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 20373
        mmTop = 14552
        mmWidth = 168805
        BandType = 0
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 5821
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'COD_PMR'
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
        DataField = 'DES_PMR'
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
        mmWidth = 168805
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
        mmWidth = 11377
        BandType = 9
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 239713
        mmLeft = 19844
        mmTop = 20108
        mmWidth = 11377
        BandType = 9
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 239713
        mmLeft = 178330
        mmTop = 20108
        mmWidth = 11377
        BandType = 9
      end
    end
  end
end
