object fFileProp: TfFileProp
  Left = 0
  Top = 0
  Width = 862
  Height = 338
  TabOrder = 0
  object pcFile: TsPageControl
    Left = 0
    Top = 0
    Width = 862
    Height = 338
    ActivePage = sTabSheet2
    Align = alClient
    HotTrack = True
    TabOrder = 0
    ShowCloseBtns = True
    SkinData.SkinSection = 'PAGECONTROL'
    object sTabSheet1: TsTabSheet
      Caption = '���� ���� ���� ���� ���� ���� ���� ���� ���� ����'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object lbDOCCOMMENT: TsLabel
        Left = 8
        Top = 51
        Width = 50
        Height = 13
        Caption = '��������'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object lbNUM: TsLabel
        Left = 8
        Top = 29
        Width = 34
        Height = 13
        Caption = '�����'
        FocusControl = DBEdit3
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object lbDTNAME: TsLabel
        Left = 8
        Top = 7
        Width = 76
        Height = 13
        Caption = '��� ���������'
        FocusControl = edDocTypeName
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object lbDOCDATE: TsLabel
        Left = 265
        Top = 28
        Width = 26
        Height = 13
        Caption = '����'
        FocusControl = DBDateEdit1
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object sLabel2: TsLabel
        Left = 417
        Top = 28
        Width = 34
        Height = 13
        Caption = '�����'
        FocusControl = DBDateEdit1
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object DldBtn: TsSpeedButton
        Left = 600
        Top = 148
        Width = 105
        Height = 22
        Caption = '�������'
        Enabled = False
        SkinData.SkinSection = 'SPEEDBUTTON'
        ImageIndex = 34
        Images = DM.ilImage
      end
      object UplBtn: TsSpeedButton
        Left = 488
        Top = 148
        Width = 105
        Height = 22
        Caption = '���������'
        SkinData.SkinSection = 'SPEEDBUTTON'
        ImageIndex = 33
        Images = DM.ilImage
      end
      object DBMemo1: TsDBMemo
        Left = 128
        Top = 52
        Width = 577
        Height = 89
        Color = clWhite
        DataField = 'Comment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'EDIT'
      end
      object edDocTypeName: TsDBEdit
        Left = 128
        Top = 3
        Width = 554
        Height = 21
        Color = clWhite
        DataField = 'DocTypeName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object DBEdit3: TsDBEdit
        Left = 128
        Top = 27
        Width = 122
        Height = 21
        Color = clWhite
        DataField = 'DocNum'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object DBDateEdit1: TsDBDateEdit
        Left = 296
        Top = 26
        Width = 97
        Height = 21
        AutoSize = False
        Color = clWhite
        EditMask = '!99/99/9999;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 3
        Text = '  .  .    '
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'EDIT'
        GlyphMode.Blend = 0
        GlyphMode.Grayed = False
        DataField = 'DocDate'
      end
      object sDBCalcEdit1: TsDBCalcEdit
        Left = 456
        Top = 26
        Width = 121
        Height = 21
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'EDIT'
        GlyphMode.Blend = 0
        GlyphMode.Grayed = False
        DataField = 'DocSumm'
      end
      object sDBLookupComboBox1: TsDBLookupComboBox
        Left = 584
        Top = 26
        Width = 120
        Height = 21
        Color = clWhite
        DataField = 'id_Crn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'id_Obj'
        ListField = 'ObjName'
        ParentFont = False
        TabOrder = 5
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
      end
      object Button2: TsButton
        Left = 680
        Top = 2
        Width = 25
        Height = 22
        Caption = '...'
        TabOrder = 6
        SkinData.SkinSection = 'BUTTON'
      end
      object sDBEdit3: TsDBEdit
        Left = 126
        Top = 148
        Width = 355
        Height = 21
        Color = clWhite
        DataField = 'OrigName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
    end
    object sTabSheet2: TsTabSheet
      Caption = '���������� ���������� ���������� ���������� ����������'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
    end
    object sTabSheet3: TsTabSheet
      Caption = '���� ���� ���� ���� ���� ���� ���� ���� ���� ����'
      SkinData.CustomColor = False
      SkinData.CustomFont = False
    end
  end
end
