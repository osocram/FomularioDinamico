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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 736
    Height = 496
    Align = alClient
    Caption = 'Log'
    TabOrder = 0
    ExplicitLeft = 368
    ExplicitTop = 48
    ExplicitWidth = 185
    ExplicitHeight = 105
    object memoPrincipal: TMemo
      Left = 2
      Top = 15
      Width = 732
      Height = 479
      Align = alClient
      TabOrder = 0
      ExplicitLeft = -248
      ExplicitTop = -248
      ExplicitWidth = 433
      ExplicitHeight = 353
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 496
    Width = 921
    Height = 152
    Align = alBottom
    Caption = 'Lista de dados'
    TabOrder = 1
    object btnLista: TButton
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 87
      Height = 129
      Align = alLeft
      Caption = 'Carregar Lista'
      TabOrder = 0
      OnClick = btnListaClick
      ExplicitLeft = 2
      ExplicitTop = 15
      ExplicitHeight = 135
    end
    object DBGrid1: TDBGrid
      Left = 95
      Top = 15
      Width = 824
      Height = 135
      Align = alClient
      DataSource = ds
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object GroupBox3: TGroupBox
    Left = 736
    Top = 0
    Width = 185
    Height = 496
    Align = alRight
    Caption = 'A'#231#245'es'
    TabOrder = 2
    ExplicitLeft = 376
    ExplicitTop = 288
    ExplicitHeight = 105
    object Button1: TButton
      AlignWithMargins = True
      Left = 5
      Top = 81
      Width = 175
      Height = 50
      Margins.Top = 10
      Align = alTop
      Caption = 'Adicionar tela de cadastro'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitTop = 73
    end
    object bCriarForm: TButton
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 175
      Height = 50
      Align = alTop
      Caption = 'Criar Form'
      TabOrder = 1
      OnClick = bCriarFormClick
    end
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
  object ds: TDataSource
    DataSet = cdsObjetos
    Left = 552
    Top = 24
  end
end
