object fWareFinder: TfWareFinder
  Left = 0
  Top = 0
  Width = 668
  Height = 407
  Constraints.MinWidth = 150
  TabOrder = 0
  object StatusBar1: TStatusBar
    Left = 0
    Top = 388
    Width = 668
    Height = 19
    Panels = <
      item
        Width = 500
      end
      item
        Width = 50
      end>
    ParentFont = True
    SimplePanel = False
    UseSystemFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 27
    Width = 668
    Height = 361
    ActivePage = tsWare
    Align = alClient
    TabOrder = 1
    object tsWare: TTabSheet
      Caption = '�����'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 660
        Height = 333
        Align = alClient
        Caption = 'Panel3'
        TabOrder = 0
        object grdList: TRxDBGrid
          Left = 1
          Top = 30
          Width = 658
          Height = 302
          Align = alClient
          DataSource = DataSource1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = grdListDblClick
          TitleButtons = True
          OnCheckButton = grdListCheckButton
          OnGetBtnParams = grdListGetBtnParams
          Columns = <
            item
              Expanded = False
              FieldName = 'Name'
              Title.Caption = '������������'
              Width = 183
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BarCode'
              Title.Caption = '���'
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CatName'
              Title.Caption = '���������'
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ShortName'
              Title.Caption = '���. ������������'
              Width = 108
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 658
          Height = 29
          Align = alTop
          Caption = ' '
          TabOrder = 1
          object Label1: TLabel
            Left = 8
            Top = 7
            Width = 37
            Height = 13
            Caption = '�����'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edFilter: TComboBox
            Left = 49
            Top = 4
            Width = 599
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            ItemHeight = 13
            TabOrder = 0
            OnKeyPress = edFilterKeyPress
          end
        end
      end
    end
    object tsCat: TTabSheet
      Caption = '���������'
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 660
        Height = 31
        Align = alTop
        Caption = ' '
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 7
          Width = 37
          Height = 13
          Caption = '�����'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edFilterCtg: TComboBox
          Left = 48
          Top = 5
          Width = 605
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 0
          OnKeyPress = edFilterKeyPress
        end
      end
      object RxDBGrid1: TRxDBGrid
        Left = 0
        Top = 31
        Width = 660
        Height = 302
        Align = alClient
        DataSource = dsFind_Ctg_Ware
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = grdListDblClick
        TitleButtons = True
        OnCheckButton = grdListCheckButton
        OnGetBtnParams = grdListGetBtnParams
        Columns = <
          item
            Expanded = False
            FieldName = 'Name'
            Title.Caption = '������������'
            Width = 246
            Visible = True
          end>
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 668
    Height = 27
    Align = alTop
    Caption = ' '
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 636
      Top = 2
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '�'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 2
      Top = 2
      Width = 75
      Height = 25
      Caption = '�����'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C0000000000000000000000000000000000000000000000001F7C
        1F7C000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00001F7C
        0000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000001042
        000000001F7C0000FF7FFF7FFF7FFF7FFF7FFF7F000010421F7C1F7C10420000
        10421F7C1F7C0000FF7FFF7FFF7FFF7FFF7F000010421F7C1F7CFF0310421042
        00001F7C1F7C0000FF7FFF7FFF7FFF7FFF7F00001F7C1F7C1F7C1F7C10421F7C
        00001F7C1F7C0000FF7FFF7FFF7FFF7FFF7F00001F7CFF031F7C1F7C10421F7C
        00001F7C1F7C0000FF7FFF7FFF7FFF7FFF7F00001042FF03FF031F7C10421042
        00001F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7F000010421F7C1F7C10420000
        1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000001F7C
        1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00001F7C
        1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000001F7C
        1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F00001F7C00001F7C1F7C
        1F7C1F7C1F7C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000001F7C1F7C1F7C
        1F7C1F7C1F7C0000000000000000000000000000000000001F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object btnOk: TSpeedButton
      Left = 82
      Top = 2
      Width = 75
      Height = 25
      Caption = '�������'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
      OnClick = btnOkClick
    end
  end
  object cdsFindGoods: TClientDataSet
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
      end
      item
        DataType = ftInteger
        Name = '@id_Ctg'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = '@Name'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dsFindGoods'
    RemoteServer = DM.rsCA
    Left = 224
    Top = 48
    object cdsFindGoodsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object cdsFindGoodsName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object cdsFindGoodsShortName: TStringField
      FieldName = 'ShortName'
      Size = 100
    end
    object cdsFindGoodsBarCode: TStringField
      FieldName = 'BarCode'
    end
    object cdsFindGoodsCatName: TStringField
      FieldName = 'CatName'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsFindGoods
    OnDataChange = DataSource1DataChange
    Left = 352
    Top = 96
  end
  object cdsFind_Ctg_Ware: TClientDataSet
    Aggregates = <>
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
        Name = '@isGoods'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Name'
        ParamType = ptInput
      end>
    ProviderName = 'dsFind_Ctg_Ware'
    RemoteServer = DM.rsCA
    Left = 216
    Top = 230
    object cdsFind_Ctg_WareID: TIntegerField
      FieldName = 'ID'
    end
    object cdsFind_Ctg_WareName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object cdsFind_Ctg_WareShortName: TStringField
      FieldName = 'ShortName'
      Size = 100
    end
  end
  object dsFind_Ctg_Ware: TDataSource
    DataSet = cdsFind_Ctg_Ware
    OnDataChange = DataSource1DataChange
    Left = 256
    Top = 232
  end
end
