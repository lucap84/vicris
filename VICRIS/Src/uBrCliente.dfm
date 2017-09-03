inherited fmBrCliente: TfmBrCliente
  Left = 514
  Top = 263
  Width = 785
  Caption = 'Clienti'
  Constraints.MinHeight = 0
  Constraints.MinWidth = 0
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = grBrowse
  hReport = rpBrowse
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTools: TPanel
    Width = 769
  end
  inherited grBrowse: TDBGridAux
    Width = 769
    DataSource = dmBrCliente.dsCliente
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Width = 0
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 134
        Visible = True
        SortOrder = soAsc
      end
      item
        Expanded = False
        FieldName = 'REFERENTE'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INDIRIZZO'
        Width = 537
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CITTA'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAP'
        Width = 1
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROVINCIA'
        Width = 1
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARTITA_IVA'
        Width = 5
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODICE_FISCALE'
        Width = 5
        Visible = True
      end>
  end
  inherited plBrowse: TppBDEPipeline
    DataSource = dmBrCliente.dsCliente
    object plBrowseppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_CLIENTE'
      FieldName = 'ID_CLIENTE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object plBrowseppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_CLIENTE_OLD'
      FieldName = 'ID_CLIENTE_OLD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object plBrowseppField3: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 500
      DisplayWidth = 500
      Position = 2
    end
    object plBrowseppField4: TppField
      FieldAlias = 'REFERENTE'
      FieldName = 'REFERENTE'
      FieldLength = 100
      DisplayWidth = 100
      Position = 3
    end
    object plBrowseppField5: TppField
      FieldAlias = 'INDIRIZZO'
      FieldName = 'INDIRIZZO'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 4
    end
    object plBrowseppField6: TppField
      FieldAlias = 'INDIRIZZO_SPEDIZIONE'
      FieldName = 'INDIRIZZO_SPEDIZIONE'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 5
    end
    object plBrowseppField7: TppField
      FieldAlias = 'CITTA'
      FieldName = 'CITTA'
      FieldLength = 100
      DisplayWidth = 100
      Position = 6
    end
    object plBrowseppField8: TppField
      FieldAlias = 'CAP'
      FieldName = 'CAP'
      FieldLength = 5
      DisplayWidth = 5
      Position = 7
    end
    object plBrowseppField9: TppField
      FieldAlias = 'PROVINCIA'
      FieldName = 'PROVINCIA'
      FieldLength = 3
      DisplayWidth = 3
      Position = 8
    end
    object plBrowseppField10: TppField
      FieldAlias = 'TELEFONO'
      FieldName = 'TELEFONO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 9
    end
    object plBrowseppField11: TppField
      FieldAlias = 'CELLULARE'
      FieldName = 'CELLULARE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 10
    end
    object plBrowseppField12: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object plBrowseppField13: TppField
      FieldAlias = 'MAIL'
      FieldName = 'MAIL'
      FieldLength = 200
      DisplayWidth = 200
      Position = 12
    end
    object plBrowseppField14: TppField
      FieldAlias = 'SITO'
      FieldName = 'SITO'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 13
    end
    object plBrowseppField15: TppField
      FieldAlias = 'PARTITA_IVA'
      FieldName = 'PARTITA_IVA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object plBrowseppField16: TppField
      FieldAlias = 'CODICE_FISCALE'
      FieldName = 'CODICE_FISCALE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object plBrowseppField17: TppField
      FieldAlias = 'LOCALITA'
      FieldName = 'LOCALITA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object plBrowseppField18: TppField
      FieldAlias = 'BANCA'
      FieldName = 'BANCA'
      FieldLength = 1000
      DisplayWidth = 1000
      Position = 17
    end
    object plBrowseppField19: TppField
      FieldAlias = 'IBAN'
      FieldName = 'IBAN'
      FieldLength = 40
      DisplayWidth = 40
      Position = 18
    end
    object plBrowseppField20: TppField
      FieldAlias = 'CODICE_ABI'
      FieldName = 'CODICE_ABI'
      FieldLength = 7
      DisplayWidth = 7
      Position = 19
    end
    object plBrowseppField21: TppField
      FieldAlias = 'CODICE_CAB'
      FieldName = 'CODICE_CAB'
      FieldLength = 7
      DisplayWidth = 7
      Position = 20
    end
    object plBrowseppField22: TppField
      FieldAlias = 'NOTE'
      FieldName = 'NOTE'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 21
    end
    object plBrowseppField23: TppField
      FieldAlias = 'COD_USR'
      FieldName = 'COD_USR'
      FieldLength = 12
      DisplayWidth = 12
      Position = 22
    end
    object plBrowseppField24: TppField
      FieldAlias = 'DES_PDL'
      FieldName = 'DES_PDL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 23
    end
    object plBrowseppField25: TppField
      FieldAlias = 'DAT_AGG_REC'
      FieldName = 'DAT_AGG_REC'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 24
    end
  end
  inherited rpBrowse: TppReport
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.mmPaperHeight = 210080
    PrinterSetup.mmPaperWidth = 297128
    DataPipelineName = 'plBrowse'
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 20108
      inherited pplaTitle: TppLabel
        mmHeight = 8996
        mmLeft = 1588
        mmWidth = 274373
      end
      inherited ppLine1: TppLine
        mmHeight = 2381
        mmWidth = 275961
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 13224393
        mmHeight = 6085
        mmLeft = 529
        mmTop = 14023
        mmWidth = 275961
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Id'
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
        Caption = 'Ragione Sociale'
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
        Caption = 'Referente'
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
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Indirizzo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 189971
        mmTop = 14552
        mmWidth = 85990
        BandType = 0
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 5292
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ID_CLIENTE'
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
        DataField = 'NOME'
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
        DataField = 'REFERENTE'
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
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'INDIRIZZO'
        DataPipeline = plBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plBrowse'
        mmHeight = 4763
        mmLeft = 189971
        mmTop = 265
        mmWidth = 85990
        BandType = 4
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited svPageNo: TppSystemVariable
        mmHeight = 4763
        mmLeft = 255588
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
        mmWidth = 275961
      end
    end
  end
end
