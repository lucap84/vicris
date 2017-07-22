inherited fmBrUsr: TfmBrUsr
  Caption = 'Utenti'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited grBrowse: TDBGridAux
    DataSource = dmBrUsr.dsUsr
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_USR'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_USR'
        Width = 393
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_FIL_SHR'
        Width = 275
        Visible = True
      end>
  end
  inherited rpBrowse: TppReport
    DataPipelineName = 'plBrowse'
  end
end
