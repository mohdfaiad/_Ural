object fOperLCOffset: TfOperLCOffset
  Left = 0
  Top = 0
  Width = 601
  Height = 464
  TabOrder = 0
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 601
    Height = 464
    ActivePage = tsData
    Align = alClient
    TabOrder = 0
    object tsData: TTabSheet
      Caption = '������'
      object Splitter1: TSplitter
        Left = 0
        Top = 308
        Width = 593
        Height = 5
        Cursor = crVSplit
        Align = alTop
      end
      object P1: TPanel
        Left = 0
        Top = 0
        Width = 593
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        Caption = ' '
        TabOrder = 0
        object Label6: TLabel
          Left = 4
          Top = 54
          Width = 78
          Height = 13
          Caption = '�������������'
          FocusControl = edReprName
        end
        object Label3: TLabel
          Left = 4
          Top = 30
          Width = 37
          Height = 13
          Caption = '������'
        end
        object Label9: TLabel
          Left = 4
          Top = 4
          Width = 78
          Height = 13
          Caption = '������/������'
          FocusControl = cbOperTypeIn
        end
        object Label1: TLabel
          Left = 340
          Top = 4
          Width = 79
          Height = 13
          Caption = '�������������'
        end
        object edReprName: TDBEdit
          Left = 88
          Top = 50
          Width = 473
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'ReprName'
          DataSource = dsOperFin
          ReadOnly = True
          TabOrder = 0
          OnChange = DBEdit1Change
        end
        object BitBtn4: TBitBtn
          Left = 560
          Top = 50
          Width = 24
          Height = 21
          Anchors = [akTop, akRight]
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn4Click
        end
        object cbOperTypeIn: TComboBox
          Left = 88
          Top = 1
          Width = 245
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 2
          OnChange = cbOperTypeInChange
          Items.Strings = (
            '��������� ��������'
            '��������� ��������')
        end
        object DBEdit9: TDBEdit
          Left = 425
          Top = 2
          Width = 72
          Height = 21
          TabStop = False
          Color = clMenu
          DataField = 'Correct'
          DataSource = dsOperFin
          ReadOnly = True
          TabOrder = 3
          OnChange = DBEdit1Change
        end
        object DBEdit1: TDBEdit
          Left = 88
          Top = 26
          Width = 497
          Height = 21
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          Color = clMenu
          DataField = 'BusinessName'
          DataSource = dsOperFin
          ReadOnly = True
          TabOrder = 4
        end
      end
      object P2: TPanel
        Left = 0
        Top = 98
        Width = 593
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        Caption = ' '
        TabOrder = 1
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 300
          Height = 26
          Align = alLeft
          BevelOuter = bvNone
          Caption = ' '
          TabOrder = 0
          object Label2: TLabel
            Left = 4
            Top = 8
            Width = 34
            Height = 13
            Caption = '�����'
          end
          object edPriceOper: TRxDBCalcEdit
            Left = 88
            Top = 4
            Width = 169
            Height = 21
            DataField = 'PriceOper'
            DataSource = dsOperFin
            ButtonWidth = 0
            NumGlyphs = 2
            TabOrder = 0
          end
          object BitBtn1: TBitBtn
            Left = 254
            Top = 3
            Width = 22
            Height = 21
            TabOrder = 1
            OnClick = BitBtn1Click
            Glyph.Data = {
              46020000424D460200000000000036000000280000000E0000000C0000000100
              1800000000001002000000000000000000000000000000000000F800F8000000
              0000000000000000000000000000000000000000000000000000000000000000
              00F800F800008080008080008000008000008000008000008000008000008000
              008000008000008000008000000000000000808000F8F8F88080008080008080
              0080800080800080800080800080800080800080800080000000000000008080
              00F8F800808000000000F8F8F8000000F8F8F8000000F8F8F8000000F8F8F800
              00008000000000000000808000F8F8F880800080800080800080800080800080
              80008080008080008080008080008000000000000000808000F8F80080800000
              0000F8F8F8000000F8F8F8000000F8F8F8000000F8F8F8000000800000000000
              0000808000F8F8F8808000808000808000808000808000808000808000808000
              8080008080008000000000000000808000F8F800000000C0C0C0C0C0C0C0C0C0
              C0C0C0C0C0C0C0C0C0C0C0C08080008080008000000000000000808000F8F8F8
              000000F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8C0C0C08080008080008000
              000000000000808000F8F8000000000000000000000000000000000000000000
              000000008080008080008000000000000000808000F8F8F8F8F800F8F8F8F8F8
              00F8F8F8F8F800F8F8F8F8F800F8F8F8F8F800F8F8F88080000000000000F800
              F880800080800080800080800080800080800080800080800080800080800080
              8000808000F800F80000}
            Layout = blGlyphBottom
          end
        end
        inline fCurSelector1: TfCurSelector
          Left = 300
          Width = 293
          Height = 26
          Align = alClient
          TabOrder = 1
          inherited Label1: TLabel
            Left = 4
          end
          inherited cbCur: TComboBox
            Width = 229
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 124
        Width = 593
        Height = 92
        Align = alTop
        Caption = ' ��������: '
        TabOrder = 2
        object Label8: TLabel
          Left = 10
          Top = 23
          Width = 128
          Height = 13
          Caption = '���. �������/���������'
        end
        object Label11: TLabel
          Left = 10
          Top = 46
          Width = 145
          Height = 13
          Caption = '��. ���������/���� �������'
        end
        object Label10: TLabel
          Left = 10
          Top = 70
          Width = 44
          Height = 13
          Caption = '�������'
        end
        object edContract: TDBEdit
          Left = 173
          Top = 66
          Width = 412
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Contract'
          DataSource = dsOperFin
          TabOrder = 2
        end
        object edImp_PayBasic: TDBEdit
          Left = 173
          Top = 18
          Width = 412
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Imp_PayBasic'
          DataSource = dsOperFin
          TabOrder = 0
        end
        object edAccInv_PayAssignment: TDBEdit
          Left = 173
          Top = 42
          Width = 412
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'AccInv_PayAssignment'
          DataSource = dsOperFin
          TabOrder = 1
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 242
        Width = 593
        Height = 66
        Align = alTop
        Caption = '�����������'
        Constraints.MinHeight = 40
        TabOrder = 3
        object DBMemo1: TDBMemo
          Left = 2
          Top = 15
          Width = 589
          Height = 49
          Align = alClient
          DataField = 'OpComment'
          DataSource = dsOperFin
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      inline fExtDataVal1: TfExtDataValLC
        Top = 313
        Width = 593
        Height = 123
        Align = alClient
        TabOrder = 4
        inherited ToolBar: TToolBar
          Width = 593
        end
        inherited RxDBGrid1: TRxDBGrid
          Width = 593
          Height = 97
        end
      end
      object P_FF: TPanel
        Left = 0
        Top = 216
        Width = 593
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        Caption = ' '
        TabOrder = 5
        object Label4: TLabel
          Left = 3
          Top = 1
          Width = 70
          Height = 26
          Caption = '���������� �����.'
          FocusControl = lcFormalDistrib
          WordWrap = True
        end
        object Label12: TLabel
          Left = 291
          Top = 1
          Width = 91
          Height = 26
          Caption = '�������������� �����.'
          FocusControl = lcFuncDistrib
          WordWrap = True
        end
        object lcFormalDistrib: TRxDBLookupCombo
          Left = 85
          Top = 5
          Width = 178
          Height = 21
          DropDownCount = 8
          DataField = 'id_FormalDistrib'
          DataSource = dsOperFin
          LookupField = 'id_FormalDistrib'
          LookupDisplay = 'Name'
          LookupSource = dsFormal
          TabOrder = 0
        end
        object lcFuncDistrib: TRxDBLookupCombo
          Left = 385
          Top = 5
          Width = 184
          Height = 21
          DropDownCount = 8
          DataField = 'id_FuncDistrib'
          DataSource = dsOperFin
          Anchors = [akLeft, akTop, akRight]
          LookupField = 'id_FuncDistrib'
          LookupDisplay = 'Name'
          LookupSource = dsFunc
          TabOrder = 1
        end
      end
      object pCA: TPanel
        Left = 0
        Top = 73
        Width = 593
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        Caption = ' '
        TabOrder = 6
        object Label14: TLabel
          Left = 4
          Top = 6
          Width = 58
          Height = 13
          Caption = '����������'
          FocusControl = DBEdit2
        end
        object DBEdit2: TDBEdit
          Left = 88
          Top = 1
          Width = 497
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'ContrAgentName'
          DataSource = dsOperFin
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object tsComment: TTabSheet
      Caption = '���. ����������'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 593
        Height = 436
        Align = alClient
        BevelOuter = bvNone
        Caption = ' '
        TabOrder = 0
        object Label7: TLabel
          Left = 4
          Top = 8
          Width = 80
          Height = 13
          Caption = '���� ���������'
          FocusControl = DBEdit7
        end
        object Label5: TLabel
          Left = 4
          Top = 31
          Width = 59
          Height = 13
          Caption = '���� �����'
          FocusControl = DBEdit5
        end
        object DBEdit7: TDBEdit
          Left = 88
          Top = 2
          Width = 496
          Height = 21
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          Color = clMenu
          DataField = 'CreatorFIO'
          DataSource = dsOperFin
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          Left = 88
          Top = 26
          Width = 137
          Height = 21
          TabStop = False
          Color = clMenu
          DataField = 'DateLocal'
          DataSource = dsOperFin
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
  end
  object cdsOperFin: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@id_LC_Oper'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@is_Mirr'
        ParamType = ptInput
      end>
    ProviderName = 'dsLcProp'
    RemoteServer = DM.rsCA
    AfterPost = cdsOperFinAfterPost
    Left = 96
    Top = 206
    object cdsOperFinid_LC_Oper: TAutoIncField
      FieldName = 'id_LC_Oper'
      ReadOnly = True
    end
    object cdsOperFinDateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object cdsOperFinOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object cdsOperFinid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object cdsOperFinCreatorFIO: TStringField
      FieldName = 'CreatorFIO'
      Size = 152
    end
    object cdsOperFinid_business: TIntegerField
      FieldName = 'id_business'
    end
    object cdsOperFinId_CurrencyBsn: TIntegerField
      FieldName = 'Id_CurrencyBsn'
    end
    object cdsOperFinBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object cdsOperFinBusinessNum: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object cdsOperFinCorrect: TBooleanField
      FieldName = 'Correct'
      DisplayValues = '��;���'
    end
    object cdsOperFinOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object cdsOperFinId_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object cdsOperFinCurrencyOperName: TStringField
      FieldName = 'CurrencyOperName'
      Size = 30
    end
    object cdsOperFinCurrencyOperShortName: TStringField
      FieldName = 'CurrencyOperShortName'
      Size = 10
    end
    object cdsOperFinPriceOper: TFloatField
      FieldName = 'PriceOper'
    end
    object cdsOperFinId_CurrencySys: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object cdsOperFinCurrencySysName: TStringField
      FieldName = 'CurrencySysName'
      Size = 30
    end
    object cdsOperFinCurrencySysShortName: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object cdsOperFinSummSys: TFloatField
      FieldName = 'SummSys'
    end
    object cdsOperFinid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object cdsOperFinid_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object cdsOperFinid_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object cdsOperFinSrcName: TStringField
      FieldName = 'SrcName'
      Size = 50
    end
    object cdsOperFinSrcID_Main: TIntegerField
      FieldName = 'SrcID_Main'
    end
    object cdsOperFinid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object cdsOperFinid_Acc_Ext: TIntegerField
      FieldName = 'id_Acc_Ext'
    end
    object cdsOperFinid_Warehouse_Ext: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object cdsOperFinid_Manufact_Ext: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object cdsOperFinReprName: TStringField
      FieldName = 'ReprName'
      Size = 255
    end
    object cdsOperFinReprID_Main: TIntegerField
      FieldName = 'ReprID_Main'
    end
    object cdsOperFinKoeff: TIntegerField
      FieldName = 'Koeff'
    end
    object cdsOperFinKoeffName: TStringField
      FieldName = 'KoeffName'
      Size = 50
    end
    object cdsOperFinCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object cdsOperFinid_FormalDistrib: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object cdsOperFinFormalDistribName: TStringField
      FieldName = 'FormalDistribName'
      Size = 50
    end
    object cdsOperFinid_FuncDistrib: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object cdsOperFinFuncDistribName: TStringField
      FieldName = 'FuncDistribName'
      Size = 50
    end
    object cdsOperFinSummOper: TFloatField
      FieldName = 'SummOper'
    end
    object cdsOperFinTypeName: TStringField
      FieldName = 'TypeName'
      Size = 30
    end
    object cdsOperFinHasViza: TBooleanField
      FieldName = 'HasViza'
    end
    object cdsOperFinid_DocType: TIntegerField
      FieldName = 'id_DocType'
    end
    object cdsOperFinImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object cdsOperFinAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object cdsOperFinContract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object cdsOperFinOperCrnName: TStringField
      FieldName = 'OperCrnName'
      Size = 10
    end
    object cdsOperFinCurrencyBsnName: TStringField
      FieldName = 'CurrencyBsnName'
      Size = 10
    end
    object cdsOperFinOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object cdsOperFinOperTypeSIGN: TIntegerField
      FieldName = 'OperTypeSIGN'
    end
    object cdsOperFinHasChild: TIntegerField
      FieldName = 'HasChild'
    end
    object cdsOperFinDig1: TFloatField
      FieldName = 'Dig1'
    end
    object cdsOperFinDig2: TFloatField
      FieldName = 'Dig2'
    end
    object cdsOperFinDig3: TFloatField
      FieldName = 'Dig3'
    end
    object cdsOperFinDig4: TFloatField
      FieldName = 'Dig4'
    end
    object cdsOperFinDig5: TFloatField
      FieldName = 'Dig5'
    end
    object cdsOperFinDig6: TFloatField
      FieldName = 'Dig6'
    end
    object cdsOperFinDig7: TFloatField
      FieldName = 'Dig7'
    end
    object cdsOperFinDig8: TFloatField
      FieldName = 'Dig8'
    end
    object cdsOperFinDig9: TFloatField
      FieldName = 'Dig9'
    end
    object cdsOperFinDig10: TFloatField
      FieldName = 'Dig10'
    end
    object cdsOperFinDig11: TFloatField
      FieldName = 'Dig11'
    end
    object cdsOperFinDig12: TFloatField
      FieldName = 'Dig12'
    end
    object cdsOperFinDig13: TFloatField
      FieldName = 'Dig13'
    end
    object cdsOperFinDig14: TFloatField
      FieldName = 'Dig14'
    end
    object cdsOperFinDig15: TFloatField
      FieldName = 'Dig15'
    end
    object cdsOperFinStr1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object cdsOperFinStr2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object cdsOperFinStr3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object cdsOperFinStr4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object cdsOperFinStr5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object cdsOperFinStr6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object cdsOperFinStr7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object cdsOperFinStr8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object cdsOperFinStr9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object cdsOperFinStr10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object cdsOperFinStr11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object cdsOperFinStr12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object cdsOperFinStr13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object cdsOperFinStr14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object cdsOperFinStr15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object cdsOperFinOperVidName: TStringField
      FieldName = 'OperVidName'
      Size = 50
    end
    object cdsOperFinis_Mirr: TBooleanField
      FieldName = 'is_Mirr'
    end
    object cdsOperFinid_Acc_Group: TIntegerField
      FieldName = 'id_Acc_Group'
    end
    object cdsOperFinid_Warehouse_Group: TIntegerField
      FieldName = 'id_Warehouse_Group'
    end
    object cdsOperFinid_Manufact_Group: TIntegerField
      FieldName = 'id_Manufact_Group'
    end
    object cdsOperFinid_LC_Oper_Ext: TIntegerField
      FieldName = 'id_LC_Oper_Ext'
    end
    object cdsOperFinid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object cdsOperFinContrAgentName: TStringField
      FieldName = 'ContrAgentName'
      Size = 50
    end
  end
  object dsOperFin: TDataSource
    DataSet = cdsOperFin
    Left = 128
    Top = 206
  end
  object cdsFormal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@id_Bsn'
        ParamType = ptInput
      end>
    ProviderName = 'dsFormal'
    RemoteServer = DM.rsCA
    Left = 248
    Top = 320
    object cdsFormalid_FormalDistrib: TAutoIncField
      FieldName = 'id_FormalDistrib'
      ReadOnly = True
    end
    object cdsFormalName: TStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object cdsFunc: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@id_Bsn'
        ParamType = ptInput
      end>
    ProviderName = 'dsFunc'
    RemoteServer = DM.rsCA
    Left = 248
    Top = 352
    object cdsFuncid_FuncDistrib: TAutoIncField
      FieldName = 'id_FuncDistrib'
      ReadOnly = True
    end
    object cdsFuncName: TStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object dsFormal: TDataSource
    DataSet = cdsFormal
    Left = 284
    Top = 320
  end
  object dsFunc: TDataSource
    DataSet = cdsFunc
    Left = 284
    Top = 352
  end
end