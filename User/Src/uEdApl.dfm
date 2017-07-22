inherited fmEdApl: TfmEdApl
  Width = 453
  Height = 304
  ActiveControl = deCodApl
  Caption = 'Applicazione'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  hFirstActiveControl = deCodApl
  PixelsPerInch = 96
  TextHeight = 13
  object laCodApl: TLabel [0]
    Left = 8
    Top = 22
    Width = 74
    Height = 20
    Caption = 'CODICE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laDesApl: TLabel [1]
    Left = 8
    Top = 54
    Width = 128
    Height = 20
    Caption = 'DESCRIZIONE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laDbsNom: TLabel [2]
    Left = 8
    Top = 86
    Width = 87
    Height = 20
    Caption = 'NOME DB:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laDbsUsr: TLabel [3]
    Left = 8
    Top = 118
    Width = 86
    Height = 20
    Caption = 'USER DB:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laDbsPwd: TLabel [4]
    Left = 8
    Top = 150
    Width = 83
    Height = 20
    Caption = 'PASS DB:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object laFlgTipUsr: TLabel [5]
    Left = 8
    Top = 182
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
  inherited pnTools: TPanel
    Top = 220
    Width = 445
    TabOrder = 6
    inherited bbCommit: TBitBtn
      Left = 114
    end
    inherited bbRollBack: TBitBtn
      Left = 194
    end
    inherited bbPrior: TBitBtn
      Left = 33
    end
    inherited bbNext: TBitBtn
      Left = 274
    end
    inherited bbPrint: TBitBtn
      Left = 354
    end
  end
  object deCodApl: TDBEdit [7]
    Left = 144
    Top = 22
    Width = 296
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'COD_APL'
    DataSource = dmEdApl.dsApl
    TabOrder = 0
  end
  object deDesApl: TDBEdit [8]
    Left = 144
    Top = 54
    Width = 296
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'DES_APL'
    DataSource = dmEdApl.dsApl
    TabOrder = 1
  end
  object deDbsNom: TDBEdit [9]
    Left = 144
    Top = 86
    Width = 296
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'DBS_NOM'
    DataSource = dmEdApl.dsApl
    TabOrder = 2
  end
  object deDbsUsr: TDBEdit [10]
    Left = 144
    Top = 118
    Width = 296
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'DBS_USR'
    DataSource = dmEdApl.dsApl
    TabOrder = 3
  end
  object deDbsPwd: TDBEdit [11]
    Left = 144
    Top = 150
    Width = 296
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'DBS_PWD'
    DataSource = dmEdApl.dsApl
    TabOrder = 4
  end
  object cbFlgTipUsr: TDBLookupComboBox [12]
    Left = 144
    Top = 185
    Width = 296
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'FLG_TIP_USR'
    DataSource = dmEdApl.dsApl
    KeyField = 'COD_VAL_FIL_SHR'
    ListField = 'DES_FIL_SHR'
    TabOrder = 5
  end
  inherited rpEdit: TppReport
    DataPipelineName = 'plEdit'
  end
end
