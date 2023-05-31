object PageMain: TPageMain
  Left = 0
  Top = 0
  Caption = 'PageMain'
  ClientHeight = 213
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 69
    Width = 53
    Height = 13
    Caption = 'Tipo Senha'
  end
  object edtTamanho: TLabeledEdit
    Left = 24
    Top = 40
    Width = 185
    Height = 21
    EditLabel.Width = 44
    EditLabel.Height = 13
    EditLabel.Caption = 'Tamanho'
    NumbersOnly = True
    TabOrder = 0
    Text = '14'
  end
  object cbxTipo: TComboBox
    Left = 24
    Top = 88
    Width = 185
    Height = 21
    Style = csDropDownList
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object edtPrefixo: TLabeledEdit
    Left = 24
    Top = 136
    Width = 185
    Height = 21
    EditLabel.Width = 34
    EditLabel.Height = 13
    EditLabel.Caption = 'Prefixo'
    TabOrder = 2
    Text = 'RICK-'
  end
  object btGerar: TButton
    Left = 134
    Top = 180
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Gerar'
    TabOrder = 3
    OnClick = btGerarClick
  end
  object cbHash: TCheckBox
    Left = 24
    Top = 180
    Width = 97
    Height = 17
    Caption = 'Gerar Hash'
    TabOrder = 4
  end
  object Memo: TMemo
    Left = 223
    Top = 8
    Width = 185
    Height = 197
    Lines.Strings = (
      'Memo')
    TabOrder = 5
  end
end
