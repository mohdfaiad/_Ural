object FrmInputBox: TFrmInputBox
  Left = 239
  Top = 109
  Width = 538
  Height = 250
  BorderIcons = [biSystemMenu]
  Caption = 'FrmInputBox'
  Color = clBtnFace
  Constraints.MaxHeight = 250
  Constraints.MinHeight = 250
  Constraints.MinWidth = 538
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 10
    Width = 95
    Height = 13
    Caption = '�������� �������'
  end
  object Label2: TLabel
    Left = 8
    Top = 31
    Width = 96
    Height = 26
    Caption = '������ �������� �����'
    WordWrap = True
  end
  object Edit1: TEdit
    Left = 112
    Top = 7
    Width = 409
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 112
    Top = 34
    Width = 409
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    Text = 'Edit1'
  end
  object GroupBox1: TGroupBox
    Left = 27
    Top = 77
    Width = 470
    Height = 96
    Caption = ' ����� ������������ ��������� '
    TabOrder = 2
    object sWebLabel1: TsWebLabel
      Left = 16
      Top = 24
      Width = 83
      Height = 13
      Caption = '���� ���������'
      ParentFont = False
      OnClick = sWebLabel1Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HoverFont.Charset = DEFAULT_CHARSET
      HoverFont.Color = clWindowText
      HoverFont.Height = -11
      HoverFont.Name = 'MS Sans Serif'
      HoverFont.Style = []
    end
    object sWebLabel2: TsWebLabel
      Left = 16
      Top = 48
      Width = 91
      Height = 13
      Caption = '����� ���������'
      ParentFont = False
      OnClick = sWebLabel1Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HoverFont.Charset = DEFAULT_CHARSET
      HoverFont.Color = clWindowText
      HoverFont.Height = -11
      HoverFont.Name = 'MS Sans Serif'
      HoverFont.Style = []
    end
    object sWebLabel3: TsWebLabel
      Left = 160
      Top = 24
      Width = 76
      Height = 13
      Caption = '��� ���������'
      ParentFont = False
      OnClick = sWebLabel1Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HoverFont.Charset = DEFAULT_CHARSET
      HoverFont.Color = clWindowText
      HoverFont.Height = -11
      HoverFont.Name = 'MS Sans Serif'
      HoverFont.Style = []
    end
    object sWebLabel4: TsWebLabel
      Left = 320
      Top = 24
      Width = 60
      Height = 13
      Caption = '����������'
      ParentFont = False
      OnClick = sWebLabel1Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HoverFont.Charset = DEFAULT_CHARSET
      HoverFont.Color = clWindowText
      HoverFont.Height = -11
      HoverFont.Name = 'MS Sans Serif'
      HoverFont.Style = []
    end
    object sWebLabel5: TsWebLabel
      Left = 320
      Top = 48
      Width = 50
      Height = 13
      Caption = '��������'
      ParentFont = False
      OnClick = sWebLabel1Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HoverFont.Charset = DEFAULT_CHARSET
      HoverFont.Color = clWindowText
      HoverFont.Height = -11
      HoverFont.Name = 'MS Sans Serif'
      HoverFont.Style = []
    end
    object sWebLabel6: TsWebLabel
      Left = 160
      Top = 48
      Width = 50
      Height = 13
      Caption = '��������'
      ParentFont = False
      OnClick = sWebLabel1Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HoverFont.Charset = DEFAULT_CHARSET
      HoverFont.Color = clWindowText
      HoverFont.Height = -11
      HoverFont.Name = 'MS Sans Serif'
      HoverFont.Style = []
    end
    object sWebLabel7: TsWebLabel
      Left = 160
      Top = 72
      Width = 34
      Height = 13
      Caption = '������'
      ParentFont = False
      OnClick = sWebLabel1Click
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HoverFont.Charset = DEFAULT_CHARSET
      HoverFont.Color = clWindowText
      HoverFont.Height = -11
      HoverFont.Name = 'MS Sans Serif'
      HoverFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 182
    Width = 530
    Height = 41
    Align = alBottom
    Caption = ' '
    TabOrder = 3
    object btnCancel: TButton
      Left = 439
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = '������'
      ModalResult = 2
      TabOrder = 0
    end
    object btnOk: TButton
      Left = 351
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 1
    end
  end
end
