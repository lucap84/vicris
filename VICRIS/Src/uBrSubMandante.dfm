inherited fmBrSubMandante: TfmBrSubMandante
  Left = 348
  Top = 205
  Caption = 'Submandanti'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrSubMandante.dsSubMandante
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_SUBMANDANTE'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUBMANDANTE'
        Width = 4504
        Visible = True
      end>
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
