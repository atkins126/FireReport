object frShapeForm: TfrShapeForm
  Left = 200
  Top = 108
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  BorderStyle = bsDialog
  Caption = 'Shape'
  ClientHeight = 103
  ClientWidth = 222
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 72
    Width = 16
    Height = 16
    Picture.Data = {
      07544269746D6170F6000000424DF60000000000000076000000280000001000
      0000100000000100040000000000800000000000000000000000100000000000
      000000000000000080000080000000808000800000008000800080800000C0C0
      C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF007777777700000007777777770FFFFF07777777770FFFFF07770000770FFF
      FF07702222070FFFFF07022222200FFFFF070222222000000007022222207777
      77770222000000000777702220CCCCC07777770000CCCCC077777777770CCC07
      77777777770CCC07777777777770C077777777777770C0777777777777770777
      7777}
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 8
    Width = 213
    Height = 53
    Caption = 'Shape kind'
    TabOrder = 0
    object CB1: TComboBox
      Left = 8
      Top = 20
      Width = 197
      Height = 21
      HelpContext = 126
      Style = csDropDownList
      TabOrder = 0
    end
  end
  object Button1: TButton
    Left = 62
    Top = 72
    Width = 75
    Height = 25
    HelpContext = 40
    Caption = 'Ok'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object Button2: TButton
    Left = 142
    Top = 72
    Width = 75
    Height = 25
    HelpContext = 50
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
end
