object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'FPrincipal'
  ClientHeight = 648
  ClientWidth = 921
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object memoPrincipal: TMemo
    Left = 8
    Top = 8
    Width = 721
    Height = 168
    TabOrder = 0
  end
  object bCriarForm: TButton
    Left = 735
    Top = 16
    Width = 178
    Height = 49
    Caption = 'Criar Form'
    TabOrder = 1
    OnClick = bCriarFormClick
  end
  object Button1: TButton
    Left = 735
    Top = 88
    Width = 178
    Height = 49
    Caption = 'Adicionar tela de cadastro'
    TabOrder = 2
    OnClick = Button1Click
  end
  object btnLista: TButton
    Left = 768
    Top = 143
    Width = 105
    Height = 33
    Caption = 'Carregar Lista'
    TabOrder = 3
    OnClick = btnListaClick
  end
  object cdsObjetos: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cdsObjetosAfterPost
    Left = 352
    Top = 16
    object cdsObjetosag_max: TAggregateField
      FieldName = 'ag_max'
      Active = True
      DisplayName = ''
      Expression = 'max(id_order)'
    end
  end
end
