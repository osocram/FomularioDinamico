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
    Width = 409
    Height = 177
    TabOrder = 0
  end
  object bCriarForm: TButton
    Left = 463
    Top = 32
    Width = 178
    Height = 49
    Caption = 'Criar Form'
    TabOrder = 1
    OnClick = bCriarFormClick
  end
  object Button1: TButton
    Left = 463
    Top = 104
    Width = 178
    Height = 49
    Caption = 'Adicionar tela de cadastro'
    TabOrder = 2
    OnClick = Button1Click
  end
  object cdsObjetos: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cdsObjetosAfterPost
    Left = 336
    Top = 72
    object cdsObjetosag_max: TAggregateField
      FieldName = 'ag_max'
      Active = True
      DisplayName = ''
      Expression = 'max(id_order)'
    end
  end
end
