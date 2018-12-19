object fBJByOper: TfBJByOper
  Left = 0
  Top = 0
  Width = 1013
  Height = 462
  TabOrder = 0
  object dbgBJ: TDBGridEh
    Left = 0
    Top = 0
    Width = 1013
    Height = 462
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = dsBJ_ByOper
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    RowDetailPanel.Color = clBtnFace
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnEditButtonClick = dbgBJEditButtonClick
    OnGetCellParams = dbgBJGetCellParams
    Columns = <
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'BJ_Name'
        Footers = <>
        ReadOnly = True
        Title.Caption = '������'
        Width = 159
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'NotUse'
        Footers = <>
        Title.Caption = '�� �������� � ������'
        Width = 78
      end
      item
        AlwaysShowEditButton = True
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Name'
        Footers = <>
        ReadOnly = True
        Title.Caption = '������'
        Width = 350
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object cdsBJ_ByOper: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@id_Oper'
        ParamType = ptInput
        Value = 255
      end
      item
        DataType = ftInteger
        Name = '@id_business'
        ParamType = ptInput
        Value = 255
      end
      item
        DataType = ftInteger
        Name = '@id_Oper_OLD'
        ParamType = ptInput
        Value = 255
      end>
    ProviderName = 'dsBJ_ByOper'
    RemoteServer = DM.rsCA
    Left = 48
    Top = 32
    object cdsBJ_ByOperid_OperRel: TAutoIncField
      FieldName = 'id_OperRel'
    end
    object cdsBJ_ByOperid_BJ_Obj: TAutoIncField
      FieldName = 'id_BJ_Obj'
    end
    object cdsBJ_ByOperNotUse: TBooleanField
      FieldName = 'NotUse'
    end
    object cdsBJ_ByOperid_BJ_Item: TIntegerField
      FieldName = 'id_BJ_Item'
    end
    object cdsBJ_ByOperName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object cdsBJ_ByOperBJ_Name: TStringField
      FieldName = 'BJ_Name'
      Size = 255
    end
    object cdsBJ_ByOperid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
  end
  object dsBJ_ByOper: TDataSource
    DataSet = cdsBJ_ByOper
    Left = 84
    Top = 30
  end
end
