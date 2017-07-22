inherited fmBrIncarico: TfmBrIncarico
  Caption = 'Incarichi'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrIncarico.dsIncarico
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_INC'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_INC'
        Width = 1084
        Visible = True
      end>
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
