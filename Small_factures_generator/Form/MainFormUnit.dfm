object MainForm: TMainForm
  Left = 212
  Top = 116
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Small factures generator'
  ClientHeight = 555
  ClientWidth = 1055
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1055
    Height = 525
    ActivePage = TabSheet1
    Align = alClient
    Style = tsButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Premiere Etape'
      TabVisible = False
      object groInformationPersonnel: TGroupBox
        Left = 512
        Top = 8
        Width = 530
        Height = 249
        Caption = ' Personal info '
        TabOrder = 0
        object lblmNomPrenom: TLabel
          Left = 20
          Top = 37
          Width = 90
          Height = 16
          Caption = 'Num / Prenum :'
        end
        object lblmAdresse: TLabel
          Left = 20
          Top = 66
          Width = 54
          Height = 16
          Caption = 'Address:'
        end
        object lblmVille: TLabel
          Left = 20
          Top = 95
          Width = 25
          Height = 16
          Caption = 'City:'
        end
        object lblmPaye: TLabel
          Left = 20
          Top = 124
          Width = 43
          Height = 16
          Caption = 'Payee:'
        end
        object lblmTelephone: TLabel
          Left = 20
          Top = 154
          Width = 42
          Height = 16
          Caption = 'Phone:'
        end
        object lblmEmail: TLabel
          Left = 20
          Top = 183
          Width = 44
          Height = 16
          Caption = 'E-mail :'
        end
        object lblmAdresseWeb: TLabel
          Left = 20
          Top = 213
          Width = 86
          Height = 16
          Caption = 'Address Web:'
        end
        object edtmNomPrenom: TEdit
          Left = 132
          Top = 32
          Width = 371
          Height = 24
          TabOrder = 0
        end
        object edtmAdresse: TEdit
          Left = 132
          Top = 60
          Width = 371
          Height = 24
          TabOrder = 1
        end
        object edtmVille: TEdit
          Left = 132
          Top = 90
          Width = 371
          Height = 24
          TabOrder = 2
        end
        object edtmPaye: TEdit
          Left = 132
          Top = 119
          Width = 371
          Height = 24
          TabOrder = 3
        end
        object edtmTelephone: TEdit
          Left = 132
          Top = 149
          Width = 371
          Height = 24
          TabOrder = 4
        end
        object edtmEmail: TEdit
          Left = 132
          Top = 178
          Width = 371
          Height = 24
          TabOrder = 5
        end
        object edtmAdresseWeb: TEdit
          Left = 132
          Top = 208
          Width = 371
          Height = 24
          TabOrder = 6
        end
      end
      object grpInformationDuClient: TGroupBox
        Left = 512
        Top = 264
        Width = 530
        Height = 249
        Caption = ' Client information '
        TabOrder = 1
        object lblsNomPrenom: TLabel
          Left = 20
          Top = 37
          Width = 87
          Height = 16
          Caption = 'Num / Prenum:'
        end
        object lblsAdresse: TLabel
          Left = 20
          Top = 66
          Width = 54
          Height = 16
          Caption = 'Address:'
        end
        object lblsVille: TLabel
          Left = 20
          Top = 95
          Width = 25
          Height = 16
          Caption = 'City:'
        end
        object lblsPaye: TLabel
          Left = 20
          Top = 124
          Width = 43
          Height = 16
          Caption = 'Payee:'
        end
        object lblsTelephone: TLabel
          Left = 20
          Top = 154
          Width = 42
          Height = 16
          Caption = 'Phone:'
        end
        object lblsEmail: TLabel
          Left = 20
          Top = 183
          Width = 41
          Height = 16
          Caption = 'E-mail:'
        end
        object lblsAdresseWeb: TLabel
          Left = 20
          Top = 213
          Width = 86
          Height = 16
          Caption = 'Address Web:'
        end
        object edtsNomPrenom: TEdit
          Left = 132
          Top = 32
          Width = 371
          Height = 24
          TabOrder = 0
        end
        object edtsAdresse: TEdit
          Left = 132
          Top = 60
          Width = 371
          Height = 24
          TabOrder = 1
        end
        object edtsVille: TEdit
          Left = 132
          Top = 90
          Width = 371
          Height = 24
          TabOrder = 2
        end
        object edtsPaye: TEdit
          Left = 132
          Top = 119
          Width = 371
          Height = 24
          TabOrder = 3
        end
        object edtsTelephone: TEdit
          Left = 132
          Top = 149
          Width = 371
          Height = 24
          TabOrder = 4
        end
        object edtsEmail: TEdit
          Left = 132
          Top = 178
          Width = 371
          Height = 24
          TabOrder = 5
        end
        object edtsAdresseWeb: TEdit
          Left = 132
          Top = 208
          Width = 371
          Height = 24
          TabOrder = 6
        end
      end
      object grpAutres: TGroupBox
        Left = 0
        Top = 8
        Width = 505
        Height = 505
        TabOrder = 2
        object pnlImage: TPanel
          Left = 8
          Top = 16
          Width = 489
          Height = 137
          BevelInner = bvLowered
          Caption = 'lmage size = 106/392'
          TabOrder = 0
          object imgEntete: TImage
            Left = 2
            Top = 2
            Width = 483
            Height = 131
            Stretch = True
          end
        end
        object btnAjouterUneImage: TButton
          Left = 280
          Top = 168
          Width = 214
          Height = 25
          Cursor = crHandPoint
          Caption = 'Add / Modify image'
          TabOrder = 1
          OnClick = btnAjouterUneImageClick
        end
        object btnSuprimerLimage: TButton
          Left = 8
          Top = 168
          Width = 169
          Height = 25
          Cursor = crHandPoint
          Caption = 'Clear image'
          Enabled = False
          TabOrder = 2
          OnClick = btnSuprimerLimageClick
        end
        object grpInfoDocument: TGroupBox
          Left = 8
          Top = 208
          Width = 489
          Height = 137
          Caption = ' Document '
          TabOrder = 3
          object lblGenre: TLabel
            Left = 20
            Top = 30
            Width = 40
            Height = 16
            Caption = 'Genre:'
          end
          object lblNumero: TLabel
            Left = 20
            Top = 70
            Width = 51
            Height = 16
            Caption = 'Number:'
          end
          object lblDate: TLabel
            Left = 20
            Top = 109
            Width = 32
            Height = 16
            Caption = 'Date:'
          end
          object lbl1: TLabel
            Left = 468
            Top = 31
            Width = 8
            Height = 20
            Caption = '*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl2: TLabel
            Left = 469
            Top = 67
            Width = 8
            Height = 20
            Caption = '*'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dtpDate: TDateTimePicker
            Left = 128
            Top = 99
            Width = 336
            Height = 24
            Date = 39376.000000000000000000
            Time = 39376.000000000000000000
            DateFormat = dfLong
            TabOrder = 0
          end
          object seNumero: TSpinEdit
            Left = 128
            Top = 63
            Width = 336
            Height = 26
            MaxValue = 999999
            MinValue = 1
            TabOrder = 1
            Value = 1
          end
          object cbbGenre: TComboBox
            Left = 128
            Top = 28
            Width = 336
            Height = 24
            ItemHeight = 16
            TabOrder = 2
            Items.Strings = (
              'Facture'
              'Bon de livraison'
              'Bon d'#39'achat')
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Deuxieme Etape'
      ImageIndex = 1
      TabVisible = False
      object pnl3: TPanel
        Left = 0
        Top = 475
        Width = 1045
        Height = 44
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object shp1: TShape
          Left = 667
          Top = 9
          Width = 342
          Height = 24
          Pen.Color = 12164479
        end
        object dbtxtMontanTotal: TDBText
          Left = 794
          Top = 16
          Width = 5
          Height = 16
          AutoSize = True
          Color = clWhite
          DataField = 'MontantTotal'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lblMontantTotal: TLabel
          Left = 675
          Top = 13
          Width = 90
          Height = 16
          Caption = 'Amount total:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object btnImprimer: TSpeedButton
          Tag = 1
          Left = 504
          Top = 9
          Width = 152
          Height = 24
          Cursor = crHandPoint
          Caption = 'Print'
          OnClick = Impresion
        end
        object btnApercu: TSpeedButton
          Tag = 2
          Left = 336
          Top = 9
          Width = 153
          Height = 24
          Cursor = crHandPoint
          Caption = 'View'
          OnClick = Impresion
        end
        object btnExporter: TSpeedButton
          Tag = 3
          Left = 168
          Top = 9
          Width = 153
          Height = 24
          Cursor = crHandPoint
          Caption = 'Export'
          OnClick = Impresion
        end
        object btnNouveau: TSpeedButton
          Left = 1
          Top = 9
          Width = 152
          Height = 24
          Cursor = crHandPoint
          Caption = 'New'
          OnClick = btnNouveauClick
        end
      end
      object pnl2: TPanel
        Left = 0
        Top = 0
        Width = 1045
        Height = 475
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object dbgrdDonnees: TDBGrid
          Left = 0
          Top = 0
          Width = 1008
          Height = 475
          Align = alClient
          Ctl3D = True
          DataSource = DataSource1
          ParentCtl3D = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Number'
              ReadOnly = True
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Description'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Quantite'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PrixUnitaire'
              Title.Caption = 'Prix Unitaire'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Summ'
              ReadOnly = True
              Width = 170
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 1008
          Top = 0
          Width = 37
          Height = 475
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object btnFirst: TDBNavigator
            Left = 4
            Top = 16
            Width = 30
            Height = 31
            Cursor = crHandPoint
            DataSource = DataSource1
            VisibleButtons = [nbFirst]
            Flat = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object btnPrior: TDBNavigator
            Left = 4
            Top = 59
            Width = 30
            Height = 31
            Cursor = crHandPoint
            DataSource = DataSource1
            VisibleButtons = [nbPrior]
            Flat = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object btnNext: TDBNavigator
            Left = 4
            Top = 102
            Width = 30
            Height = 31
            Cursor = crHandPoint
            DataSource = DataSource1
            VisibleButtons = [nbNext]
            Flat = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object btnLast: TDBNavigator
            Left = 4
            Top = 145
            Width = 30
            Height = 31
            Cursor = crHandPoint
            DataSource = DataSource1
            VisibleButtons = [nbLast]
            Flat = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
          object btnInsert: TDBNavigator
            Left = 4
            Top = 188
            Width = 30
            Height = 31
            Cursor = crHandPoint
            DataSource = DataSource1
            VisibleButtons = [nbInsert]
            Flat = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
          end
          object btnPost: TDBNavigator
            Left = 4
            Top = 318
            Width = 30
            Height = 30
            Cursor = crHandPoint
            DataSource = DataSource1
            VisibleButtons = [nbPost]
            Flat = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
          end
          object btnEdit: TDBNavigator
            Left = 4
            Top = 274
            Width = 30
            Height = 31
            Cursor = crHandPoint
            DataSource = DataSource1
            VisibleButtons = [nbEdit]
            Flat = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
          end
          object btnDelete: TDBNavigator
            Left = 4
            Top = 231
            Width = 30
            Height = 31
            Cursor = crHandPoint
            DataSource = DataSource1
            VisibleButtons = [nbDelete]
            Flat = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
          end
          object btnCancel: TDBNavigator
            Left = 4
            Top = 361
            Width = 30
            Height = 30
            Cursor = crHandPoint
            DataSource = DataSource1
            VisibleButtons = [nbCancel]
            Flat = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
          end
          object btnRefresh: TDBNavigator
            Left = 4
            Top = 405
            Width = 30
            Height = 31
            Cursor = crHandPoint
            DataSource = DataSource1
            VisibleButtons = [nbRefresh]
            Flat = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
          end
        end
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 525
    Width = 1055
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object lbl: TLabel
      Left = 16
      Top = 12
      Width = 140
      Height = 20
      Caption = 'www.delphifr.com'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnSuivantRetour: TSpeedButton
      Left = 817
      Top = 0
      Width = 232
      Height = 25
      Cursor = crHandPoint
      Caption = 'Next >>'
      OnClick = btnSuivantRetourClick
    end
  end
  object XPManifest1: TXPManifest
    Left = 97
    Top = 132
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 61
    Top = 125
  end
  object dlgSave1: TSaveDialog
    Left = 61
    Top = 49
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 25
    Top = 49
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    IndexFieldNames = 'Numero'
    Params = <>
    OnCalcFields = ClientDataSet1CalcFields
    Left = 28
    Top = 126
    Data = {
      AE0000009619E0BD010000001800000004000000000003000000AE00064E756D
      65726F040001000200010007535542545950450200490008004175746F696E63
      000B4465736372697074696F6E010049000000010005574944544802000200FA
      00085175616E7469746504000100000000000C50726978556E69746169726508
      0004000000010007535542545950450200490006004D6F6E65790001000C4155
      544F494E4356414C55450400010001000000}
    object ClientDataSet1Numero: TAutoIncField
      FieldName = 'Numero'
    end
    object ClientDataSet1Description: TStringField
      FieldName = 'Description'
      Size = 250
    end
    object ClientDataSet1Quantite: TIntegerField
      FieldName = 'Quantite'
    end
    object ClientDataSet1PrixUnitaire: TCurrencyField
      FieldName = 'PrixUnitaire'
      DisplayFormat = '#,##0.00 '#39'Dh'#39
      EditFormat = '#,##0.00'
    end
    object ClientDataSet1Montant: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Montant'
      DisplayFormat = '#,##0.00 '#39'Dh'#39
      EditFormat = '#,##0.00'
      Calculated = True
    end
    object ClientDataSet1MontantTotal: TAggregateField
      FieldName = 'MontantTotal'
      Active = True
      currency = True
      DisplayFormat = '#,##0.00 '#39'Dh'#39
      Expression = 'Sum(Quantite*PrixUnitaire)'
    end
  end
end
