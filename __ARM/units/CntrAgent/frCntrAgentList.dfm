object fCntrAgentList: TfCntrAgentList
  Left = 0
  Top = 0
  Width = 630
  Height = 423
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 0
    Top = 332
    Width = 630
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 66
    Width = 630
    Height = 266
    Align = alClient
    DataSource = dsCAgent
    DefaultDrawing = False
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = RxDBGrid1DrawColumnCell
    OnDblClick = RxDBGrid1DblClick
    OnMouseMove = RxDBGrid1MouseMove
    MultiSelect = True
    TitleButtons = True
    OnCheckButton = RxDBGrid1CheckButton
    OnGetBtnParams = RxDBGrid1GetBtnParams
    Columns = <
      item
        Expanded = False
        FieldName = 'Name'
        Title.Caption = '������������'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAGroupName'
        Title.Caption = '������'
        Width = 199
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 630
    Height = 41
    ButtonHeight = 36
    ButtonWidth = 88
    Caption = 'ToolBar1'
    Images = DM.ilMenu
    ShowCaptions = True
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Action = aNew
    end
    object ToolButton2: TToolButton
      Left = 88
      Top = 2
      Action = aProperty
    end
    object ToolButton3: TToolButton
      Left = 176
      Top = 2
      Width = 5
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 181
      Top = 2
      Action = aDelete
    end
    object ToolButton5: TToolButton
      Left = 269
      Top = 2
      Width = 6
      Caption = 'ToolButton5'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 275
      Top = 2
      Action = aRefreshe
    end
    object ToolButton7: TToolButton
      Left = 363
      Top = 2
      Width = 5
      Caption = 'ToolButton7'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton8: TToolButton
      Left = 368
      Top = 2
      Action = aB2
    end
  end
  object FilterPanel: TPanel
    Left = 0
    Top = 41
    Width = 630
    Height = 25
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 5
      Width = 79
      Height = 13
      Caption = '������������:'
    end
    object FilterEdit: TEdit
      Left = 104
      Top = 1
      Width = 177
      Height = 21
      TabOrder = 0
      OnChange = FilterEditChange
    end
  end
  object dbgComment: TDBGrid
    Left = 0
    Top = 335
    Width = 630
    Height = 88
    Align = alBottom
    DataSource = dsCAComment
    DefaultDrawing = False
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = dbgCommentDrawColumnCell
    Columns = <
      item
        Expanded = False
        Title.Caption = '��'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Comment'
        ReadOnly = False
        Title.Caption = '�����������'
        Width = 342
        Visible = True
      end>
  end
  object ActionList1: TActionList
    Images = DM.ilMenu
    Left = 296
    Top = 80
    object aNew: TAction
      Caption = '�������'
      Enabled = False
      Hint = '�������'
      ImageIndex = 0
      OnExecute = aNewExecute
    end
    object aProperty: TAction
      Caption = '�������������'
      Enabled = False
      Hint = '�������������'
      ImageIndex = 1
      OnExecute = aPropertyExecute
    end
    object aArc: TAction
      Caption = '������������� (��)'
      Enabled = False
      Hint = '�������������'
      ImageIndex = 4
      OnExecute = aArcExecute
    end
    object aRefreshe: TAction
      Caption = '��������'
      ImageIndex = 3
      OnExecute = aRefresheExecute
    end
    object aDelete: TAction
      Caption = '�������'
      Enabled = False
      ImageIndex = 2
      OnExecute = aDeleteExecute
    end
    object aShowMovCA: TAction
      Caption = '�������� �������'
      Enabled = False
      ImageIndex = 11
      Visible = False
      OnExecute = aShowMovCAExecute
    end
    object aSetGrp: TAction
      Caption = '��������� � ������'
      Enabled = False
      OnExecute = aSetGrpExecute
    end
    object aSelAll: TAction
      Caption = '�������� ���'
      ShortCut = 16449
      OnExecute = aSelAllExecute
    end
    object aExcelExp: TAction
      Caption = '�������������� � Excel'
      Enabled = False
      ImageIndex = 13
      OnExecute = aExcelExpExecute
    end
    object aB2: TAction
      Caption = '�������������'
      Enabled = False
      ImageIndex = 4
      OnExecute = aB2Execute
    end
  end
  object cdsCAgent: TClientDataSet
    Aggregates = <>
    FilterOptions = [foCaseInsensitive]
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@id_business'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Disabled'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@isOwn'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@id_CAGroup'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@id_User'
        ParamType = ptInput
      end>
    ProviderName = 'dsCAgent'
    RemoteServer = DM.rsCA
    OnFilterRecord = cdsCAgentFilterRecord
    Left = 64
    Top = 104
    object cdsCAgentid_ContrAgent: TAutoIncField
      FieldName = 'id_ContrAgent'
      ReadOnly = True
    end
    object cdsCAgentName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object cdsCAgentid_business: TIntegerField
      FieldName = 'id_business'
    end
    object cdsCAgentid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object cdsCAgentisOwn: TBooleanField
      FieldName = 'isOwn'
    end
    object cdsCAgentDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object cdsCAgentBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object cdsCAgentCAGroupName: TStringField
      FieldName = 'CAGroupName'
      Size = 50
    end
  end
  object dsCAgent: TDataSource
    DataSet = cdsCAgent
    OnDataChange = dsCAgentDataChange
    Left = 64
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Images = DM.ilMenu
    Left = 176
    Top = 200
    object N1: TMenuItem
      Action = aNew
    end
    object N2: TMenuItem
      Action = aDelete
    end
    object Excel1: TMenuItem
      Action = aExcelExp
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object N10: TMenuItem
      Action = aSelAll
    end
    object N9: TMenuItem
      Action = aSetGrp
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N11: TMenuItem
      Action = aB2
    end
    object N7: TMenuItem
      Action = aShowMovCA
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Action = aProperty
    end
  end
  object dsCAComment: TDataSource
    DataSet = cdsCAComment
    Left = 452
    Top = 96
  end
  object cdsCAComment: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@id_ContrAgent'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dsCAComment'
    RemoteServer = DM.rsCA
    Left = 488
    Top = 96
  end
end