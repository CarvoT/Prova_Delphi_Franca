object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
  ClientHeight = 338
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblColunas: TLabel
    Left = 8
    Top = 13
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object lblTabelas: TLabel
    Left = 184
    Top = 13
    Width = 37
    Height = 13
    Caption = 'Tabelas'
  end
  object lblCondicoes: TLabel
    Left = 360
    Top = 13
    Width = 49
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object lblSQL: TLabel
    Left = 8
    Top = 173
    Width = 56
    Height = 13
    Caption = 'SQL gerado'
  end
  object mmoColunas: TMemo
    Left = 8
    Top = 32
    Width = 161
    Height = 137
    TabOrder = 0
  end
  object mmoTabelas: TMemo
    Left = 184
    Top = 32
    Width = 161
    Height = 137
    TabOrder = 1
  end
  object mmoCondicoes: TMemo
    Left = 360
    Top = 32
    Width = 161
    Height = 137
    TabOrder = 2
  end
  object mmoSQL: TMemo
    Left = 8
    Top = 192
    Width = 619
    Height = 137
    TabOrder = 3
  end
  object btnGerarSQL: TButton
    Left = 544
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Gerar SQL'
    TabOrder = 4
    OnClick = btnGerarSQLClick
  end
  object spQuery: TspQuery
    Left = 568
    Top = 40
  end
end
