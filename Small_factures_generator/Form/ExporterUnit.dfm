object Exporter: TExporter
  Left = 369
  Top = 330
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Format'
  ClientHeight = 123
  ClientWidth = 210
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object btnOk: TButton
    Left = 8
    Top = 88
    Width = 89
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 3
  end
  object btnAnnuler: TButton
    Left = 112
    Top = 88
    Width = 89
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 4
  end
  object rbHTML: TRadioButton
    Left = 8
    Top = 32
    Width = 190
    Height = 17
    Caption = 'HTML'
    TabOrder = 1
  end
  object rbASCII: TRadioButton
    Left = 8
    Top = 56
    Width = 185
    Height = 17
    Caption = 'ASCII'
    TabOrder = 2
  end
  object rbCSV: TRadioButton
    Left = 8
    Top = 8
    Width = 190
    Height = 17
    Caption = 'CSV'
    Checked = True
    TabOrder = 0
    TabStop = True
  end
end
