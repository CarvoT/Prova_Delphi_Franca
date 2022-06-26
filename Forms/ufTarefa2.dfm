object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'Tarefa 2'
  ClientHeight = 179
  ClientWidth = 259
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
  object lblProgresso2: TLabel
    Left = 8
    Top = 128
    Width = 52
    Height = 13
    Caption = 'Processo 2'
  end
  object lblProgresso1: TLabel
    Left = 8
    Top = 85
    Width = 52
    Height = 13
    Caption = 'Processo 1'
  end
  object pbProcesso1: TProgressBar
    Left = 8
    Top = 104
    Width = 243
    Height = 17
    TabOrder = 0
  end
  object pbProcesso2: TProgressBar
    Left = 8
    Top = 147
    Width = 243
    Height = 17
    TabOrder = 1
  end
  object btnIniciar: TButton
    Left = 176
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 2
    OnClick = btnIniciarClick
  end
  object gbIntervalos: TGroupBox
    Left = 8
    Top = 8
    Width = 153
    Height = 73
    Caption = ' Intervalos em milissegundos '
    TabOrder = 3
    object lblTempoThread2: TLabel
      Left = 89
      Top = 21
      Width = 52
      Height = 13
      Caption = 'Processo 2'
    end
    object lblTempoThread1: TLabel
      Left = 16
      Top = 21
      Width = 52
      Height = 13
      Caption = 'Processo 1'
    end
    object seProcesso1: TSpinEdit
      Left = 16
      Top = 40
      Width = 52
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object seProcesso2: TSpinEdit
      Left = 89
      Top = 40
      Width = 52
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
  end
end
