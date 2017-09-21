inherited fmBrAnalisi: TfmBrAnalisi
  Left = 419
  Top = 258
  Caption = 'fmBrAnalisi'
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    Left = 249
    Width = 478
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 249
    Height = 501
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 2
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
