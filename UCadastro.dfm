object FCadastro: TFCadastro
  Left = 0
  Top = 0
  Caption = 'FCadastro'
  ClientHeight = 584
  ClientWidth = 631
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
  object DBNavigator1: TDBNavigator
    Left = 208
    Top = 8
    Width = 250
    Height = 25
    DataSource = dsCadastro
    TabOrder = 0
    OnClick = DBNavigator1Click
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 39
    Width = 585
    Height = 185
    DataSource = dsCadastro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object gbPosicao: TGroupBox
    Left = 332
    Top = 241
    Width = 81
    Height = 236
    Caption = 'Posi'#231#227'o '
    TabOrder = 2
    object lblTop: TLabel
      Left = 12
      Top = 23
      Width = 18
      Height = 13
      Caption = 'Top'
    end
    object lblLeft: TLabel
      Left = 12
      Top = 71
      Width = 19
      Height = 13
      Caption = 'Left'
    end
    object lblWidth: TLabel
      Left = 12
      Top = 179
      Width = 37
      Height = 13
      Caption = 'Largura'
    end
    object lblHeight: TLabel
      Left = 12
      Top = 132
      Width = 29
      Height = 13
      Caption = 'Altura'
    end
    object dbedtTop: TDBEdit
      Left = 12
      Top = 42
      Width = 53
      Height = 21
      DataSource = dsCadastro
      TabOrder = 0
    end
    object dbedtLeft: TDBEdit
      Left = 12
      Top = 90
      Width = 53
      Height = 21
      DataSource = dsCadastro
      TabOrder = 1
    end
    object dbedtWidth: TDBEdit
      Left = 12
      Top = 199
      Width = 53
      Height = 21
      DataSource = dsCadastro
      TabOrder = 2
    end
    object dbedtHeight: TDBEdit
      Left = 12
      Top = 151
      Width = 53
      Height = 21
      DataSource = dsCadastro
      TabOrder = 3
    end
  end
  object GroupBox1: TGroupBox
    Left = 136
    Top = 241
    Width = 177
    Height = 264
    Caption = 'Dados do Campo'
    TabOrder = 3
    object lblClasse: TLabel
      Left = 16
      Top = 22
      Width = 20
      Height = 13
      Caption = 'Tipo'
    end
    object lblDsnome: TLabel
      Left = 16
      Top = 163
      Width = 78
      Height = 13
      Hint = 'Nome do campo a n'#237'vel de Projetoo'
      Caption = 'Nome do Campo'
    end
    object lblDscaption: TLabel
      Left = 16
      Top = 209
      Width = 37
      Height = 13
      Hint = 'Esse nome ficar'#225' acima do campo'
      Caption = 'Caption'
    end
    object lblDataField: TLabel
      Left = 16
      Top = 117
      Width = 58
      Height = 13
      Hint = 'Nome do campo para o Banco de d Dados'
      Caption = 'Nome no BD'
    end
    object lblPai: TLabel
      Left = 16
      Top = 68
      Width = 14
      Height = 13
      Caption = 'Pai'
    end
    object dbcbDsClasse: TDBComboBox
      Left = 16
      Top = 41
      Width = 145
      Height = 21
      Style = csDropDownList
      DataSource = dsCadastro
      TabOrder = 0
      OnChange = dbcbDsClasseChange
    end
    object dbedtDsnome: TDBEdit
      Left = 16
      Top = 136
      Width = 121
      Height = 21
      DataSource = dsCadastro
      TabOrder = 1
    end
    object dbedtDsCaption: TDBEdit
      Left = 16
      Top = 228
      Width = 121
      Height = 21
      DataSource = dsCadastro
      TabOrder = 2
    end
    object dbedtNomeBd: TDBEdit
      Left = 16
      Top = 182
      Width = 121
      Height = 21
      DataSource = dsCadastro
      TabOrder = 3
    end
    object dbcbPai: TDBComboBox
      Left = 16
      Top = 87
      Width = 145
      Height = 21
      DataSource = dsCadastro
      TabOrder = 4
    end
  end
  object dsCadastro: TDataSource
    DataSet = Form1.cdsObjetos
    Left = 552
    Top = 24
  end
end
