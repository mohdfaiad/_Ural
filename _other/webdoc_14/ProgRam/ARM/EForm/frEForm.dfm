object fEForm: TfEForm
  Left = 0
  Top = 0
  Width = 443
  Height = 277
  Align = alClient
  TabOrder = 0
  object sPageControl2: TsPageControl
    Left = 0
    Top = 0
    Width = 443
    Height = 277
    Align = alClient
    HotTrack = True
    Images = DM.ilImage
    MultiLine = True
    TabHeight = 140
    TabOrder = 0
    TabPosition = tpLeft
    TabWidth = 27
    OnChange = sPageControl2Change
    SkinData.SkinSection = 'PAGECONTROL'
    OnCloseBtnClick = sPageControl2CloseBtnClick
  end
  object ActionList1: TActionList
    Left = 96
    Top = 168
    object aShowTree: TAction
      Hint = '������/�������� ������ ��������'
      ImageIndex = 34
    end
    object aBsnProp: TAction
      Caption = '������������� ������'
      Enabled = False
      ImageIndex = 1
    end
    object aNewBsn: TAction
      Caption = '������� ������'
      ImageIndex = 0
    end
    object aRefresheBsn: TAction
      Caption = '��������'
      ImageIndex = 3
    end
  end
  object pmEM: TAdvPopupMenu
    Version = '2.5.3.1'
    Left = 96
    Top = 64
    object N1: TMenuItem
      Action = aBsnProp
    end
    object N2: TMenuItem
      Action = aNewBsn
    end
  end
  object sFrameAdapter1: TsFrameAdapter
    SkinData.SkinSection = 'GROUPBOX'
    Left = 36
    Top = 102
  end
end
