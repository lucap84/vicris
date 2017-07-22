inherited fmBrUbi: TfmBrUbi
  Left = 469
  Top = 160
  Caption = 'Ubicazioni'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrUbi.dsUbi
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_UBI'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_UBI'
        Width = 600
        Visible = True
      end>
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
