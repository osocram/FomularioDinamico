object FCadastro: TFCadastro
  Left = 0
  Top = 0
  Caption = 'FCadastro'
  ClientHeight = 670
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblClasse: TLabel
    Left = 32
    Top = 287
    Width = 69
    Height = 13
    Caption = 'Tipo do campo'
  end
  object lblDsnome: TLabel
    Left = 32
    Top = 349
    Width = 78
    Height = 13
    Hint = 'Nome do campo a n'#237'vel de Projetoo'
    Caption = 'Nome do Campo'
  end
  object lblDscaption: TLabel
    Left = 32
    Top = 397
    Width = 37
    Height = 13
    Hint = 'Esse nome ficar'#225' acima do campo'
    Caption = 'Caption'
  end
  object lblDataField: TLabel
    Left = 32
    Top = 445
    Width = 79
    Height = 13
    Hint = 'Nome do campo para o Banco de d Dados'
    Caption = 'Nome Campo BD'
  end
  object DBNavigator1: TDBNavigator
    Left = 176
    Top = 65
    Width = 250
    Height = 25
    DataSource = dsCadastro
    TabOrder = 0
    OnClick = DBNavigator1Click
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 96
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
  object dbedtDsnome: TDBEdit
    Left = 32
    Top = 368
    Width = 121
    Height = 21
    DataSource = dsCadastro
    TabOrder = 2
  end
  object dbedtDsCaption: TDBEdit
    Left = 32
    Top = 416
    Width = 121
    Height = 21
    DataSource = dsCadastro
    TabOrder = 3
  end
  object dbcbDsClasse: TDBComboBox
    Left = 32
    Top = 306
    Width = 145
    Height = 21
    Style = csDropDownList
    DataSource = dsCadastro
    TabOrder = 4
  end
  object dbedtDataField: TDBEdit
    Left = 32
    Top = 464
    Width = 121
    Height = 21
    DataSource = dsCadastro
    TabOrder = 5
  end
  object gbPosicao: TGroupBox
    Left = 176
    Top = 349
    Width = 97
    Height = 268
    Caption = 'Posi'#231#227'o '
    TabOrder = 6
    object lblTop: TLabel
      Left = 20
      Top = 39
      Width = 18
      Height = 13
      Caption = 'Top'
    end
    object lblLeft: TLabel
      Left = 20
      Top = 87
      Width = 19
      Height = 13
      Caption = 'Left'
    end
    object lblWidth: TLabel
      Left = 20
      Top = 195
      Width = 37
      Height = 13
      Caption = 'Largura'
    end
    object lblHeight: TLabel
      Left = 20
      Top = 148
      Width = 29
      Height = 13
      Caption = 'Altura'
    end
    object dbedtTop: TDBEdit
      Left = 20
      Top = 58
      Width = 53
      Height = 21
      DataSource = dsCadastro
      TabOrder = 0
    end
    object dbedtLeft: TDBEdit
      Left = 20
      Top = 106
      Width = 53
      Height = 21
      DataSource = dsCadastro
      TabOrder = 1
    end
    object dbedtWidth: TDBEdit
      Left = 20
      Top = 215
      Width = 53
      Height = 21
      DataSource = dsCadastro
      TabOrder = 2
    end
    object dbedtHeight: TDBEdit
      Left = 20
      Top = 167
      Width = 53
      Height = 21
      DataSource = dsCadastro
      TabOrder = 3
    end
  end
  object DBComboBox1: TDBComboBox
    Left = 312
    Top = 349
    Width = 145
    Height = 21
    DataSource = dsCadastro
    TabOrder = 7
  end
  object dsCadastro: TDataSource
    DataSet = Form1.cdsObjetos
    Left = 552
    Top = 24
  end
end
