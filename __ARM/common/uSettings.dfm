object Settings: TSettings
  Left = 258
  Top = 185
  Width = 630
  Height = 402
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = '���������'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 322
    Width = 614
    Height = 41
    Align = alBottom
    Caption = ' '
    TabOrder = 0
    object btnCancel: TButton
      Left = 536
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '������'
      ModalResult = 2
      TabOrder = 1
    end
    object btnOk: TButton
      Left = 445
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 614
    Height = 73
    Align = alTop
    Caption = ' '
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 37
      Height = 13
      Caption = '������'
    end
    object Label2: TLabel
      Left = 272
      Top = 8
      Width = 25
      Height = 13
      Caption = '����'
    end
    object Label3: TLabel
      Left = 16
      Top = 34
      Width = 354
      Height = 26
      Caption = 
        '���� ��� �� ����������� �� ���� ����������, �� ������ ������ � �' +
        '������� ����� ������� localhost'
      WordWrap = True
    end
    object edServer: TEdit
      Left = 56
      Top = 5
      Width = 209
      Height = 21
      TabOrder = 0
    end
    object edPort: TCurrencyEdit
      Left = 304
      Top = 5
      Width = 44
      Height = 21
      AutoSize = False
      DisplayFormat = ',0;-,0'#39
      TabOrder = 1
      OnKeyPress = edPortKeyPress
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 73
    Width = 614
    Height = 249
    Align = alClient
    Caption = ' '
    TabOrder = 2
    object cbShowSplash: TCheckBox
      Left = 8
      Top = 4
      Width = 361
      Height = 17
      Caption = '���������� �������� ��� ��������'
      TabOrder = 0
    end
    object cbAReadOneObj: TCheckBox
      Left = 8
      Top = 26
      Width = 408
      Height = 17
      Caption = 
        '�� ����������� ������������� ��������� ���� �����, ����, �������' +
        '���'
      TabOrder = 1
    end
    object cbFin: TCheckBox
      Left = 8
      Top = 56
      Width = 150
      Height = 17
      Caption = '������ �����'
      TabOrder = 2
    end
    object cbWH: TCheckBox
      Left = 8
      Top = 74
      Width = 150
      Height = 17
      Caption = '������ ������'
      TabOrder = 3
    end
    object cbMnf: TCheckBox
      Left = 8
      Top = 92
      Width = 150
      Height = 17
      Caption = '������ ������������'
      TabOrder = 4
    end
    object cbCA: TCheckBox
      Left = 8
      Top = 110
      Width = 150
      Height = 17
      Caption = '������ ������������'
      TabOrder = 5
    end
    object cbWare: TCheckBox
      Left = 8
      Top = 128
      Width = 150
      Height = 17
      Caption = '������ ������'
      TabOrder = 6
    end
    object cbAllWares: TCheckBox
      Left = 187
      Top = 56
      Width = 231
      Height = 17
      Caption = '������ ��������� "��� ������"'
      TabOrder = 8
    end
    object cbVatIn: TCheckBox
      Left = 8
      Top = 153
      Width = 201
      Height = 17
      Caption = '��� ������� � ����'
      TabOrder = 7
    end
    object cbOpenDay: TCheckBox
      Left = 187
      Top = 172
      Width = 234
      Height = 17
      Caption = '���������� � ���������� ���'
      TabOrder = 11
    end
    object cbAP: TCheckBox
      Left = 187
      Top = 92
      Width = 240
      Height = 17
      Caption = '������������ �������� �� ��������'
      TabOrder = 9
    end
    object cbArcOptim: TCheckBox
      Left = 187
      Top = 153
      Width = 250
      Height = 17
      Caption = '���������������� ���������� ������'
      TabOrder = 10
    end
    object cbCrnInArc: TCheckBox
      Left = 187
      Top = 74
      Width = 231
      Height = 17
      Caption = '����� "����� �����" � ������'
      TabOrder = 12
    end
    object cbStayHere: TCheckBox
      Left = 187
      Top = 110
      Width = 231
      Height = 17
      Caption = '��� ��������� �� ������� � ��������'
      TabOrder = 13
    end
    object cbStayHere_Copy: TCheckBox
      Left = 187
      Top = 128
      Width = 231
      Height = 17
      Caption = '��� ����������� �� ������� � ��������'
      TabOrder = 14
    end
    object cbUsePrice: TCheckBox
      Left = 368
      Top = 1
      Width = 161
      Height = 17
      Caption = '������������ �����-����'
      TabOrder = 15
      Visible = False
    end
    object cbIsSimple: TCheckBox
      Left = 8
      Top = 196
      Width = 161
      Height = 17
      Caption = '���������� ���������'
      TabOrder = 16
    end
    object cbIsMegaFlt: TCheckBox
      Left = 187
      Top = 196
      Width = 161
      Height = 17
      Caption = '������������'
      TabOrder = 17
    end
    object cbAutoCalcDocNum: TCheckBox
      Left = 8
      Top = 220
      Width = 161
      Height = 17
      Caption = '������������ ������ ���.'
      TabOrder = 18
    end
    object cbFPredViza: TCheckBox
      Left = 187
      Top = 220
      Width = 350
      Height = 17
      Caption = '���������� ������������ ��������'
      TabOrder = 19
    end
  end
end
