object BuffSelector: TBuffSelector
  Left = 181
  Top = 106
  Width = 428
  Height = 323
  BorderIcons = [biSystemMenu]
  Caption = '����� ������'
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
    Top = 255
    Width = 420
    Height = 41
    Align = alBottom
    Caption = ' '
    TabOrder = 0
    object btnCancel: TButton
      Left = 334
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '������'
      ModalResult = 2
      TabOrder = 1
    end
    object btnOk: TButton
      Left = 243
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
  inline fBuffSelector1: TfBuffSelector
    Width = 420
    Height = 255
    Align = alClient
    TabOrder = 1
    inherited RxDBGrid1: TRxDBGrid
      Width = 420
      Height = 215
      OnDblClick = fBuffSelector1RxDBGrid1DblClick
    end
    inherited ToolBar: TToolBar
      Width = 420
    end
    inherited DataSource1: TDataSource
      OnDataChange = fBuffSelector1DataSource1DataChange
    end
  end
end
