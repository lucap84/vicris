inherited fmEdPersona: TfmEdPersona
  Left = 356
  Top = 212
  Width = 670
  Height = 400
  Caption = 'Persona'
  Constraints.MaxWidth = 670
  Constraints.MinHeight = 400
  Constraints.MinWidth = 670
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deDesNom
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTools: TPanel
    Top = 316
    Width = 662
    inherited bbCommit: TBitBtn
      Left = 151
    end
    inherited bbRollBack: TBitBtn
      Left = 270
    end
    inherited bbPrior: TBitBtn
      Left = 32
    end
    inherited bbNext: TBitBtn
      Left = 389
    end
    inherited bbPrint: TBitBtn
      Left = 508
    end
  end
  object pcPer: TPageControl [1]
    Left = 0
    Top = 0
    Width = 662
    Height = 316
    ActivePage = tePer
    Align = alClient
    TabOrder = 1
    object tePer: TTabSheet
      Caption = 'Persona'
      object laNumTel: TLabel
        Left = 8
        Top = 104
        Width = 92
        Height = 20
        Caption = 'TELEFONI:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laNumCelFax: TLabel
        Left = 8
        Top = 136
        Width = 123
        Height = 20
        Caption = 'MOBILE \ FAX:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laNaz: TLabel
        Left = 8
        Top = 200
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
      object laFlgTit: TLabel
        Left = 8
        Top = 72
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
      object laDesInd: TLabel
        Left = 8
        Top = 260
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
      object laDesCog: TLabel
        Left = 8
        Top = 40
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
      object laCta: TLabel
        Left = 8
        Top = 232
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
      object laDesEml: TLabel
        Left = 8
        Top = 168
        Width = 60
        Height = 20
        Caption = 'EMAIL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbFlgTit: TDBLookupComboBox
        Left = 168
        Top = 72
        Width = 145
        Height = 21
        DataField = 'FLG_TIT'
        DataSource = dmEdPersona.dsPersona
        KeyField = 'COD_VAL_FIL_SHR'
        ListField = 'DES_FIL_SHR'
        TabOrder = 2
      end
      object deNumTel2: TDBEdit
        Left = 450
        Top = 104
        Width = 200
        Height = 21
        DataField = 'NUM_TEL_2'
        DataSource = dmEdPersona.dsPersona
        TabOrder = 4
      end
      object deNumTel1: TDBEdit
        Left = 168
        Top = 104
        Width = 200
        Height = 21
        DataField = 'NUM_TEL_1'
        DataSource = dmEdPersona.dsPersona
        TabOrder = 3
      end
      object deNumFax: TDBEdit
        Left = 450
        Top = 136
        Width = 200
        Height = 21
        DataField = 'NUM_FAX'
        DataSource = dmEdPersona.dsPersona
        TabOrder = 6
      end
      object deNumCel: TDBEdit
        Left = 168
        Top = 136
        Width = 200
        Height = 21
        DataField = 'NUM_CEL'
        DataSource = dmEdPersona.dsPersona
        TabOrder = 5
      end
      object deDesNom: TDBEdit
        Left = 168
        Top = 8
        Width = 482
        Height = 21
        DataField = 'DES_NOM'
        DataSource = dmEdPersona.dsPersona
        TabOrder = 0
      end
      object deDesNaz: TEdit
        Left = 256
        Top = 200
        Width = 393
        Height = 21
        ReadOnly = True
        TabOrder = 9
      end
      object deDesInd: TDBEdit
        Left = 168
        Top = 259
        Width = 482
        Height = 21
        DataField = 'DES_IND'
        DataSource = dmEdPersona.dsPersona
        TabOrder = 12
      end
      object deDesCta: TEdit
        Left = 256
        Top = 232
        Width = 393
        Height = 21
        ReadOnly = True
        TabOrder = 11
      end
      object deDesCog: TDBEdit
        Left = 168
        Top = 40
        Width = 482
        Height = 21
        DataField = 'DES_COG'
        DataSource = dmEdPersona.dsPersona
        TabOrder = 1
      end
      object deCodNaz: TDBSearch
        Tag = 1001
        Left = 168
        Top = 200
        Width = 81
        Height = 21
        Color = clYellow
        DataField = 'COD_NAZ'
        DataSource = dmEdPersona.dsPersona
        TabOrder = 8
        hCmpDes = deDesNaz
      end
      object deCodCta: TDBSearch
        Tag = 1002
        Left = 168
        Top = 232
        Width = 81
        Height = 21
        Color = clYellow
        DataField = 'COD_CTA'
        DataSource = dmEdPersona.dsPersona
        TabOrder = 10
        hCmpDes = deDesCta
      end
      object deDesEml: TDBEdit
        Left = 168
        Top = 168
        Width = 482
        Height = 21
        DataField = 'DES_EML'
        DataSource = dmEdPersona.dsPersona
        TabOrder = 7
      end
    end
    object teRcr: TTabSheet
      Caption = 'Ricorrenze'
      ImageIndex = 1
      object pnBackTopRcr: TPanel
        Left = 0
        Top = 0
        Width = 654
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object laDatEvt: TLabel
          Left = 8
          Top = 40
          Width = 53
          Height = 20
          Caption = 'DATA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object laEvt: TLabel
          Left = 8
          Top = 8
          Width = 77
          Height = 20
          Caption = 'EVENTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object bbAddEvt: TBitBtn
          Left = 373
          Top = 40
          Width = 21
          Height = 21
          Action = acgrAddRcr
          TabOrder = 3
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
        object dtDatEvt: TDBEditDateTimePicker
          Left = 168
          Top = 40
          Width = 186
          Height = 21
          Date = 40934.956723993060000000
          Time = 40934.956723993060000000
          TabOrder = 2
          DataField = 'dat_evt'
          DataSource = dmEdPersona.dsPersona
          ReadOnly = False
          DefaultEditMask = '!99/99/9999;1;_'
          AutoApplyEditMask = True
        end
        object deCodEvt: TDBSearch
          Tag = 1011
          Left = 168
          Top = 8
          Width = 81
          Height = 21
          Color = clYellow
          DataField = 'cod_evt'
          DataSource = dmEdPersona.dsPersona
          TabOrder = 0
          hCmpDes = deDesEvt
        end
        object deDesEvt: TEdit
          Left = 256
          Top = 8
          Width = 393
          Height = 21
          ReadOnly = True
          TabOrder = 1
        end
      end
      object grDetAutPub: TDBGridAux
        Left = 0
        Top = 73
        Width = 654
        Height = 215
        OptionsEx = [dgeStretch]
        Align = alClient
        DataSource = dmEdPersona.dsRicorrenza
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = pugr
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'des_evt'
            Width = 401
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DAT_EVT'
            Width = 247
            Visible = True
          end>
      end
    end
  end
  inherited alEdit: TActionList
    object acgrAddRcr: TAction
      Category = 'grRecord'
      Hint = 'Inserisce una ricorrenza per questa persona'
      OnExecute = acgrAddRcrExecute
      OnUpdate = acgrAddRcrUpdate
    end
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
