object ASGProp: TASGProp
  Left = 187
  Top = 188
  Width = 404
  Height = 431
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = '���������'
  Color = clBtnFace
  Constraints.MinHeight = 250
  Constraints.MinWidth = 400
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 363
    Width = 396
    Height = 41
    Align = alBottom
    Caption = ' '
    TabOrder = 0
    object btnCancel: TButton
      Left = 310
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '������'
      ModalResult = 2
      TabOrder = 1
    end
    object btnOk: TButton
      Left = 219
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
    Width = 396
    Height = 73
    Align = alTop
    Caption = ' '
    TabOrder = 1
    object sbtDown: TSpeedButton
      Left = 12
      Top = 6
      Width = 30
      Height = 30
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      NumGlyphs = 2
      OnClick = sbtDownClick
    end
    object sbtTop: TSpeedButton
      Left = 56
      Top = 6
      Width = 30
      Height = 30
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
        3333333333777F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
        3333333777737777F333333099999990333333373F3333373333333309999903
        333333337F33337F33333333099999033333333373F333733333333330999033
        3333333337F337F3333333333099903333333333373F37333333333333090333
        33333333337F7F33333333333309033333333333337373333333333333303333
        333333333337F333333333333330333333333333333733333333}
      NumGlyphs = 2
      OnClick = sbtTopClick
    end
    object Button1: TButton
      Left = 112
      Top = 8
      Width = 121
      Height = 25
      Caption = '�������� ���'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 112
      Top = 40
      Width = 121
      Height = 25
      Caption = '����� ���������'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object ListBox1: TCheckListBox
    Left = 0
    Top = 73
    Width = 396
    Height = 290
    Align = alClient
    ItemHeight = 13
    Style = lbOwnerDrawFixed
    TabOrder = 2
    OnClick = ListBox12Click
    OnDragDrop = ListBox12DragDrop
    OnDragOver = ListBox12DragOver
    OnDrawItem = ListBox12DrawItem
    OnMouseMove = ListBox12MouseMove
  end
end
