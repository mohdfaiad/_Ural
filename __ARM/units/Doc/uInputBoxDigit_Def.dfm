object FrmInputBoxDigit_Def: TFrmInputBoxDigit_Def
  Left = 239
  Top = 109
  BorderStyle = bsDialog
  Caption = '�����'
  ClientHeight = 294
  ClientWidth = 275
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 48
    Height = 13
    Caption = '��������'
  end
  object btnOk: TButton
    Left = 107
    Top = 266
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 2
    OnClick = btnOkClick
  end
  object btnCancel: TButton
    Left = 197
    Top = 266
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = '������'
    ModalResult = 2
    TabOrder = 3
  end
  object dxCalculator: TdxCalculator
    Left = 57
    Top = 43
    Width = 210
    Height = 139
    TabOrder = 0
    OnKeyPress = dxCalculatorKeyPress
    Associate = RxCalcEdit1
    ShowFocusRect = False
    OnResult = dxCalculatorResult
  end
  object RxCalcEdit1: TdxCalcDisplay
    Left = 64
    Top = 11
    Width = 199
    Height = 21
    TabStop = False
    Text = '0'
  end
  object CheckBox1: TCheckBox
    Left = 40
    Top = 208
    Width = 217
    Height = 17
    Caption = '������������ �� ���������'
    TabOrder = 1
  end
end
