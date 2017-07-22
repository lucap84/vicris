inherited fmBrApl: TfmBrApl
  Caption = 'Applicazioni'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrApl.dsApl
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_APL'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_APL'
        Width = 627
        Visible = True
      end>
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
