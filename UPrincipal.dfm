object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'FPrincipal'
  ClientHeight = 648
  ClientWidth = 684
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
  object memoPrincipal: TMemo
    Left = 8
    Top = 8
    Width = 529
    Height = 177
    TabOrder = 0
  end
  object bCriarForm: TButton
    Left = 551
    Top = 72
    Width = 113
    Height = 49
    Caption = 'Criar Form'
    TabOrder = 1
    OnClick = bCriarFormClick
  end
  object cdsObjetos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 32
  end
end
