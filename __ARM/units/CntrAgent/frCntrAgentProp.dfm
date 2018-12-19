object fCntrAgentProp: TfCntrAgentProp
  Left = 0
  Top = 0
  Width = 912
  Height = 605
  Constraints.MinHeight = 398
  Constraints.MinWidth = 430
  TabOrder = 0
  object pcCA: TPageControl
    Left = 0
    Top = 0
    Width = 912
    Height = 605
    ActivePage = tsProp
    Align = alClient
    TabOrder = 0
    object tsProp: TTabSheet
      Caption = '��������'
      object Panel1: TPanel
        Left = 0
        Top = 108
        Width = 904
        Height = 469
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Caption = ' '
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 8
          Width = 31
          Height = 13
          Caption = '�����'
          FocusControl = DBMemo1
        end
        object Label3: TLabel
          Left = 8
          Top = 120
          Width = 50
          Height = 13
          Caption = '��������'
          FocusControl = DBMemo2
        end
        object DBMemo1: TDBMemo
          Left = 8
          Top = 24
          Width = 887
          Height = 89
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Addr'
          DataSource = dsProp
          ScrollBars = ssBoth
          TabOrder = 0
        end
        object DBMemo2: TDBMemo
          Left = 8
          Top = 136
          Width = 889
          Height = 326
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataField = 'Descr'
          DataSource = dsProp
          ScrollBars = ssBoth
          TabOrder = 1
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 904
        Height = 34
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Caption = 'Panel2'
        TabOrder = 1
        inline fCAGroupSelect1: TfCAGroupSelect
          Left = 2
          Top = 2
          Width = 900
          Height = 30
          Align = alClient
          inherited edName: TEdit
            Width = 813
          end
          inherited Button1: TButton
            Left = 868
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 34
        Width = 904
        Height = 74
        Align = alTop
        BevelOuter = bvNone
        Caption = ' '
        TabOrder = 2
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 76
          Height = 13
          Caption = '������������'
          FocusControl = DBEdit1
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 24
          Width = 401
          Height = 21
          DataField = 'Name'
          DataSource = dsProp
          TabOrder = 0
        end
        object DBCheckBox1: TDBCheckBox
          Left = 8
          Top = 56
          Width = 265
          Height = 17
          Caption = '���������� � ������ ������ �������'
          DataField = 'ShowInRoot'
          DataSource = dsProp
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object cbDisabled: TDBCheckBox
          Left = 304
          Top = 56
          Width = 97
          Height = 17
          Caption = '�������'
          DataField = 'Disabled'
          DataSource = dsProp
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          Visible = False
        end
        object Button1: TButton
          Left = 409
          Top = 24
          Width = 24
          Height = 21
          Caption = '<--'
          TabOrder = 3
          OnClick = Button1Click
        end
      end
    end
    object tsContact: TTabSheet
      Caption = '��������'
      ImageIndex = 1
      object dbgContact: TRxDBGrid
        Left = 0
        Top = 29
        Width = 904
        Height = 548
        Align = alClient
        DataSource = dsCAContact
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbgContactDblClick
        TitleButtons = True
        OnCheckButton = dbgContactCheckButton
        OnGetBtnParams = dbgContactGetBtnParams
        Columns = <
          item
            Expanded = False
            FieldName = 'FIO'
            Title.Caption = '���������� ����'
            Width = 263
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Post'
            Title.Caption = '���������'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Phone'
            Title.Caption = '�������'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Title.Caption = 'e-mail'
            Visible = True
          end>
      end
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 904
        Height = 29
        Caption = 'ToolBar1'
        Images = DM.ilMenu
        TabOrder = 1
        object ToolButton1: TToolButton
          Left = 0
          Top = 2
          Action = aContNew
        end
        object ToolButton2: TToolButton
          Left = 23
          Top = 2
          Action = aContProp
        end
        object ToolButton3: TToolButton
          Left = 46
          Top = 2
          Action = aContDelete
        end
      end
    end
    object tsComment: TTabSheet
      Caption = '�����������'
      ImageIndex = 2
      object ToolBar2: TToolBar
        Left = 0
        Top = 0
        Width = 904
        Height = 29
        Caption = 'ToolBar1'
        Images = DM.ilMenu
        TabOrder = 0
        object ToolButton4: TToolButton
          Left = 0
          Top = 2
          Action = aCommentNew
        end
        object ToolButton5: TToolButton
          Left = 23
          Top = 2
          Action = aCommentProp
        end
        object ToolButton6: TToolButton
          Left = 46
          Top = 2
          Action = aCommentDel
        end
      end
      object dbgComment: TDBGrid
        Left = 0
        Top = 29
        Width = 904
        Height = 548
        Align = alClient
        DataSource = dsCAComment
        DefaultDrawing = False
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = dbgCommentDrawColumnCell
        OnDblClick = dbgCommentDblClick
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
    end
    object tsRepr: TTabSheet
      Caption = '�������������'
      ImageIndex = 3
      inline fReprList1: TfReprList
        Width = 904
        Height = 577
        Align = alClient
        inherited RxDBGrid1: TRxDBGrid
          Width = 904
          Height = 511
        end
        inherited ToolBar1: TToolBar
          Width = 904
        end
        inherited FilterPanel: TPanel
          Width = 904
        end
      end
    end
  end
  object cdsCAProp: TClientDataSet
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
    ProviderName = 'dsCAProp'
    RemoteServer = DM.rsCA
    Left = 240
    Top = 64
    object cdsCAPropid_ContrAgent: TAutoIncField
      DisplayLabel = '���'
      FieldName = 'id_ContrAgent'
      ReadOnly = True
    end
    object cdsCAPropName: TStringField
      DisplayLabel = '������������'
      FieldName = 'Name'
      Size = 255
    end
    object cdsCAPropid_business: TIntegerField
      FieldName = 'id_business'
    end
    object cdsCAPropid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object cdsCAPropisOwn: TBooleanField
      FieldName = 'isOwn'
    end
    object cdsCAPropDisabled: TBooleanField
      DisplayLabel = '������������'
      FieldName = 'Disabled'
    end
    object cdsCAPropBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object cdsCAPropCAGroupName: TStringField
      FieldName = 'CAGroupName'
      Size = 50
    end
    object cdsCAPropId_Currency: TIntegerField
      FieldName = 'Id_Currency'
    end
    object cdsCAPropCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 30
    end
    object cdsCAPropAddr: TStringField
      FieldName = 'Addr'
      Size = 2000
    end
    object cdsCAPropDescr: TStringField
      FieldName = 'Descr'
      Size = 2000
    end
    object cdsCAPropShowInRoot: TBooleanField
      FieldName = 'ShowInRoot'
    end
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
    Left = 240
    Top = 96
    object cdsCACommentid_comment: TAutoIncField
      FieldName = 'id_comment'
      ReadOnly = True
    end
    object cdsCACommentid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object cdsCACommentComment: TStringField
      FieldName = 'Comment'
      Size = 255
    end
    object cdsCACommentCommentType: TIntegerField
      FieldName = 'CommentType'
    end
    object cdsCACommentDateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object cdsCACommentid_User: TIntegerField
      FieldName = 'id_User'
    end
  end
  object cdsCAContact: TClientDataSet
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
    ProviderName = 'dsCAContact'
    RemoteServer = DM.rsCA
    Left = 240
    Top = 136
    object cdsCAContactid_Contact: TAutoIncField
      FieldName = 'id_Contact'
      ReadOnly = True
    end
    object cdsCAContactid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object cdsCAContactFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object cdsCAContactPost: TStringField
      FieldName = 'Post'
      Size = 50
    end
    object cdsCAContactPhone: TStringField
      FieldName = 'Phone'
      Size = 50
    end
    object cdsCAContactemail: TStringField
      FieldName = 'email'
      Size = 50
    end
  end
  object dsProp: TDataSource
    DataSet = cdsCAProp
    Left = 204
    Top = 174
  end
  object ActionList1: TActionList
    Images = DM.ilMenu
    Left = 296
    Top = 80
    object aContNew: TAction
      Caption = '�������'
      Hint = '�������'
      ImageIndex = 0
      OnExecute = aContNewExecute
    end
    object aContProp: TAction
      Caption = '�������������'
      Enabled = False
      Hint = '�������������'
      ImageIndex = 1
      OnExecute = aContPropExecute
    end
    object aContDelete: TAction
      Caption = '�������'
      Enabled = False
      ImageIndex = 2
      OnExecute = aContDeleteExecute
    end
    object aCommentNew: TAction
      Caption = '�������'
      Hint = '�������'
      ImageIndex = 0
      OnExecute = aCommentNewExecute
    end
    object aCommentProp: TAction
      Caption = '�������������'
      Enabled = False
      Hint = '�������������'
      ImageIndex = 1
      OnExecute = aCommentPropExecute
    end
    object aCommentDel: TAction
      Caption = '�������'
      Enabled = False
      ImageIndex = 2
      OnExecute = aCommentDelExecute
    end
  end
  object dsCAContact: TDataSource
    DataSet = cdsCAContact
    OnDataChange = dsCAContactDataChange
    Left = 68
    Top = 128
  end
  object dsCAComment: TDataSource
    DataSet = cdsCAComment
    OnDataChange = dsCACommentDataChange
    Left = 76
    Top = 192
  end
  object pmIns: TPopupMenu
    Left = 428
    Top = 76
  end
end
