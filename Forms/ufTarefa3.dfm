object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  Caption = 'Tarefa 3'
  ClientHeight = 390
  ClientWidth = 409
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblTotal: TLabel
    Left = 303
    Top = 297
    Width = 44
    Height = 13
    Caption = 'Total R$:'
  end
  object lblTotalDiv: TLabel
    Left = 303
    Top = 342
    Width = 85
    Height = 13
    Caption = 'Total divis'#245'es R$:'
  end
  object dgProjetos: TDBGrid
    Left = 8
    Top = 8
    Width = 395
    Height = 283
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idProjeto'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProjeto'
        Width = 222
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Width = 79
        Visible = True
      end>
  end
  object edtTotal: TEdit
    Left = 303
    Top = 312
    Width = 98
    Height = 21
    TabOrder = 1
  end
  object btnObterTotal: TButton
    Left = 192
    Top = 310
    Width = 105
    Height = 25
    Caption = 'Obter total'
    TabOrder = 2
    OnClick = btnObterTotalClick
  end
  object btnObterTotalDiv: TButton
    Left = 192
    Top = 357
    Width = 105
    Height = 25
    Caption = 'Obter total divis'#245'es'
    TabOrder = 3
    OnClick = btnObterTotalDivClick
  end
  object EdtTotalDiv: TEdit
    Left = 303
    Top = 361
    Width = 98
    Height = 21
    TabOrder = 4
  end
end
