inherited fmEdUsr: TfmEdUsr
  Left = 489
  Top = 168
  Width = 500
  Height = 452
  Caption = 'Utente'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deCodUsr
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTools: TPanel
    Top = 357
    Width = 484
    inherited bbCommit: TBitBtn
      Left = 130
    end
    inherited bbRollBack: TBitBtn
      Left = 219
    end
    inherited bbPrior: TBitBtn
      Left = 43
    end
    inherited bbNext: TBitBtn
      Left = 308
    end
    inherited bbPrint: TBitBtn
      Left = 395
    end
  end
  object pcUsr: TPageControl [1]
    Left = 0
    Top = 0
    Width = 484
    Height = 357
    ActivePage = teUsr
    Align = alClient
    TabOrder = 1
    OnChange = pcUsrChange
    OnChanging = pcUsrChanging
    object teUsr: TTabSheet
      Caption = 'Utente'
      DesignSize = (
        476
        329)
      object laCodApl: TLabel
        Left = 4
        Top = 9
        Width = 106
        Height = 20
        Caption = 'USERNAME:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laDesApl: TLabel
        Left = 4
        Top = 73
        Width = 116
        Height = 20
        Caption = 'NOMINATIVO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object laDbsNom: TLabel
        Left = 4
        Top = 105
        Width = 41
        Height = 20
        Caption = 'TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 4
        Top = 41
        Width = 108
        Height = 20
        Caption = 'PASSWORD:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object deCodPwd: TDBEdit
        Left = 138
        Top = 41
        Width = 342
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'COD_PWD'
        DataSource = dmEdUsr.dsUsr
        TabOrder = 1
      end
      object cbFlgTipUsr: TDBLookupComboBox
        Left = 138
        Top = 105
        Width = 342
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'FLG_TIP_USR'
        DataSource = dmEdUsr.dsUsr
        KeyField = 'COD_VAL_FIL_SHR'
        ListField = 'DES_FIL_SHR'
        TabOrder = 3
      end
      object deDesUsr: TDBEdit
        Left = 138
        Top = 73
        Width = 342
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'DES_USR'
        DataSource = dmEdUsr.dsUsr
        TabOrder = 2
      end
      object deCodUsr: TDBEdit
        Left = 138
        Top = 9
        Width = 342
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'COD_USR'
        DataSource = dmEdUsr.dsUsr
        TabOrder = 0
      end
    end
    object teUsrAplTrz: TTabSheet
      Caption = 'Abilitazioni'
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 0
        Top = 105
        Width = 476
        Height = 5
        Cursor = crVSplit
        Align = alTop
      end
      object grUsrApl: TDBGridAux
        Left = 0
        Top = 0
        Width = 476
        Height = 105
        OptionsEx = [dgeStretch]
        Align = alTop
        DataSource = dmEdUsr.dsUsrApl
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DES_APL'
            Width = 343
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FLG_ATV'
            Width = 135
            Visible = True
            CustomControl = ckFlgAtv
          end>
      end
      object grUsrAplTrz: TDBGridAux
        Left = 0
        Top = 110
        Width = 476
        Height = 219
        OptionsEx = [dgeStretch]
        Align = alClient
        DataSource = dmEdUsr.dsUsrAplTrz
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DES_TRZ'
            Width = 221
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FLG_ABL'
            Width = 43
            Visible = True
            CustomControl = ckFlgAbl
          end
          item
            Expanded = False
            FieldName = 'FLG_IRT'
            Width = 35
            Visible = True
            CustomControl = ckFlgIrt
          end
          item
            Expanded = False
            FieldName = 'FLG_UPD'
            Width = 43
            Visible = True
            CustomControl = ckFlgUpd
          end
          item
            Expanded = False
            FieldName = 'FLG_DEL'
            Width = 43
            Visible = True
            CustomControl = ckFlgDel
          end
          item
            Expanded = False
            FieldName = 'FLG_VIS'
            Width = 43
            Visible = True
            CustomControl = ckFlgVis
          end
          item
            Expanded = False
            FieldName = 'FLG_PRT'
            Width = 44
            Visible = True
            CustomControl = ckFlgPrt
          end>
      end
      object ckFlgAtv: TDBCheckBox
        Left = 8
        Top = 40
        Width = 60
        Height = 18
        Color = clBtnFace
        Ctl3D = True
        DataField = 'FLG_ATV'
        DataSource = dmEdUsr.dsUsrApl
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
        Visible = False
      end
      object ckFlgAbl: TDBCheckBox
        Left = 8
        Top = 160
        Width = 60
        Height = 18
        Color = clBtnFace
        Ctl3D = True
        DataField = 'FLG_ABL'
        DataSource = dmEdUsr.dsUsrAplTrz
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
        Visible = False
      end
      object ckFlgIrt: TDBCheckBox
        Left = 8
        Top = 200
        Width = 60
        Height = 18
        Color = clBtnFace
        Ctl3D = True
        DataField = 'FLG_IRT'
        DataSource = dmEdUsr.dsUsrAplTrz
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 4
        ValueChecked = '1'
        ValueUnchecked = '0'
        Visible = False
      end
      object ckFlgUpd: TDBCheckBox
        Left = 8
        Top = 232
        Width = 60
        Height = 18
        Color = clBtnFace
        Ctl3D = True
        DataField = 'FLG_UPD'
        DataSource = dmEdUsr.dsUsrAplTrz
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
        Visible = False
      end
      object ckFlgDel: TDBCheckBox
        Left = 72
        Top = 160
        Width = 60
        Height = 18
        Color = clBtnFace
        Ctl3D = True
        DataField = 'FLG_DEL'
        DataSource = dmEdUsr.dsUsrAplTrz
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 6
        ValueChecked = '1'
        ValueUnchecked = '0'
        Visible = False
      end
      object ckFlgVis: TDBCheckBox
        Left = 72
        Top = 200
        Width = 60
        Height = 18
        Color = clBtnFace
        Ctl3D = True
        DataField = 'FLG_VIS'
        DataSource = dmEdUsr.dsUsrAplTrz
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 7
        ValueChecked = '1'
        ValueUnchecked = '0'
        Visible = False
      end
      object ckFlgPrt: TDBCheckBox
        Left = 72
        Top = 232
        Width = 60
        Height = 18
        Color = clBtnFace
        Ctl3D = True
        DataField = 'FLG_PRT'
        DataSource = dmEdUsr.dsUsrAplTrz
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 8
        ValueChecked = '1'
        ValueUnchecked = '0'
        Visible = False
      end
    end
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
