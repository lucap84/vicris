inherited fmEdCliente: TfmEdCliente
  Left = 316
  Top = 146
  Width = 760
  Height = 610
  ActiveControl = deNome
  Caption = 'Cliente'
  Constraints.MinHeight = 610
  Constraints.MinWidth = 760
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deNome
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTools: TPanel
    Top = 514
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
  object pcCliente: TPageControl [1]
    Left = 0
    Top = 0
    Width = 744
    Height = 514
    ActivePage = teCliente
    Align = alClient
    TabOrder = 1
    object teCliente: TTabSheet
      Caption = 'Cliente'
      DesignSize = (
        736
        486)
      object laNome: TLabel
        Left = 8
        Top = 10
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
      object laReferente: TLabel
        Left = 8
        Top = 40
        Width = 113
        Height = 20
        Caption = 'REFERENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laIndirizzo: TLabel
        Left = 8
        Top = 70
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
      object laSpedizione: TLabel
        Left = 8
        Top = 130
        Width = 114
        Height = 20
        Caption = 'SPEDIZIONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laCitta: TLabel
        Left = 8
        Top = 220
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
        Top = 220
        Width = 56
        Height = 20
        Caption = 'C.A.P.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laProvincia: TLabel
        Left = 584
        Top = 220
        Width = 60
        Height = 20
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
        Top = 250
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
        Top = 250
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
        Top = 280
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
        Top = 310
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
        Top = 310
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
        Top = 340
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
        Top = 340
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
        Top = 370
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
        Top = 400
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
        Top = 400
        Width = 42
        Height = 20
        Anchors = [akTop]
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
        Top = 400
        Width = 48
        Height = 20
        Anchors = [akTop]
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
        Top = 430
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
      object laLocalita: TLabel
        Left = 8
        Top = 190
        Width = 95
        Height = 20
        Caption = 'LOCALITA'#39':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object deNome: TDBEdit
        Left = 128
        Top = 8
        Width = 608
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NOME'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object deReferente: TDBEdit
        Left = 128
        Top = 38
        Width = 608
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        DataField = 'REFERENTE'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object deIndirizzo: TDBMemo
        Left = 128
        Top = 68
        Width = 608
        Height = 58
        Anchors = [akLeft, akTop, akRight]
        DataField = 'INDIRIZZO'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object deSpedizione: TDBMemo
        Left = 128
        Top = 128
        Width = 608
        Height = 58
        Anchors = [akLeft, akTop, akRight]
        DataField = 'INDIRIZZO_SPEDIZIONE'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object deBanca: TDBEdit
        Left = 128
        Top = 368
        Width = 608
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        DataField = 'BANCA'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object deNote: TDBMemo
        Left = 128
        Top = 428
        Width = 608
        Height = 58
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataField = 'NOTE'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
      end
      object DBEdit1: TDBEdit
        Left = 128
        Top = 218
        Width = 273
        Height = 28
        DataField = 'CITTA'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit2: TDBEdit
        Left = 472
        Top = 218
        Width = 89
        Height = 28
        DataField = 'CAP'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit4: TDBEdit
        Left = 128
        Top = 248
        Width = 200
        Height = 28
        DataField = 'TELEFONO'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit5: TDBEdit
        Left = 536
        Top = 248
        Width = 200
        Height = 28
        Anchors = [akTop]
        DataField = 'CELLULARE'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit6: TDBEdit
        Left = 128
        Top = 278
        Width = 200
        Height = 28
        DataField = 'FAX'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit7: TDBEdit
        Left = 128
        Top = 308
        Width = 273
        Height = 28
        DataField = 'MAIL'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit8: TDBEdit
        Left = 463
        Top = 308
        Width = 273
        Height = 28
        Anchors = [akTop]
        DataField = 'SITO'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit9: TDBEdit
        Left = 128
        Top = 338
        Width = 273
        Height = 28
        DataField = 'PARTITA_IVA'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit10: TDBEdit
        Left = 463
        Top = 338
        Width = 273
        Height = 28
        Anchors = [akTop]
        DataField = 'CODICE_FISCALE'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit11: TDBEdit
        Left = 128
        Top = 398
        Width = 89
        Height = 28
        DataField = 'CODICE_ABI'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
      object DBEdit12: TDBEdit
        Left = 312
        Top = 398
        Width = 89
        Height = 28
        Anchors = [akTop]
        DataField = 'CODICE_CAB'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
      end
      object DBEdit13: TDBEdit
        Left = 463
        Top = 398
        Width = 273
        Height = 28
        Anchors = [akTop]
        DataField = 'IBAN'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
      end
      object deLocalita: TDBSearch
        Tag = 1002
        Left = 128
        Top = 188
        Width = 89
        Height = 28
        Color = clYellow
        DataField = 'ID_LOCALITA'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        hCmpDes = deDesLocalita
      end
      object deDesLocalita: TEdit
        Left = 219
        Top = 188
        Width = 517
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        Text = 'deDesLocalita'
      end
      object deProvincia: TDBSearch
        Tag = 1006
        Left = 647
        Top = 218
        Width = 89
        Height = 28
        Color = clYellow
        DataField = 'ID_PROVINCIA'
        DataSource = dmEdCliente.dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
        hCmpDes = deDesLocalita
      end
    end
    object teCommenti: TTabSheet
      Caption = 'Commenti'
      ImageIndex = 1
      object DBGridAux1: TDBGridAux
        Left = 0
        Top = 0
        Width = 736
        Height = 486
        Align = alClient
        DataSource = dmEdCliente.dsCommenti
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA_COMMENTO'
            Width = 112
            Visible = True
            CustomControl = dtDataCommento
          end
          item
            Expanded = False
            FieldName = 'COMMENTO'
            Width = 24004
            Visible = True
          end>
      end
      object dtDataCommento: TDBEditDateTimePicker
        Left = 16
        Top = 64
        Width = 186
        Height = 28
        Date = 42981.665399293980000000
        Time = 42981.665399293980000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        DataField = 'DATA_COMMENTO'
        DataSource = dmEdCliente.dsCommenti
        ReadOnly = False
        DefaultEditMask = '!99/99/9999;1;_'
        AutoApplyEditMask = True
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
    DataSource = dmEdCliente.dsCliente
    Left = 592
    Top = 440
    object plEditppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_CLIENTE'
      FieldName = 'ID_CLIENTE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object plEditppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_CLIENTE_OLD'
      FieldName = 'ID_CLIENTE_OLD'
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
