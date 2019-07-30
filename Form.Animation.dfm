object formAnimation: TformAnimation
  Left = 0
  Top = 0
  Caption = 'TIntAnimation test'
  ClientHeight = 372
  ClientWidth = 799
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Font.Quality = fqClearType
  Padding.Left = 20
  Padding.Top = 70
  Padding.Right = 20
  Padding.Bottom = 20
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 17
  object buttonAni: TButton
    Left = 20
    Top = 20
    Width = 75
    Height = 41
    Caption = 'Me'
    TabOrder = 0
  end
  object buttonStartWithHelper: TButton
    Left = 118
    Top = 245
    Width = 133
    Height = 36
    Caption = 'Start by helper'
    TabOrder = 1
    WordWrap = True
    OnClick = buttonStartWithHelperClick
  end
  object buttonStartAnimation: TButton
    Left = 118
    Top = 195
    Width = 133
    Height = 36
    Caption = 'Start'
    TabOrder = 2
    OnClick = buttonStartAnimationClick
  end
  object radiogroupAniKind: TRadioGroup
    Left = 121
    Top = 78
    Width = 130
    Height = 103
    Caption = 'Animation kind'
    ItemIndex = 0
    Items.Strings = (
      'akIn'
      'akOut'
      'akInOut')
    TabOrder = 3
  end
  object radiogroupAniFunction: TRadioGroup
    AlignWithMargins = True
    Left = 291
    Top = 78
    Width = 470
    Height = 103
    Margins.Left = 0
    Margins.Top = 20
    Margins.Right = 0
    Margins.Bottom = 0
    Caption = 'Animation function'
    Columns = 4
    ItemIndex = 0
    Items.Strings = (
      'afkLinear'
      'afkQuadratic'
      'afkCubic'
      'afkQuartic'
      'afkQuintic'
      'afkBack'
      'afkBounce'
      'afkExpo'
      'afkSine'
      'afkCircle')
    TabOrder = 4
  end
  object groupCustomAniOptions: TGroupBox
    AlignWithMargins = True
    Left = 291
    Top = 191
    Width = 470
    Height = 140
    Margins.Left = 0
    Margins.Top = 20
    Margins.Right = 0
    Margins.Bottom = 0
    Caption = 'Other options'
    TabOrder = 5
    object editStep: TLabeledEdit
      Left = 19
      Top = 40
      Width = 100
      Height = 23
      EditLabel.Width = 26
      EditLabel.Height = 17
      EditLabel.Caption = 'Step'
      NumbersOnly = True
      TabOrder = 0
      Text = '25'
    end
    object editDuration: TLabeledEdit
      Left = 189
      Top = 40
      Width = 100
      Height = 23
      EditLabel.Width = 79
      EditLabel.Height = 17
      EditLabel.Caption = 'Duration (ms)'
      NumbersOnly = True
      TabOrder = 1
      Text = '250'
    end
    object editStartValue: TLabeledEdit
      Left = 19
      Top = 92
      Width = 100
      Height = 23
      EditLabel.Width = 91
      EditLabel.Height = 17
      EditLabel.Caption = 'Start value (left)'
      NumbersOnly = True
      TabOrder = 2
      Text = '20'
    end
    object editDeltaValue: TLabeledEdit
      Left = 189
      Top = 92
      Width = 100
      Height = 23
      EditLabel.Width = 99
      EditLabel.Height = 17
      EditLabel.Caption = 'Delta (signed int)'
      NumbersOnly = True
      TabOrder = 3
      Text = '+300'
    end
  end
  object buttonResetPosition: TButton
    Left = 118
    Top = 295
    Width = 133
    Height = 36
    Caption = 'Reset position'
    TabOrder = 6
    WordWrap = True
    OnClick = buttonResetPositionClick
  end
end
