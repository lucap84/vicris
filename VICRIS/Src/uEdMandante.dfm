inherited fmEdMandante: TfmEdMandante
  Left = 589
  Top = 229
  Width = 760
  Height = 570
  ActiveControl = deMandante
  Caption = 'Mandante'
  Constraints.MinHeight = 570
  Constraints.MinWidth = 760
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deMandante
  hReport = rpEdit
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTools: TPanel
    Top = 474
    Width = 744
    inherited bbCommit: TBitBtn
      Left = 250
    end
    inherited bbRollBack: TBitBtn
      Left = 355
    end
    inherited bbPrior: TBitBtn
      Left = 145
    end
    inherited bbNext: TBitBtn
      Left = 459
    end
    inherited bbPrint: TBitBtn
      Left = 564
    end
  end
  object pcMandante: TPageControl [1]
    Left = 0
    Top = 0
    Width = 744
    Height = 474
    ActivePage = teMandante
    Align = alClient
    TabOrder = 1
    object teMandante: TTabSheet
      Caption = 'Mandante'
      DesignSize = (
        736
        446)
      object laNome: TLabel
        Left = 8
        Top = 10
        Width = 103
        Height = 20
        Caption = 'MANDANTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laIndirizzo: TLabel
        Left = 8
        Top = 40
        Width = 97
        Height = 20
        Caption = 'INDIRIZZO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laCitta: TLabel
        Left = 8
        Top = 100
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
      object laCap: TLabel
        Left = 413
        Top = 100
        Width = 56
        Height = 20
        Anchors = [akTop]
        Caption = 'C.A.P.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laProvincia: TLabel
        Left = 558
        Top = 100
        Width = 60
        Height = 20
        Anchors = [akTop]
        Caption = 'PROV.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laTelefono: TLabel
        Left = 8
        Top = 130
        Width = 99
        Height = 20
        Caption = 'TELEFONO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laCellulare: TLabel
        Left = 423
        Top = 160
        Width = 110
        Height = 20
        Anchors = [akTop]
        Caption = 'CELLULARE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laFax: TLabel
        Left = 8
        Top = 160
        Width = 41
        Height = 20
        Caption = 'FAX:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laMail: TLabel
        Left = 8
        Top = 190
        Width = 48
        Height = 20
        Caption = 'MAIL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laSito: TLabel
        Left = 413
        Top = 190
        Width = 47
        Height = 20
        Anchors = [akTop]
        Caption = 'SITO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laPartitaIva: TLabel
        Left = 8
        Top = 220
        Width = 52
        Height = 20
        Caption = 'P.IVA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laCodiceFiscale: TLabel
        Left = 421
        Top = 220
        Width = 39
        Height = 20
        Anchors = [akTop]
        Caption = 'C.F.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laBanca: TLabel
        Left = 8
        Top = 250
        Width = 66
        Height = 20
        Caption = 'BANCA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laAbi: TLabel
        Left = 8
        Top = 280
        Width = 36
        Height = 20
        Caption = 'ABI:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laCab: TLabel
        Left = 267
        Top = 280
        Width = 42
        Height = 20
        Caption = 'CAB:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laIban: TLabel
        Left = 412
        Top = 280
        Width = 48
        Height = 20
        Caption = 'IBAN:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laNote: TLabel
        Left = 8
        Top = 310
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
      object Label1: TLabel
        Left = 434
        Top = 130
        Width = 99
        Height = 20
        Anchors = [akTop]
        Caption = 'TELEFONO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object deMandante: TDBEdit
        Left = 128
        Top = 8
        Width = 608
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        DataField = 'MANDANTE'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object deIndirizzo: TDBMemo
        Left = 128
        Top = 38
        Width = 608
        Height = 58
        Anchors = [akLeft, akTop, akRight]
        DataField = 'INDIRIZZO'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object deBanca: TDBEdit
        Left = 128
        Top = 248
        Width = 608
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        DataField = 'BANCA'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object deNote: TDBMemo
        Left = 128
        Top = 308
        Width = 608
        Height = 88
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataField = 'NOTE'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
      end
      object deCitta: TDBEdit
        Left = 128
        Top = 98
        Width = 273
        Height = 28
        DataField = 'CITTA'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object deCap: TDBEdit
        Left = 472
        Top = 98
        Width = 60
        Height = 28
        Anchors = [akTop]
        DataField = 'CAP'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object deTelefono: TDBEdit
        Left = 128
        Top = 128
        Width = 200
        Height = 28
        DataField = 'TELEFONO_1'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object deCellulare: TDBEdit
        Left = 536
        Top = 158
        Width = 200
        Height = 28
        Anchors = [akTop]
        DataField = 'CELLULARE'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object deFax: TDBEdit
        Left = 128
        Top = 158
        Width = 200
        Height = 28
        DataField = 'FAX'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object deMail: TDBEdit
        Left = 128
        Top = 188
        Width = 273
        Height = 28
        DataField = 'MAIL'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object deSito: TDBEdit
        Left = 463
        Top = 188
        Width = 273
        Height = 28
        Anchors = [akTop]
        DataField = 'SITO'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object dePartitaIva: TDBEdit
        Left = 128
        Top = 218
        Width = 273
        Height = 28
        DataField = 'PARTITA_IVA'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object deCodiceFiscale: TDBEdit
        Left = 463
        Top = 218
        Width = 273
        Height = 28
        Anchors = [akTop]
        DataField = 'CODICE_FISCALE'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object deAbi: TDBEdit
        Left = 128
        Top = 278
        Width = 89
        Height = 28
        DataField = 'CODICE_ABI'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object deCab: TDBEdit
        Left = 312
        Top = 278
        Width = 89
        Height = 28
        DataField = 'CODICE_CAB'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
      object deIban: TDBEdit
        Left = 463
        Top = 278
        Width = 273
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        DataField = 'IBAN'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
      end
      object deTelefono2: TDBEdit
        Left = 536
        Top = 128
        Width = 200
        Height = 28
        Anchors = [akTop]
        DataField = 'TELEFONO_2'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object deProvincia: TDBSearch
        Tag = 1006
        Left = 621
        Top = 98
        Width = 40
        Height = 28
        Color = clYellow
        DataField = 'ID_PROVINCIA'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        hCmpDes = deDesProvincia
      end
      object deDesProvincia: TEdit
        Left = 664
        Top = 98
        Width = 72
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        Text = 'deDesProvincia'
      end
      object ckFlagActive: TDBCheckBox
        Left = 312
        Top = 403
        Width = 105
        Height = 33
        Alignment = taLeftJustify
        Anchors = [akLeft]
        Caption = 'STATO'
        Color = clBtnFace
        DataField = 'FLAG_ACTIVE'
        DataSource = dmEdMandante.dsMandante
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 19
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
  end
  inherited alEdit: TActionList
    Left = 520
    Top = 440
  end
  inherited pugr: TPopupMenu
    Left = 556
    Top = 440
  end
  inherited plEdit: TppBDEPipeline
    Left = 592
    Top = 440
    object plEditppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_MANDANTE'
      FieldName = 'ID_MANDANTE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object plEditppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_MANDANTE_OLD'
      FieldName = 'ID_MANDANTE_OLD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object plEditppField3: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 500
      DisplayWidth = 500
      Position = 2
    end
    object plEditppField4: TppField
      FieldAlias = 'REFERENTE'
      FieldName = 'REFERENTE'
      FieldLength = 100
      DisplayWidth = 100
      Position = 3
    end
    object plEditppField5: TppField
      FieldAlias = 'INDIRIZZO'
      FieldName = 'INDIRIZZO'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 4
    end
    object plEditppField6: TppField
      FieldAlias = 'INDIRIZZO_SPEDIZIONE'
      FieldName = 'INDIRIZZO_SPEDIZIONE'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 5
    end
    object plEditppField7: TppField
      FieldAlias = 'CITTA'
      FieldName = 'CITTA'
      FieldLength = 100
      DisplayWidth = 100
      Position = 6
    end
    object plEditppField8: TppField
      FieldAlias = 'CAP'
      FieldName = 'CAP'
      FieldLength = 5
      DisplayWidth = 5
      Position = 7
    end
    object plEditppField9: TppField
      FieldAlias = 'PROVINCIA'
      FieldName = 'PROVINCIA'
      FieldLength = 3
      DisplayWidth = 3
      Position = 8
    end
    object plEditppField10: TppField
      FieldAlias = 'TELEFONO'
      FieldName = 'TELEFONO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 9
    end
    object plEditppField11: TppField
      FieldAlias = 'CELLULARE'
      FieldName = 'CELLULARE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 10
    end
    object plEditppField12: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object plEditppField13: TppField
      FieldAlias = 'MAIL'
      FieldName = 'MAIL'
      FieldLength = 200
      DisplayWidth = 200
      Position = 12
    end
    object plEditppField14: TppField
      FieldAlias = 'SITO'
      FieldName = 'SITO'
      FieldLength = 2000
      DisplayWidth = 2000
      Position = 13
    end
    object plEditppField15: TppField
      FieldAlias = 'PARTITA_IVA'
      FieldName = 'PARTITA_IVA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object plEditppField16: TppField
      FieldAlias = 'CODICE_FISCALE'
      FieldName = 'CODICE_FISCALE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object plEditppField17: TppField
      FieldAlias = 'LOCALITA'
      FieldName = 'LOCALITA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object plEditppField18: TppField
      FieldAlias = 'BANCA'
      FieldName = 'BANCA'
      FieldLength = 1000
      DisplayWidth = 1000
      Position = 17
    end
    object plEditppField19: TppField
      FieldAlias = 'IBAN'
      FieldName = 'IBAN'
      FieldLength = 40
      DisplayWidth = 40
      Position = 18
    end
    object plEditppField20: TppField
      FieldAlias = 'CODICE_ABI'
      FieldName = 'CODICE_ABI'
      FieldLength = 7
      DisplayWidth = 7
      Position = 19
    end
    object plEditppField21: TppField
      FieldAlias = 'CODICE_CAB'
      FieldName = 'CODICE_CAB'
      FieldLength = 7
      DisplayWidth = 7
      Position = 20
    end
    object plEditppField22: TppField
      FieldAlias = 'NOTE'
      FieldName = 'NOTE'
      FieldLength = 4000
      DisplayWidth = 4000
      Position = 21
    end
    object plEditppField23: TppField
      FieldAlias = 'COD_USR'
      FieldName = 'COD_USR'
      FieldLength = 12
      DisplayWidth = 12
      Position = 22
    end
    object plEditppField24: TppField
      FieldAlias = 'DES_PDL'
      FieldName = 'DES_PDL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 23
    end
    object plEditppField25: TppField
      FieldAlias = 'DAT_AGG_REC'
      FieldName = 'DAT_AGG_REC'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 24
    end
  end
  inherited rpEdit: TppReport
    Left = 628
    Top = 440
    DataPipelineName = 'plEdit'
    inherited ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmHeight = 19315
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
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {00}
    end
  end
end
