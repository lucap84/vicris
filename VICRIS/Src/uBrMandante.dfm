inherited fmBrMandante: TfmBrMandante
  Left = 624
  Top = 262
  Width = 1132
  Caption = 'Mandanti'
  Constraints.MinHeight = 0
  Constraints.MinWidth = 0
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hReport = rpBrowse
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTools: TPanel
    Width = 1116
  end
  inherited pnBackBrowse: TPanel
    Width = 1116
    inherited grBrowse: TDBGridAux
      Width = 1116
      DataSource = dmBrMandante.dsMandante
    end
  end
  inherited plBrowse: TppBDEPipeline
    DataSource = dmBrMandante.dsMandante
    object plBrowseppField1: TppField
      FieldAlias = 'ID_MANDANTE'
      FieldName = 'ID_MANDANTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plBrowseppField2: TppField
      FieldAlias = 'MANDANTE'
      FieldName = 'MANDANTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plBrowseppField3: TppField
      FieldAlias = 'INDIRIZZO'
      FieldName = 'INDIRIZZO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plBrowseppField4: TppField
      FieldAlias = 'CITTA'
      FieldName = 'CITTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plBrowseppField5: TppField
      FieldAlias = 'CAP'
      FieldName = 'CAP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plBrowseppField6: TppField
      FieldAlias = 'CELLULARE'
      FieldName = 'CELLULARE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plBrowseppField7: TppField
      FieldAlias = 'TELEFONO_1'
      FieldName = 'TELEFONO_1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plBrowseppField8: TppField
      FieldAlias = 'TELEFONO_2'
      FieldName = 'TELEFONO_2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plBrowseppField9: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plBrowseppField10: TppField
      FieldAlias = 'MAIL'
      FieldName = 'MAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plBrowseppField11: TppField
      FieldAlias = 'SITO'
      FieldName = 'SITO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plBrowseppField12: TppField
      FieldAlias = 'PARTITA_IVA'
      FieldName = 'PARTITA_IVA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object plBrowseppField13: TppField
      FieldAlias = 'CODICE_FISCALE'
      FieldName = 'CODICE_FISCALE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object plBrowseppField14: TppField
      FieldAlias = 'NOTE'
      FieldName = 'NOTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object plBrowseppField15: TppField
      FieldAlias = 'IBAN'
      FieldName = 'IBAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object plBrowseppField16: TppField
      FieldAlias = 'CODICE_ABI'
      FieldName = 'CODICE_ABI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object plBrowseppField17: TppField
      FieldAlias = 'CODICE_CAB'
      FieldName = 'CODICE_CAB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object plBrowseppField18: TppField
      FieldAlias = 'CONTO_CORRENTE'
      FieldName = 'CONTO_CORRENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object plBrowseppField19: TppField
      FieldAlias = 'COD_USR'
      FieldName = 'COD_USR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object plBrowseppField20: TppField
      FieldAlias = 'DES_PDL'
      FieldName = 'DES_PDL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object plBrowseppField21: TppField
      FieldAlias = 'DAT_AGG_REC'
      FieldName = 'DAT_AGG_REC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object plBrowseppField22: TppField
      FieldAlias = 'BANCA'
      FieldName = 'BANCA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object plBrowseppField23: TppField
      FieldAlias = 'ID_PROVINCIA'
      FieldName = 'ID_PROVINCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object plBrowseppField24: TppField
      FieldAlias = 'PROVINCIA'
      FieldName = 'PROVINCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object plBrowseppField25: TppField
      FieldAlias = 'FLAG_ACTIVE'
      FieldName = 'FLAG_ACTIVE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
  end
  inherited rpBrowse: TppReport
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.mmPaperHeight = 210080
    PrinterSetup.mmPaperWidth = 297128
    DataPipelineName = 'plBrowse'
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 18521
      inherited pplaTitle: TppLabel
        mmHeight = 8996
        mmWidth = 275432
      end
      inherited imgTitle: TppImage [1]
        mmLeft = 233892
      end
      inherited ppLine1: TppLine [2]
        ParentWidth = True
        mmLeft = 0
        mmWidth = 277128
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 13224393
        mmHeight = 4498
        mmLeft = 529
        mmTop = 14023
        mmWidth = 275961
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 1058
        mmTop = 14552
        mmWidth = 52917
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Indirizzo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 113242
        mmTop = 14552
        mmWidth = 55033
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Citt'#224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 80698
        mmTop = 14552
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Telefono'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 169069
        mmTop = 14552
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Cellulare'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 205052
        mmTop = 14552
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 223044
        mmTop = 14552
        mmWidth = 52917
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'P.Iva'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 54769
        mmTop = 14552
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Telefono'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 187061
        mmTop = 14552
        mmWidth = 17198
        BandType = 0
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 3440
      object ppDBText2: TppDBText
        UserName = 'DBText2'
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
        mmLeft = 1058
        mmTop = 265
        mmWidth = 52917
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'PARTITA_IVA'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3175
        mmLeft = 54769
        mmTop = 265
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CITTA'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3175
        mmLeft = 80698
        mmTop = 265
        mmWidth = 31750
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'INDIRIZZO'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3175
        mmLeft = 113242
        mmTop = 265
        mmWidth = 55033
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'TELEFONO_1'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3175
        mmLeft = 169069
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CELLULARE'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3175
        mmLeft = 205052
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'MAIL'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3175
        mmLeft = 223044
        mmTop = 265
        mmWidth = 52917
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'TELEFONO_2'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 3175
        mmLeft = 187061
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited svPageNo: TppSystemVariable
        mmHeight = 4763
        mmLeft = 255059
      end
      inherited pplaDateSlash: TppLabel
        mmLeft = 263790
      end
      inherited svPageCount: TppSystemVariable
        mmLeft = 268023
      end
      inherited laPag: TppLabel
        mmHeight = 4763
        mmLeft = 240507
        mmWidth = 14288
      end
      inherited ppLine2: TppLine
        ParentWidth = True
        mmLeft = 0
        mmWidth = 277128
      end
    end
  end
end
