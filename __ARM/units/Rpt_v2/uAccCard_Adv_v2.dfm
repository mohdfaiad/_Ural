object AccCard_adv_v2: TAccCard_adv_v2
  Left = 188
  Top = 177
  Width = 815
  Height = 436
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = '����������� �������� �� ������'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 166
    Width = 807
    Height = 5
    Cursor = crVSplit
    Align = alTop
  end
  object Panel2: TPanel
    Left = 0
    Top = 368
    Width = 807
    Height = 41
    Align = alBottom
    Caption = ' '
    TabOrder = 0
    object Label4: TLabel
      Left = 8
      Top = 12
      Width = 44
      Height = 13
      Caption = '�����:'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnCancel: TButton
      Left = 721
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '�������'
      ModalResult = 2
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object Edit1: TEdit
      Left = 56
      Top = 9
      Width = 121
      Height = 21
      Color = clMenu
      ReadOnly = True
      TabOrder = 1
    end
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 171
    Width = 807
    Height = 40
    AutoSize = True
    ButtonHeight = 36
    ButtonWidth = 62
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    Flat = True
    Images = ilButtons
    Indent = 5
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 5
      Top = 0
      Hint = 'Page Setup'
      AllowAllUp = True
      Caption = '���������'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 67
      Top = 0
      Hint = 'Print Preview'
      AllowAllUp = True
      Caption = '��������'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 129
      Top = 0
      Hint = 'Print'
      AllowAllUp = True
      Caption = '������'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 191
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 199
      Top = 0
      Action = aProp
    end
    object ToolButton6: TToolButton
      Left = 261
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object ToolButton7: TToolButton
      Left = 269
      Top = 0
      Action = aExport
    end
    object ToolButton8: TToolButton
      Left = 331
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 8
      Style = tbsSeparator
    end
    object RxSpeedButton1: TRxSpeedButton
      Left = 339
      Top = 0
      Width = 128
      Height = 36
      Action = aExportSmp
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000008080000080800000808000008080000000000000000000008080
        8000808080008080800080808000808080008080800080808000808080000000
        000080800000FFFF0000FFFF0000FFFFFF0000000000FF00FF00FF00FF000000
        0000FFFF00008080000080800000808000008080000080800000000000008080
        0000FFFF0000FFFF0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFF00008080000080800000808000000000000080800000FFFF
        0000FFFF0000FFFFFF00000000008080000000000000FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFF0000808000000000000080800000FFFF0000FFFF
        0000FFFFFF0000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000080800000FFFF0000FFFF0000FFFF
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000080800000FFFF0000FFFF0000FFFFFF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000080800000FFFF0000FFFF0000FFFFFF00000000008080
        00008080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000080800000FFFF0000FFFF0000FFFFFF0000000000FFFF00008080
        0000808000008080800000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        000080800000FFFF0000FFFF0000FFFFFF0000000000FF00FF0000000000FFFF
        000080800000808000008080800000000000FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
        0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Visible = False
    end
    object ToolButton9: TToolButton
      Left = 467
      Top = 0
      Width = 8
      Caption = 'ToolButton9'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object ToolButton10: TToolButton
      Left = 475
      Top = 0
      Action = aSettings
    end
    object Button1: TButton
      Left = 537
      Top = 0
      Width = 75
      Height = 36
      Caption = 'Save'
      TabOrder = 0
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 612
      Top = 0
      Width = 75
      Height = 36
      Caption = 'Load'
      TabOrder = 1
      Visible = False
      OnClick = Button2Click
    end
  end
  object AdvStringGrid1: TAdvColumnGrid
    Left = 0
    Top = 211
    Width = 807
    Height = 157
    Cursor = crDefault
    Align = alClient
    ColCount = 1
    Ctl3D = True
    DefaultRowHeight = 21
    DefaultDrawing = True
    FixedCols = 0
    RowCount = 5
    FixedRows = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GridLineWidth = 1
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    OnDblClick = AdvStringGrid1DblClick
    GridLineColor = clSilver
    ActiveCellShow = False
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWhite
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'MS Sans Serif'
    ActiveCellFont.Style = [fsBold]
    ActiveCellColor = clHighlight
    Bands.Active = True
    Bands.PrimaryColor = clInfoBk
    Bands.PrimaryLength = 1
    Bands.SecondaryColor = clWindow
    Bands.SecondaryLength = 1
    Bands.Print = False
    AutoNumAlign = False
    AutoSize = False
    VAlignment = vtaCenter
    EnhTextSize = True
    EnhRowColMove = False
    SizeWithForm = False
    Multilinecells = True
    OnGetCellColor = AdvStringGrid1GetCellColor
    OnGetCellPrintColor = AdvStringGrid1GetCellColor
    OnGetAlignment = AdvStringGrid1GetAlignment
    OnExpandNode = AdvStringGrid1ExpandNode
    OnContractNode = AdvStringGrid1ContractNode
    OnClickCell = AdvStringGrid1ClickCell
    OnCanEditCell = AdvStringGrid1CanEditCell
    DragDropSettings.OleAcceptFiles = True
    DragDropSettings.OleAcceptText = True
    SortSettings.AutoColumnMerge = False
    SortSettings.Column = 0
    SortSettings.Show = False
    SortSettings.IndexShow = False
    SortSettings.IndexColor = clYellow
    SortSettings.Full = True
    SortSettings.SingleColumn = False
    SortSettings.IgnoreBlanks = False
    SortSettings.BlankPos = blFirst
    SortSettings.AutoFormat = True
    SortSettings.Direction = sdAscending
    SortSettings.InitSortDirection = sdAscending
    SortSettings.FixedCols = False
    SortSettings.NormalCellsOnly = False
    SortSettings.Row = 0
    SortSettings.UndoSort = False
    FloatingFooter.Color = clBtnFace
    FloatingFooter.Column = 0
    FloatingFooter.FooterStyle = fsFixedLastRow
    FloatingFooter.Visible = False
    ControlLook.Color = clBlack
    ControlLook.CheckSize = 15
    ControlLook.RadioSize = 10
    ControlLook.ControlStyle = csClassic
    ControlLook.DropDownAlwaysVisible = False
    ControlLook.FlatButton = False
    ControlLook.ProgressMarginX = 2
    ControlLook.ProgressMarginY = 2
    ControlLook.ProgressXP = False
    EnableBlink = False
    EnableHTML = True
    EnableWheel = True
    Flat = False
    Look = glSoft
    HintColor = clInfoBk
    SelectionColor = clHighlight
    SelectionTextColor = clHighlightText
    SelectionRectangle = False
    SelectionResizer = False
    SelectionRTFKeep = False
    HintShowCells = False
    HintShowLargeText = False
    HintShowSizing = False
    PrintSettings.FooterSize = 0
    PrintSettings.HeaderSize = 0
    PrintSettings.Time = ppNone
    PrintSettings.Date = ppNone
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.PageNr = ppNone
    PrintSettings.Title = ppTopRight
    PrintSettings.TitleLines.Strings = (
      '')
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'MS Sans Serif'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'MS Sans Serif'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'MS Sans Serif'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'MS Sans Serif'
    PrintSettings.FooterFont.Style = []
    PrintSettings.Borders = pbSingle
    PrintSettings.BorderStyle = psSolid
    PrintSettings.Centered = False
    PrintSettings.RepeatFixedRows = False
    PrintSettings.RepeatFixedCols = False
    PrintSettings.LeftSize = 0
    PrintSettings.RightSize = 0
    PrintSettings.ColumnSpacing = 0
    PrintSettings.RowSpacing = 0
    PrintSettings.TitleSpacing = 0
    PrintSettings.Orientation = poPortrait
    PrintSettings.PageNumberOffset = 0
    PrintSettings.MaxPagesOffset = 0
    PrintSettings.FixedWidth = 0
    PrintSettings.FixedHeight = 0
    PrintSettings.UseFixedHeight = False
    PrintSettings.UseFixedWidth = False
    PrintSettings.FitToPage = fpAlways
    PrintSettings.PageNumSep = '/'
    PrintSettings.NoAutoSize = True
    PrintSettings.NoAutoSizeRow = True
    PrintSettings.PrintGraphics = False
    PrintSettings.UseDisplayFont = True
    HTMLSettings.Width = 100
    HTMLSettings.XHTML = False
    Navigation.AdvanceDirection = adLeftRight
    Navigation.AllowClipboardShortCuts = True
    Navigation.AllowRTFClipboard = True
    Navigation.AllowFmtClipboard = True
    Navigation.InsertPosition = pInsertBefore
    Navigation.HomeEndKey = heFirstLastColumn
    Navigation.TabToNextAtEnd = False
    Navigation.TabAdvanceDirection = adLeftRight
    ColumnSize.Location = clRegistry
    CellNode.Color = clSilver
    CellNode.ExpandOne = False
    CellNode.NodeColor = clBlack
    CellNode.NodeIndent = 12
    CellNode.ShowTree = False
    MaxEditLength = 0
    MouseActions.DisjunctCellSelect = True
    Grouping.HeaderColor = clNone
    Grouping.HeaderColorTo = clNone
    Grouping.HeaderTextColor = clNone
    Grouping.MergeHeader = False
    Grouping.MergeSummary = False
    Grouping.Summary = False
    Grouping.SummaryColor = clNone
    Grouping.SummaryColorTo = clNone
    Grouping.SummaryTextColor = clNone
    GridImages = ilImage2
    IntelliPan = ipHorizontal
    URLColor = clBlue
    URLShow = False
    URLFull = False
    URLEdit = False
    ScrollType = ssNormal
    ScrollColor = clNone
    ScrollWidth = 16
    ScrollSynch = False
    ScrollProportional = False
    ScrollHints = shNone
    OemConvert = False
    FixedFooters = 0
    FixedRightCols = 0
    FixedColWidth = 8
    FixedRowHeight = 21
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = []
    FixedAsButtons = True
    FloatFormat = '%.2f'
    IntegralHeight = False
    WordWrap = False
    Lookup = False
    LookupCaseSensitive = False
    LookupHistory = False
    BackGround.Top = 0
    BackGround.Left = 0
    BackGround.Display = bdTile
    BackGround.Cells = bcNormal
    Filter = <>
    Columns = <
      item
        AutoMinSize = 0
        AutoMaxSize = 0
        Alignment = taLeftJustify
        Borders = []
        BorderPen.Color = clSilver
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        ColumnPopupType = cpFixedCellsRClick
        EditLength = 0
        Editor = edNormal
        FilterCaseSensitive = False
        Fixed = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MinSize = 0
        MaxSize = 0
        Password = False
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintColor = clWhite
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'Tahoma'
        PrintFont.Style = []
        ReadOnly = False
        ShowBands = False
        SortStyle = ssAutomatic
        SpinMax = 0
        SpinMin = 0
        SpinStep = 1
        Tag = 0
        Width = 8
      end>
    FilterDropDown.Color = clWindow
    FilterDropDown.ColumnWidth = False
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -11
    FilterDropDown.Font.Name = 'MS Sans Serif'
    FilterDropDown.Font.Style = []
    FilterDropDown.Height = 200
    FilterDropDown.Width = 200
    ColWidths = (
      8)
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 807
    Height = 32
    Align = alTop
    Caption = ' '
    TabOrder = 3
    inline fBsnSelector1: TfBsnSelector
      Left = 1
      Top = 1
      Width = 271
      Height = 30
      Align = alLeft
      inherited Label1: TLabel
        Top = 7
      end
      inherited edName: TEdit
        Top = 4
        Width = 185
      end
      inherited Button1: TButton
        Left = 240
        Top = 4
        OnClick = fBsnSelector1Button1Click
      end
    end
    object Panel5: TPanel
      Left = 272
      Top = 1
      Width = 534
      Height = 30
      Align = alClient
      Caption = ' '
      TabOrder = 1
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 532
        Height = 28
        Align = alClient
        BevelOuter = bvNone
        Caption = ' '
        TabOrder = 0
        object Label6: TLabel
          Left = 141
          Top = 5
          Width = 15
          Height = 13
          Caption = ' ��'
        end
        object Label7: TLabel
          Left = 8
          Top = 5
          Width = 35
          Height = 13
          Caption = '���� �'
        end
        object Label5: TLabel
          Left = 302
          Top = 7
          Width = 49
          Height = 13
          Caption = '������:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dtTo: TDateTimePicker
          Left = 165
          Top = 2
          Width = 82
          Height = 21
          CalAlignment = dtaLeft
          Date = 37604.576338125
          Time = 37604.576338125
          Checked = False
          DateFormat = dfShort
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 0
        end
        object dtFrom: TDateTimePicker
          Left = 53
          Top = 2
          Width = 84
          Height = 21
          CalAlignment = dtaLeft
          Date = 37604.576338125
          Time = 37604.576338125
          Checked = False
          DateFormat = dfShort
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 1
        end
        object BitBtn3: TBitBtn
          Left = 257
          Top = 2
          Width = 28
          Height = 25
          TabOrder = 2
          OnClick = BitBtn2Click
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000CED6D600FF00FF00CED6D6008484
            8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000CED6D600FF00FF00FF00FF008484
            8400FFFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00009C31009CFFFF00FFFF
            FF009CFFFF00FFFFFF00FF00FF0000000000CED6D600FF00FF00CED6D6008484
            8400FFFFFF009CFFFF00FFFFFF009CFFFF00009C3100009C3100FFFFFF009CFF
            FF00FFFFFF009CFFFF00FF00FF0000000000CED6D600FF00FF00FF00FF008484
            8400FFFFFF00FFFFFF009CFFFF00009C3100009C3100009C3100009C3100009C
            31009CFFFF00FFFFFF00FF00FF0000000000CED6D600FF00FF00FF00FF008484
            8400FFFFFF009CFFFF00FFFFFF009CFFFF00009C3100009C3100FFFFFF00639C
            0000636300009CFFFF00FF00FF0000000000CED6D600FF00FF00FF00FF008484
            8400FFFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00009C31009CFFFF00FFFF
            FF0063630000FFFFFF00FF00FF0000000000CED6D600FF00FF00FF00FF008484
            8400FFFFFF009CFFFF00636300009CFFFF00FFFFFF009CFFFF00FFFFFF009CFF
            FF00636300009CFFFF00FF00FF0000000000CED6D600FF00FF00FF00FF008484
            8400FFFFFF00FFFFFF0063630000FFFFFF009CFFFF00009C31009CFFFF00FFFF
            FF009CFFFF00FFFFFF00FF00FF0000000000CED6D600FF00FF00FF00FF008484
            8400FFFFFF009CFFFF0063630000639C0000FFFFFF00009C3100009C31009CFF
            FF00FFFFFF009CFFFF00FF00FF0000000000CED6D600FF00FF00FF00FF008484
            8400FFFFFF00FFFFFF009CFFFF00009C3100009C3100009C3100009C3100009C
            31009CFFFF00FFFFFF00FF00FF0000000000CED6D600FF00FF00FF00FF008484
            8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00009C3100009C31009CFF
            FF00FFFFFF00FF00FF00FF00FF0000000000CED6D600FF00FF00FF00FF008484
            8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00009C31009CFFFF00FFFF
            FF0000000000000000000000000000000000CED6D600FF00FF00FF00FF008484
            8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009CFFFF00FFFFFF009CFF
            FF0084848400FFFFFF0000000000CED6D600CED6D600FF00FF00FF00FF008484
            8400FFFFFF00FFFFFF00FFFFFF00CED6D600FFFFFF00FFFFFF00FFFFFF00FFFF
            FF008484840000000000FF00FF00CED6D600FF00FF00CED6D600FF00FF008484
            8400848484008484840084848400848484008484840084848400848484008484
            840084848400CED6D600CED6D600FF00FF00CED6D600FF00FF00}
        end
        object lcCur: TRxDBLookupCombo
          Left = 358
          Top = 4
          Width = 67
          Height = 21
          DropDownCount = 8
          DisplayEmpty = '���'
          LookupField = 'Id_Currency'
          LookupDisplay = 'Name'
          LookupSource = dsCur
          TabOrder = 3
        end
      end
    end
  end
  inline fObjList1: TfObjList
    Top = 32
    Width = 807
    Height = 134
    Align = alTop
    TabOrder = 4
    inherited ToolBar1: TToolBar
      Width = 807
    end
    inherited RxDBGrid1: TRxDBGrid
      Width = 807
      Height = 107
      TitleFont.Charset = RUSSIAN_CHARSET
    end
  end
  object cdsBalanceBy: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftDateTime
        Name = '@DateFrom'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@DateTo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@id_AccList'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@id_AccGroupList'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@id_business'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@id_User'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@id_Currency'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Repr'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Src'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Imp_PayBasic'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@AccInv_PayAssignment'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Contract'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@OpComment'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@CalcRez'
        ParamType = ptInput
      end>
    ProviderName = 'dsAccAdv'
    RemoteServer = DM.rsCA
    AfterOpen = cdsBalanceByAfterOpen
    Left = 144
    Top = 152
    object cdsBalanceByTmpID: TAutoIncField
      FieldName = 'TmpID'
      ReadOnly = True
    end
    object cdsBalanceByTmp: TIntegerField
      FieldName = 'Tmp'
    end
    object cdsBalanceByIsRes: TBooleanField
      FieldName = 'IsRes'
    end
    object cdsBalanceByTotalRez: TFloatField
      FieldName = 'TotalRez'
      DisplayFormat = '0.00'
    end
    object cdsBalanceByid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object cdsBalanceByOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object cdsBalanceByOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object cdsBalanceByid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object cdsBalanceByid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object cdsBalanceByDateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object cdsBalanceByCurrencyShortName: TStringField
      FieldName = 'CurrencyShortName'
      Size = 255
    end
    object cdsBalanceByOperSummSysCur: TFloatField
      FieldName = 'OperSummSysCur'
    end
    object cdsBalanceByOperSum_Offer: TFloatField
      FieldName = 'OperSum_Offer'
    end
    object cdsBalanceById_Currency_Offer: TIntegerField
      FieldName = 'Id_Currency_Offer'
    end
    object cdsBalanceByOperNum: TStringField
      FieldName = 'OperNum'
      Size = 255
    end
    object cdsBalanceByisGrpOper: TBooleanField
      FieldName = 'isGrpOper'
    end
    object cdsBalanceByid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object cdsBalanceByis_Mirr: TBooleanField
      FieldName = 'is_Mirr'
    end
    object cdsBalanceByDocz: TStringField
      FieldName = 'Docz'
      Size = 1000
    end
    object cdsBalanceByNNN: TIntegerField
      FieldName = 'NNN'
    end
    object cdsBalanceByid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object cdsBalanceByid_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object cdsBalanceByid_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object cdsBalanceByid_Repr_Ex: TIntegerField
      FieldName = 'id_Repr_Ex'
    end
    object cdsBalanceByS1: TBCDField
      FieldName = 'S1'
      Precision = 18
      Size = 2
    end
    object cdsBalanceByS2: TBCDField
      FieldName = 'S2'
      Precision = 18
      Size = 2
    end
    object cdsBalanceBySumIN: TBCDField
      FieldName = 'SumIN'
      Precision = 18
      Size = 2
    end
    object cdsBalanceBySumOUT: TBCDField
      FieldName = 'SumOUT'
      Precision = 18
      Size = 2
    end
    object cdsBalanceByReprName: TStringField
      FieldName = 'ReprName'
      Size = 255
    end
    object cdsBalanceBySrcName: TStringField
      FieldName = 'SrcName'
      Size = 255
    end
    object cdsBalanceByImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object cdsBalanceByAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object cdsBalanceByContract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object cdsBalanceByOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object cdsBalanceByStr1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object cdsBalanceByStr2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object cdsBalanceByStr3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object cdsBalanceByStr4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object cdsBalanceByStr5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object cdsBalanceByStr6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object cdsBalanceByStr7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object cdsBalanceByStr8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object cdsBalanceByStr9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object cdsBalanceByStr10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object cdsBalanceByStr11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object cdsBalanceByStr12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object cdsBalanceByStr13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object cdsBalanceByStr14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object cdsBalanceByStr15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object cdsBalanceByGrpOper: TIntegerField
      FieldName = 'GrpOper'
    end
    object cdsBalanceByOperSum_OfferABS: TFloatField
      FieldName = 'OperSum_OfferABS'
    end
    object cdsBalanceByDig1: TFloatField
      FieldName = 'Dig1'
    end
    object cdsBalanceByDig2: TFloatField
      FieldName = 'Dig2'
    end
    object cdsBalanceByDig3: TFloatField
      FieldName = 'Dig3'
    end
    object cdsBalanceByDig4: TFloatField
      FieldName = 'Dig4'
    end
    object cdsBalanceByDig5: TFloatField
      FieldName = 'Dig5'
    end
    object cdsBalanceByDig6: TFloatField
      FieldName = 'Dig6'
    end
    object cdsBalanceByDig7: TFloatField
      FieldName = 'Dig7'
    end
    object cdsBalanceByDig8: TFloatField
      FieldName = 'Dig8'
    end
    object cdsBalanceByDig9: TFloatField
      FieldName = 'Dig9'
    end
    object cdsBalanceByDig10: TFloatField
      FieldName = 'Dig10'
    end
    object cdsBalanceByDig11: TFloatField
      FieldName = 'Dig11'
    end
    object cdsBalanceByDig12: TFloatField
      FieldName = 'Dig12'
    end
    object cdsBalanceByDig13: TFloatField
      FieldName = 'Dig13'
    end
    object cdsBalanceByDig14: TFloatField
      FieldName = 'Dig14'
    end
    object cdsBalanceByDig15: TFloatField
      FieldName = 'Dig15'
    end
  end
  object dsArc: TDataSource
    DataSet = cdsBalanceBy
    OnDataChange = dsArcDataChange
    Left = 104
    Top = 208
  end
  object ilImage2: TImageList
    Left = 288
    Top = 112
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      0000000000000000000084848400000000008484840000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000C6C6C6000000000000000000848484000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      000000000000FFFF0000FFFF000000000000FFFF0000FF000000000000000000
      000084848400000000000000000000000000FFFFFF00FFFFFF00FFFFFF008484
      0000848400008484000084848400FFFFFF0000840000C6C6C600848484008484
      000000840000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000FF00FFFF
      000000000000000000008484840000000000FFFFFF00FFFFFF00008400008484
      0000848400008484000084848400FFFFFF0084848400C6C6C600848484008484
      00008484000000840000FFFFFF00FFFFFF000000000000000000808080000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF000000000000FFFF0000FF0000000000FF00FF00
      0000FFFF0000FF0000000000000000000000FFFFFF00FFFFFF00848400000084
      0000848400008484000084840000FFFFFF0000840000C6C6C600C6C6C6008484
      8400848400008484000000840000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000FF00FFFF
      0000FF000000FFFF00000000000000000000FFFFFF0000840000848400000000
      0000008400000084000000840000FFFFFF00FFFFFF00C6C6C600008400000084
      0000008400000084000000840000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF000000000000FFFF0000FF0000000000FF00FF00
      0000FFFF0000FF0000000000000000000000FFFFFF0084840000848400008484
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000840000FFFFFF00FFFF
      FF00848400008484840084840000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000FF00FFFF
      0000FF000000FFFF000000000000000000000084000084848400848484008484
      00000084000000840000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084
      0000848484008484840084848400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF008484840084848400000000008484840084848400000000000000
      000000000000FF000000000000000000000000840000C6C6C600848484008484
      84008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084
      0000848400008484840084848400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF00008484
      84000000FF00FFFF000000000000FFFF000000000000848484000000FF000000
      FF0000000000FFFF00000000000000000000FFFFFF00C6C6C600C6C6C6008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      0000848400008484000084840000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      0000FFFF00000000FF00FFFF00000000000084848400848484000000FF000000
      FF000000000000000000000000000000000084848400C6C6C600C6C6C600C6C6
      C60000840000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00008400008484000000840000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF000000000000FFFF
      000000000000FFFF00000000FF00848484000000FF000000FF000000FF000000
      FF000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00008400008484000000840000FFFFFF008484000084840000848400008484
      840000840000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00000000FF0000000000848484000000FF000000FF000000FF000000
      FF000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFFFF008484
      8400848400008484000084840000FFFFFF00FFFFFF0000840000848400008484
      00008484840000840000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      00000000000000000000FFFF00008484840084848400848484000000FF000000
      FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00C6C6
      C60084848400848484008484840000840000FFFFFF0084840000848400008484
      0000848400008484000000840000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000FFFF000000000000848484000000FF000000
      FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000084
      0000C6C6C600C6C6C60084848400848484008484000084840000848400008484
      000000840000FFFFFF0000840000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000848484008484
      840000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00008400000084000000840000008400000084000000840000008400000084
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      0000000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000C6C6C6000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF00B5D6
      B5005AAD5A00218C2100007B0000007B0000007B000008840800218C21005AAD
      5A00B5D6B500FFFFFF0000000000000000008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF00848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      000000000000FFFF0000FFFF0000FFFFFF00FFFF0000FF000000000000000000
      00008484840000000000000000000000000000000000DEEFDE00399C39000084
      000000840000008400000084000000C6000000C6000000840000008400000084
      00000084000031943100DEEFDE00000000008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF008484840000FF
      FF00848484000000000000000000000000000000000000000000000000000084
      8400000000000084840000000000008484000000000000848400000000000084
      840000000000000000000000000000000000848484000000000000000000FFFF
      00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000FF00FFFF
      000000000000000000008484840000000000E7F7E700188C1800008400000084
      0000008400000084000000D6000000FF000000FF000000BD0000008400000084
      00000084000000840000188C1800E7EFE7008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF008484840000FF
      FF0000FFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000848400000000000000000000848400008484000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000FFFFFF00FFFF0000FF0000000000FF00FF00
      0000FFFF0000FF000000000000000000000063AD630000840000008400000084
      0000008400000084000000E7000000A5000000B5000000F70000008400000084
      00000084000000840000008400005AAD5A008484840084848400848484008484
      84008484840084848400848484008484840084848400848484008484840000FF
      FF0000FFFF00848484008484840000000000C6C6C60000848400008484000084
      8400008484000084840000848400008484000084840000000000008400000084
      84000084840000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000FF00FFFF
      0000FF000000FFFF00000000000000000000188C180000840000008400000084
      000000840000008400000094000000C6000000DE000000EF0000008400000084
      0000008400000084000000840000088408008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF00848484008484
      840000FFFF008484840000FFFF0084848400FFFFFF0000848400008484000084
      840000848400008484000084840000848400008484000084840000FFFF000000
      00000084840000FFFF00000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000FFFFFF00FFFF0000FF0000000000FF00FF00
      0000FFFF0000FF0000000000000000000000188C180000840000008400000084
      0000008400000084000000F7000000EF000000DE000000A50000008400000084
      0000008400000084000000840000007B00008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF008484840000FF
      FF00848484008484840000FFFF0084848400FFFFFF0000848400008484000084
      840000848400008484000084840000FFFF0000FFFF00000000000084840000FF
      FF0000FFFF0000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000FF00FFFF
      0000FF000000FFFF000000000000000000005AAD5A0000840000008400000084
      0000008400000084000000FF000000B5000000A5000000D60000008400000084
      00000084000000840000008400004AA54A008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF008484840000FF
      FF0000FFFF008484840000FFFF0084848400FFFFFF00FFFFFF00008484000084
      8400008484000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000848400FFFFFF000000000000000000FFFF0000FFFF0000FFFF
      00000000FF008484840084848400FFFFFF0084848400848484000000FF00FF00
      0000FFFF0000FF0000000000000000000000DEEFDE00108C1000008400000084
      0000008400000084000000EF000000F7000000F7000000DE0000008400000084
      0000008400000084000008840800D6E7D6008484840084848400848484008484
      84008484840084848400848484008484840084848400848484008484840000FF
      FF0000FFFF0084848400848484008484840084000000FFFFFF00C6C6C60000FF
      FF0000000000000000000084840000FFFF0000FFFF0000848400000000000084
      84000084840000000000FFFFFF008400000000000000FFFF0000FFFF00008484
      84000000FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00000000FF008484
      8400FF000000FFFF0000000000000000000000000000D6E7D600188C18000084
      00000084000000840000008C000000DE000000DE000000840000008400000084
      000000840000188C1800C6DEC600000000008484840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF008484
      840000FFFF008484840000FFFF008484840084000000FFFFFF00C6C6C60000FF
      FF0000FFFF0000FFFF0000000000000000000000000000848400008484000084
      840000848400FFFFFF00FFFFFF0084000000000000008484840084848400FFFF
      FF00FFFF00000000FF00FFFF0000FFFFFF00FFFF00000000FF00FFFF0000FFFF
      FF00848484008484840000000000000000000000000000000000F7FFF70094C6
      9400399C39000084000000840000008C0000008C00000084000000840000399C
      390094C69400F7FFF7000000000000000000000000008484840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FF
      FF00848484008484840000FFFF00848484008400000084000000FFFFFF000000
      000000FFFF0000FFFF0000848400008484000084840000FFFF0000FFFF0000FF
      FF0000848400FFFFFF00840000008400000000000000FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF00000000FF000000FF000000FF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF000000000000000000000000000000000000000000000000
      0000EFF7EF0029942900008400000084000000840000008400005AAD5A00F7FF
      F700000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000FFFF00848484008400000084000000000000000000
      000000000000008484000084840000FFFF000084840000000000000000000000
      0000FFFFFF00840000008400000084000000848484000000000000000000FFFF
      FF00FFFF00000000FF00FFFFFF00FFFF0000FFFFFF000000FF00FFFF0000FFFF
      FF0000000000000000008484840000000000000000000000000000000000F7F7
      F700319C31000084000000840000008400000084000000840000008400003194
      3100E7EFE7000000000000000000000000000000000000000000000000008484
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484840000FFFF0000FF
      FF0000FFFF0000FFFF0084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000000000000000000000848484000000
      000000000000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00000000000000
      0000848484000000000000000000000000000000000000000000F7F7F700399C
      3900008400000084000000840000008400000084000000840000008400000084
      0000108C1000C6DEC60000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000848484000000000000000000FFFF00000000000000000000848484000000
      000000000000000000000000000000000000000000000000000094BD940084BD
      840063AD63004AA54A008CBD8C0073B57300088408000884080018841800A5CE
      A5007BBD7B0052A55200B5D6B500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FC7F0000F7FF0000F01F0000E3EF0000
      C1070000E3EF000080010000C1EF000001010000C1EF000000010000F7EF0000
      01010000F7EF000000010000F7EF000001010000F7EF000002810000F7EF0000
      11010000F7EF000028010000F783000092010000F7830000C4030000F7C70000
      F0070000F7C70000FC4F0000FFEF0000FFFFFFFFFFFFFC7FFFFF001FFF7FF01F
      C003000FE00FC00780010007C00F000100000003000700010000000100030001
      0000000000030001000000000000000100000000000000010000000000000001
      8001000000000001C003800000000001F00FC00008000001E007E0007FF0C007
      C003F000FFFCF01FC001FFFFFFFEFC7F00000000000000000000000000000000
      000000000000}
  end
  object ilButtons: TImageList
    Left = 528
    Top = 34
    Bitmap = {
      494C010109000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008402
      0400FCFE0400FC02040084020400000000000000000004028400000000000402
      FC00040284000402040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008402
      0400FCFE0400FC02040084020400000000000000000004028400000000000402
      FC00040284000402040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008402
      0400C4C2C400FCFE0400FC020400000000000000000004028400FCFEFC00C4C2
      C4000402FC000402040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840204008402040084020400000000000000000000000000040284000402
      8400040284000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004020400C4C2C4000402040000000000000000000000000084828400C4C2
      C400040204000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004020400C4C2C4000402040000000000000000000000000084828400C4C2
      C400040204000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004020400C4C2C4000402040000000000000000000000000084828400C4C2
      C400040204000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000402040000000000000000000402
      040004020400C4C2C40004020400000000000000000000000000040204000402
      0400040204000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008482840004020400040204008482
      840084828400C4C2C40084828400040204000402040004020400848284000402
      0400040204000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C2C400FCFEFC00FCFEFC00C4C2
      C400C4C2C400C4C2C400C4C2C400C4C2C400C4C2C400FCFEFC0004020400C4C2
      C400040204000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008482840084828400FCFE
      FC00FCFEFC00FCFEFC00FCFEFC00FCFEFC00FCFEFC0004020400C4C2C400C4C2
      C400848284000402040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008482
      8400848284008482840084828400848284008482840084828400C4C2C400C4C2
      C400848284000402040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400C4C2C400C4C2
      C400848284000402040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400FCFEFC00C4C2
      C400848284000402040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084828400848284008482
      8400848284000402040000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000080800000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008080
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      0000808000008080000080800000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000080800000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008080
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000080808000808080008080
      800080808000808080008080800080808000808080000000000080800000FFFF
      0000FFFF0000FFFFFF0000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000080800000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008080
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFF00008080
      0000808000008080000080800000808000000000000080800000FFFF0000FFFF
      0000FFFFFF000000000000000000000000008000000080000000800000008000
      0000800000008000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0080000000800000000000000080800000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008080
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      00008080000080800000808000000000000080800000FFFF0000FFFF0000FFFF
      FF0000000000808000000000000000000000800000008000000000FFFF0000FF
      FF0000FFFF0000FFFF0080000000800000008000000080000000800000008000
      00008000000000FFFF0000FFFF00800000000000000080800000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000800000FFFF0000FFFF00008080
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000808000000000000080800000FFFF0000FFFF0000FFFFFF000000
      00000000000000000000000000000000000000FFFF0000FFFF00800000008000
      0000008080000080800080000000008080008000000080000000008080000080
      8000800000000080800000FFFF00800000000000000080800000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000008000000080000000800000008000000080
      00000080000000800000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080800000FFFF0000FFFF0000FFFFFF00000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000008080008000000080000000008080008000000000808000008080008000
      0000800000000080800000FFFF00800000000000000080800000FFFF0000FFFF
      0000FFFF0000FFFF000000800000008000000080000000800000008000000080
      00000080000000800000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080800000FFFF0000FFFF0000FFFFFF0000000000000000000000
      000000000000000000000000000000000000FF00000080000000FF0000008000
      000080000000FF000000FF000000FF000000FF00000080000000FF000000FF00
      00008000000000FFFF0080000000800000000000000080800000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000008000000080000000800000008000000080
      00000080000000800000000000000000000000000000FFFFFF00000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      000080800000FFFF0000FFFF0000FFFFFF000000000080800000808080000000
      0000000000000000000000000000000000008000000080000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000080000000FF000000FF00
      000000FFFF008000000080000000800000000000000080800000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000800000FFFF0000FFFF00008080
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000008080
      0000FFFF0000FFFF0000FFFFFF0000000000FFFF000080800000808000008080
      8000000000000000000000000000000000008000000080000000800000008000
      00008000000080000000800000008000000080000000800000008000000000FF
      FF00800000008000000080000000800000000000000080800000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008400000084000000000000000000000080800000FFFF
      0000FFFF0000FFFFFF00000000000000000000000000FFFF0000808000008080
      0000808080000000000000000000000000008000000080000000800000008000
      000080000000800000008000000080000000800000008000000000FFFF008000
      0000800000008000000080000000800000000000000080800000FFFF000000FF
      0000FFFF000000FF0000FFFF000000FF0000FFFF000000FF0000FFFF00008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000840000008400000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000080800000FFFF000000FF
      0000FFFF000000FF0000FFFF000000FF0000FFFF000000FF0000FFFF00008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000080800000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
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
      000000000000000000007F7F7F007F7F7F007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C0000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000000000000000000000000000000000007F7F7F000000
      00000000000000000000BFBFBF00BFBFBF00BFBFBF0000000000000000000000
      000000000000000000007F7F7F00000000008000000080000000800000008000
      000080000000800000008080800080000000FFFFFF0080000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000FFFF0000FFFF0000FFFF00C0C0C000C0C0
      C00000000000000000000000000000000000000000007F7F7F0000000000BFBF
      BF007F7F7F000000000000000000BFBFBF00BFBFBF00000000007F7F7F00BFBF
      BF0000000000000000007F7F7F00000000008000000080000000808080008080
      800080808000808080008080800080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008000000080000000000000008080800080808000808080000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FFFF
      FF000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000808080008080800080808000C0C0C000C0C0
      C00000000000C0C0C000000000000000000000000000000000007F7F7F00BFBF
      BF007F7F7F00BFBFBF00BFBFBF007F7F7F0000000000BFBFBF007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00000000008000000080000000808080008080
      800080808000808080008080800080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080000000800000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000000000000000000000000000000000000000
      0000BFBFBF00BFBFBF0000000000FFFFFF00FFFFFF0000000000BFBFBF000000
      00000000000000000000000000007F7F7F008000000080000000808080008080
      800080808000808080008080800080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080000000800000000000000000000000FFFFFF00800000008000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FFFF
      FF000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C00000000000C0C0C000000000007F7F7F0000000000BFBFBF000000
      0000BFBFBF0000000000BFBFBF00BFBFBF00BFBFBF00FFFFFF007F7F7F000000
      0000BFBFBF00BFBFBF00000000007F7F7F008000000080000000808080008080
      800080808000808080008080800080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080000000800000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000C0C0C00000000000000000007F7F7F0000000000BFBFBF00BFBF
      BF00FFFFFF00000000007F7F7F0000000000BFBFBF00FFFFFF007F7F7F00BFBF
      BF00BFBFBF00BFBFBF00000000007F7F7F008000000080000000808080008080
      800080808000808080008080800080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080000000800000000000000000000000FFFFFF00800000008000
      00008000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C0C0C00000000000C0C0C000000000007F7F7F0000000000000000000000
      0000FFFFFF00000000007F7F7F007F7F7F00BFBFBF0000000000BFBFBF000000
      0000000000000000000000000000000000008000000080000000808080008080
      800080808000808080008080800080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080000000800000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000080808000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00FFFFFF00000000000000000000000000BFBFBF00BFBFBF000000
      0000000000007F7F7F0000000000000000008000000080000000808080008080
      800080808000808080008080800080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080000000800000000000000000000000FFFFFF00800000008000
      000080000000800000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000080808000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000007F7F7F00BFBF
      BF007F7F7F00BFBFBF00FFFFFF00FFFFFF00BFBFBF00BFBFBF007F7F7F007F7F
      7F007F7F7F00000000007F7F7F00000000008000000080000000808080008080
      80008080800080808000800000000000000080000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080000000800000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C0000000000000000000000000000000
      0000FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000000000007F7F7F0000000000BFBF
      BF007F7F7F000000000000000000BFBFBF000000000000000000BFBFBF00BFBF
      BF00000000007F7F7F0000000000000000000000000080000000800000008000
      0000800000008000000000000000000000000000000080000000800000008000
      00008000000080000000000000000000000000000000FFFFFF00800000008000
      00008000000080000000FFFFFF00C0C0C000FFFFFF0080000000800000008000
      0000800000008000000080808000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000000000007F7F7F000000
      00007F7F7F0000000000BFBFBF00BFBFBF00BFBFBF00000000007F7F7F000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F0000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F007F7F7F007F7F7F0000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E1A3000000000000E1A3000000000000
      E1A3000000000000E183000000000000F1C7000000000000F1C7000000000000
      F1C7000000000000F1C700000000000061C70000000000000007000000000000
      00070000000000008003000000000000E003000000000000FF83000000000000
      FF83000000000000FF83000000000000FFFFFFFFFFFFFFFF0000800F000FFFE0
      0000800F000F00000000800F000F00010000800F000F80030000800F000FC001
      0000800F000FE00100008003000FF01F00008003008FF01F000080031144E00F
      0000800F0AB8C0070000800F057C81030000800FFAFC03810000800FFDF807C1
      0000800FFE04FFFFFFFF800FFFFFFFFFFFFFFFFEFFFFFC7FFFFFFF0CC007FC27
      F83FFC008003EC230001F8050001C4010001F80500018001000100060001C001
      000100060000E0000001000600000000000100068000000000010005C0000003
      00010005E001E00300010001E007C00101010001F007800383830001F003C407
      FFFF0001F803EC3FFFFF0001FFFFFC7F00000000000000000000000000000000
      000000000000}
  end
  object AdvPreviewDialog1: TAdvPreviewDialog
    DialogCaption = '��������������� ��������'
    DialogPrevBtn = '�����'
    DialogNextBtn = '�����'
    DialogPrintBtn = '������'
    DialogCloseBtn = '�������'
    Grid = AdvStringGrid1
    PreviewFast = False
    PreviewWidth = 600
    PreviewHeight = 500
    PreviewLeft = 276
    PreviewTop = 182
    PreviewCenter = True
    PrinterSetupDialog = True
    PrintSelectedRows = False
    PrintSelectedCols = False
    PrintSelection = False
    Left = 408
    Top = 304
  end
  object AdvGridPrintSettingsDialog1: TAdvGridPrintSettingsDialog
    Grid = AdvStringGrid1
    Options = [psBorders, psGeneral, psFonts, psDateTime, psTitle, psPages, psMargins, psSpacing, psOrientation, psSaveSettings]
    PrintPreview = True
    PrintDimensions = pdmm
    Left = 474
    Top = 290
  end
  object SaveDialog1: TSaveDialog
    Left = 222
    Top = 229
  end
  object ActionList1: TActionList
    Images = ilButtons
    OnUpdate = ActionList1Update
    Left = 562
    Top = 188
    object aProp: TAction
      Caption = '��������'
      ImageIndex = 6
      OnExecute = aPropExecute
    end
    object aExport: TAction
      Caption = '� Excel'
      ImageIndex = 7
      OnExecute = aExportExecute
    end
    object aExportSmp: TAction
      Caption = '������� ��� �������'
      ImageIndex = 7
      OnExecute = aExportSmpExecute
    end
    object aSettings: TAction
      Caption = '���������'
      ImageIndex = 8
      OnExecute = aSettingsExecute
    end
    object aExpAll: TAction
      Caption = '������� ���'
      Enabled = False
      OnExecute = aExpAllExecute
    end
    object aClpsAll: TAction
      Caption = '������� ���'
      Enabled = False
      OnExecute = aClpsAllExecute
    end
  end
  object dsCur: TDataSource
    DataSet = cdsCur
    Left = 384
    Top = 117
  end
  object cdsCur: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftBoolean
        Name = '@FastAccess'
        ParamType = ptInput
        Value = False
      end
      item
        DataType = ftBoolean
        Name = '@AvForPay'
        ParamType = ptInput
        Value = False
      end
      item
        DataType = ftInteger
        Name = '@id_Bsn'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dsCur2'
    RemoteServer = DM.rsCA
    Left = 416
    Top = 120
    object cdsCurId_Currency: TAutoIncField
      FieldName = 'Id_Currency'
      ReadOnly = True
    end
    object cdsCurName: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object cdsCurShortName: TStringField
      FieldName = 'ShortName'
      Size = 10
    end
    object cdsCurISOCode: TStringField
      FieldName = 'ISOCode'
      FixedChar = True
      Size = 3
    end
    object cdsCurNumberCode: TStringField
      FieldName = 'NumberCode'
      FixedChar = True
      Size = 3
    end
    object cdsCurFastAccess: TBooleanField
      FieldName = 'FastAccess'
    end
    object cdsCurValue: TIntegerField
      FieldName = 'Value'
    end
    object cdsCurRate: TFloatField
      FieldName = 'Rate'
      DisplayFormat = '0.0000'
    end
    object cdsCurAvForPay: TBooleanField
      FieldName = 'AvForPay'
    end
    object cdsCurBase: TBooleanField
      FieldName = 'Base'
    end
    object cdsCurLastUpdated: TBytesField
      FieldName = 'LastUpdated'
      ReadOnly = True
      Size = 8
    end
    object cdsCurId_URL: TIntegerField
      FieldName = 'Id_URL'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 322
    Top = 172
    object N1: TMenuItem
      Action = aProp
    end
    object N2: TMenuItem
      Caption = '-'
    end
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
    Left = 40
    Top = 120
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
