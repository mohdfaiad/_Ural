object OperExp: TOperExp
  Left = 186
  Top = 107
  Width = 892
  Height = 540
  Caption = '������� ��������'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline fBsnSelector1: TfBsnSelector
    Width = 361
    Height = 33
    inherited edName: TEdit
      Width = 275
    end
    inherited Button1: TButton
      Left = 330
    end
  end
  object RxDBGrid1: TDBGridEh
    Left = 0
    Top = 41
    Width = 884
    Height = 453
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = dsExp
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = RxDBGrid1DblClick
    OnDrawColumnCell = RxDBGrid1DrawColumnCell
    OnGetCellParams = RxDBGrid1GetCellParams
    OnTitleBtnClick = RxDBGrid1TitleBtnClick
    Columns = <
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'OperState'
        Footers = <>
        Title.Caption = '����'
        Title.Orientation = tohVertical
        Title.TitleButton = True
        Width = 21
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'OperVid'
        Footers = <>
        Title.Caption = '���'
        Title.Orientation = tohVertical
        Title.TitleButton = True
        Width = 22
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'OperNum'
        Footers = <>
        Title.Caption = '�����'
        Title.TitleButton = True
        Width = 93
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'TypeName'
        Footers = <>
        Title.Caption = '������/ ������'
        Title.TitleButton = True
        Width = 62
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'DateCreate'
        Footers = <>
        Title.Caption = '����'
        Title.TitleButton = True
        Width = 101
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Correct'
        Footers = <>
        Title.Caption = '����.'
        Title.Orientation = tohVertical
        Title.TitleButton = True
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'CtgName'
        Footers = <>
        Title.Caption = '�����/������|���������'
        Width = 120
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'WareName'
        Footers = <>
        Title.Caption = '�����/������|������������'
        Title.TitleButton = True
        Width = 148
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'AmountOper'
        Footers = <>
        Title.Caption = '����������|���-��'
        Title.TitleButton = True
        Width = 63
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'MeasureName'
        Footers = <>
        Title.Caption = '����������|��. ���.'
        Title.TitleButton = True
        Width = 57
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'PriceOper'
        Footers = <>
        Title.Caption = '�����|����'
        Title.TitleButton = True
        Width = 53
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'SummOper'
        Footers = <>
        Title.Caption = '�����|�����'
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'CurrencyOperShortName'
        Footers = <>
        Title.Caption = '�����|������'
        Title.TitleButton = True
        Width = 53
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'PriceInv'
        Footers = <>
        Title.Caption = '�������������|���� ��.'
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'CRN_OperSum_Inv'
        Footers = <>
        Title.Caption = '�������������|�����'
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'CurrencyInvShortName'
        Footers = <>
        Title.Caption = '�������������|������'
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'SummSys'
        Footers = <>
        Title.Caption = '�������|C����'
        Title.TitleButton = True
        Width = 84
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'CurrencySysShortName'
        Footers = <>
        Title.Caption = '�������|������'
        Title.TitleButton = True
        Width = 62
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'SrcName'
        Footers = <>
        Title.Caption = '���������|���� ������'
        Title.TitleButton = True
        Width = 100
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'ReprName'
        Footers = <>
        Title.Caption = '���������|����� ������'
        Title.TitleButton = True
        Width = 100
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'ContrAgentName'
        Footers = <>
        Title.Caption = '���������|����������'
        Title.TitleButton = True
        Width = 106
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'OperDeltaCrn'
        Footers = <>
        Title.Caption = '�������|�� ��������'
        Title.TitleButton = True
        Width = 85
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'OperRateDeltaCrn'
        Footers = <>
        Title.Caption = '�������|��������'
        Title.TitleButton = True
        Width = 76
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'OperTotalDeltaCrn'
        Footers = <>
        Title.Caption = '�������|�����'
        Title.TitleButton = True
        Width = 73
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'CurrencyBsnName'
        Footers = <>
        Title.Caption = '�������|������'
        Title.TitleButton = True
        Width = 63
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'OperSumCalced'
        Footers = <>
        Title.Caption = '� ������ �������|�����'
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'OperSum_OfferCalced'
        Footers = <>
        Title.Caption = '� ������ �������|�������'
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'CurrencyBsnName'
        Footers = <>
        Title.Caption = '� ������ �������|������'
        Title.TitleButton = True
        Width = 87
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'BusinessName'
        Footers = <>
        Title.Caption = '������'
        Title.TitleButton = True
        Width = 103
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'KoeffName'
        Footers = <>
        Title.Caption = '����'
        Title.TitleButton = True
        Width = 110
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'FormalDistribName'
        Footers = <>
        Title.Caption = '�������������|����������'
        Title.TitleButton = True
        Width = 100
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'FuncDistribName'
        Footers = <>
        Title.Caption = '�������������|��������������'
        Title.TitleButton = True
        Width = 100
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'CreatorFIO'
        Footers = <>
        Title.Caption = '������'
        Title.TitleButton = True
        Width = 100
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'CheckerFIO'
        Footers = <>
        Title.Caption = '��������|��������'
        Title.TitleButton = True
        Width = 127
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'CheckDate'
        Footers = <>
        Title.Caption = '��������|����'
        Title.TitleButton = True
        Width = 82
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Imp_PayBasic'
        Footers = <>
        Title.Caption = '��������|���. �������/���������'
        Title.TitleButton = True
        Width = 115
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'AccInv_PayAssignment'
        Footers = <>
        Title.Caption = '��������|��. ���������/���� �������'
        Title.TitleButton = True
        Width = 115
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Contract'
        Footers = <>
        Title.Caption = '��������|�������'
        Title.TitleButton = True
        Width = 115
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'OperTypeSIGN'
        Footers = <>
        Title.Caption = '������|����'
        Title.TitleButton = True
        Visible = False
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'OperSumCalced'
        Footers = <>
        Title.Caption = '������|�����'
        Title.TitleButton = True
        Visible = False
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'OperSum_OfferCalced'
        Footers = <>
        Title.Caption = '������|�������'
        Title.TitleButton = True
        Visible = False
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'CurrencyBsnName'
        Footers = <>
        Title.Caption = '������|������'
        Title.TitleButton = True
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'OpComment'
        Footers = <>
        Title.Caption = '�����������'
        Width = 120
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Str1'
        Footers = <>
        Title.Caption = '������|������ 1'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Str2'
        Footers = <>
        Title.Caption = '������|������ 2'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Str3'
        Footers = <>
        Title.Caption = '������|������ 3'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Str4'
        Footers = <>
        Title.Caption = '������|������ 4'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Str5'
        Footers = <>
        Title.Caption = '������|������ 5'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Str6'
        Footers = <>
        Title.Caption = '������|������ 6'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Str7'
        Footers = <>
        Title.Caption = '������|������ 7'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Str8'
        Footers = <>
        Title.Caption = '������|������ 8'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Str9'
        Footers = <>
        Title.Caption = '������|������ 9'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Str10'
        Footers = <>
        Title.Caption = '������|������ 10'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Str11'
        Footers = <>
        Title.Caption = '������|������ 11'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Str12'
        Footers = <>
        Title.Caption = '������|������ 12'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Str13'
        Footers = <>
        Title.Caption = '������|������ 13'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Str14'
        Footers = <>
        Title.Caption = '������|������ 14'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Str15'
        Footers = <>
        Title.Caption = '������|������ 15'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Dig1'
        Footers = <>
        Title.Caption = '������|����� 1'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Dig2'
        Footers = <>
        Title.Caption = '������|����� 2'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Dig3'
        Footers = <>
        Title.Caption = '������|����� 3'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Dig4'
        Footers = <>
        Title.Caption = '������|����� 4'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Dig5'
        Footers = <>
        Title.Caption = '������|����� 5'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Dig6'
        Footers = <>
        Title.Caption = '������|����� 6'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Dig7'
        Footers = <>
        Title.Caption = '������|����� 7'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Dig8'
        Footers = <>
        Title.Caption = '������|����� 8'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Dig9'
        Footers = <>
        Title.Caption = '������|����� 9'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Dig10'
        Footers = <>
        Title.Caption = '������|����� 10'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Dig11'
        Footers = <>
        Title.Caption = '������|����� 11'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Dig12'
        Footers = <>
        Title.Caption = '������|����� 12'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Dig13'
        Footers = <>
        Title.Caption = '������|����� 13'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Dig14'
        Footers = <>
        Title.Caption = '������|����� 14'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        EndEllipsis = True
        FieldName = 'Dig15'
        Footers = <>
        Title.Caption = '������|����� 15'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 884
    Height = 41
    ButtonHeight = 36
    ButtonWidth = 84
    Caption = 'ToolBar1'
    Images = ilImage
    ShowCaptions = True
    TabOrder = 2
    object ToolButton2: TToolButton
      Left = 0
      Top = 2
      Action = aProperty
    end
    object sep1: TToolButton
      Left = 84
      Top = 2
      Width = 7
      Caption = 'sep1'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 91
      Top = 2
      Action = aDelete
    end
    object ToolButton1: TToolButton
      Left = 175
      Top = 2
      Width = 15
      Caption = 'ToolButton1'
      ImageIndex = 18
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 190
      Top = 2
      Action = aSave
    end
    object ToolButton5: TToolButton
      Left = 274
      Top = 2
      Width = 17
      Caption = 'ToolButton5'
      ImageIndex = 36
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 291
      Top = 2
      Action = aExit
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 494
    Width = 884
    Height = 19
    Panels = <
      item
        Width = 270
      end
      item
        Width = 90
      end>
    ParentFont = True
    SimplePanel = False
    UseSystemFont = False
  end
  object ActionList1: TActionList
    Images = ilImage
    Left = 296
    Top = 80
    object aProperty: TAction
      Caption = '�������������'
      Enabled = False
      Hint = '�������������'
      ImageIndex = 16
      OnExecute = aPropertyExecute
    end
    object aRefreshe: TAction
      Caption = '��������'
      ImageIndex = 18
    end
    object aDelete: TAction
      Caption = '�������'
      Enabled = False
      ImageIndex = 24
      OnExecute = aDeleteExecute
    end
    object aExit: TAction
      Caption = '�����'
      ImageIndex = 36
      OnExecute = aExitExecute
    end
    object aSave: TAction
      Caption = '���������'
      ImageIndex = 35
      OnExecute = aSaveExecute
    end
  end
  object ilImage: TImageList
    Left = 24
    Top = 64
    Bitmap = {
      494C010125002700040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000A0000000010020000000000000A0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      84000000840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400FFFF0000000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008402
      0400FCFE0400FC02040084020400000000000000000004028400000000000402
      FC00040284000402040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF000000
      0000000000000000000000000000000000000000000000000000000000008402
      0400FCFE0400FC02040084020400000000000000000004028400000000000402
      FC00040284000402040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F007F7F7F00BFBFBF007F7F7F00000000007F7F7F00BFBFBF007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000008402
      0400FCFE0400FC02040084020400000000000000000004028400000000000402
      FC00040284000402040000000000000000008000000080000000800000008000
      00008000000080000000800000008000000080000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C00000000000008080000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF007F7F7F00000000007F7F7F00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF0000000000000000000000000000000000000000008402
      0400C4C2C400FCFE0400FC020400000000000000000004028400FCFEFC00C4C2
      C4000402FC0004020400000000000000000080000000FFFFFF00FFFFFF00C0C0
      C000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000000000000080800000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F00BFBFBF00BFBFBF0000000000BFBFBF00BFBFBF007F7F
      7F007F7F7F007F7F7F0000000000000000000000000000000000000000000000
      0000840204008402040084020400000000000000000000000000040284000402
      84000402840000000000000000000000000080000000FFFFFF00FFFFFF00C0C0
      C000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C00000000000008080000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF0000000000000000000000000000000000000000000000
      000004020400C4C2C4000402040000000000000000000000000084828400C4C2
      C4000402040000000000000000000000000080000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080000000000000000000
      FF000000FF00000000000000FF000000FF000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F000000000000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000000000000000000000000000000000000000
      000004020400C4C2C4000402040000000000000000000000000084828400C4C2
      C4000402040000000000000000000000000080000000FFFFFF00FFFFFF00C0C0
      C000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF0080000000000000000000
      00000000FF0000000000000000000000FF000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000000000000000000000FFFF000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF0000000000000000000000000000000000000000000000
      000004020400C4C2C4000402040000000000000000000000000084828400C4C2
      C4000402040000000000000000000000000080000000FFFFFF00FFFFFF00C0C0
      C000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF0080000000800000008000
      000000000000000000000000FF000000FF000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000402040000000000000000000402
      040004020400C4C2C40004020400000000000000000000000000040204000402
      0400040204000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000FFFFFF00FFFF
      FF00800000000000FF000000FF000000FF000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000008080000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000000000000000000000000000BFBF
      BF00000000000000000000000000000000008482840004020400040204008482
      840084828400C4C2C40084828400040204000402040004020400848284000402
      0400040204000000000000000000000000008000000080000000800000008000
      00008000000080000000FFFF000080000000FFFF000080000000FFFFFF00FFFF
      FF00800000000000FF000000FF000000FF000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C0000000000000808000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF007F7F7F00000000007F7F7F0000FFFF0000FFFF000000000000000000BFBF
      BF0000000000000000000000000000000000C4C2C400FCFEFC00FCFEFC00C4C2
      C400C4C2C400C4C2C400C4C2C400C4C2C400C4C2C400FCFEFC0004020400C4C2
      C400040204000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000C0C0C000C0C0
      C000800000000000FF000000FF00000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000008080000000000000000000000000000000000000FFFF0000FF
      FF0000000000BFBFBF000000000000000000000000000000000000000000BFBF
      BF0000000000000000000000000000000000000000008482840084828400FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC0004020400C4C2C400C4C2
      C400848284000402040000000000000000000000000000000000000000008000
      0000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFF
      FF00800000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000080800000000000000000000000000000FFFF000000000000FF
      FF0000000000BFBFBF000000000000000000000000000000000000000000BFBF
      BF00000000000000000000000000000000000000000000000000000000008482
      8400848284008482840084828400848284008482840084828400C4C2C400C4C2
      C400848284000402040000000000000000000000000000000000000000008000
      0000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFF
      FF00800000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C0000000000000000000000000000000000000FFFF00000000000000000000FF
      FF007F7F7F007F7F7F00BFBFBF00000000000000000000000000BFBFBF007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400C4C2C400C4C2
      C400848284000402040000000000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000008080000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000C0C0C000000000000000000000000000000000000000000000FF
      FF000000000000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400FCFEFC00C4C2
      C400848284000402040000000000000000000000000000000000000000008000
      00008000000080000000800000008000000080000000FFFF000080000000FFFF
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400848284008482
      8400848284000402040000000000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      000000000000000000007F7F7F000000000000000000000000007F7F7F000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      00007F7F7F00000000007F7F7F00000000007F7F7F00000000007F7F7F000000
      00007F7F7F00000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      0000808000008080000080800000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FF000000FF000000FF000000FF00
      0000FF000000FFFFFF0000000000000000000000000000000000808080000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      800080808000808080008080800080808000808080000000000080800000FFFF
      0000FFFF0000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      FF00000000000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000FFFF00008080
      0000808000008080000080800000808000000000000080800000FFFF0000FFFF
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FF000000FF000000FF000000FF00
      0000FF000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000000000000FF000000FF0000000000FF00000000000000FF00
      000000000000000000000000000000000000000000000000000000000000FFFF
      00008080000080800000808000000000000080800000FFFF0000FFFF0000FFFF
      FF000000000080800000000000000000000000000000FFFFFF00840000008400
      0000840000008400000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F00000000007F7F
      7F000000FF007F7F7F000000FF007F7F7F000000FF007F7F7F007F7F7F00FF00
      00007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000FFFF0000808000000000000080800000FFFF0000FFFF0000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FF000000FF000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000FF0000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000080800000FFFF0000FFFF0000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00840000008400
      0000840000008400000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F0000000000FF00
      0000000000000000000000000000FF000000000000000000FF00000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      00000000000080800000FFFF0000FFFF0000FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000000000000FF00000000000000000000000000FF00000000000000
      FF00FF0000000000FF0000000000000000000000000000000000000000000000
      000080800000FFFF0000FFFF0000FFFFFF000000000080800000808080000000
      00000000000000000000000000000000000000000000FFFFFF00840000008400
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F00000000007F7F
      7F00FF0000007F7F7F00FF0000007F7F7F007F7F7F007F7F7F000000FF007F7F
      7F007F7F7F00FF0000000000FF007F7F7F000000000000000000000000008080
      0000FFFF0000FFFF0000FFFFFF0000000000FFFF000080800000808000008080
      80000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      000000000000FF0000000000000000000000000000000000000080800000FFFF
      0000FFFF0000FFFFFF00000000000000000000000000FFFF0000808000008080
      00008080800000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      000000000000808080000000000000000000000000007F7F7F00000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000FF0000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000808080000000000000000000000000007F7F7F007F7F7F00000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000800000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008000000080000000800000008000000000000000
      00000000000000000000000000000000000000000000FFFFFF00848484000000
      0000008484000084840000848400008484000084840000848400008484000084
      84000084840000848400000000000000000000000000000000000000FF000000
      FF0000000000000000007F7F7F00000000007F7F7F00000000000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000080000000FF000000FF0000008000000080000000
      0000000000000000000000000000000000000000000000FFFF00848484000000
      0000008484000084840000848400008484000084840000848400008484000084
      840000848400008484000084840000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000FF00FFFFFF000000FF0000008000000080000000
      00000000000000000000000000000000000000000000FFFFFF0084848400FFFF
      FF00000000000000000000000000000000000084840000848400008484000084
      840000848400008484000084840000000000000000000000FF00000000000000
      FF000000FF000000FF007F7F7F00000000007F7F7F0000000000000000000000
      00000000FF000000FF000000000000000000000000000080800000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000808000000000000000000000000000000000000000
      00000000000000000000000080000000FF000000800000008000000000000000
      0000000000000000000000000000000000000000000000FFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000080800000000000000000000080800000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0084848400FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C600000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000FF000000800000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000007F7F7F00000000007F7F7F0000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000800000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000800000000000000080000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000800000008000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400848484008484
      8400000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000008000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C6008484840000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF0000000000000000000000000000000000000000000000
      000000000000000000000080800000FFFF0000FFFF0000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000008000000080000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000008400000084000000
      840000008400000084000000840000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00808080000000FF000000FF00000080000000
      0000000000000000000000000000000000000000000000000000848484008484
      840084848400848484008484840084848400848484000000FF000000FF000000
      FF000000FF000000FF000000FF000000000000000000000000000000FF000000
      FF000000FF00000000007F7F7F00000000007F7F7F0000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000FFFF0000FFFF0000FFFF0000FFFF00008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000808080008080800000000000808080008080800080808000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0008080
      00008080000080800000808080008080800080808000C0C0C000808080008080
      0000808000008080800000000000000000000000000000000000000000000000
      0000000000000084000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      0000000000000000000000000000000000000000000000000000808080008080
      0000808000008080000080800000C0C0C00080808000C0C0C000808080008080
      8000808000008080000080808000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00848484000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000000000000000FFFF00000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      84000000000000000000000000000000000000000000C0C0C000808000000080
      00008080000080800000808000000000000080808000C0C0C000C0C0C0008080
      8000808000008080000080800000C0C0C0000000000000000000000000000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00848484000000
      0000008484000084840000848400008484000084840000848400008484000084
      84000084840000848400008484000000000000000000FFFFFF0000FFFF000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000080808000808000008080
      0000808000008080800080808000000000000000000080808000808080008080
      8000808080008080000000800000808080000000000000000000000000000084
      0000008400000084000000840000008400000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0084848400FFFF
      FF00000000000000000000000000000000000084840000848400008484000084
      8400008484000084840000848400000000000000000000FFFF00FFFFFF0000FF
      FF00000000000084840000848400008484000084840000848400008484000084
      840000848400008484000000000000000000C0C0C00080800000808080008080
      00008080800000000000000000000000000000000000C0C0C000808080000000
      0000808000008080800080808000808080000000000000000000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808000008080800080808000000000000000000000000000000000008080
      8000808080008080800080808000808080000000000084848400008400000084
      0000000000000000000000840000008400000084000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0084848400FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C600000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      000000000000000000000000000000000000C0C0C00080808000808080008080
      80008080800080800000C0C0C000000000000000000000000000000000000080
      0000808000008080800080808000808080008484840000840000000000000000
      0000000000000000000000000000008400000084000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000080808000C0C0C000C0C0
      C000808080008080800000000000000000000000000000000000000000008080
      8000808000008080000080800000C0C0C0000000000000000000000000000000
      0000000000000000000000000000008400000084000000840000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF008484840000FF
      000000FF00000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      80008080800080808000C0C0C000000000008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484008484840000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000808080008080000080800000000000008080800080800000808000008080
      8000808000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000840000008400000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C6008484840000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      0000808080008080000080800000808080000000000080808000808000008080
      0000808000008080000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000084
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C0008080800080808000808000008080800080800000808000008080
      0000808000000080000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400008400000000000000000000000000000000000000000000848484008484
      84008484840084848400848484008484840084848400848484008484840000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00080808000C0C0C000C0C0C000808080000080000080800000808000008080
      0000808080000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084000000840000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008484840000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C0008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CED6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000000000000000CED6D60084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CED6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF009CFFFF00FFFFFF009CFFFF00009C31009CFFFF00FFFFFF009CFFFF00FFFF
      FF000000000000000000CED6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF00000000000000000000000000CED6D60084848400FFFFFF009CFF
      FF00FFFFFF009CFFFF00009C3100009C3100FFFFFF009CFFFF00FFFFFF009CFF
      FF000000000000000000CED6D600000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF009CFFFF00009C3100009C3100009C3100009C3100009C31009CFFFF00FFFF
      FF000000000000000000CED6D600000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF00000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000084848400FFFFFF009CFF
      FF00FFFFFF009CFFFF00009C3100009C3100FFFFFF00639C0000636300009CFF
      FF000000000000000000CED6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF009CFFFF00FFFFFF009CFFFF00009C31009CFFFF00FFFFFF0063630000FFFF
      FF000000000000000000CED6D60000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF009CFF
      FF00636300009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00636300009CFF
      FF000000000000000000CED6D60000000000000000000000000000000000FFFF
      FF00000000000000000000000000C6DEC6000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF0063630000FFFFFF009CFFFF00009C31009CFFFF00FFFFFF009CFFFF00FFFF
      FF000000000000000000CED6D60000000000000000000000000000000000FFFF
      FF00000000000000000000000000C6DEC6000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF009CFF
      FF0063630000639C0000FFFFFF00009C3100009C31009CFFFF00FFFFFF009CFF
      FF000000000000000000CED6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF009CFFFF00009C3100009C3100009C3100009C3100009C31009CFFFF00FFFF
      FF000000000000000000CED6D600000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000840000008400000000000000000000000000FF000000
      FF000000FF000000FF00000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00009C3100009C31009CFFFF00FFFFFF000000
      00000000000000000000CED6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008400000084000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00009C31009CFFFF00FFFFFF00000000000000
      00000000000000000000CED6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008400000084000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF0084848400FFFF
      FF0000000000CED6D600CED6D600000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00CED6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484000000
      000000000000CED6D60000000000CED6D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      840084848400848484008484840084848400848484008484840084848400CED6
      D600CED6D60000000000CED6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000C6C6C6000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000848484000000000000000000C6C6C6000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      000000000000FFFF0000FFFF0000FFFFFF00FFFF0000FF000000000000000000
      0000848484000000000000000000000000000000000000000000FFFFFF00FFFF
      FF008484840000000000848484000000000000FFFF0000000000848484000000
      000084848400FFFFFF00FFFFFF00000000000000000000000000848484000000
      000000000000FFFF0000FFFF000000000000FFFF0000FF000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484000000000000000000FFFF
      00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000FF00FFFF
      0000000000000000000084848400000000000000000000000000FFFFFF00C6C6
      C6000000000000FFFF00848484000000000000FFFF00000000008484840000FF
      FF0000000000C6C6C600FFFFFF0000000000000000000000000000000000FFFF
      00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000FF00FFFF
      0000000000000000000084848400000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000FFFFFF00FFFF0000FF0000000000FF00FF00
      0000FFFF0000FF00000000000000000000000000000000000000FFFFFF000000
      0000848484008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484
      84008484840000000000FFFFFF000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF000000000000FFFF0000FF0000000000FF00FF00
      0000FFFF0000FF00000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000FF00FFFF
      0000FF000000FFFF000000000000000000000000000000000000FFFFFF008484
      8400000000000000000000FFFF0084848400000000008484840000FFFF000000
      00000000000084848400FFFFFF000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000FF00FFFF
      0000FF000000FFFF000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000FFFFFF00FFFF0000FF0000000000FF00FF00
      0000FFFF0000FF00000000000000000000000000000000000000FFFFFF000000
      000000FFFF0000FFFF0000FFFF0000000000FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000000000FFFFFF000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF000000000000FFFF0000FF0000000000FF00FF00
      0000FFFF0000FF00000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000FF00FFFF
      0000FF000000FFFF000000000000000000000000000000000000FFFFFF008484
      8400000000000000000000FFFF0084848400000000008484840000FFFF000000
      00000000000084848400FFFFFF000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000FF00FFFF
      0000FF000000FFFF000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF008484840084848400FFFFFF0084848400848484000000FF00FF00
      0000FFFF0000FF00000000000000000000000000000000000000FFFFFF00FFFF
      FF00848484008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484
      840084848400FFFFFF00FFFFFF000000000000000000FFFF0000FFFF0000FFFF
      00000000FF008484840084848400000000008484840084848400000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFF0000FFFF00008484
      84000000FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00000000FF008484
      8400FF000000FFFF000000000000000000000000000000000000FFFFFF00FFFF
      FF000000000000FFFF00848484000000000000FFFF00000000008484840000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000FFFF0000FFFF00008484
      84000000FF00FFFF000000000000FFFF000000000000848484000000FF000000
      FF0000000000FFFF000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000008484840084848400FFFF
      FF00FFFF00000000FF00FFFF0000FFFFFF00FFFF00000000FF00FFFF0000FFFF
      FF00848484008484840000000000000000000000000000000000FFFFFF00FFFF
      FF008484840000000000848484000000000000FFFF0000000000848484000000
      000084848400FFFFFF00FFFFFF00000000000000000084848400848484000000
      0000FFFF00000000FF00FFFF00000000000084848400848484000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF00000000FF000000FF000000FF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF000000000000FFFF
      000000000000FFFF00000000FF00848484000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000848484000000000000000000FFFF
      FF00FFFF00000000FF00FFFFFF00FFFF0000FFFFFF000000FF00FFFF0000FFFF
      FF00000000000000000084848400000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFF00000000FF0000000000848484000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000848484000000
      000000000000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00000000000000
      0000848484000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000848484000000
      00000000000000000000FFFF00008484840084848400848484000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000FFFF00000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000FFFF000000000000848484000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600848484008484840084848400848484008484840000000000000000008484
      840084848400C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C6000063630000A5
      A50000C6C60000C6C60000A5A5000084840000848400002121000042420000E7
      E7000084840000636300C6C6C600000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000424200008484000084
      840031737300315252003152520000424200002121000063630000FFFF0000C6
      C60000A5A5000084840000424200000000000000000000000000000000000000
      000000000000FF00000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000084840000A5
      A50000A5A5000084840000848400008484000084840000C6C60000A5A50000C6
      C60000E7E70000C6C60000A5A500848484000000000000000000000000000000
      0000FF00000000000000FFFFFF0000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840000848400008484000000000000848400000000000084840000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004263630000A5A500008484000063
      6300006363000063630000424200004242000084840000C6C6000084840000E7
      E70000FFFF0000A5A50000C6C60084848400000000000000000000000000FF00
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84000084840000FFFF0000000000000000000084840000FFFF00008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000212100002121000063630000A5
      A50000C6C60000C6C60000A5A500008484000084840000C6C6000084840000C6
      C60000C6C60000C6C60000C6C600848484000000000000000000FF000000FF00
      0000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840000848400008484000000000000848400000000000084840000FFFF000084
      84000000000000000000000000000000000084848400FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000004263630000424200004242000084
      840063A5A5003194940031949400319494000084840000A5A5000084840000A5
      A50000C6C60000C6C60000A5A500C6C6C60000000000FF000000FF000000FF00
      0000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00
      0000000000000000000000000000000000000000000000000000000000008484
      84000084840000FFFF0000000000000000000084840000FFFF00008484000084
      84000000000000000000000000000000000084848400FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000212100006363000042
      4200006363000063630000636300006363000042420000E7E70000A5A5000084
      84000084840000FFFF00426363000000000084000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000008484
      840000848400008484000000000000848400000000000084840000FFFF000084
      84000000000000000000000000000000000084848400FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFF0000000000000000000000000000848484000084840000A5
      A50000A5A50000A5A50000A5A50000A5A50000A5A5000063630000A5A50000A5
      A50000A5A500428484000000000000000000FF00000084000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FF00000000000000000000000000000000000000000000008484
      84000084840000FFFF0000000000000000000084840000FFFF00008484000084
      84000000000000000000000000000000000084848400FFFFFF00000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000084848400004242000042
      420000C6C60063A5A50031525200315252003152520000212100000000000021
      21000000000000000000000000000000000000000000FF00000084000000FF00
      0000FF00000000000000FF000000FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FF000000000000000000000000000000000000008484
      840000848400008484000000000000848400000000000084840000FFFF000084
      84000000000000000000000000000000000084848400FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000FFFF00000000000000000000000000C6C6C600006363003173
      73000063630000A5A50000C6C60000C6C60000C6C60000C6C60000C6C6000063
      6300426363000000000000000000000000000000000000000000FF0000008400
      0000FF000000FF000000FF00000000000000FF000000FF00000000000000FFFF
      FF0000000000FF00000000000000000000000000000000000000000000008484
      84000084840000FFFF0000000000000000000084840000FFFF00008484000084
      84000000000000000000000000000000000084848400FFFFFF00848484000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000C6C6C6000042
      42003173730073D6D60084FFFF0084E7E70042C6C60000A5A50000A5A5000042
      420000636300848484000000000000000000000000000000000000000000FF00
      000084000000FF0000000000000000000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400008484000084840000000000008484000000000000848400000000000084
      84000000000000000000000000000000000084848400FFFFFF0084848400FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000021
      21000084840000A5A50000C6C60000FFFF0000FFFF0000C6C60000C6C60000A5
      A500006363008484840000000000000000000000000000000000000000000000
      0000FF00000084000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000008484
      8400008484000000000000FFFF000000000000FFFF000000000000FFFF000000
      00000000000000000000000000000000000084848400FFFFFF0084848400FFFF
      FF00FFFFFF00FFFFFF008484840000000000FFFFFF008484840084848400FFFF
      FF0000000000000000000000000000000000000000000000000000000000C6C6
      C600004242000084840000C6C60000E7E70042FFFF0084FFFF0042C6C6000042
      4200426363000000000000000000000000000000000000000000000000000000
      000000000000FF00000084000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84000000000000FFFF000000000000FFFF000000000000FFFF000000000000FF
      FF000000000000000000000000000000000084848400FFFFFF0084848400FFFF
      FF008484840084848400FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000084000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000FFFF000000000000FFFF000000000000FFFF008484
      840000000000000000000000000000000000848484008484840084848400FFFF
      FF00FFFFFF00FFFFFF00000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840000000000000000000000000084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000424242004242420042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF000084840000FFFF000084
      84000000000000000000000000000000000000000000BDBDBD00000000007B7B
      7B0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008484000000000000FFFF0000FFFF000084840000848400000000000084
      84000084840000000000000000000000000000000000BDBDBD00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002121
      2100212121002121210000000000848484004242420042424200000000000000
      0000212121000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      84000000000000FFFF0000FFFF000000000000FFFF000084840000FFFF000084
      84000084840000848400000000000000000000000000BDBDBD00BDBDBD000000
      0000000000000000000000000000FFFFFF00BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000212121006363
      6300313131002121210021212100A5A5A5006363630000000000000000002121
      2100212121002121210000000000000000000000000000000000000000008400
      0000FF000000FF00000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000084
      84000084840000FFFF0000FFFF0000FFFF0000FFFF0000848400008484000084
      8400008484000084840000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF0000000000BDBDBD00BDBDBD00000000000000
      000000000000000000000000000000000000000000000000000021212100A5A5
      A500C6C6C60073737300A5A5A500C6C6C600C6C6C60063636300737373009494
      9400212121004242420000000000000000000000000000000000000000008400
      000084000000C6C6C600FFFFFF00848484008400000084000000840000008400
      000084000000000000000000000000000000000000000000000000FFFF000084
      840000FFFF000084840000FFFF0000FFFF000084840000FFFF0000FFFF000084
      840000FFFF000084840000848400000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00BDBDBD00000000000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000003131
      3100C6C6C60094949400D6D6D600B5B5B500A5A5A500D6D6D600737373007373
      7300000000004242420000000000000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C6000000000084000000FFFFFF00848484008400
      000084000000000000000000000000000000000000000000000000FFFF000084
      840000FFFF00008484000084840000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00008484000084840000848400000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000042424200424242006363
      6300A5A5A500C6C6C60063636300424242006363630063636300D6D6D6006363
      6300000000004242420042424200424242000000000000000000000000000000
      000000000000C6C6C600FFFFFF00FFFFFF0000000000C6C6C600000000008400
      000000000000000000000000000000000000000000000000000000FFFF000084
      840000FFFF00008484000084840000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000084840000FFFF0000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00BDBDBD00424242003131310063636300E7E7
      E700636363009494940073737300737373005252520063636300A5A5A500C6C6
      C600636363004242420000000000424242000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000FFFF000084
      840000FFFF0000848400008484000084840000FFFF0000FFFF000000000000FF
      FF00008484000084840000FFFF00000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000004242420063636300D6D6D600E7E7
      E700424242006363630084848400636363007373730042424200B5B5B500C6C6
      C600A5A5A5008484840000000000424242000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000FFFF000084
      84000084840000848400008484000084840000FFFF0000FFFF0000FFFF000084
      840000FFFF000084840000FFFF000000000000000000000000000000000000FF
      FF0000FFFF0000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000FFFFFF00212121000000000000000000A5A5
      A50063636300B5B5B500C6C6C600848484007373730063636300D6D6D600A5A5
      A500212121002121210000000000212121000000000000000000000000000000
      00000000000000000000C6C6C600FFFFFF008400000000000000FFFFFF00FFFF
      FF0084848400000000000000000000000000000000000000000000FFFF0000FF
      FF00008484000084840000848400008484000084840000848400008484000084
      840000FFFF0000FFFF000000000000000000000000000000000000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF
      FF000000000000FFFF0000000000000000000000000000000000000000003131
      3100B5B5B50063636300B5B5B5006363630094949400C6C6C600949494006363
      6300000000004242420000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600FFFFFF0000000000FFFFFF008400
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00008484000084840000FFFF000084840000848400008484000084840000FF
      FF0000FFFF0000848400000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF
      FF000000000000FFFF000000000000000000000000000000000000000000A5A5
      A500D6D6D600B5B5B500636363004242420063636300A5A5A500B5B5B500A5A5
      A500212121004242420000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484000000000000000000FFFF
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00008484000084840000848400008484000000000000FFFF0000FF
      FF0000FFFF0000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF000000
      000000FFFF000000000000000000000000000000000000000000424242005252
      5200A5A5A50031313100A5A5A500E7E7E700E7E7E70063636300212121007373
      7300212121002121210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00008484000084840000FFFF000084840000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000006363
      6300424242002121210000000000D6D6D6006363630042424200000000002121
      2100212121000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00008484000084840000848400008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000636363003131310042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000021212100424242004242420042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00B5D6
      B5005AAD5A00218C2100007B0000007B0000007B000008840800218C21005AAD
      5A00B5D6B500FFFFFF0000000000000000008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF00848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000FFFF000000000000DEEFDE00399C39000084
      000000840000008400000084000000C6000000C6000000840000008400000084
      00000084000031943100DEEFDE00000000008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF008484840000FF
      FF00848484000000000000000000000000000000000000000000000000000084
      8400000000000084840000000000008484000000000000848400000000000084
      84000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000FFFF0000E7F7E700188C1800008400000084
      0000008400000084000000D6000000FF000000FF000000BD0000008400000084
      00000084000000840000188C1800E7EFE7008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF008484840000FF
      FF0000FFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000848400000000000000000000848400008484000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FFFF000063AD630000840000008400000084
      0000008400000084000000E7000000A5000000B5000000F70000008400000084
      00000084000000840000008400005AAD5A008484840084848400848484008484
      84008484840084848400848484008484840084848400848484008484840000FF
      FF0000FFFF00848484008484840000000000C6C6C60000848400008484000084
      8400008484000084840000848400008484000084840000000000008400000084
      84000084840000000000000000000000000000000000FFFFFF00FFFF00000000
      000000FFFF000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000FFFF0000188C180000840000008400000084
      000000840000008400000094000000C6000000DE000000EF0000008400000084
      0000008400000084000000840000088408008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF00848484008484
      840000FFFF008484840000FFFF0084848400FFFFFF0000848400008484000084
      840000848400008484000084840000848400008484000084840000FFFF000000
      00000084840000FFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FFFF0000188C180000840000008400000084
      0000008400000084000000F7000000EF000000DE000000A50000008400000084
      0000008400000084000000840000007B00008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF008484840000FF
      FF00848484008484840000FFFF0084848400FFFFFF0000848400008484000084
      840000848400008484000084840000FFFF0000FFFF00000000000084840000FF
      FF0000FFFF0000000000000000000000000000000000FFFFFF00FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF0000000000FFFF00005AAD5A0000840000008400000084
      0000008400000084000000FF000000B5000000A5000000D60000008400000084
      00000084000000840000008400004AA54A008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF008484840000FF
      FF0000FFFF008484840000FFFF0084848400FFFFFF00FFFFFF00008484000084
      8400008484000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000848400FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000FFFF00000000000000000000FFFF00FFFF
      FF0000FFFF00000000000000000000000000DEEFDE00108C1000008400000084
      0000008400000084000000EF000000F7000000F7000000DE0000008400000084
      0000008400000084000008840800D6E7D6008484840084848400848484008484
      84008484840084848400848484008484840084848400848484008484840000FF
      FF0000FFFF0084848400848484008484840084000000FFFFFF00C6C6C60000FF
      FF0000000000000000000084840000FFFF0000FFFF0000848400000000000084
      84000084840000000000FFFFFF008400000000000000FFFFFF00FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000000000FFFF0000000000000000000000
      00000000000000000000000000000000000000000000D6E7D600188C18000084
      00000084000000840000008C000000DE000000DE000000840000008400000084
      000000840000188C1800C6DEC600000000008484840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF008484
      840000FFFF008484840000FFFF008484840084000000FFFFFF00C6C6C60000FF
      FF0000FFFF0000FFFF0000000000000000000000000000848400008484000084
      840000848400FFFFFF00FFFFFF008400000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000F7FFF70094C6
      9400399C39000084000000840000008C0000008C00000084000000840000399C
      390094C69400F7FFF7000000000000000000000000008484840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FF
      FF00848484008484840000FFFF00848484008400000084000000FFFFFF000000
      000000FFFF0000FFFF0000848400008484000084840000FFFF0000FFFF0000FF
      FF0000848400FFFFFF0084000000840000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFF7EF0029942900008400000084000000840000008400005AAD5A00F7FF
      F700000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000FFFF00848484008400000084000000000000000000
      000000000000008484000084840000FFFF000084840000000000000000000000
      0000FFFFFF0084000000840000008400000000000000000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B00000000000000000000FF
      FF0000000000000000000000000000000000000000000000000000000000F7F7
      F700319C31000084000000840000008400000084000000840000008400003194
      3100E7EFE7000000000000000000000000000000000000000000000000008484
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484840000FFFF0000FF
      FF0000FFFF0000FFFF0084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000840000008400000000000000000000007B7B7B000000
      00007B7B7B00000000007B7B7B00000000007B7B7B0000000000000000000000
      00000000FF000000000000000000000000000000000000000000F7F7F700399C
      3900008400000084000000840000008400000084000000840000008400000084
      0000108C1000C6DEC60000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094BD940084BD
      840063AD63004AA54A008CBD8C0073B57300088408000884080018841800A5CE
      A5007BBD7B0052A55200B5D6B500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000A00000000100010000000000000500000000000000000000
      000000000000000000000000FFFFFF00C007000000000000C007000000000000
      C007000000000000C007000000000000C007000000000000C007000000000000
      C007000000000000C007000000000000C007000000000000C007000000000000
      C007000000000000C007000000000000C007000000000000C007000000000000
      C007000000000000C007000000000000FC1FE1A3FFF7FFFFF007E1A3FFE7C001
      E003E1A300418001C001E18300008001C001F1C700008001C001F1C700248001
      C001F1C7003680014001F1C7000C8001A00361C700008001C3C7000700008001
      0047000700018001C1C78003E0078001A1C7E003E00780016007FF83E0078001
      E80FFF83E0078001EC1FFF83E007FFFFFFFFF7FFDDDDFFFFFC01E3EFD555FFE0
      FC01E3EF00000000FC01C1EFDFFF00010001C1EF8FDF80030001F7EFD4AFC001
      0001F7EF0000E0010001F7EFDB77F01F0003F7EF8EB7F01F0007F7EFD5A3E00F
      000FF7EF0000C00700FFF783DBFB810301FFF7839BFD038103FFF7C7DFFF07C1
      FFFFF7C70000FFFFFFFFFFEFFFFFFFFF000FFFFFF81FFFFF0007F83FE007FE1F
      0003E00FC003FC1F0001CC478001FC0F000084638001FC0F0000A0730000FC1F
      000031F90000FF7F000738F90000FE3F00073C790000FE3F80073C390000FE1F
      C0073C190000FC1FC0019C0B8001FC0FC0008C438001FC0FC000C467C003F80F
      FF81E00FE007FC0FFFFFF83FF81FFE3FFFFFFF9FFFFF000FFFFFF107FFFF0007
      001FC003F9FF0003000FC001F0FF000100078100F0FF000000038180E07F0000
      00010790C07F0000000001E0843F0007001F01E01E3F0003001F83E0FE1F8003
      001F8101FF1FC0018FF1E103FF8FC000FFF9E081FFC7C000FF75E001FFE3C001
      FF8FE005FFF8FFC3FFFFF00FFFFFFFE7FFFFFFFF8001FFFF000FDFFB3FF9FFFF
      000F8FFF800983E0000F87F7000983E0000FC7EF800983E0000FE3CF80098080
      000FF19F80098000000FF83F80098000008FFC7F800980001144F83F8009C001
      0AB8F19F8009E083057CC3CF8019E083FAFC87E78001F1C7FDF88FFB8001F1C7
      FE04FFFF800AF1C7FFFFFFFF8005FFFFFC7F8000FC7FFFFFF01F8000F01FFFFF
      C0078000C107E003000180008001E003000180000101E003000180000001E003
      000180000101E003000180000001E003000180000101E003000180000281E003
      000180001101E003000180002801E003000180009201E007C0078001C403E00F
      F01F8003F007E01FFC7F8007FC4FFFFFE063FFFFFFFFFFFF8001FDFFFC3FD8BF
      8001F8FFF30FE07F8000F07FE287F07F0000E03FE30700010000C01FE2870001
      0000800FE307000180010007E287000180030003E3070001800F8001E2870001
      8007C003E3070001C003E00FE2A70005E003F00FE5570001E007F81FEAA70005
      F81FFC7FF54F0101FFFFFFFFF81FC387FE0F81FFFE3FFFFFF00780FFFFBFFFFF
      E003007FE237E07FC001001FC063E007C0018007C003E0078000E001E00BE007
      8000F8008008C00F8000F8000002C00F8000E0000002C0078000C0006002C007
      80018002E00BC007C0018003E003C007C003C003C003E003E007E007E227F003
      F00FF00FFE3FFE07FC1FFC3FFC3FFFFF803FFFFFFFFFFFFF001FFFFF001FFF7F
      0004C003000FE00F000080010007C00F00000000000300070000000000010003
      0000000000000003000000000000000000000000000000000000000000000000
      0007800100000000001FC00380000000000FF00FC00008008007E007E0007FF0
      8023C003F000FFFC5577C001FFFFFFFE00000000000000000000000000000000
      000000000000}
  end
  object dsExp: TDataSource
    DataSet = cdsExp
    OnDataChange = dsExpDataChange
    Left = 104
    Top = 257
  end
  object PopupMenu1: TPopupMenu
    Images = ilImage
    Left = 192
    Top = 192
    object N2: TMenuItem
      Action = aDelete
    end
    object N1: TMenuItem
      Action = aProperty
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'ads'
    Filter = '����� �������� ������� ����� (*.ads)|*.ads|��� �����|*.*'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Left = 288
    Top = 184
  end
  object cdsExp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 128
    Top = 168
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = mtExp
    Constraints = True
    Left = 176
    Top = 144
  end
  object mtExp: TRxMemoryData
    FieldDefs = <
      item
        Name = 'id_Oper'
        DataType = ftInteger
      end
      item
        Name = 'id_OperParent'
        DataType = ftInteger
      end
      item
        Name = 'id_old_Oper'
        DataType = ftInteger
      end
      item
        Name = 'DateCreate'
        DataType = ftDateTime
      end
      item
        Name = 'id_LC_Oper'
        DataType = ftInteger
      end
      item
        Name = 'OperVid'
        DataType = ftInteger
      end
      item
        Name = 'id_Replicator'
        DataType = ftInteger
      end
      item
        Name = 'ReplicatorShortName'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'id_UserCreator'
        DataType = ftInteger
      end
      item
        Name = 'CreatorFIO'
        DataType = ftString
        Size = 152
      end
      item
        Name = 'id_business'
        DataType = ftInteger
      end
      item
        Name = 'Id_CurrencyBsn'
        DataType = ftInteger
      end
      item
        Name = 'BusinessName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'BusinessNum'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'DateLocal'
        DataType = ftDateTime
      end
      item
        Name = 'Correct'
        DataType = ftBoolean
      end
      item
        Name = 'OperTypeIn'
        DataType = ftBoolean
      end
      item
        Name = 'Id_CurrencyOper'
        DataType = ftInteger
      end
      item
        Name = 'CurrencyOperName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CurrencyOperShortName'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'AmountOper'
        DataType = ftFloat
      end
      item
        Name = 'AmountOper2'
        DataType = ftFloat
      end
      item
        Name = 'PriceOper'
        DataType = ftFloat
      end
      item
        Name = 'RateOper'
        DataType = ftFloat
      end
      item
        Name = 'id_Measure'
        DataType = ftInteger
      end
      item
        Name = 'MeasureName'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RealKoef'
        DataType = ftFloat
      end
      item
        Name = 'AmountOperBaseMS'
        DataType = ftFloat
      end
      item
        Name = 'Id_CurrencySys'
        DataType = ftInteger
      end
      item
        Name = 'CurrencySysName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CurrencySysShortName'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SummSys'
        DataType = ftFloat
      end
      item
        Name = 'RateSys'
        DataType = ftFloat
      end
      item
        Name = 'id_Acc'
        DataType = ftInteger
      end
      item
        Name = 'id_Warehouse'
        DataType = ftInteger
      end
      item
        Name = 'id_Manufact'
        DataType = ftInteger
      end
      item
        Name = 'SrcName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SrcID_Main'
        DataType = ftInteger
      end
      item
        Name = 'id_Repr'
        DataType = ftInteger
      end
      item
        Name = 'id_CAWhouse'
        DataType = ftInteger
      end
      item
        Name = 'id_Acc_Ext'
        DataType = ftInteger
      end
      item
        Name = 'id_Warehouse_Ext'
        DataType = ftInteger
      end
      item
        Name = 'id_Manufact_Ext'
        DataType = ftInteger
      end
      item
        Name = 'id_Equipment'
        DataType = ftInteger
      end
      item
        Name = 'ReprName'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'ReprID_Main'
        DataType = ftInteger
      end
      item
        Name = 'ReprWHName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ReprWHID_Main'
        DataType = ftInteger
      end
      item
        Name = 'Id_CurrencyInv'
        DataType = ftInteger
      end
      item
        Name = 'PriceInv'
        DataType = ftFloat
      end
      item
        Name = 'RateInv'
        DataType = ftFloat
      end
      item
        Name = 'CurrencyInvName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CurrencyInvShortName'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'id_Goods'
        DataType = ftInteger
      end
      item
        Name = 'id_Raw'
        DataType = ftInteger
      end
      item
        Name = 'id_ExtRaw'
        DataType = ftInteger
      end
      item
        Name = 'id_Service'
        DataType = ftInteger
      end
      item
        Name = 'CtgName'
        DataType = ftString
        Size = 4000
      end
      item
        Name = 'WareName'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'WareID_Main'
        DataType = ftInteger
      end
      item
        Name = 'Koeff'
        DataType = ftInteger
      end
      item
        Name = 'KoeffName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CheckDate'
        DataType = ftDateTime
      end
      item
        Name = 'id_UserChecker'
        DataType = ftInteger
      end
      item
        Name = 'CheckerFIO'
        DataType = ftString
        Size = 152
      end
      item
        Name = 'id_FormalDistrib'
        DataType = ftInteger
      end
      item
        Name = 'FormalDistribName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'id_FuncDistrib'
        DataType = ftInteger
      end
      item
        Name = 'FuncDistribName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Deleted'
        DataType = ftBoolean
      end
      item
        Name = 'id_ContrAgent'
        DataType = ftInteger
      end
      item
        Name = 'ContrAgentName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'id_CAGroup'
        DataType = ftInteger
      end
      item
        Name = 'SummOper'
        DataType = ftFloat
      end
      item
        Name = 'TypeName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'OperNum'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'OperDelta'
        DataType = ftFloat
      end
      item
        Name = 'OperRateDelta'
        DataType = ftFloat
      end
      item
        Name = 'OperTotalDelta'
        DataType = ftFloat
      end
      item
        Name = 'DTDiff'
        DataType = ftInteger
      end
      item
        Name = 'HasViza'
        DataType = ftBoolean
      end
      item
        Name = 'OperState'
        DataType = ftInteger
      end
      item
        Name = 'HidedOper'
        DataType = ftBoolean
      end
      item
        Name = 'OperSummSys'
        DataType = ftFloat
      end
      item
        Name = 'RateMain'
        DataType = ftFloat
      end
      item
        Name = 'id_Repr_Ex'
        DataType = ftInteger
      end
      item
        Name = 'id_DocType'
        DataType = ftInteger
      end
      item
        Name = 'Imp_PayBasic'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'AccInv_PayAssignment'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'Contract'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'OperDeltaCrn'
        DataType = ftFloat
      end
      item
        Name = 'OperRateDeltaCrn'
        DataType = ftFloat
      end
      item
        Name = 'OperTotalDeltaCrn'
        DataType = ftFloat
      end
      item
        Name = 'OperCrnName'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'OperSum_Offer'
        DataType = ftFloat
      end
      item
        Name = 'OperSum_Inv'
        DataType = ftFloat
      end
      item
        Name = 'CRN_OLD_OperSum'
        DataType = ftFloat
      end
      item
        Name = 'CRN_OLD_OperSum_Offer'
        DataType = ftFloat
      end
      item
        Name = 'CRN_OperSum_Inv'
        DataType = ftFloat
      end
      item
        Name = 'OperSumCalced'
        DataType = ftFloat
      end
      item
        Name = 'OperSum_OfferCalced'
        DataType = ftFloat
      end
      item
        Name = 'Blocked'
        DataType = ftBoolean
      end
      item
        Name = 'CurrencyBsnName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'OperTypeSIGN'
        DataType = ftInteger
      end
      item
        Name = 'HasChild'
        DataType = ftInteger
      end
      item
        Name = 'Dig1'
        DataType = ftFloat
      end
      item
        Name = 'Dig2'
        DataType = ftFloat
      end
      item
        Name = 'Dig3'
        DataType = ftFloat
      end
      item
        Name = 'Dig4'
        DataType = ftFloat
      end
      item
        Name = 'Dig5'
        DataType = ftFloat
      end
      item
        Name = 'Dig6'
        DataType = ftFloat
      end
      item
        Name = 'Dig7'
        DataType = ftFloat
      end
      item
        Name = 'Dig8'
        DataType = ftFloat
      end
      item
        Name = 'Dig9'
        DataType = ftFloat
      end
      item
        Name = 'Dig10'
        DataType = ftFloat
      end
      item
        Name = 'Dig11'
        DataType = ftFloat
      end
      item
        Name = 'Dig12'
        DataType = ftFloat
      end
      item
        Name = 'Dig13'
        DataType = ftFloat
      end
      item
        Name = 'Dig14'
        DataType = ftFloat
      end
      item
        Name = 'Dig15'
        DataType = ftFloat
      end
      item
        Name = 'Str1'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str2'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str3'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str4'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str5'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str6'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str7'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str8'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str9'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str10'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str11'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str12'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str13'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str14'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str15'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Date1'
        DataType = ftDateTime
      end
      item
        Name = 'Date2'
        DataType = ftDateTime
      end
      item
        Name = 'Date3'
        DataType = ftDateTime
      end
      item
        Name = 'Date4'
        DataType = ftDateTime
      end
      item
        Name = 'Date5'
        DataType = ftDateTime
      end
      item
        Name = 'Date6'
        DataType = ftDateTime
      end
      item
        Name = 'Date7'
        DataType = ftDateTime
      end
      item
        Name = 'Date8'
        DataType = ftDateTime
      end
      item
        Name = 'Date9'
        DataType = ftDateTime
      end
      item
        Name = 'Date10'
        DataType = ftDateTime
      end
      item
        Name = 'Date11'
        DataType = ftDateTime
      end
      item
        Name = 'Date12'
        DataType = ftDateTime
      end
      item
        Name = 'Date13'
        DataType = ftDateTime
      end
      item
        Name = 'Date14'
        DataType = ftDateTime
      end
      item
        Name = 'Date15'
        DataType = ftDateTime
      end
      item
        Name = 'OpComment'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'is_Mirr'
        DataType = ftBoolean
      end>
    Left = 216
    Top = 168
  end
  object cdsExtDataDict: TClientDataSet
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
        Name = '@id_business'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dsExtDataDict'
    RemoteServer = DM.rsCA
    Left = 88
    Top = 280
    object cdsExtDataDictid_Oper_ExtDataNames: TIntegerField
      FieldName = 'id_Oper_ExtDataNames'
    end
    object cdsExtDataDictid_business: TIntegerField
      FieldName = 'id_business'
    end
    object cdsExtDataDictType: TIntegerField
      FieldName = 'Type'
    end
    object cdsExtDataDictNumPrm: TIntegerField
      FieldName = 'NumPrm'
    end
    object cdsExtDataDictParName: TStringField
      FieldName = 'ParName'
      Size = 100
    end
    object cdsExtDataDictVisible: TBooleanField
      FieldName = 'Visible'
    end
  end
end
