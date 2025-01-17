object BudgetFrm: TBudgetFrm
  Left = 447
  Top = 175
  Width = 1011
  Height = 624
  Caption = 'Products Budget - Calculate/Adjust'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 120
  TextHeight = 16
  object pnlProductListBackground: TPanel
    Left = 0
    Top = 0
    Width = 993
    Height = 579
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object shpProductList: TShape
      Left = 6
      Top = 6
      Width = 1206
      Height = 694
      Brush.Color = clWindow
      Pen.Color = clHighlight
      Pen.Style = psInsideFrame
    end
    object Shape1: TShape
      Left = 21
      Top = 15
      Width = 37
      Height = 37
      Cursor = crHandPoint
      Brush.Color = 16311512
      Pen.Color = clHighlight
      Shape = stCircle
    end
    object lblMainFormTitle: TRzLabel
      Left = 63
      Top = 12
      Width = 1130
      Height = 40
      Alignment = taCenter
      AutoSize = False
      Caption = 'P R O D U C T  B U D G E T '
      Color = 16311512
      Font.Charset = ANSI_CHARSET
      Font.Color = clHighlight
      Font.Height = -25
      Font.Name = 'Haettenschweiler'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShowAccelChar = False
      FlyByColor = 12937777
      ShadowDepth = 1
      TextStyle = tsShadow
    end
    object pnlDetail: TPanel
      Left = 10
      Top = 79
      Width = 1183
      Height = 615
      BevelOuter = bvNone
      TabOrder = 0
      object pnlProductDetailColorBackground: TPanel
        Left = 0
        Top = 0
        Width = 1183
        Height = 292
        Align = alTop
        BevelOuter = bvNone
        Color = 16311512
        Font.Charset = ANSI_CHARSET
        Font.Color = 16744576
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label31: TLabel
          Left = 6
          Top = 6
          Width = 462
          Height = 22
          Alignment = taCenter
          AutoSize = False
          Caption = 'Select Review Period'
          Color = 15779500
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label38: TLabel
          Left = 470
          Top = 6
          Width = 712
          Height = 22
          Alignment = taCenter
          AutoSize = False
          Caption = 'Budget Summary'
          Color = 15779500
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object dbtTenderInflation: TDBText
          Left = 217
          Top = 260
          Width = 39
          Height = 26
          Alignment = taRightJustify
          Color = 16383986
          DataField = 'Inflation'
          DataSource = dsTenderInflation
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Label1: TLabel
          Left = 6
          Top = 31
          Width = 196
          Height = 26
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Review - From:'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label2: TLabel
          Left = 6
          Top = 60
          Width = 196
          Height = 26
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Projected - From:'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label3: TLabel
          Left = 322
          Top = 31
          Width = 25
          Height = 26
          Alignment = taCenter
          AutoSize = False
          Caption = 'To:'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label4: TLabel
          Left = 322
          Top = 60
          Width = 25
          Height = 26
          Alignment = taCenter
          AutoSize = False
          Caption = 'To:'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label13: TLabel
          Left = 6
          Top = 96
          Width = 462
          Height = 22
          Alignment = taCenter
          AutoSize = False
          Caption = 'Budget Parameters'
          Color = 15779500
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label5: TLabel
          Left = 6
          Top = 203
          Width = 209
          Height = 26
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Population Growth:'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 6
          Top = 231
          Width = 209
          Height = 26
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Inflation:'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label18: TLabel
          Left = 6
          Top = 260
          Width = 209
          Height = 26
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tender Price Inflation:'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Label7: TLabel
          Left = 258
          Top = 203
          Width = 13
          Height = 26
          AutoSize = False
          Caption = '%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 258
          Top = 231
          Width = 13
          Height = 26
          AutoSize = False
          Caption = '%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 258
          Top = 260
          Width = 13
          Height = 26
          AutoSize = False
          Caption = '%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 470
          Top = 31
          Width = 196
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total Calculated:'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label9: TLabel
          Left = 470
          Top = 54
          Width = 196
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total Reviewed:'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label11: TLabel
          Left = 470
          Top = 78
          Width = 196
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Monthly Calculated:'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label12: TLabel
          Left = 470
          Top = 101
          Width = 196
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Monthly Reviewed:'
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label14: TLabel
          Left = 470
          Top = 126
          Width = 351
          Height = 22
          Alignment = taCenter
          AutoSize = False
          Caption = 'VEN Breakdown'
          Color = 15779500
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DatBudgetStart: TDateTimePicker
          Left = 203
          Top = 60
          Width = 117
          Height = 24
          CalAlignment = dtaLeft
          Date = 37367.7516101852
          Time = 37367.7516101852
          DateFormat = dfShort
          DateMode = dmComboBox
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Kind = dtkDate
          MinDate = 37367
          ParseInput = False
          ParentFont = False
          TabOrder = 4
        end
        object datReviewStart: TDateTimePicker
          Left = 203
          Top = 31
          Width = 117
          Height = 24
          CalAlignment = dtaLeft
          Date = 37367.7515065972
          Time = 37367.7515065972
          DateFormat = dfShort
          DateMode = dmComboBox
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Kind = dtkDate
          MinDate = 37367
          ParseInput = False
          ParentFont = False
          TabOrder = 0
        end
        object DatBudgetEnd: TDateTimePicker
          Left = 351
          Top = 60
          Width = 117
          Height = 24
          CalAlignment = dtaLeft
          Date = 37367.7517170139
          Time = 37367.7517170139
          DateFormat = dfShort
          DateMode = dmComboBox
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Kind = dtkDate
          MinDate = 37367
          ParseInput = False
          ParentFont = False
          TabOrder = 5
        end
        object DatReviewEnd: TDateTimePicker
          Left = 351
          Top = 31
          Width = 117
          Height = 24
          CalAlignment = dtaLeft
          Date = 37367.7505847222
          Time = 37367.7505847222
          DateFormat = dfShort
          DateMode = dmComboBox
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Kind = dtkDate
          MinDate = 37367
          ParseInput = False
          ParentFont = False
          TabOrder = 1
        end
        object RadioProjection: TRadioGroup
          Left = 6
          Top = 122
          Width = 267
          Height = 79
          Caption = 'Projection mode'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Inflation '
            'Population and Inflation')
          ParentFont = False
          TabOrder = 9
        end
        object RadioTender: TRadioGroup
          Left = 274
          Top = 122
          Width = 194
          Height = 79
          Caption = 'Tender Mode'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Independent')
          ParentFont = False
          TabOrder = 10
        end
        object EdtInflation: TEdit
          Left = 217
          Top = 231
          Width = 39
          Height = 26
          BevelInner = bvNone
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = 16744448
          Font.Height = 12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          Text = '0'
          OnKeyPress = EdtInflationKeyPress
        end
        object EdtPop: TEdit
          Left = 217
          Top = 203
          Width = 39
          Height = 26
          BevelInner = bvNone
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = 16744448
          Font.Height = 12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          Text = '0'
          OnKeyPress = EdtPopKeyPress
        end
        object BtnPrintBudget: TBitBtn
          Left = 274
          Top = 260
          Width = 194
          Height = 26
          Action = atnPrintBudget
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
          Visible = False
          Glyph.Data = {
            2A010000424D2A010000000000007600000028000000130000000F0000000100
            040000000000B400000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333F0EFF3300000000000003333F00FF37877777777777703330000030F8
            8888888888870333003330F9988888888887703F11EE37FFFFFFFFFFFFF77039
            0910330888888888888F703865F03330870000000078F03765F03333000FFFFF
            F000033865F03333330F44448033333765F033333330FFFFFF03333865F03333
            3330F4444803333765F0333333330FFFFFF0333865F033333333000000003336
            66C0333333333333333333300000}
        end
        object btnEstimatedToReviewed: TBitBtn
          Left = 274
          Top = 231
          Width = 194
          Height = 26
          Caption = 'Estimated => Reviewed'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
          OnClick = btnEstimatedToReviewedClick
        end
        object BtnGenerateBudget: TBitBtn
          Left = 274
          Top = 203
          Width = 194
          Height = 27
          Caption = 'Generate Budget'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnClick = BtnGenerateBudgetClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555777555
            5555555555000757755555575500005007555570058880000075570870088078
            007555787887087777755550880FF0800007708080888F7088077088F0708F78
            88077000F0778080005555508F0008800755557878FF88777075570870080088
            0755557075888070755555575500075555555555557775555555}
        end
        object dxDBCurrencyEdit1: TdxDBCurrencyEdit
          Left = 666
          Top = 28
          Width = 157
          Color = 16383986
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Alignment = taRightJustify
          DataField = 'TotalBudget_mon'
          DataSource = dsTotalBudgetEDL
          StyleController = dxEditStyleController1
          Nullable = False
          StoredValues = 1
        end
        object dxDBCurrencyEdit2: TdxDBCurrencyEdit
          Left = 666
          Top = 52
          Width = 157
          Color = 16383986
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Alignment = taRightJustify
          DataField = 'TotalReviewedBudget_mon'
          DataSource = dsTotalBudgetEDL
          StyleController = dxEditStyleController1
          Nullable = False
          StoredValues = 1
        end
        object dxDBCurrencyEdit3: TdxDBCurrencyEdit
          Left = 666
          Top = 75
          Width = 157
          Color = 16383986
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Alignment = taRightJustify
          DataField = 'MonthlyBudget_mon'
          DataSource = dsTotalBudgetEDL
          StyleController = dxEditStyleController1
          Nullable = False
          StoredValues = 1
        end
        object dxDBCurrencyEdit4: TdxDBCurrencyEdit
          Left = 666
          Top = 98
          Width = 157
          Color = 16383986
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          Alignment = taRightJustify
          DataField = 'MonthlyReviewedBudget_mon'
          DataSource = dsTotalBudgetEDL
          StyleController = dxEditStyleController1
          Nullable = False
          StoredValues = 1
        end
        object dxDBGrid3: TdxDBGrid
          Left = 823
          Top = 32
          Width = 359
          Height = 255
          Bands = <
            item
            end>
          DefaultLayout = True
          KeyField = 'ProductCode_str'
          SummaryGroups = <>
          SummarySeparator = ', '
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          BandColor = clInfoBk
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dsLevelOfUseBudget
          Filter.CaseInsensitive = True
          Filter.DropDownCount = 16
          Filter.Criteria = {00000000}
          HeaderColor = clInfoBk
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clHighlight
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoAutoHeaderPanelHeight, edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
          PreviewFont.Charset = ANSI_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          RegistryPath = '\Software\RxSolution\1.2\Grids\Budget\LevelOfUse'
          object dxDBGrid3InstLevelOfUse_str: TdxDBGridColumn
            Alignment = taCenter
            Caption = 'Level'
            DisableEditor = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            HeaderAlignment = taCenter
            Width = 82
            BandIndex = 0
            RowIndex = 0
            FieldName = 'InstLevelOfUse_str'
            DisableFilter = True
          end
          object dxDBGrid3LevelBudget_mon: TdxDBGridCurrencyColumn
            Alignment = taRightJustify
            Caption = 'Budget'
            DisableEditor = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 95
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LevelBudget_mon'
            Nullable = False
            DisableFilter = True
          end
          object dxDBGrid3LevelReviewedBudget_mon: TdxDBGridCurrencyColumn
            Caption = 'Reviewed'
            DisableEditor = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LevelReviewedBudget_mon'
            Nullable = False
            DisableFilter = True
          end
        end
        object dxDBGrid2: TdxDBGrid
          Left = 471
          Top = 150
          Width = 350
          Height = 137
          Bands = <
            item
            end>
          DefaultLayout = True
          KeyField = 'ProductCode_str'
          SummaryGroups = <>
          SummarySeparator = ', '
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          BandColor = clInfoBk
          BandFont.Charset = ANSI_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dsVENBudget
          Filter.CaseInsensitive = True
          Filter.DropDownCount = 16
          Filter.Criteria = {00000000}
          HeaderColor = clInfoBk
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clHighlight
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoAutoHeaderPanelHeight, edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
          PreviewFont.Charset = ANSI_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          RegistryPath = '\Software\RxSolution\1.2\Grids\Budget\VEN'
          object dxDBGrid2VEN_str: TdxDBGridColumn
            Alignment = taCenter
            Caption = 'VEN'
            DisableEditor = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            HeaderAlignment = taCenter
            Width = 27
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VEN_str'
            DisableFilter = True
          end
          object dxDBGrid2VENBuget_mon: TdxDBGridCurrencyColumn
            Caption = 'Budget'
            DisableEditor = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 104
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VENBuget_mon'
            Nullable = False
            DisableFilter = True
          end
          object dxDBGrid2VENReviewedBuget_mon: TdxDBGridCurrencyColumn
            Caption = 'Reviewed'
            DisableEditor = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlight
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taRightJustify
            Width = 103
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VENReviewedBuget_mon'
            Nullable = False
            DisableFilter = True
          end
        end
      end
      object Panel20: TPanel
        Left = 0
        Top = 292
        Width = 1183
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 1
        object ElSpeedButton17: TElSpeedButton
          Left = 186
          Top = 0
          Width = 29
          Height = 31
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            AE030000424DAE030000000000006E0100002800000018000000180000000100
            08000000000040020000610F0000610F00004E00000000000000FFFFFF00FFFF
            F700FFF7F700F7F7F700FFF7EF00F7F7EF00F7EFEF00EFEFEF00EFEFE600F7EF
            DE00EFE6E600F7E6DE00EFE6DE00E6E6DE00F7E6D600EFE6D600E6E6D600EFE6
            CE00E6DED600DEDED600E6DECE00DEDECE00EFDEC500D6D6D600E6D6CE00E6D6
            C500EFD6BD00D6D6C500E6D6BD00CECECE00E6D6B500D6CEC500E6CEBD00D6CE
            BD00E6CEB500DECEB500E6CEAD00DECEAD00C5C5BD00E6C5AD00DEC5AD00E6C5
            A500DEC5A500C5BDBD00E6C59C00DEC59C00B5B5B500B5B5AD00B5B5A500B5AD
            A500ADADA500ADAD9C00ADA59C00A5A59C00A59C9C0094948C008C8C8C00948C
            84008C848400848484007B73730073736B007B7363006B6B6B00736B63006B6B
            63006B63630063635A005A5A5200525252005A524A004A4A4A004A4A42003A3A
            3A003A3A3100211919001919190010101000000000000000000001060B11110B
            0600000000000000000000000000000002162A2D2A2A2A2A2D2A160200000000
            00000000000000112D2823232323232323282A2D110000000000000000001C2A
            201C1C1C20202323232323282D1C000000000000001C2A19191919191C1C1C20
            23232323252D1C0000000000112A19191919191919193E481C20232323252D11
            000000022D1918141414141418194A4A1C1C20232323282D0200001623141414
            1212121414184B4419191C202323252A1600012A141212121212101212214C3D
            1919191C232323282A00062A1212120D0D0D0D0D12314C391419191C20232325
            2D060B2512100D0D0A0A0A0D0D354B30141819191C2323232A0B1122100D0A0A
            0808080A0A42481F121419191C2023232A1111200D0A0A080707071745484335
            151418191C2023232A110B220D0A0806050507493F1D0D263D141419191C2323
            2A0B062A0A08070503022E49370A0D1F40311419191C23232D06002A0D080705
            020036473808133C41341419191C23232A0000161C0807050302264717083734
            44311219191C232A160000022D0C08060505063B2B0A133C3D141419191C232D
            0200000011270A080707070A32363F3A1F1418191C202A1100000000001C220A
            0808080A0A0D1012121419191C2A1C000000000000001C270D0A0A0D0D101212
            1418191C2A1C000000000000000000112A1C120D121212141419252D11000000
            000000000000000002162A2A222222252A2A1602000000000000000000000000
            000000060B11110B06000000000000000000}
          DisabledImage.Data = {
            66040000424D6604000000000000260200002800000018000000180000000100
            08000000000040020000610F0000610F00007C00000000000000BFBFC000C0C0
            C000C0C0C100C1C1C100C2C2C300C3C3C400C4C4C500C5C5C600C6C6C700C8C8
            C800C8C8C900CBCBCB00CBCBCC00CCCCCC00CCCCCD00CDCDCE00CECECE00CECE
            CF00CFCFCF00CFCFD000CFD0D000D0D0D000D0D0D100D0D1D100D1D1D100D1D1
            D200D1D2D200D2D2D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4D400D4D4
            D500D4D5D500D5D5D500D5D5D600D5D6D600D6D6D600D6D6D700D7D7D700D7D7
            D800D7D8D800D8D8D800D8D8D900D8D9D900D9D9D900D9D9DA00D9DADA00DADA
            DA00DADADB00DADBDB00DBDBDB00DBDBDC00DBDCDC00DCDCDC00DCDCDD00DDDD
            DD00DDDDDE00DDDEDE00DEDEDE00DEDEDF00DEDFDF00DFDFDF00DFE0E000E0E0
            E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2E200E2E2E300E2E3E300E3E3
            E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5E600E5E6E600E6E6E600E6E6
            E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9E900E9E9E900E9EAEA00EAEA
            EA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECEDED00EDEDED00EDEE
            EE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2
            F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5F500F6F6F600F6F7
            F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFAFA00FCFCFC00FDFD
            FD00FEFEFE00FFFFFF007B7B7B7B7B7B7B7B7A746B65656B747A7B7B7B7B7B7B
            7B7B7B7B7B7B7B7B785F45362D29272A33455F787B7B7B7B7B7B7B7B7B7B7B66
            4030241F1F1C16131111253E667B7B7B7B7B7B7B7B7A58382C2929292724211C
            14130F1130587A7B7B7B7B7B7B583631323232312F2C2927211A14110F2A587B
            7B7B7B7B653B36393C3C3C39372E000029221A14110F30657B7B7B78403E4144
            46464644413C00000F29221A140F0F3E787B7B5F40454A4D4D4D4D4D4A1B0000
            272D29241A130E255F7B7A454A4C535355555553532B000020332D292114110F
            457A73404F5255595B5B5B5955070000393C332A251A130F33736B4655575E60
            626262605E1000094A413931292114112A6A6649575E6265676767655B000034
            4D463F342A221A132565664A5E6266696B6D6B59000000124D4A41372F271D13
            25656A4A6065686F70726600063C5339084A443931291D142A6A734561676B70
            747741000D645E4D0528463C3129211433737A455F666D72777B230010665709
            0423463C3029211A457A7B5F52666B70747744004A6618260026463C30292129
            5F7B7B784362686F70726F0A4465550B064A44392E29213E787B7B7B654A6468
            6B6D6B662E23060A3F4A41372D2536657B7B7B7B7B584F6466666664625E5553
            4D463F342C33587B7B7B7B7B7B795848606262605E5755504A4139343758797B
            7B7B7B7B7B7B7B6541505B595553504A443C393F647B7B7B7B7B7B7B7B7B7B7B
            785D4644464646413C445E787A7B7B7B7B7B7B7B7B7B7B7A7A7A7A746B64646B
            747A7B7B7A7B7B7B7B7B}
          MouseInImage.Data = {
            BE030000424DBE030000000000007E0100002800000018000000180000000100
            08000000000040020000610F0000610F00005200000000000000FFFFFF00EFF7
            FF00FFF7F700F7F7F700F7F7EF00DEEFFF00F7EFEF00EFEFEF00EFEFE600EFE6
            E600DEE6E600EFE6DE00BDDEFF00E6E6DE00E6E6D600E6DEDE00DEDEDE00E6DE
            D600ADD6F700E6DECE00DED6D600D6D6D600E6D6CE00DED6CE00D6D6CE00E6D6
            C500DED6C500D6D6C500E6D6BD009CC5F700DED6BD00D6CECE009CC5EF00D6CE
            C500E6CEBD009CC5E600D6CEBD00E6CEB5008CBDF700DECEB5008CBDEF009CBD
            E6008CBDE600CEC5BD009CBDDE00C5C5BD00D6C5B5008CB5E60073B5EF0084B5
            DE00C5BDB50094B5D600BDBDB5006BADEF0094B5CE0073ADE6006BADE600BDB5
            B5005AA5F70073ADDE0084ADD6005AA5EF00B5B5AD006BA5E60073A5DE00B5B5
            A500B5ADAD00B5ADA500ADA59C00A5A59C00A59C94009C9C94009C9494009C94
            8C0094948C00948C84008C8C84008C847B0084847B00847B730073736B006B6B
            6300000000000000000002050C12120C05000000000000000000000000000000
            011D3D3F3C36363C3F3D1D010000000000000000000000123D33242727272727
            272E363D120000000000000000002637211E1E1E1E1E27272727272E40260000
            000000000026311A1A1A1A1A1E1E1E1E27272727273C26000000000012371A19
            19191919191A464D1E1E272727274012000000013D1816131313131316194F4F
            1E1E1E2727272E3D0100001D2C131313111111131313504B1A1A1E1E27272736
            1D00023D1511111111110E11111B5146191A1A1E2727272E3D0005381111110D
            0D0D0D0D112D514313191A1E1E2727273F050C2F110E0D0D0909090D0D32502B
            1316191A1E2727273C0C12290E0D09090808080909474C171113191A1E1E2727
            361212290D090908070707104A4C4832131316191E1E272736120C2A0D090806
            0404074E45140D21461313191A1E27273C0C05350908070403021F4E39090D17
            462D13191A1E27273F05003D0A08070402002D4C3E081145473213191A1E2724
            3D00001D230807040302144C10083E2D492B11191A1E27331D0000013D0A0806
            040406421F091145451313191A1E243D0100000012300908070707082D344643
            171316191E1E3B120000000000262A0908080809090D0E111113191A1E312600
            00000000000026370A09090D0D0E111113161921372600000000000000000012
            3D23100D111111131318333D120000000000000000000000011D3D382F2C2C31
            383D1D01000000000000000000000000000000050C12120C0500000000000000
            0000}
          PressedImage.Data = {
            A6030000424DA603000000000000660100002800000018000000180000000100
            08000000000040020000610F0000610F00004C00000000000000FFFFFF00FFF7
            F700F7F7F700F7F7EF00F7EFEF00EFEFEF00F7EFE600EFEFE600EFE6E600EFE6
            DE00E6E6DE00EFE6D600E6E6D600E6DED600EFDECE00E6DECE00E6DEC500DED6
            D600E6D6CE00DED6CE00E6D6C500DED6C500EFD6BD00E6D6BD00D6CEC500E6CE
            BD00DECEBD00D6CEBD00E6CEB500DECEB500CEC5C500DECEAD00CEC5BD00C5C5
            BD00E6C5AD00CEC5B500DEC5AD00C5BDBD00C5BDB500BDBDB500DEBDA500C5BD
            AD00DEBD9C00D6BD9C00C5B5AD00B5B5AD00DEB59C00D6B59C00BDB5A500D6B5
            9400B5ADAD00D6B58C00ADAD9C00D6AD8C00D6AD8400ADA59C00ADA59400D6A5
            8400D6A57B00A59C9C00CEA57B00A59C94009C9C9400CE9C7B009C9C8C009494
            8C009C948400948C8C00948C84008C848400847B7B00847B73007B7B73007373
            6B00736B63006B6B6300000000000000000001060E19190E0600000000000000
            000000000000000003223C3C353131353C3C2203000000000000000000000019
            3F311D1A1A1D1D1D1D24313F1900000000000000000128391D1A1714120F0F0F
            2C1D1D2439280100000000000028351515140F0F0D0A0A214A210F1D1F362800
            000000001936141414120F0D0A0908324A11080C1D1F3C19000000033F151214
            140F0D0D0A08053B4A0505080D1D243F030000222B0F1415140F0D0A09070443
            4602040709121F332200013C140F1A15140F0C0A0907044841020307090C1D24
            3C0006390D141A15140F0D0A09070A4527020407090A141F3C060E2F0D141A15
            140F0D0D0A0A2D4A210405080A0D141D350E19280C171A1714120F0D13463E25
            21270A090A0D0F1D311919280A171D1A15140F0F414113090932260A0D0F141D
            31190E2F0A141D1A1714140F4932260A2626370D0F0F141D350E0635080F1D1D
            1A15141447341B0D44263D0F0F14171D3C06003A0D091D1D1A1A1514422C141B
            2640301214141A243C0000222407101D1D1A19171A371B23383D191415171A31
            220000033C0907191D1D1D1A1A172C30301A1517171A1D3F0300000019350808
            191F1D1D1D1A1A1A1A1A1A1A171A39190000000000282F0808141D1D1D1D1D1D
            1D1D17151A35280000000000000128350D080A14171A1A1A1414141A39280100
            00000000000000193C280D0A0D0D0D0F0F1A2F3F190000000000000000000000
            03223C392F2B2B31393C2203000000000000000000000000000000060E19190E
            06000000000000000000}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          Visible = False
          DockOrientation = doNoOrient
        end
        object ElSpeedButton18: TElSpeedButton
          Left = 148
          Top = 0
          Width = 29
          Height = 31
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000A58FBF00A691
            C000A792C200AB97C300AD99C500AE9AC600B19FC200B3A1C400B4A1C200B5A3
            C500B6A5C700B4A3C800B7A6CA00B8A8C800B9A9CA00B9A9CD00C1B1C500C3B4
            C700C4B4C500C0B2CA00C5B7CB00C8B8C400CEBFC300C9BBC800C9BDCE00C4B6
            D100C7BAD000CABDD100CABED400DFC9AD00DFC9AC00DFC9AE00DFCAAF00D5C6
            BF00DFCAB000DFCBB000DFCBB100DFCCB300DFCCB200DFCDB400DFCDB500DFCC
            B400DFCDB600DFCEB700DACBBE00DFCEB800DFCFB800DECEBA00DCCDBD00E0C9
            AD00E0CAAD00E0CAAE00E3CDB200E1CCB200E1CEB500E4CEB300E4CFB500E4CF
            B600E0CFB900E0CFB800E0CFBA00E3D0B700E4D0B700E5D1B700E1D0B800E0D0
            BA00E0D0BB00E1D1BB00E3D1B900E2D1BA00E0D1BC00E0D1BD00E1D1BC00E0D2
            BD00E0D2BE00E0D2BF00E3D3BF00E3D2BD00E5D1B900E5D2BA00E5D3BB00E5D2
            BB00E6D3BB00E5D3BD00E7D4BE00E7D4BC00E8D4BD00CFC1C600CEC0C800CEC3
            CD00CDC2D700CEC2DB00D0C1C000D0C1C400D3C6C700D2C5C700D6C7C200D1C5
            CB00D0C5CF00D9CBC000DACDC300DBCEC400DDCFC000D8CDCB00D8CCC900D9CF
            CD00D9CECE00D0C5D100D0C5DB00D5CBD000D4CADA00DFD2C300DCD0C600DED2
            C600DCD0C900DFD5CB00D9D0D200DAD1D100DED6D200DED7DB00D9D0E000DCD4
            E500E0D3C000E1D3BF00E1D4C100E0D4C100E1D4C200E1D5C300E3D4C100E2D6
            C400E3D7C500E2D7C600E2D7C700E3D7C700E0D5C600E4D6C200E6D5C100E3D7
            C600E1D6C900E2D7C800E7D8C600E3D9CA00E3DACB00E2D8CC00E3DACC00E3DA
            CE00E5DACB00E5DBCC00E4DBCE00E6DBCC00E4DCCF00E6DDCF00E9D7C100E8D7
            C100E8D7C200E9D8C300E9D9C400EBD9C400E8DAC800E8DBCA00EADBC900EADB
            CA00EBDCCB00EADCC900EADDCD00EADDCD00EDDDCA00ECDDCA00EDDFCD00EDDE
            CD00EDDFCE00ECDFCF00EEDFCE00ECDDCC00E1D9D200E3DBD000E1D8D000E2DB
            D400E0D8D400E5DCD000E5DDD100E5DED300E7DED200E6DFD500E4DDD500E2DB
            D800E0D9D800E3DDDD00E9DED100E9DFD300E1DAE100EEE0CF00E7E1D700E6E0
            D600E7E2D900E7E2DB00EAE1D700EFE2D200EFE2D300EEE1D100EFE3D400E8E2
            DA00E9E4DC00E9E4DD00EAE5DF00E9E4DE00ECE4DB00F0E3D400F0E4D400F0E4
            D500F1E5D600F1E5D700F1E6D900F4EBDF00E5E0E200E8E3E600EBE7E100EBE7
            E500ECE7E000EBE7EB00EAE5EE00EEE9E300ECE9E400EDE9E500EEEAE500ECE8
            E900EFECE900EFECF000F4EBE000F5ECE100F4ECE100F5ECE200F5EDE200F7EF
            E700F1EEEB00F0EDEA00F1EEEC00F2EFED00F7F0E800F7F1E900F7F1EA00F8F2
            EB00F9F4EE00FAF5EF00F3F1F000F4F2F000F5F3F100F4F2F300F5F4F300F6F4
            F500FAF5F000FCFAF700FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEF1D4BFBFD4F1FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFB561E1E1E1E1E1E
            1E1E9DFBFFFFFFFFFFFFFFFFFFFFFFC71E1E1E312233311E1E1E1E1EA6FEFFFF
            FFFFFFFFFFFD3F1E363B40474248412A351E1E1E1E55FDFFFFFFFFFFFF561E45
            7C7C7E7C7A4B47473C2A1F1E1E1E3FFEFFFFFFFFAC1E808189898583817E7C4B
            473C2D221E1E1EBFFFFFFFFB1E448D909090948E8D85837E7C49422D221E1E1E
            F2FEFE9D318DB3B3B4B5B4B3B3908D857F7C4A3C3B311E1E9DFFFE1E8CB4B5B7
            B76AB2B7B56A738F85155C473C291E1E1EFBE91E96B7C0C9CA6202BAC0590173
            8D12154A472D331E1EE9D331B7C2CBCCD86B0000B96200007212164A4A3C291E
            1EC5BF3DC2CDD8DEE21C0000021300000010157D4B3C3B1E1EA6BF3ECBD8DFEB
            EB6C000000190000000916817B472D221EA6D435CCDEEBEDF85B0000BE1C0000
            6D1216817C4A3A311ED3F11ED8DFECF6F97900DCE35A0077B51158837D494125
            1EE5FC1ECAE0EDF7FCE3E3F7ED77BBC3B5595F847D4A3A1E1EFDFE9851E2EBF7
            F9FDF9F8ECE1D8CAB7B490857E4A3A1E56FFFEF31ECCEBEDF7F7F7EDE2DECCC2
            B7B390837C4A311EFBFFFFFDAC31DDEBEAECECEBDFD8CBC2B5968D817A471E9D
            FDFFFFFFFF5637DEE0DFE2DED8CDC2B5B590857E421E52FDFFFFFFFFFFFD5531
            CAD8D8CCCBC2C1B5968D83471E37FDFEFFFFFFFFFFFFFEAC1E45C0C2C0C1B596
            904C1E1EACFEFEFEFFFFFFFFFFFFFEFDFA9D1E1E323636321E1E56F3FEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFDE9D3BFBFD4E9FBFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            8A040000424D8A040000000000004A0200002800000018000000180000000100
            08000000000040020000610F0000610F00008500000000000000B1B1B200B2B2
            B300B3B3B300B6B6B700B6B7B700B8B8B900B9B9BA00BBBBBB00BDBDBD00BDBD
            BE00BEBEBF00BFBFC000C0C0C000C0C0C100C1C1C100C1C1C200C2C2C200C3C3
            C300C6C6C600C7C7C700C8C8C900C9C9CA00CBCBCB00CBCBCC00CCCCCD00CDCD
            CE00CDCECE00CECECE00CFCFCF00CFCFD000CFD0D000D0D0D000D0D0D100D0D1
            D100D1D1D100D1D1D200D1D2D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4
            D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6D600D6D6D600D6D6D700D7D7
            D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9D900D9D9D900D9D9DA00D9DA
            DA00DADADA00DADADB00DADBDB00DBDBDB00DBDBDC00DBDCDC00DCDCDC00DCDC
            DD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDFDF00DFDFDF00DFE0E000E0E0
            E000E0E0E100E0E1E100E1E1E100E1E2E200E2E2E200E2E2E300E2E3E300E3E3
            E300E4E4E400E4E4E500E4E5E500E5E5E500E5E5E600E5E6E600E6E6E600E6E6
            E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9E900E9E9E900E9EAEA00EAEA
            EA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECECED00ECEDED00EDED
            ED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1F100F1F1
            F100F1F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5F500F6F6
            F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFAFA00FCFC
            FC00FDFDFD00FEFEFE00FFFFFF008484848484848484837D746E6E747D838484
            84848484848484848484848481684D3F363230333C4D68818484848484848484
            8484846F48392D282825201D1B1C2E466E848484848484848483604135323232
            302D2A251E1D1A1A396083848484848484603F3A3B3B3B3A383532302A241E1A
            1A336084848484846E443F4245454542403D3A33322B251E1A1A396E84848481
            4846494C4E4E4E4C4947423C36322B251E1A1A4681848468484D525555555555
            524E49453C36322D241D182E6884834D52545B5B5D404E5B5B3A454C45161932
            2A1E1A1A4D837C48575A5D61632A03535D2902454B1315332E241D193C7C744E
            5D5F66696B300000582C00004313173A322A1E1A33736F515F666B6E70230000
            031600000112193D332B241D2E6E6F52666B6F727435000000160000000B1A40
            3830261D2E6E7352696E7278792C0000511C000037141C423A32261E33737C4D
            6A7074797D41005D723000425B161C453A322A1E3C7C834D6870767B80697179
            764D525F5D22274539322A244D8384685A7074797D807D79746F6B635D554E45
            39322A32688484814B6C7178797B7978716D69615B554C4237322A4681848484
            6E526D71747674716F6B665D5B524940362E3F6E848484848460576D6F6F6F6D
            6B665F5B554E473D353C60848484848484826050696B6B69665F5D585249423D
            40608284848484848484846E495863615D5B58524C4542476D84848484848484
            8484848481654E4C4E4E4E49454C66818384848484848484848484838383837D
            746D6D747D838484838484848484}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000AD80BD00AE82
            C000B289C200B48BC300B58CC500B892C100BA96C200BB97C600BB97C400BC99
            C600BE9CC800BF9ECA00BE9CCC00B5BFC600A7C1D900A7C3DE00A7C4DF00A8C0
            D600AEC1D200AEC3D600A8C3DC00A9C4DE00AFC6DB00AEC4D800B6C0C600B6C2
            CB00B6C3CE00B8C0C600BCC1C100BCC2C400BDC4C700B8C4CD00B3C4D300B1C5
            D700B2C5D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7D100B9C9D700B9CB
            DB00A7C9EC00A6CAEC00A9C5E100A9C7E400AAC9E600AFCAE300AFCBE600AACA
            E900ADCEEF00AECEEE00ADCDED00A7CCF100A9CDF100ADCFF000AFD1F300B0C9
            E000B4CEE600B6CEE500B3CCE400B2CEE900B1CEEC00B7D0E700B5D0EB00B6D0
            EA00B4D0ED00B5D2EE00BCD1E400B9D3ED00B9D4EE00BED3E800BED6EF00B2D1
            F000B7D5F400B9D5F100BBD7F300BBD7F400BED7F000BBD9F600BED8F100BEDA
            F600C5A8C400C7ACC600C5A9C900C8ADC400C9AFCA00C8ADCF00CBB2C300CCB4
            C700CAB2CF00CDB6CD00CEB6D200D1BAC200D1BBC600D2BCC200D2BDC500D2BE
            CD00D0B8D600D1BCD600D2BBDB00D3BDDA00C3C3BE00C7C3BB00C8C5BD00C8C6
            BF00D7C4BE00D2C8B700D6C9B600D7CDBD00DECCB400DFCDB600DFCEB700DBCA
            BE00DFCFB800DECFBA00DCCCBD00DFD1BE00E0CFB900E0CFBA00E0D0BB00E0D1
            BC00E0D1BD00E0D2BF00E0D2BD00C0C2C000C3C4C000C3C5C300C1C7CA00C2CA
            CD00C8C6C100C8C8C300C9CAC600CACDCD00C3CBD100C0CCD500C1CFDA00CCD1
            D300CAD2D700C9D3DB00CAD4DD00CDD5DA00CFD7DD00D5C2C700D7C5C200D4C1
            CB00D3CDC200D7CFC000D8C7CF00DBCBC100DBCCC300DDCEC000DCCEC500DACA
            CA00DACCCD00DDCEC900D3C0D000D7C5D900DBCDD100DBCBDF00D7D0C300D5D0
            C700D6D4CD00DFD2C300DFD1C600D8D3C900DAD5CC00DFD4D100DFD4DA00DCDA
            D300C3D3E000C5D6E600C1D5E900CCD8E300CCDBEA00DFCFE400D0D9E000D2DC
            E400D4DEE900CEE2F600CEE3F700CDE3F800CEE3F900CFE3F800DAE9F900DAEA
            FA00DCEAF900DCEBFA00DCEBFB00E0D3C000E1D4C100E1D4C200E1D5C300E2D6
            C500E2D7C700E1D5C600E1D7C900E1D6CA00E2D7CC00E3D9CA00E3DACC00E3DB
            CF00E4DACD00E1D7D000E1D7D600E3DAD000E3DAD400E4DCD000E5DCD000E5DE
            D300E5DED500E2D9D800E4DBDD00E3D7E100E6DEE100E7E1D700E6DFD500E7E2
            D900E8E2DA00E9E4DC00EAE5DF00E8E4DF00E1E2E200E0E4E700E2E6EA00E5E7
            E900E9E1E600EBE7E100EBE7E500EBE2ED00ECE3EF00ECE5EB00EDE7E900ECE9
            E400EDE9E500ECEAE600EFECE900EFEDEB00E2EFFC00E4F0FC00F0EBEF00F1EE
            EB00F1EEEC00F2EFED00F3F1F000F4F2F000F5F3F100F5F3F300F4F0F300F6F4
            F500F2F8FD00F3F8FD00F6FAFE00FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDB95138384FB9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFDB92B0F0E0E110E0E
            0E2B35FAFFFFFFFFFFFFFFFFFFFFFD382B0E110D1C67670D0D0D110E35FAFDFF
            FFFFFFFFFDEE2B0E0D0D1C6B6C6E6E6E6C6C67010E2BFCFFFFFFFFFFFD2B0E11
            6D73757B7C73706E6E6E6C671C0E2BEFFFFFFFFA350E1F92C0C2C2C2C0C0BE7C
            726E6E6E6B0D0E35FFFFFFEF2B11A5C8C8C8C8C8C7C2C1C0BE7C726E6E671C0E
            B5FDFA2B0E85C9CFD1D1D1CFCFC8C7C2C0BE726E6E6E670E35FDFC2B0EA9D1D2
            D89AA7D8D89AA6C8C25D67726E6E6B1C0EB9380F89D1D9D9DB9C01D3D76100C5
            C7525D7C706E6C1C0EB5382B8AD9DBDCE39C0000D36100009B5558BE796E6E67
            1135350FA9DDE3E9EB6200000154000000525DBE7C6E6E671135352BDEDDEBED
            ED650000005A000000065DC0BE766E6E112B380FDEE9EDF3F7640000D55A0000
            94535DC1BE796E671138B62BADEBF1F6F9AF01E5F065009ED25659C2BE7C6F6C
            0E4FB60FB1EBF3F5FDE6F0F8EDD5A8DDD95E8FC2BE7C6C0D0FFAFA2B2BDFF2F4
            F9FDF9F7EDEBE3DAD2D1C8C2BE7C730E2BBCFC4F0FB2EDF3F6F7F6F3EDEBE3D9
            D8CFC8C2BE6D0D0FB9FAFDFA352BAEECF2F3F2EDEAE3DBD9D1CFC7C0BE6D0E2B
            EEFDFFFCB92B0FE4EBEBEBE9E3DDD9D1D1C9C2C07F0E2BEEFAFDFFFDFABC2B2B
            47E3E3DCDBD7D8D1CFC7C1A10E2B51FCFFFFFFFDFDFDB62B0F0FDED9D7D8D1D0
            C7270E0F35B9FAFFFFFFFFFDFDFDFABCB5352B0F0F0F0F0E0F0F2B35FAFCFDFD
            FFFFFFFFFFFFFDFDFDFAB6353535353538B5B5FAFDFDFFFFFFFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000A979BC00A97A
            BD00AE81BE00AE83C000B187C100B38AC500B893C500B892C700B893C700B995
            C200BA96C100BC99C300BD9AC400BE9CC700BC98CA00BE9DC800BE9CCA00DBBF
            A300DDBFA300DDBFA400C1A1C300C1A1CC00C3A5C900C3A5CC00C5A7CC00C4A6
            CF00C5A8C800C8ACCE00C6A7D100CAAFD300C9ACD500CEB6C500CCB1D600CEB5
            D600D2BDC700D3BEC600D0BBCD00D3BEC900D3BFCA00D3BFCF00D0BAD000D1BC
            D300D3BFD100D3BFD600DCC0A500DCC2A600DCC1A700DCC3A800DDC2A800DDC3
            AA00DCC3AA00DEC3A900DEC3AA00DDC4A900DDC5AB00DCC4AB00DEC4AA00DFC4
            AA00DDC5AD00DDC7AE00DDC7AF00DFC5AC00DEC6AD00DEC7AF00DEC8AF00DDC7
            B000DEC9B200DEC8B200DDC8B000DECAB400DFCBB500DFCDB700DFCEB700DFCC
            B800DFCEB900E0C5AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8B100E2C8
            B200E2C9B300E2CAB400E3CAB600E1CBB700E0CDB500E0CDB600E0CEB700E2CB
            B800E0CFB800E1CFB900E0CEB800E0CFBB00E3CCB900E2CDBA00E3CDBB00E3CE
            BB00E1CCB900E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
            B900E4CDBB00E6CFBB00E5CEBB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E1D0
            BB00E1D1BA00E0D1BC00E0D1BD00E0D0BC00E1D2BD00E0D2BF00E1D2BE00E2D1
            BC00E2D2BD00E2D2BF00E7D1BF00E7D2BF00E6D0BE00D7C5C400D5C2CB00D4C1
            CF00D5C3CD00D8C6CE00DCCDC300DCCEC600D9CACB00DBCCCD00DDCFCA00D4C0
            D200D8C6DA00D9C7DD00D9C8D100DACBD100DACBD500DACBD700DBCCD100DECF
            D200DBCADF00DCCDDB00DCCDDD00DED0CA00DFD2CF00DFD3D100DDCDE100E1D1
            C000E1D3C000E0D3C000E3D1C100E3D1C000E2D2C100E2D3C000E1D4C100E1D4
            C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6C500E2D6C600E2D7
            C600E2D7C700E3D7C600E3D7C700E1D4C600E5D3C300E4D5C200E4D7C600E5D7
            C500E0D2CB00E3D7C800E2D7CA00E1D6CF00E6D6C900E4D7C700E3D8C900E3D9
            CB00E3DACB00E3DACD00E5D8C900E5D9CB00E5DACB00E7DACB00E6D8CA00E4DA
            CC00E5DACD00E4DBCE00E7DBCD00E5DCCF00E8D3C100E8D4C300E8D4C400E9D5
            C500E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DC
            CF00E0D4D000E0D4D500E3D8D500E6DCD000E6DED300E5DCD200E7DFD400E4DA
            DA00E5DDDB00E1D2E500E3D6E600E5DBE500E8E0D500EFE1D500E8E1D900E9E3
            DB00EAE4DD00EAE5DF00F0E2D600F0E2D700F0E3D700F0E1D600F0E3D800E9E1
            E400EAE4E600ECE6EA00ECE8E400EDE9E500EDE8EB00EEEBE800EEE8ED00F3E8
            E000F4EAE200F5EBE300F4EAE100F1EEED00F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF2D06D6DD0F2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF811111111111111
            11114CFAFFFFFFFFFFFFFFFFFFFFFF7C11111111111111111111111113FFFFFF
            FFFFFFFEFEFA111111113245A1B9C1B7732D11111112FCFFFFFFFFFEFE121111
            77ADB9D7D8E0E3E3E3E27B11111111FCFEFFFFFE4D114977A8B4D7D8E0E3EDEF
            EFEFEDDE2F11116BFEFFFFFA1111ADA1A8BAD7D6E3ECF5F5F5F5F5DAD8121111
            E8FFFD121199A5A1AABBD70DE3EFF519FAFAF508E3AF111113FFFD1137C374A1
            A8BBD60006EAF5020EFAF008ECDE361111F8D011B5B363A1AABBD700000EF501
            0008F008E3E0791111E8C711ADA35DA0A9BAD7000000150100001007E2DEAB11
            11546711D8767077A4B9BB000001DC000002DC06E0D8BA1111546B11E1745A74
            A0A9B90001D4E30102D9DA06D6D7B740114CCA11E2AF485D77A6A90496D8D606
            D3E0D805C5BAA02C11CCF111D4D1455A73A0A6A4BAC5D7D2D6D6D780BAAA9A40
            11D0F611D7F142565A739BA4A9BABAC3BBBBBAB8A9A4561111FAFA1211EFBC40
            565A73779BA4A9AAAAAAA9A4A077481111FAFEF111E1EF7240564873739BA0A1
            A1A09B7777481111F6FCFEFA5011E8ED7240565648707073737370739B4A1112
            FAFFFFFEFC1111ECEDB1424042564848485A76A13B1111FAFDFFFFFEFDFA1211
            C0E3E2BE725A5A73A3B8A6701111F3FDFEFFFEFEFEFDFC12112DD6E1E0D8D6C5
            BA44111151F9FCFEFEFFFFFEFEFEFEFAF339111111111111111111E7FDFEFEFE
            FFFFFFFEFEFEFEFEFEFEF9CF674D547CD0F1F8FCFEFEFEFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          DockOrientation = doNoOrient
        end
        object ElSpeedButton19: TElSpeedButton
          Left = 118
          Top = 0
          Width = 30
          Height = 31
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000009F89BE00A18A
            BD00A18ABE00AA96BF00AA95C000AB97C200AC99C200AF9BC700B09DC700B19F
            C500B19FC600B19FC800B2A0C700B4A3C700B6A4C500B8A7C900B8A7CD00BBA9
            C200BCABC600BEADC300B9A9C800BBABCB00C2B1C300C2B2C400C2B3C700C0B1
            CA00C5B7CB00C5B8CC00C6B9CC00C6B8D000C9BDD400CABED400C8BCD800DFC9
            AD00DFC9AC00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCBB100DFCCB300DFCC
            B200DFCDB400DFCDB500DFCCB400DFCDB600DFCEB700DFCEB800DFCFB800E0C9
            AD00E0CAAD00E0CAAE00E1CCB200E3CDB200E1CEB500E4CEB300E4CFB500E4CF
            B600E0CFB800E0CFB900E0CFBA00E3D0B700E4D0B700E5D1B700E1D0B800E0D0
            BA00E0D0BB00E1D1BB00E3D1B900E2D1BA00E0D1BC00E0D1BD00E1D1BC00E0D2
            BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D3BF00E3D2BD00E5D1B900E5D2
            BA00E5D3BB00E5D2BB00E6D3BB00E5D3BD00E7D4BC00E7D4BE00E8D4BD00CEC3
            D400CCC0D800D2C4C600D4C7C700D2C5C900D3C7CA00D3C8CF00D4C9CF00D9CC
            C500D9CDC700D2C7D200D0C5D700D2C8DB00D5CBDE00D7CED800D9CFD100D9CF
            D400DDD1C500DDD1C600DFD2C600DBD1CE00DED3CA00DFD4C900D9D0D200D9D0
            DC00DDD6E600E0D3C000E1D3C100E0D4C100E1D4C100E1D4C200E1D4C300E1D5
            C300E2D5C300E3D4C100E1D5C400E2D6C400E3D7C500E2D7C600E2D7C700E3D7
            C700E4D6C200E6D5C100E3D7C600E2D7C800E0D6CC00E0D7CF00E7D8C600E3D9
            CA00E3DACB00E2D9CF00E3DACC00E5DACB00E4DACC00E5DBCC00E4DBCE00E6DB
            CC00E4DCCF00E6DDCF00E9D7C100E8D7C100E8D7C200E9D8C300E9D9C400EBD9
            C400E8DAC800E8DBCA00EADBC900EADBCA00EBDCCB00EADCC900E9DCCC00E9DD
            CF00EADDCD00EBDECD00EDDDCA00ECDDCA00ECDDCC00EDDFCD00EDDECD00EDDF
            CE00ECDFCF00EEDFCE00E1D9D000E3DBD200E1DAD400E5DCD000E5DDD100E4DC
            D100E5DED300E7DED200E4DDD500E6DFD500E5DFD900E9DED100E8DFD300EADF
            D200E1DBE200E3DDE100E5DFE700E2DCE800EEE0CF00E7E1D700E6E0D600E7E2
            D900E7E2DF00EBE2D700EAE1D700EFE2D200EFE2D300EEE1D100EFE3D400E8E2
            DA00E9E4DC00E9E4DD00EAE5DF00EAE5DE00ECE4DB00F0E3D400F0E4D400F0E4
            D500F1E5D600F1E5D700F1E6D900F4EBDF00EBE7E100EAE6E400ECE7E000E9E5
            EE00EDE8E200EEE9E300ECE9E400EDE9E500EEEAE500EEEAE600EDE9E900EEEA
            EA00EFECE900F4EBE000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0ED
            EA00F1EEEB00F1EEEC00F1EEEE00F2EFED00F7F0E800F7F1E900F7F1EA00F8F2
            EB00F9F4EE00FAF5EF00F2F0F100F3F1F200F4F2F000F5F3F100F4F2F300F6F4
            F500FAF5F000FCFAF700FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEF1D4BEBED4F1FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFB58222222222222
            222299FBFFFFFFFFFFFFFFFFFFFFFFC7222222312533312222222222A4FEFFFF
            FFFFFFFFFFFD3F22363A40474248412D342222222256FDFFFFFFFFFFFF582245
            767677764D4B47473C2D232222223FFEFFFFFFFFAB227A7A8484817F7D79744B
            473C2F25222222BEFFFFFFFB224489898E8E908A89817F787649422F25222222
            F2FEFF94318992AFB2B2B0AFAF8E898479764A3C3A31222299FFFE2288B0B2B5
            B56D1FB3B2B21786817976473C2C222222FBE822AFB5BFC1C287001FBFC0010E
            8984774A472F332222E8D331B5C1CACDD6BA00001CC3040009817F744A3C2C22
            22C5BE3DC1CBD6DCDE71000000590100000E80784C3C3A2222A4BE3ECBD6DFE9
            EABB0000001C02000006847C76423B2522A4D435CCDDE9EDF6BD00001EDC0200
            098C8D7F76473B3122D3F122CCDFEBF7F9D9001FE9DF0409B0B08E81774A3C28
            22E4FC22CADFEDF8FCF566F5ECDF1DC9B5B29081774A3B2222FDFE9456DFEBF7
            F9FDF9F7EBDFD7CAB5B08E84774A3B2258FFFEF322CCE9EDF7F8F7EDE9DCCDC1
            B2B08E7F764A3122FBFFFFFDAB31DBE9EBEDEBE9DFD6CBC1B2AF897D76462299
            FDFFFFFFFF5837DCDFDFDFDCD6CBC1B2B0908179412254FDFFFFFFFFFFFD5631
            CAD6D7CCCBC1C0B292897D4A2237FDFFFFFFFFFFFFFFFEAB2244BFC1B6B5B292
            8C4E2222ABFEFFFFFFFFFFFFFFFFFEFDFA99222232363632222258F3FEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFDE8D2BEBED4E8FBFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            9A040000424D9A040000000000005A0200002800000018000000180000000100
            08000000000040020000610F0000610F00008900000000000000ADADAE00AEAE
            AE00AEAEAF00B4B4B500B5B5B500B5B5B600B6B6B700B8B8B900B9B9BA00BBBB
            BC00BCBCBD00BDBDBD00BFBFBF00BFBFC000C1C1C200C2C2C200C3C3C300C3C3
            C400C4C4C400C5C5C500C7C7C700C7C7C800C8C8C900C9C9C900CCCCCD00CDCD
            CD00CDCDCE00CFCFCF00CFCFD000CFD0D000D0D0D000D0D0D100D0D1D100D1D1
            D100D1D1D200D1D2D200D2D2D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4
            D400D4D4D500D4D5D500D5D5D500D5D5D600D5D6D600D6D6D600D6D6D700D6D7
            D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8D900D8D9D900D9D9D900D9D9
            DA00D9DADA00DADADA00DADADB00DADBDB00DBDBDB00DBDBDC00DBDCDC00DCDC
            DC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDEDE00DEDFDF00DFDFDF00DFE0
            E000E0E0E000E0E0E100E0E1E100E1E1E100E1E1E200E1E2E200E2E2E200E2E2
            E300E2E3E300E3E3E300E3E3E400E4E4E400E4E4E500E4E5E500E5E5E500E5E5
            E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E7E800E7E8E800E8E8
            E800E8E9E900E9E9E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEBEC00EBEC
            EC00ECECEC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEFEF00EFF0
            F000F0F0F000F0F1F100F1F1F100F1F2F200F2F2F200F2F3F300F3F3F300F3F3
            F400F4F4F400F4F5F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8
            F800F9F9F900F9FAFA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF008888
            88888888888887817871717881878888888888888888888888888888856B4F40
            373331343D4F6B85888888888888888888888872493A2D2828251F1C1B1A2E47
            72888888888888888887644236333333302D2A221C1C1A1B3A64878888888888
            8864403B3C3C3C3B393633302A231D1A1A346488888888887145404346464643
            413E3B34312B251D1A1A3A718888888549474A4D5050504D4A48433E39332D25
            1D1A1A478588886B494F55585858585855504A463E39332D231C182E6B88874F
            54575E5E614A245E5E58164A463E39332A1D1A1A4F8780495A5E616567480028
            615B030D4A463E342E231C1A3D80785061636A6C6E530000246102000B48433B
            332A1D1A34777253636A6E71734F0000002D0200000D463E342B231C2E717255
            6A6E7276785E000000190300000748413930261C2E7178546C71767C7D580000
            1A6B0200074D4D433B33261D3477814F6E73787D816A00197872020B5B585046
            3B332A1D3D8087506C737A7F84762F7C7A711863615850463C312A234F87886B
            5E73787D8184817D78716C65615850463B312A316B8888854C6E767C7D7F7D7C
            76706C655E584D433B312A478588888872537276787A7876726E6A615E554A41
            382E40718888888888635870727272706E6A635E5850483E363D648888888888
            888764526C6E6E6C6A63615B554A433E4164868888888888888888714A5B6765
            615E5B554D4643487088888888888888888888888569504D5050504A464D6A85
            878888888888888888888887878787817870707881878888878888888888}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000A879BD00A97A
            BC00B187BE00B38AC100B58EC500B791C300B791C600B893C500BA96C600BC99
            C400BF9FC700BD9BC800BE9BCC00B5BFC600A7C1D900A7C3DE00A7C4DF00A8C0
            D600AEC1D200AEC3D600A8C3DC00A9C4DE00AEC4D800AFC6DB00B6C0C600B6C2
            CB00B6C3CE00B8C0C600BCC1C100BCC2C400BDC4C700B8C4CD00B3C4D300B1C5
            D700B2C5D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7D100B9C9D700B9CB
            DB00A7C9EC00A6CAEC00A9C5E100A9C7E400AAC8E500AAC9E700AFCAE300AFCB
            E600AACAE900ADCEEF00AECEEE00ADCDED00A7CCF100A9CDF100ADCFF000AFD1
            F300B0C9E000B3CCE300B1CCE500B5CDE300B4CEE600B6CEE500B2CEE900B1CE
            EC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2EE00BCD1E400B9D3ED00B9D4
            EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5F100BBD7F300BAD7F400BED7
            F000BBD9F600BED8F100BEDAF600C09FC100C1A1C500C3A4C300C0A0CA00C6A9
            C200C6AAC500C5A8C900C9AFCA00CAB1CB00CAB0CF00CDB2D700CEB6D300D0B8
            D700D1BDD300D3BFD600C3C3BE00C7C3BB00C8C5BD00C8C6BF00D2C8B700D6C9
            B600D7CDBD00DECCB400DFCDB600DFCEB700DFCFB800DECFBA00DFD1BE00E0CF
            B900E0CFB800E0CFBA00E0D0BB00E0D0BA00E0D1BC00E0D1BD00E0D2BE00E0D3
            BF00E0D2BD00C0C2C000C3C4C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8
            C300C9CAC600CACDCD00C3CBD100C0CCD500C1CFDA00C8D0D600CCD1D300CCD4
            D700C9D3DB00CAD4DD00CDD5DA00CFD7DD00D4C0C500D6C3C600D5C2C900D5C3
            CE00D7C5CE00D3CDC200D7CFC000DACAC600DDCFC400DACCCF00DCCFCE00D4C2
            D100D5C2DA00D8C5DE00DBCDD100DACCD400D9CAD800DBCCDC00D7D0C300D5D0
            C700D6D4CD00DFD1C600DED0C500D8D3C900DAD5CC00DCDAD300C3D3E000C5D6
            E600C1D5E900CCD8E300CCDBEA00D0D9E000D2DCE400D4DEE900CEE2F600CEE3
            F700CDE3F800CEE3F900CFE3F800DAE9F900DAEAFA00DCEAF900DCEBFA00DCEB
            FB00E0D3C000E0D3C100E1D4C100E1D4C200E1D4C300E1D5C400E2D7C700E2D7
            C600E2D6C500E0D3CA00E1D6C900E0D6CF00E3D9CA00E3DACB00E3DACC00E3DB
            CF00E2D8CF00E4DACC00E4DCCF00E2D9D100E2D8D400E5DDD100E5DCD000E5DE
            D300E5DED500E5DED900E0D1E500E3D8E200E4DBE100E6DCE700E4D8E800E7E1
            D700E6DFD500E7E2D900E7E1DF00E8E2DA00E9E4DC00E9E4DD00EAE5DF00E8E5
            DF00E1E2E200E0E4E700E2E6EA00E5E7E900EBE7E100EAE5E400EBE2EE00ECE9
            E400EDE9E500ECEAE600EEE9EA00EFECE900E2EFFC00E4F0FC00F1EEEB00F0EE
            EB00F1EDEE00F1EEEC00F2EFED00F3EFF100F4F1F300F4F2F000F5F3F100F6F4
            F500F2F8FD00F3F8FD00F6FAFE00FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDB654393952B6FDFFFFFFFFFFFFFFFFFFFFFFFFFFFDB62B0F0E0E110E0E
            0E2B36FAFFFFFFFFFFFFFFFFFFFFFD392B000E0D1C65650D0D0D110E36FAFDFF
            FFFFFFFFFDEE2B0E18227F68696B6B6B696965020E2BFCFFFFFFFFFFFD2B0E11
            947979BC797A6D6B6B6B69651C0E2BEFFFFFFFFA360E7F93C1C1C1C1C1BC797A
            756B6B6B680D0E36FFFFFFEF2B11A1C7C7CCC7C7C7C1C1BC797A6E6B6B651C0E
            B2FDFA2B0E83A7CFD1CFD1CFCCC7C7C1C1796E6B6B6B650E36FDFC2B0EA7D1D1
            D9A68ED2D1D159C7C1C1796E6B6B681C0EB6390E89D1DBDBDE9C0062DBD90109
            C7C1BC796D6B691C0EB2392B87DBDEE1E9A700005DDB020005C1C1797A6B6B65
            1136360FA7DEE6E9EB9F0000006201000009C1BC796B6B651136362BE2E1EBF0
            F0D60000005D01000005C1BF79756B69112B390FDCE9F1F4F7D8000060E10100
            05C6C6C1BC7A6B65114DB32BABEBF0F8F9E8005FF1EB0207CCD1C7C1BC7A7269
            0E4DB32BAEEBF4F8FCF59BF5F3EB5CDBDAD1C8C1BC7A690D0FFAFA2B2BE3F1F8
            F9FCF9F8F1EBE7DEDACFC8C1BC796D0E2BB9FC520FAFEDF4F8F8F8F4F1E9E0DB
            D1CFC7C1BC6A0D0FB6FAFDFA362BACF0F0F4F0EDEAE6DFDBD1CCC6C1796F0E2B
            EEFDFDFDB32B0FE9EAEAEBEAE6E0DBD1D1C8C0BD7D0E2BEEFAFDFFFDFAB92B2B
            4AE6E6E0DEDBDAD1CCC6C1930E2B52FCFFFFFFFFFDFDB32B0F10E2DBD9DAD1CF
            C81E0E2B36B6FAFFFFFFFFFFFDFDFAB9B2362B0F0F0F0F0E0F2B2B36FAFCFDFD
            FFFFFFFFFFFFFDFDFDFAB336363636365254B3EFFDFDFDFFFFFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000A97ABC00AB7C
            BE00AD81BE00AF84C100B085C000B085C200B288C200B48CC200B58CC500B68D
            C600B893C100B994C800BB98C500BE9DC400BF9EC400BC99C900BD9BC800BE9C
            C900BF9ECC00DBBFA300DDBFA300DDBFA400C09FCA00C2A3C300C2A3C800C5A7
            CC00C5A8C800C5A8CB00CAAFCB00C8ADCC00C3A3D000C4A4D000CBB2C400CCB4
            C700CCB4CB00CCB1D500CDB4D400CEB4D700D1BBCD00D2BDCE00D1B9D900D3BE
            D800DCC0A500DCC2A600DCC1A700DCC3A800DDC2A800DCC3A900DDC3AA00DEC3
            A900DEC3AA00DEC3AB00DDC4A900DDC5AB00DCC4AB00DEC4AA00DFC4AA00DDC5
            AD00DDC7AE00DDC7AF00DFC5AD00DEC6AD00DEC7AF00DEC8AF00DDC7B000DEC9
            B200DEC9B300DFC8B200DDC8B000DECAB500DFCDB700DFCEB700DFCCB800DFCE
            B900E0C5AB00E0C5AC00E0C6AF00E0C6AD00E1C7B100E2C8B100E2C8B200E2C9
            B300E2CAB400E3CAB600E1CBB700E0CDB500E0CDB600E0CEB700E0CFB700E2CB
            B800E0CFB800E1CFB900E1CEB800E0CFBB00E3CCB900E2CDBA00E3CDBB00E3CE
            BB00E1CCB900E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CBB800E5CDB800E5CD
            B900E4CDBB00E6CFBB00E5CEBB00E6CFBD00E6CFBE00E4CFBE00E0D0BA00E0D1
            BB00E1D0BA00E0D1BC00E0D1BD00E0D0BC00E1D2BD00E0D2BF00E1D2BE00E2D1
            BC00E2D2BD00E2D2BF00E7D1BE00E7D2BF00E6D0BE00D5C2C700D6C3C900D6C4
            CB00D6C5CC00D7C6CC00D8C6C500D9C9C500DCCCC300DBCBCF00DBCCC900DCCD
            CE00DDCFCF00D4C0D100D5C2D400D8C6D000D8C7D700D9C8D300DCCDD600DDD0
            D200DAC8E000DDCDE100E1D1C000E1D3C000E3D1C100E3D1C000E2D2C100E2D3
            C000E0D3C300E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6
            C500E3D6C500E2D6C600E2D7C600E2D7C700E3D7C600E1D5C600E5D3C300E4D5
            C200E4D7C600E5D7C500E3D7C800E0D4CF00E2D7CE00E6D6C900E4D7C700E3D8
            C900E3D9CB00E2D8CB00E3DACB00E3D8CC00E5D8C900E5D9CB00E5DACB00E7DA
            CB00E6D8CA00E4DACC00E5DACD00E4DBCE00E7DBCD00E6DCCF00E8D3C100E8D4
            C300E8D4C400E9D5C400E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8
            C900EBD9CB00E8DCCF00E0D4D300E1D6D000E0D5DE00E3D8D400E4DAD700E5DC
            D100E7DDD000E6DED300E6DDD400E7DFD400E3D9DA00E6DED800E3D7E400E4DA
            E100E5D9E600E7E0DC00E8E0D500EFE1D500E8E1D900E9E3DA00E8E2DE00EBE5
            DD00EBE5DF00EBE6DF00F0E2D600F0E2D700F0E3D700F0E1D600F0E3D800F3E8
            DF00E9E1E700EBE5E600ECE7E300EBE3E900EDE9E600EEEAE700EEE9EB00EFEC
            E900F3E9E000F4EAE200F5EBE300F4EAE100F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF3CA6D6DCAF3FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF813131313131313
            13134BFAFFFFFFFFFFFFFFFFFFFFFF7C13131313131313131313131315FFFFFF
            FFFFFFFEFEFA13132A132C459AB2BBB0712B13131314FCFFFFFFFFFEFE141313
            9A9FB5D1D5DFE0E3E3E19513131313FCFEFFFFFE4C134894A7B1D1D5DFE2EEF1
            F1EFEEDC2B13136BFEFFFFFA1313A79AA3B4D1CCE3ECF1EDF9F1F1EFD2141313
            E8FFFD14139AA09CA5B4D30C90F0F92828FCF9F1E3AB131315FFFD1333AE769C
            A3BDD1070093FA280025FAEEECDC351313F8CA13B3B1759CA3BDD30700009323
            000025EEE3DE731313E8C213A79E5D9BA1B4D1070000001F00000029E0DEA22A
            13676713D47A70779FB1BD040000281F00000BDBDED5B41313536B13DB7A5A74
            9CA5B406001AE31D0008E0DED7BDB03F134BC413E1A94771779FA40720D1DC1D
            0BD0D7D5D1B49E1313C6E913D4BE4558739B9F84B4BDD189D1D3D1BDBDA5953F
            13CAF613D4E341555A739B9FA4B3B4B4B4BDB4B4A49F551313FBFA1415EFB93F
            554773779B9FA5A5A5A49FA19B77471313FAFEE913DEF1724155477073779A9B
            9A9B9B7777471313F6FCFEFA5013DEF25A3F5547477070717171717177491314
            FAFFFFFEFC1313ECEEAB4144415547474747769C3B1313FAFDFFFFFEFDFA1413
            B7ECDFB8715858719CB1A1701313F4FDFEFFFEFEFEFEFC14132BD3DFDCD5D3D1
            B441131350F9FCFEFEFFFFFEFEFEFEFAF44B131313131313131313E7FDFEFEFE
            FFFFFFFEFEFEFEFEFEFEF9C9674E537DCAE9F8FCFEFEFEFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          DockOrientation = doNoOrient
        end
        object ElSpeedButton20: TElSpeedButton
          Left = 30
          Top = 0
          Width = 29
          Height = 31
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000A28CBD00A38D
            BF00A38DC000AE9AC000AE9BC300AF9CC300B09EC300B09DC400B19FC500B29F
            C700B19FC800B4A0C000B7A6C500B3A1C900B8A5C000B9A7C300B9A8C600B9A9
            C800B9A9CA00C3B2C100C5B5C400C5B6C700C4B5C800C5B7C900C6B8C900C7BA
            CB00C5B8CE00C6B8CD00C7BBCF00CEBFC100CABED300CBBFD800DFC9AD00DFC9
            AC00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCBB100DFCCB300DFCCB200DFCD
            B400DFCDB500DFCCB400DFCDB600DFCEB700D8C9BF00DFCEB800DFCFB800DECF
            BD00E0C9AD00E0CAAD00E0CAAE00E1CCB200E3CDB200E1CEB500E4CEB300E4CF
            B500E4CFB600E0CFB800E0CFB900E0CFBA00E3D0B700E4D0B700E5D1B700E1D0
            B800E0D0BA00E0D0BB00E1D1BB00E3D1B900E2D1BA00E0D1BC00E0D1BD00E1D1
            BC00E0D2BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D2BD00E3D3BF00E5D1
            B900E5D2BA00E5D3BB00E5D2BB00E6D3BB00E5D3BD00E7D4BC00E7D4BE00E8D4
            BD00CFC0C300CFC1C400CDC2D800D2C3C000D0C2C500D4C6C100D4C8C700D7CA
            C600D3C8CC00D7CDCC00D0C5D700D7CED700D2C8DB00DED1C000DFD3C300DBD0
            CA00DAD0CF00DCD1CB00DBD2D200DAD1D400DBD3D600DCD4D900DFD7DF00E0D3
            C000E1D3C000E0D4C100E1D4C100E1D4C200E1D5C300E3D4C100E2D5C300E2D6
            C400E3D7C500E2D7C600E2D7C700E3D7C600E3D7C700E4D6C200E6D5C100E4D7
            C600E1D6C900E1D6CB00E2D7C800E7D8C600E1D8CB00E3DACB00E2D8CC00E2D9
            CE00E3DACC00E3D9CA00E5DACB00E7DBCB00E4DACD00E4DBCE00E5DBCC00E4DC
            CF00E6DDCF00E9D7C100E8D7C100E8D7C200E9D8C300E9D9C400EBD9C400E8DA
            C800E8DBCA00EADBC900EADBCA00EBDCCB00EADCC900E9DCCC00E9DDCF00EADD
            CD00EBDECD00EDDDCA00ECDDCA00ECDDCC00EDDFCD00EDDECD00EDDFCE00ECDF
            CF00EEDFCE00E3DAD000E3DCD400E5DCD000E5DDD100E5DED300E7DED200E4DD
            D500E6DFD500E1DBDC00E5DFDA00E9DED100E8DFD300EADFD200E4DEE500E5DF
            E800EEE0CF00E6E0D600E7E1D700E7E0D600E6E0DB00E7E2D900E9E1D700EBE2
            D700EFE2D200EFE2D300EEE1D100EFE3D400E8E2DA00E8E3DB00E9E3DC00E9E4
            DC00E9E4DD00EAE5DF00ECE4DB00F0E3D400F0E4D400F0E4D500F1E5D600F1E5
            D700F1E6D900F4EBDF00E7E2E300E8E4E000EBE7E100EBE6E100EBE7E500ECE7
            E000EAE6E800EDE8E200EEE9E300ECE9E400EDE9E500EEEAE500EDEAE600EEEB
            EA00EFECE900F4EBE000F5ECE100F4ECE100F5ECE200F5EDE200F7EFE700F0ED
            EA00F1EEEB00F1EEEC00F1EFEF00F2EFED00F7F0E800F7F1E900F7F1EA00F8F2
            EB00F9F4EE00FAF5EF00F4F2F000F5F3F100F4F2F300F7F6F500FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEF1D2BABAD2F1FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFA59212121212121
            212198FAFFFFFFFFFFFFFFFFFFFFFFC4212121322434322121212121A3FEFFFF
            FFFFFFFFFFFD4021373B41484349422C352121212157FDFFFFFFFFFFFF592146
            72747574724C48483D2C2221212140FEFFFFFFFFAA2178797E7E7E7B7976724C
            483D2F24212121BAFFFFFFFA21458B878E8E8E8A8B7E7B75724B432F24212121
            F2FEFF93328B91ADAFAEAFAEAD8E8B7E76744B3D3B32212198FFFE2185AEAFB2
            BDBDBDB2AF628F8A7E1D71483D2B212121FAE821ADB2BCBFC9C9C9BF1901AE92
            1800684D482F342121E8D132B2BFC9CBD6D6D61E0001BB19000079724B3D2B21
            21C2BA3EBFCAD6DEE0E01E0000011B0000007E754D3D3B2121A3BA3FCAD6DFE9
            EBEB1F0000001C000000827971482F2421A3D236CBDEE9EDF5F6F61A0002D516
            0000837B71483C3221D1F121CBE0EBF5F9FBF9EC1F02D7B31700897D73483D27
            21E4FC21CCE0EDF5FBFFFBF6EC66D6CAB1628A7D754B3C2121FDFE9356E0EBF5
            F7FBF7F5EBE2D6C9BDAD8A7E754B3C2159FFFEF321D9E9EDF5F5F5EDE2DDCBC6
            B1AD8A7B724B3221FAFFFFFDAA32DCE9EBEDEBE9E0D6CABFAF918B7972482198
            FDFFFFFFFF5938DDE0E0E0DDD6CABFB2AE8E7E75432155FDFFFFFFFFFFFD5932
            C9D6D6CBCABFB2AF918B7B482138FDFFFFFFFFFFFEFEFFA32154BCBFBCB2AF91
            8A502121AAFEFFFFFFFFFFFFFFFFFFFEF898212133373733212159F3FEFEFEFF
            FFFFFFFFFFFFFEFEFFFFFDE8D1BABAD2E8FAFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            82040000424D8204000000000000420200002800000018000000180000000100
            08000000000040020000610F0000610F00008300000000000000AEAEAF00AFAF
            B000B0B0B100B8B8B800B9B9B900BABABB00BBBBBB00BBBBBC00BCBCBC00BCBC
            BD00BDBDBE00BEBEBF00C0C0C000C1C1C100C2C2C200C2C2C300C6C6C600C9C9
            CA00CACACA00CACACB00CCCCCC00CCCCCD00CDCDCD00CDCDCE00CECECE00CECE
            CF00CFCFCF00CFCFD000CFD0D000D0D0D000D0D0D100D0D1D100D1D1D100D1D1
            D200D1D2D200D2D2D300D2D3D300D3D3D400D4D4D500D4D5D500D5D5D500D5D5
            D600D5D6D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8D800D8D8
            D900D8D9D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADBDB00DBDB
            DB00DBDBDC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDEDE00DEDE
            DE00DEDFDF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1E100E1E2
            E200E2E2E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5E500E5E5
            E500E5E5E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E7E800E7E8
            E800E8E8E800E8E9E900E9E9E900E9EAEA00EAEAEA00EAEAEB00EAEBEB00EBEB
            EB00EBEBEC00EBECEC00ECECEC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEF
            EF00EFEFEF00EFF0F000F0F0F000F0F0F100F0F1F100F1F1F100F1F2F200F2F3
            F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5F500F6F6F600F6F7F700F7F7
            F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFAFA00FCFCFC00FDFDFD00FEFE
            FE00FFFFFF008282828282828282817B726B6B727B8182828282828282828282
            828282827F65493B322E2C2F3849657F82828282828282828282826C44352925
            25231E1B19192A426C8282828282828282815D3D312E2E2E2C2926231C1B1719
            355D818282828282825D3B363737373634312E2C26221C19172F5D8282828282
            6B403B3E4141413E3C39362F2E27221C1917356B8282827F444245484A4A4A48
            45433E38322E27221C1717427F82826544494E51515151514E4A454138322E29
            221B152A658281494E5057575A5A5A5757264E484115322E261C191749817A44
            53565A5E6161615E1B02544E1601382F2A221B17387A724A5A5C646668686825
            00025A1D00003C362E261C192F716C4D5C64686B6E6E220000021A0000004139
            2F27221B2A6B6C4E64686C70727421000000180000003E3C342C241B2A6B714E
            666B707677797613000264100000433E362E241C2F717A49676E72777B7E7B74
            1A02685A11004841372E261C387A8149656E74797E827E79743668615A204A41
            352E262249818265566E72777B7E7B77726C68615A514A41352E262E6582827F
            47696F76777977766F6A665E5751483E332E26427F8282826B4E6A6F7274726F
            6C68645A574E453C322A3B6B82828282825D536A6C6C6C6A68645C57514A4339
            31385D828282828282805D4C66686866645C5A544E453E393C5D808282828282
            8282826B4554615E5A57544E48413E436A82828282828282828282827F634A48
            4A4A4A454148647F8182828282828282828282818181817B726A6A727B818282
            818282828282}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000AA7BBC00AB7D
            BD00AB7DBE00B48DBF00B995BF00BD9ABF00B58FC200B791C200B792C300B892
            C600BA94C800BD9BC400BE9CC100BE9EC600BF9EC900B5BFC600A7C1D900A7C3
            DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AFC6DB00AEC4
            D800B6C0C600B6C2CB00B6C3CE00B8C0C600BCC1C100BCC2C400BDC4C700B8C4
            CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7
            D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7E400AAC9E600AFCA
            E300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CCF100A9CDF100ADCF
            F000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CEE600B6CEE500B2CE
            E900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2EE00BCD1E400B9D3
            ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5F100BBD7F300BAD7
            F400BED7F000BBD9F600BED8F100BEDAF600C7AAC000C7ADC700C9AEC500CBB2
            CB00CAB0C900C9B0CD00CBB3CE00CEB6D200CFB7D700D1BBC200D2BDC500D1BA
            D700D3BED600C3C3BE00C7C3BB00C8C5BD00C8C6BF00D2C8B700D6C9B600D7CD
            BD00D9C7BF00DECCB400DFCDB600DFCEB700DFCFB800DECFBA00DECFBD00DFD1
            BE00E0CFB900E0CFBA00E0D0BB00E0D0BA00E0D1BC00E0D1BD00E0D2BF00E0D2
            BD00C0C2C000C3C4C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CA
            C600CACDCD00C3CBD100C0CCD500C1CFDA00C8D0D600CCD1D300CCD4D700C9D3
            DB00CAD4DD00CDD5DA00CFD7DD00D5C1C100D6C4C700D5C3CC00D3CDC200D7CF
            C000D9C7C500D9C9CB00D9CACD00DBCDCF00DDCFCA00D5C2DA00D9CAD600DBCE
            D300DDCFD200D7D0C300D5D0C700D6D4CD00DFD1C200D8D3C900DAD5CC00DDD0
            D600DED1D900DCDAD300C3D3E000C5D6E600C1D5E900CCD8E300CCDBEA00D0D9
            E000D2DCE400D4DEE900CEE2F600CEE3F700CDE3F800CEE3F900CFE3F800DAE9
            F900DAEAFA00DCEAF900DCEBFA00DCEBFB00E0D3C000E1D4C100E1D4C200E1D5
            C300E0D4C100E2D6C400E2D7C600E2D7C700E1D6C500E1D7C900E2D6CA00E2D7
            CC00E3D9CA00E3DACB00E3DACC00E3DBCF00E2D9CE00E4DACD00E4DCCF00E0D4
            DE00E3DAD000E3DBD400E5DCD000E5DDD100E5DED300E5DED500E2D9DC00E6DF
            DA00E6DCE700E6DCE500E6E0D600E7E1D700E6DFD500E7E2D900E8E3DB00E8E3
            DF00E9E4DC00E9E4DD00EAE5DF00E8E5DF00E1E2E200E0E4E700E2E6EA00E5E7
            E900E8E1E300EBE7E100EBE6E100EBE7E500EBE5E800ECE9E400EDE9E500EDEA
            E600ECE9E600EEEAEA00EFECE900E2EFFC00E4F0FC00F1EEEB00F0EEEB00F1EE
            EC00F2EFED00F2EEEF00F4F2F000F5F3F100F4F1F300F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDB2553A3A53B2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFDB22D111010131010
            102D37F8FFFFFFFFFFFFFFFFFFFFFD3A2D10130F1E64640F0F0F131037F8FDFF
            FFFFFFFFFDED2D100F0F1E67686B6B686B686401102DFAFFFFFFFFFFFD2D1013
            69707178796F6D6B6B6B68641E102DEEFFFFFFF837102190B9BEBCBEBBB9BA79
            756B6B6B670F1037FFFFFFEE2D109FC4C5C4C4C4C2BDBCBABA796E6B6B641E10
            AEFDF82D1082C6CDCDCDCECDC8C4C2BCBB79796B6B6B641037FDFA2D10A3D6CE
            D4D4D4D6CE8FC8C3BC5F79756B6B671E10B23A1088CFD5D7DADAD8D85901CEC5
            5F01BA796D6B681E10AE3A2D86D7DBDCE3E3E35D0001D4590000B9BA796B6B64
            13373711D0DBE3E8E9E95D0000015A000000BCB9796B6B641337372DDEDDE9F0
            F1F1610000005C000000BEBEBA756B6B132D3A11DEE7F0F2F4F5F65B0002D957
            0000C3BBB7766B64133AAF2DA7E7F1F5F7FCF7F65E02E3D15700C3BCBA796D68
            1053AF11AAE9F2F5FCFFFCF6F098E3D8CF8FC4BCBA79680F11F8F82D2DDFF0F6
            F7FCF7F5F0EBE3D8D4C5C5BCB9796E102DB5FA5311ABF0F2F5F5F5F2F0E7DDD7
            CFCDC3BCBA690F11B2F8FDF8372DA8ECF0F2F0ECE9E3DDD5CECDC2BBB66F102D
            EDFDFFFAB22D11E5ECE9E9E7E3DDD5D4CEC4BDBA7C102DEDF8FDFFFDF8B52D2D
            48E3E3DCDBD7D4CDC8C2BE9C102D53FAFFFFFFFDFDFDAF2D1112DED7D5D6CEC8
            C329101137B2F8FFFFFFFFFDFDFDF8B5AE372D111111111011112D37F8FAFDFD
            FFFFFFFFFFFFFDFDFAF8AF37373737373AAEAEF8FDFDFDFFFFFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000AB7DBD00AC7F
            C000B085BF00B187C100B38BC300B38AC400B68EC300B58EC400B790C800B993
            C700B992C800BD9BC500BF9EC600BC98CA00DBBFA300DDBFA300DDBFA400C09F
            C700C09FCD00C3A4C600C2A3CC00C3A5CC00C5A8C700C5A8CB00C7A9D100C9AB
            D400CBB1CD00CCB3CE00CDB4CF00CEB6CC00CBB2D100CDB5D000CEB6D200CDB3
            D800D0BBCC00D3BFD600D3BCDC00DCC0A500DCC1A700DCC2A600DCC3A800DDC2
            A800DDC3AA00DCC3AA00DEC3A900DEC3AA00DDC4A900DDC5AB00DCC4AB00DEC4
            AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AC00DEC6AD00DEC7AF00DEC8
            AF00DDC7B000DDC8B000DEC9B200DEC8B200DECAB400DFCBB500DFCDB700DFCE
            B700DFCCB800DFCEB900E0C5AB00E0C5AC00E0C6AD00E0C6AF00E1C7B100E2C8
            B100E2C8B200E2C9B300E2CAB400E3CAB600E1CBB700E0CDB500E0CDB600E0CE
            B700E0CFB700E2CBB800E0CFB800E1CFB900E0CEB800E0CFBB00E3CCB900E2CD
            BA00E3CDBB00E3CEBB00E1CCB900E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CB
            B800E5CDB800E5CDB900E4CDBB00E6CFBB00E5CEBB00E6CFBD00E6CFBE00E4CF
            BE00E0D0BA00E1D0BA00E0D1BB00E0D0B900E0D1BC00E0D1BD00E0D0BC00E1D2
            BD00E0D2BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2BD00E2D2BF00E5D0
            BF00E6D0BE00E7D1BF00E7D2BF00E6D0BD00D5C2CC00D6C4CF00D7C6CD00D9C9
            CE00D6C3D400D7C5D100D9C9D200DDCFD300DCCEDB00DCCDDF00DED1CC00DFD3
            CF00DFD2CE00DED1D900D8C4E000E1D1C000E1D3C000E3D1C100E3D1C000E2D2
            C100E2D3C000E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6
            C500E3D6C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E4D7
            C700E4D7C600E5D7C500E1D6CB00E3D7C800E0D5CE00E1D6CE00E6D6C900E4D8
            C700E3D8C800E3D8C900E2D8C900E3D9CB00E3DACB00E3D9CC00E3D9CE00E3DA
            CC00E3DACD00E5D8C900E5D9CB00E5DACB00E6D8CA00E7DACB00E4D8CD00E4DA
            CC00E5DACD00E4DBCE00E7DBCD00E7DDCF00E8D3C100E8D4C300E8D4C400E9D5
            C500E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DC
            CF00E0D5D200E2D7D100E0D4D500E2D7D600E0D4DD00E3DAD000E4DBD200E5DB
            D700E5DDD100E6DCD000E6DDD300E6DED300E7DFD400E3D9D900E4DBDC00E5DD
            D800E6DDDB00E4D7E800E8DDE900E7E0D700E8E0D500EFE1D500E8E1D900E9E3
            DA00E8E1DE00EAE4DD00EAE5DF00F0E1D600F0E2D600F0E2D700F0E3D700F0E3
            D800E9E3E200EAE3E600ECE6EA00EDE9E500EEEBE800EFEAEB00F3E8E000F4EA
            E200F5EBE300F4EAE100F0EDED00F6EEE800F7EFE900F7EFEA00F0E9F000F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF1C86767C8F1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70E0E0E0E0E0E0E
            0E0E45FAFFFFFFFFFFFFFFFFFFFFFF7B0E0E0E0E0E0E0E0E0E0E0E0E10FFFFFF
            FFFFFFFEFEFA0E0E0E0E2B3E94AFB9A16C270E0E0E0FFCFFFFFFFFFEFE0F0E0E
            7397AFD0DDE0E4E4E4E3780E0E0E0EFCFEFFFFFE470E428D9BADCFD6E0E4EDEE
            EEEEEDDE280E0E65FEFFFFFA0E0E97949BADD2DDE4EDEEF4F4F9F4EDBD0E0E0E
            E9FFFE0F0E8D97949BB2D4E1E4ED24DBFCFB238CE4A30E0E10FFFD0E33CB6F94
            9BB2D5E1E4230087FE8C0082EDDD2F0F0EF7C80EA4A957949DB2D4E01E000087
            8C00008CE4E0760E0EE9C00E9B9F6C8E9CAED0830000001800000020E3DD9A0E
            0E61610ED4716A7399ABD2D20300002408000022E1D6AE0E0E4D650EE26E546F
            949BADD2CA060023D809001CD6D2A9390E45C20EE3A041577399AAB2D2D20B22
            E0E10B22D2BB94250EC4F00ED0C93C526E9399AAB1CFD2CFD5D5D0A6AEAA7539
            0EC8F50ED4E43C4F436F93999CAEAEB2B2B2AEAB9C973F0E0EFAFA0F10EEB33C
            4F546E7393979C9D9D9D9C999472410E0EFAFEF00EE1EE6B394F54576F739394
            9494937372430E0EF5FCFEFC490EE7ED55393E41526A6C6E6E6E6C6E75430E0F
            FAFFFEFEFA0E0EEDEDA34F393C4F4141415471973A0E0EFAFDFFFFFEFDFA0F0E
            B6E4E1B57752546C96AA99430E0EF2FDFEFFFEFEFEFEFC0F0E26D5E1DDDED2D2
            B13D0E0E4AF7FCFEFEFFFFFEFEFEFEFAF2450E0E0E0E0E0E0E0E0EE5FDFEFEFE
            FEFFFFFEFEFEFEFEFEFEF9C74D484D7BC8F0F7FCFEFEFEFEFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          DockOrientation = doNoOrient
        end
        object ElSpeedButton21: TElSpeedButton
          Left = 0
          Top = 0
          Width = 30
          Height = 31
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000A590BF00AA95
            BF00B29EBF00A691C100AB97C200B29FC200B3A0C400B4A2C200B5A3C600B6A5
            C600B3A2C800B5A3C900B8A7C700B8A8CC00BFB0C700C3B2BF00CABABF00C1B0
            C100C3B2C200C3B4C700C4B4C300C1B3CC00C3B5C900C7BACE00CDBFC600C8BA
            C900C9BDCE00C5B8D100C8BBD400DFC9AD00DFC9AC00DFC9AE00DFCAAF00D4C5
            BE00DFCAB000DFCBB000DFCBB100DFCCB300DFCCB200DFCDB400DFCDB500DFCC
            B400DFCDB600DFCEB700DACBBE00DFCEB800DFCFB800DECEBA00DCCDBD00DECF
            BD00E0C9AD00E0CAAD00E0CAAE00E3CDB200E1CCB200E1CEB500E4CEB300E4CF
            B500E4CFB600E0CFB900E0CFB800E0CFBA00E3D0B700E4D0B700E5D1B700E1D0
            B800E0D0BA00E0D0BB00E1D1BB00E3D1B900E2D1BA00E0D1BC00E0D1BD00E1D1
            BC00E0D2BD00E0D2BE00E0D2BF00E3D3BF00E3D2BD00E5D1B900E5D2BA00E5D3
            BB00E6D3BB00E5D3BD00E7D4BE00E7D4BC00E8D4BD00CDC0CA00CFC3CE00CCC1
            D200CCC1D800D5C7C200D0C4CF00D7CBCB00D7CBC900D9CBC000DACDC200DBCE
            C600DACEC400DCCFC500D8CDCA00D8CECD00D9CFCE00D1C6D400D4CAD200D5CC
            D300D6CDD200D5CCD700D3C9DC00D6CDDA00D7CDDD00DED1C000DED2C600DFD4
            CA00DAD1D100DAD2D500DDD5D000DFD7D200DFD7D400D9D0DE00DDD6DA00DCD4
            E200DFD8E500E0D3C000E1D3BF00E1D4C100E0D4C100E1D4C200E1D5C300E3D4
            C100E0D4C400E1D5C600E2D6C400E3D7C500E2D7C600E2D7C700E4D6C200E6D5
            C100E3D7C600E1D6C900E3D7C800E7D8C600E3D9CA00E3DACB00E2D8CC00E3DA
            CC00E3DBCF00E5DACB00E5DBCC00E4DBCE00E6DBCC00E4DCCF00E6DDCF00E9D7
            C100E8D7C100E8D7C200E9D8C300E9D9C400EBD9C400E8DAC800E8DBCA00EADB
            C900EADBCA00EBDCCB00EADCC900EADDCD00EADDCD00EDDDCA00ECDDCA00EDDF
            CD00EDDECD00EDDFCE00ECDFCF00EEDFCE00ECDDCC00E1D8D000E3DBD000E2DA
            D400E5DCD000E5DDD100E5DED300E7DED200E6DFD500E6DFD600E1DAD800E2DC
            DD00E4DED900E9DED100E9DFD300E0D9E000E0D9E400E5DFE100E2DBE800EEE0
            CF00E7E1D700E6E0D600E7E2D900E7E1DA00EAE1D700EFE2D200EFE2D300EEE1
            D100EFE3D400E8E2DA00E9E4DC00E9E4DD00EAE5DF00E9E4DE00ECE4DB00F0E3
            D400F0E4D400F0E4D500F1E5D600F1E5D700F1E6D900F4EBDF00E8E3E700EBE7
            E100EBE7E500ECE7E000EBE6EA00EAE6EE00EEE9E300ECE9E400EDE9E500EEEA
            E500EEEAEE00EFECE900F4EBE000F5ECE100F4ECE100F5ECE200F5EDE200F7EF
            E700F0EDEB00F1EEEB00F1EEEC00F2EFED00F1EEEE00F2EFF100F7F0E800F7F1
            E900F7F1EA00F8F2EB00F9F4EE00FAF5EF00F3F1F300F4F2F000F5F3F100F5F3
            F300FAF5F000FCFAF700FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEF3D6C1C1D6F3FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFB561E1E1E1E1E1E
            1E1E9EFBFFFFFFFFFFFFFFFFFFFFFFC91E1E1E322234321E1E1E1E1EA7FEFFFF
            FFFFFFFFFFFD401E373C41484349422A361E1E1E1E55FDFFFFFFFFFFFF561E46
            7D7D7F7D7B4C48483D2A1F1E1E1E40FEFFFFFFFFAD1E81848A8A8786847F7D4C
            483D2D221E1E1EC1FFFFFFFB1E458E919191958F8E8C837F7D4A432D221E1E1E
            F4FEFE9E328EB2B2B3B4B49798958E87807D4B3D3C321E1E9EFFFE1E8DB3B4B6
            B66857B6B4745D91876021483D291E1E1EFBE91E97B6C2C4CC5817CB76035797
            7100104C482D341E1EE9D532B6C4CDCED9671CBA03001A7400000F7D4B3D291E
            1EC7C13EC4CFD9DFE06C150000001900000010804C3D3C1E1EA7C13FCDD9E0EA
            EA6C1B0000000E00000011827D433B221EA7D636CEDFEAEDF66E5A7A0000596B
            000014837D483B321ED5F31ECEE1ECF8F9796CEF7A005AC56A0019857F483D25
            1EE5FC1ECCE3EDF6FCDD7AF6EEBD78CCB6725B8A7F4B3B1E1EFDFE9952E1ECF7
            F9FCF9F9ECE3CECCB6B5928A7F4B3B1E56FFFEF51ECEEAEDF9F9F6EFE3DACEC4
            B69791847D4B321EFBFFFFFDAD33E1E3ECEEEBE3E1D9CDC2B4B28E837C481E9E
            FDFFFFFFFF5638DFE1E0E3DFD9CFC4B6B491877F421E52FDFFFFFFFFFFFD5533
            CCD9D9CECDC4B6B4978E86481E38FDFEFFFFFFFFFFFFFEAD1E46C3C4C4B4B497
            914D1E1EADFEFEFEFFFFFFFFFFFFFEFDFA9E1E1E333737331E1E56F5FEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFDE9D5C1C1D6E9FBFDFEFEFEFFFFFFFF}
          DisabledImage.Data = {
            8A040000424D8A040000000000004A0200002800000018000000180000000100
            08000000000040020000610F0000610F00008500000000000000B1B1B200B2B2
            B300B4B4B500B6B6B700BABABA00BBBBBC00BDBDBE00BEBEBF00BFBFBF00BFBF
            C000C0C0C100C1C1C200C5C5C500C6C6C600C6C6C700C7C7C800C8C8C800C8C8
            C900C9C9C900CACACA00CACACB00CDCDCE00CECECE00CECECF00CECFCF00CFCF
            CF00CFCFD000CFD0D000D0D0D000D0D0D100D0D1D100D1D1D200D1D2D200D2D2
            D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4D400D4D4D500D4D5D500D5D5
            D500D5D5D600D5D6D600D6D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8
            D800D8D8D900D8D9D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADB
            DB00DBDBDB00DBDBDC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDE
            DE00DEDEDE00DEDFDF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1
            E100E1E1E200E1E2E200E2E2E200E2E2E300E2E3E300E3E3E300E3E3E400E3E4
            E400E4E4E400E4E4E500E4E5E500E5E5E500E5E5E600E5E6E600E6E6E600E6E6
            E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9E900E9E9E900E9EAEA00EAEA
            EA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECEDED00EDEDED00EDEE
            EE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2
            F200F2F2F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5F500F6F6
            F600F6F7F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFAFA00FCFC
            FC00FDFDFD00FEFEFE00FFFFFF008484848484848484837D746D6D747D838484
            84848484848484848484848481674B3C332F2D30394B67818484848484848484
            8484846E45362A2525221D1A17182B436E848484848484848483603E322F2F2F
            2D2A27221D181518366083848484848484603C373838383735322F2D27201B17
            15306084848484846D413C3F4242423F3D3A37322F2A201B1715366D84848481
            454346494C4C4C4946443F3A352F2A201B15154381848467454B525555555555
            524C46423A352F2A2018152B6784834B51545B5B5D31265B5B443449422C1A2F
            271B151548837C45575B5D61632719614C0124523D0113302B201815367C744C
            5D5F66686A2D1E5B02001D4901000F372F271B152E736E4F5F666A6D6F321400
            000016000000143A302820182B6D6E52666A6E727438140000000F0000000B3D
            352D25182B6D7451686D7278793E2952000026370000133F372F251B30737D4B
            6A6F74797D442D744C00265D34001442382F271B397C834C686F767B805D467B
            765544635B3D2642362F27204B8384675B6F74797D807D79746E6A635D554C42
            362F272F67848481486A7278797B7978726C68615B55493F342F274381848484
            6E4F6E72747674726E6A665D5B52463D332B3C6D84848484845F556C6E6E6E6C
            6A665F5B554C443A323960848484848484836051676A6A68665F5D5852463F3A
            3D608284848484848484846D455863615D5B585249423F446C84848484848484
            8484848481654C494C4C4C46424966818384848484848484848484838383837D
            746C6C747D838484838484848484}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000AA7BBC00AB7D
            BD00AB7DBE00B48DBF00B995BF00BD9ABF00B58FC200B791C200B792C300B892
            C600BA94C800BD9BC400BE9CC100BE9EC600BF9EC900B5BFC600A7C1D900A7C3
            DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AFC6DB00AEC4
            D800B6C0C600B6C2CB00B6C3CE00B8C0C600BCC1C100BCC2C400BDC4C700B8C4
            CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6D800B0C7DD00B0C8DE00B9C7
            D100B9C9D700B9CBDB00A7C9EC00A6CAEC00A9C5E100A9C7E400AAC9E600AFCA
            E300AFCBE600AACAE900ADCEEF00AECEEE00ADCDED00A7CCF100A9CDF100ADCF
            F000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CEE600B6CEE500B2CE
            E900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2EE00BCD1E400B9D3
            ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5F100BBD7F300BAD7
            F400BED7F000BBD9F600BED8F100BEDAF600C7AAC000C7ADC700C9AEC500CBB2
            CB00CAB0C900C9B0CD00CBB3CE00CEB6D200CFB7D700D1BBC200D2BDC500D1BA
            D700D3BED600C3C3BE00C7C3BB00C8C5BD00C8C6BF00D2C8B700D6C9B600D7CD
            BD00D9C7BF00DECCB400DFCDB600DFCEB700DFCFB800DECFBA00DECFBD00DFD1
            BE00E0CFB900E0CFBA00E0D0BB00E0D0BA00E0D1BC00E0D1BD00E0D2BF00E0D2
            BD00C0C2C000C3C4C000C3C5C300C1C7CA00C2CACD00C8C6C100C8C8C300C9CA
            C600CACDCD00C3CBD100C0CCD500C1CFDA00C8D0D600CCD1D300CCD4D700C9D3
            DB00CAD4DD00CDD5DA00CFD7DD00D5C1C100D6C4C700D5C3CC00D3CDC200D7CF
            C000D9C7C500D9C9CB00D9CACD00DBCDCF00DDCFCA00D5C2DA00D9CAD600DBCE
            D300DDCFD200D7D0C300D5D0C700D6D4CD00DFD1C200D8D3C900DAD5CC00DDD0
            D600DED1D900DCDAD300C3D3E000C5D6E600C1D5E900CCD8E300CCDBEA00D0D9
            E000D2DCE400D4DEE900CEE2F600CEE3F700CDE3F800CEE3F900CFE3F800DAE9
            F900DAEAFA00DCEAF900DCEBFA00DCEBFB00E0D3C000E1D4C100E1D4C200E1D5
            C300E0D4C100E2D6C400E2D7C600E2D7C700E1D6C500E1D7C900E2D6CA00E2D7
            CC00E3D9CA00E3DACB00E3DACC00E3DBCF00E2D9CE00E4DACD00E4DCCF00E0D4
            DE00E3DAD000E3DBD400E5DCD000E5DDD100E5DED300E5DED500E2D9DC00E6DF
            DA00E6DCE700E6DCE500E6E0D600E7E1D700E6DFD500E7E2D900E8E3DB00E8E3
            DF00E9E4DC00E9E4DD00EAE5DF00E8E5DF00E1E2E200E0E4E700E2E6EA00E5E7
            E900E8E1E300EBE7E100EBE6E100EBE7E500EBE5E800ECE9E400EDE9E500EDEA
            E600ECE9E600EEEAEA00EFECE900E2EFFC00E4F0FC00F1EEEB00F0EEEB00F1EE
            EC00F2EFED00F2EEEF00F4F2F000F5F3F100F4F1F300F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDB2553A3A53B2FDFFFFFFFFFFFFFFFFFFFFFFFFFFFDB22D111010131010
            102D37F8FFFFFFFFFFFFFFFFFFFFFD3A2D10130F1E64640F0F0F131037F8FDFF
            FFFFFFFFFDED2D100F0F1E67686B6B686B686401102DFAFFFFFFFFFFFD2D1013
            69707178796F6D6B6B6B68641E102DEEFFFFFFF837102190B9BEBCBEBBB9BA79
            756B6B6B670F1037FFFFFFEE2D109FC4C5C4C4C4C2BDBCBABA796E6B6B641E10
            AEFDF82D1082C6CDCDCDCECDC8C4C2BCBB79796B6B6B641037FDFA2D10A3D6CE
            D4D4D4D6CE8FC8C3BC5F79756B6B671E10B23A1088CFD5D7DADAD8D85901CEC5
            5F01BA796D6B681E10AE3A2D86D7DBDCE3E3E35D0001D4590000B9BA796B6B64
            13373711D0DBE3E8E9E95D0000015A000000BCB9796B6B641337372DDEDDE9F0
            F1F1610000005C000000BEBEBA756B6B132D3A11DEE7F0F2F4F5F65B0002D957
            0000C3BBB7766B64133AAF2DA7E7F1F5F7FCF7F65E02E3D15700C3BCBA796D68
            1053AF11AAE9F2F5FCFFFCF6F098E3D8CF8FC4BCBA79680F11F8F82D2DDFF0F6
            F7FCF7F5F0EBE3D8D4C5C5BCB9796E102DB5FA5311ABF0F2F5F5F5F2F0E7DDD7
            CFCDC3BCBA690F11B2F8FDF8372DA8ECF0F2F0ECE9E3DDD5CECDC2BBB66F102D
            EDFDFFFAB22D11E5ECE9E9E7E3DDD5D4CEC4BDBA7C102DEDF8FDFFFDF8B52D2D
            48E3E3DCDBD7D4CDC8C2BE9C102D53FAFFFFFFFDFDFDAF2D1112DED7D5D6CEC8
            C329101137B2F8FFFFFFFFFDFDFDF8B5AE372D111111111011112D37F8FAFDFD
            FFFFFFFFFFFFFDFDFAF8AF37373737373AAEAEF8FDFDFDFFFFFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000AB7DBD00AC7F
            C000B085BF00B187C100B38BC300B38AC400B68EC300B58EC400B790C800B993
            C700B992C800BD9BC500BF9EC600BC98CA00DBBFA300DDBFA300DDBFA400C09F
            C700C09FCD00C3A4C600C2A3CC00C3A5CC00C5A8C700C5A8CB00C7A9D100C9AB
            D400CBB1CD00CCB3CE00CDB4CF00CEB6CC00CBB2D100CDB5D000CEB6D200CDB3
            D800D0BBCC00D3BFD600D3BCDC00DCC0A500DCC1A700DCC2A600DCC3A800DDC2
            A800DDC3AA00DCC3AA00DEC3A900DEC3AA00DDC4A900DDC5AB00DCC4AB00DEC4
            AA00DFC4AA00DDC5AD00DDC7AE00DDC7AF00DFC5AC00DEC6AD00DEC7AF00DEC8
            AF00DDC7B000DDC8B000DEC9B200DEC8B200DECAB400DFCBB500DFCDB700DFCE
            B700DFCCB800DFCEB900E0C5AB00E0C5AC00E0C6AD00E0C6AF00E1C7B100E2C8
            B100E2C8B200E2C9B300E2CAB400E3CAB600E1CBB700E0CDB500E0CDB600E0CE
            B700E0CFB700E2CBB800E0CFB800E1CFB900E0CEB800E0CFBB00E3CCB900E2CD
            BA00E3CDBB00E3CEBB00E1CCB900E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CB
            B800E5CDB800E5CDB900E4CDBB00E6CFBB00E5CEBB00E6CFBD00E6CFBE00E4CF
            BE00E0D0BA00E1D0BA00E0D1BB00E0D0B900E0D1BC00E0D1BD00E0D0BC00E1D2
            BD00E0D2BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2BD00E2D2BF00E5D0
            BF00E6D0BE00E7D1BF00E7D2BF00E6D0BD00D5C2CC00D6C4CF00D7C6CD00D9C9
            CE00D6C3D400D7C5D100D9C9D200DDCFD300DCCEDB00DCCDDF00DED1CC00DFD3
            CF00DFD2CE00DED1D900D8C4E000E1D1C000E1D3C000E3D1C100E3D1C000E2D2
            C100E2D3C000E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E2D5C400E2D6
            C500E3D6C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3C300E4D5C200E4D7
            C700E4D7C600E5D7C500E1D6CB00E3D7C800E0D5CE00E1D6CE00E6D6C900E4D8
            C700E3D8C800E3D8C900E2D8C900E3D9CB00E3DACB00E3D9CC00E3D9CE00E3DA
            CC00E3DACD00E5D8C900E5D9CB00E5DACB00E6D8CA00E7DACB00E4D8CD00E4DA
            CC00E5DACD00E4DBCE00E7DBCD00E7DDCF00E8D3C100E8D4C300E8D4C400E9D5
            C500E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DC
            CF00E0D5D200E2D7D100E0D4D500E2D7D600E0D4DD00E3DAD000E4DBD200E5DB
            D700E5DDD100E6DCD000E6DDD300E6DED300E7DFD400E3D9D900E4DBDC00E5DD
            D800E6DDDB00E4D7E800E8DDE900E7E0D700E8E0D500EFE1D500E8E1D900E9E3
            DA00E8E1DE00EAE4DD00EAE5DF00F0E1D600F0E2D600F0E2D700F0E3D700F0E3
            D800E9E3E200EAE3E600ECE6EA00EDE9E500EEEBE800EFEAEB00F3E8E000F4EA
            E200F5EBE300F4EAE100F0EDED00F6EEE800F7EFE900F7EFEA00F0E9F000F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF1C86767C8F1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70E0E0E0E0E0E0E
            0E0E45FAFFFFFFFFFFFFFFFFFFFFFF7B0E0E0E0E0E0E0E0E0E0E0E0E10FFFFFF
            FFFFFFFEFEFA0E0E0E0E2B3E94AFB9A16C270E0E0E0FFCFFFFFFFFFEFE0F0E0E
            7397AFD0DDE0E4E4E4E3780E0E0E0EFCFEFFFFFE470E428D9BADCFD6E0E4EDEE
            EEEEEDDE280E0E65FEFFFFFA0E0E97949BADD2DDE4EDEEF4F4F9F4EDBD0E0E0E
            E9FFFE0F0E8D97949BB2D4E1E4ED24DBFCFB238CE4A30E0E10FFFD0E33CB6F94
            9BB2D5E1E4230087FE8C0082EDDD2F0F0EF7C80EA4A957949DB2D4E01E000087
            8C00008CE4E0760E0EE9C00E9B9F6C8E9CAED0830000001800000020E3DD9A0E
            0E61610ED4716A7399ABD2D20300002408000022E1D6AE0E0E4D650EE26E546F
            949BADD2CA060023D809001CD6D2A9390E45C20EE3A041577399AAB2D2D20B22
            E0E10B22D2BB94250EC4F00ED0C93C526E9399AAB1CFD2CFD5D5D0A6AEAA7539
            0EC8F50ED4E43C4F436F93999CAEAEB2B2B2AEAB9C973F0E0EFAFA0F10EEB33C
            4F546E7393979C9D9D9D9C999472410E0EFAFEF00EE1EE6B394F54576F739394
            9494937372430E0EF5FCFEFC490EE7ED55393E41526A6C6E6E6E6C6E75430E0F
            FAFFFEFEFA0E0EEDEDA34F393C4F4141415471973A0E0EFAFDFFFFFEFDFA0F0E
            B6E4E1B57752546C96AA99430E0EF2FDFEFFFEFEFEFEFC0F0E26D5E1DDDED2D2
            B13D0E0E4AF7FCFEFEFFFFFEFEFEFEFAF2450E0E0E0E0E0E0E0E0EE5FDFEFEFE
            FEFFFFFEFEFEFEFEFEFEF9C74D484D7BC8F0F7FCFEFEFEFEFFFF}
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          DockOrientation = doNoOrient
        end
        object Shape2: TShape
          Left = 0
          Top = 31
          Width = 1183
          Height = 1
          Align = alBottom
          Pen.Color = clHighlight
        end
        object ElSpeedButton23: TElSpeedButton
          Left = 1153
          Top = 0
          Width = 30
          Height = 31
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            7E050000424D7E050000000000003E0300002800000018000000180000000100
            08000000000040020000610F0000610F0000C2000000000000003B6B0C003C6C
            0D003C6C0E003E6D1000416F1300467218004B751E004A761F004F7823004E79
            24004F7924004F792500557C2900567E2D005A7E2E005B7F2F005D8234005D83
            35005F8234006284370065853A0062883D006A883F006F924D0075914E007992
            4F008097590082985B00839A5E00829B6000869D6200859E640089A56C008CA6
            700095A46D009AA876009BAC7C009DAA7900A1AD7E00A5AE7F00A0B58900A2B7
            8C00A7B48900A7BB9200ABBA9500BEBF9E00BFC4A600BAC7A900BBC7AA00BFCA
            AF00DFC19D00DFC19E00DFC29E00DFC29F00C1C2A200C0C5A700C6C7AB00CFC7
            AB00C9D1BA00DFC2A000DFC3A100DFC4A200DFC4A300DFC4A400DFC5A500DFC5
            A600DFC6A600DFC6A800DFC8AA00DFC8AC00DFC9AD00DFC9AE00DFCAAF00D1CB
            B300D6CEBA00DFCAB000DFCBB000DFCBB100DFCCB200D9D0BA00DDD0BB00DCD1
            BC00DED1BC00E0C29F00E0C3A000E0C3A100E0C4A300E1C4A200E1C5A300E0C5
            A500E1C5A400E0C6A600E0C7A800E1C7A800E1CAAD00E0CAAE00E2C9AC00E1CB
            B000E0CDB300E1CCB200E2CCB100E2CDB300E0CDB400E0CDB500E0CEB600E0CF
            B700E2CEB500E3CEB500E2CEB600E0CFB800E0CFB900E2D0B700E0D0BA00E0D0
            BB00E0D1BB00E3D0B900E0D0BC00E0D1BD00E0D2BE00E0D3BF00E1D2BE00E4D2
            BB00E5D3BE00E9D5BC00E9D5BD00CFD5C100DAD4C100DCD9CA00E1D4C000E1D4
            C100E1D5C200E1D5C300E3D5C300E2D6C500E3D6C400E2D6C600E2D7C600E3D7
            C700E1D9C900E3D8C800E4D9CA00E5DBCB00E4DACC00E4DBCD00ECDAC500ECDB
            C600E1DCD000E5DDD000E5DDD100E5DED200E5DED300E6DFD400E6DFD500EFE1
            CF00E4E1D700E6E0D500E7E0D600E3E4DB00E4E3DA00E7E1D800E5E9DF00E8E1
            D600E8E2D900E8E3DA00E9E4DC00E9E5DD00E9E5DE00EAE4DC00EAE6DF00ECE6
            DF00F0E1D000F0E2D100F3E7DA00F3E8DA00EBE7E200EDE9E400EDE9E500ECEA
            E500EEEAE500EEEAE600EEEBE700F0EDEA00F1EEEC00F2EFED00F3F0EE00F8F2
            EA00F5F3F100F5F4F200F6F5F400FCF9F500F9F8F800FDFCFB00FEFEFE00FFFF
            FF00C1C1C1C1C1C1C1C1C0B9AC9999ACB9C0C1C1C1C1C1C1C1C1C1C1C1C1C1C1
            BD9058353F42403D325890BDC1C1C1C1C1C1C1C1C1C1C1AB3544696E6E6D6867
            4E473F34ABC1C1C1C1C1C1C1C1BF7B3E727676767574706D68664D46337BBFC1
            C1C1C1C1C17C5C818282828180777675706D674E483B7CC1C1C1C1C1AB3F8588
            89898988854F517776716D674E4832ABC1C1C1BD53868C8E8F8F7E1C0C02030F
            2250746D674D4534BDC1C190638F9394953708102A383625061239716D664B3E
            91C1C0578D9597987F0A1D929795938E4A14165270684E4558C0B959969B9FA3
            1F119AA39F9B96938E490527756D674C32B9AD619CA2A5A80D2CAEA8A5A29C96
            938C1A197670684E3CADAA6FA2A6AE9E017DB4B0AEA6A29B958F260E77746D66
            3FAAAA73A5AEB3B1043AB6B5B3AEA59F9793231380756E673FAAAD65A8B0B5B8
            1529BAB69DB0A8A39894181B81766E673DADB95DAEB4B6BA2B07A0212FB4AEA4
            9C2E032D8276706833B9C058A7B4B7BBBE17090030B4AEA49C241E8982767062
            58C0C1907AB4B6BABC2000002FB4AEA49C958A898276704391C1C1BD54A9B5B8
            280B0B0A31B0A8A398948E8881766834BDC1C1C1AB60B2B5B6B7B6B5B3AEA59F
            97938C8580753CABC1C1C1C1C17C6BAFB4B4B4B0AEA6A29B958F8B8377417CC1
            C1C1C1C1C1BF7B60A7AEAEA8A5A29C96938C87783E7BBFC1C1C1C1C1C1C1C1AB
            5579A1A39F9B96938E845F35ABC1C1C1C1C1C1C1C1C1C1C1BD905A5B646C6A5E
            565890BDC1C1C1C1C1C1C1C1C1C1C1C1C1C1C0B9AC9999ACB9C0C1C1C1C1C1C1
            C1C1}
          DisabledImage.Data = {
            52040000424D5204000000000000120200002800000018000000180000000100
            08000000000040020000610F0000610F00007700000000000000B6B3B200B7B4
            B300B8B5B400BCBAB900BDBABA00BDBBBA00BEBBBA00BEBCBB00BFBCBB00BFBC
            BC00BFBDBC00C0BDBD00C0BEBD00C1BEBD00C2C0C000C3C1C000C4C2C200C5C3
            C200C6C5C400C7C6C500C9C7C600CAC8C800CAC9C800CBCACA00CDCBCA00CDCB
            CB00CCCDCD00CDCDCE00CDCECE00CECDCD00CECECF00CECFCF00CFCFD000D1CF
            CF00D0D0D100D1D2D200D2D2D300D3D3D400D4D2D200D4D3D200D4D3D300D4D4
            D500D5D5D600D5D6D600D6D4D400D7D5D500D6D6D700D6D7D700D7D7D600D7D7
            D800D7D8D800D8D7D700D8D8D900D8D9D900D9D9D900D9D9DA00D9DADA00DAD9
            D800DADADA00DADADB00DADBDB00DBDBDB00DBDBDC00DBDCDC00DCDBDB00DCDC
            DC00DCDDDD00DDDCDC00DDDDDD00DEDEDE00DEDFDF00DFDFDF00DFE0E000E0DF
            DF00E0E0E000E0E1E100E1E1E000E1E1E100E1E2E200E2E1E100E2E2E200E2E3
            E300E3E2E200E3E3E300E3E4E400E4E4E400E5E5E500E5E6E600E6E6E600E6E7
            E600E7E7E700E8E8E800E9E8E800E9E9E900E9EAEA00EAEAEA00EBEBEB00EBEC
            EC00ECECEC00ECEDED00EDEDED00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0
            F000F0F1F100F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F7F7F700F8F8
            F800F9F9F900FCFCFC00FDFEFE00FEFEFE00FFFFFF0076767676767676767571
            6C68686C7175767676767676767676767676767673634E3F35312F323C4E6373
            76767676767676767676766948382A25252422201E1F2B466976767676767676
            76745E42343131312E2A292422201C1F385E747676767676765E423A3B3B3B3A
            3734312E2924221E1C325E76767676766945414445454544413A3634312A2422
            1E1C38697676767348474A4D505049150701020A17312A24221C1C4673767663
            485055565640030521302716020B292A24201A2B6376754E55565A5A56031456
            5A56554D36040E3129221E1C4E75714A585A5B5F180A5D5F5B5A58554D33011D
            2E24201B3C716C505B5D626406396564625D5B58554A10113129221E326C6953
            5D62656100596A6865625D5A56501907342A24202B69695562656967005C6C6B
            6965625B5A551909372E25202B696C5464686B6E0C436F6E6768645F5A561112
            3A312522326C714E656A6C6F2C086D2C4F6A65605B4001283B3129223C717550
            646A6D70720F0D00526A65605B1913453B3129234E7576635A6A6C6F71260000
            4F6A65605B5549453B312931637676734B666B6E2D0000004C68645F5A564D44
            3A312946737676766954696B6C6D6C6B6965625B5A554A41372E3F6976767676
            765E57686A6A6A6865625D5A5650473D343E5E767676767676745E5464656564
            625D5B58554A443D425E747676767676767676694B58605F5B5A58554D454448
            6976767676767676767676767363514E5151504A464E63737676767676767676
            76767676767675716C68686C71757676767676767676}
          MouseInImage.Data = {
            BE050000424DBE050000000000007E0300002800000018000000180000000100
            08000000000040020000610F0000610F0000D20000000000000045B2520046B2
            530048B3550049B355004AB355004BB357004CB3570050B55B0050B65C0055B5
            5E0055B65E0056B65F0059B660005FBC6A0060B9670061B8660063BB6B0064BD
            6E006BBF73006BBF74006EBB700071BC720074BC730079BF7A007EBF7C0072C1
            7A0059A2EC0059A3ED005AA2EC005AA3ED005AA4EE005AA4EF005DA5F0005DA6
            F00072A7DD0072A8DD006BA5E0006BA6E1006BA7E2006CA9E7006CAAE8006DAB
            EA006DACEB0072A9E10072AAE20072ABE30075B0EB0075B0EC0083BF7E0084AD
            D50086AED50086AFD60084B0DB0087B0D80085B2DD0096B3CD0096B3CF0097B3
            CE0095B4D00095B5D10097B5D20097B7D40098B9D90099BBDC0088B5E10089B7
            E4008AB9E70089B9EA0089BEF4008ABEF40098BDE00098BDE10099BEE2009ABF
            E40087C68A0082C98A0083C88A0083C98A008AC386008AC58A008FCC940091C4
            8B0097C48D009DC8960099D4A0009ED0A000AFC99D00AFCCA200A9D5AC00B1CB
            A100B8CBA300BDCBA600BDCDAB00BBD0AD00B0D9B300B9DAB900BADBBB00BBDB
            BB00BCD8B9009CC1E6009CC2E9009AC7F600ABD1F700ACD1F700ADD2F700AED2
            F700BEDBF900BFDBF900CBCFB100C4D5B800C8D7BD00D2C5B400D2C6B500D2C6
            B600D0CEB300D3CABB00D3CBBE00D3CCBF00DDCAB000DFCAB000DFCBB000DFCB
            B100DFCCB200D0D2BA00D8D0B800D9D0B900DED0BE00E0CDB400E0CDB500E0CE
            B600E0CFB800E0CFB900E0D0BA00E0D0BB00E0D0BC00E0D1BD00E0D2BE00E0D3
            BF00C4DCC100D3CEC200D4CFC500D5D2CB00D6D3CC00D8D7C300DED2C000DFD3
            C200DFD4C100DED5C300DFD7C500DED8C700D9DAC900DFDDCE00D7D7D300DBDE
            DE00D1E8D200DFE7DC00DBEBDB00DDE1E400DFE3E600DAEBFB00E1D4C000E1D4
            C100E1D5C200E1D5C300E0D5C600E2D6C500E2D6C600E2D7C600E3D7C700E3D8
            C800E4D9CA00E4DACC00E4DBCD00E5DDD000E5DDD100E5DED200E5DED300E6DF
            D400E6DFD500E6E0D500E7E0D600E3E4DB00E4E2D800E7E1D800E8E2D900E8E3
            DA00E9E4DC00E9E5DD00E9E5DE00EAE6DF00EBE7E200EBE8E600EDE9E500ECE9
            E700EEEAE600EEEBE700EEF6FD00F0EDEA00F1EEEC00F2EFED00F2F1EE00F3F0
            EE00F3F6F200F5F3F100F5F4F200F8F7F600FBFAFA00F9FBFE00FDFEFE00FFFF
            FF00D1D1D1D1D1D1D1D1D09F6A66666A9FD0D1D1D1D1D1D1D1D1D1D1D1D1D1D1
            C4652026353B3A33252065C4D1D1D1D1D1D1D1D1D1D1D1691D3D758383828180
            7A71391C69D1D1D1D1D1D1D1D1CF442C8B88888887868482817F79702344CFD1
            D1D1D1D1D1453691A2A2A2A1A08988878482807A763145D1D1D1D1D1682DA4A7
            A8A8A8A7A5A3A189888582807A762268D1D1D1C41B8EAAABACACAC9557511852
            5A88868280796F1AC4D1D1653FACADAEAFAF6D0E0A174E1506167285827F7737
            65D1D02198AFB1B2B46E034F97AFADAB7B140C7C84817A6F20D09F28B0B3B7B9
            B6104AB9B7B3B0ADAB930F3087828078249F6B41B4B8BBBD6207B5BDBBB8B4B0
            ADAA5C017D84817A326B6848B8BCBEC05519C3C0BEBCB8B3AFAC94045B86827F
            38676849BBBEC2C5504CC6C5C2BEBBB7B1ADAA0B5687838038676B42BDC0C5C9
            5E11CBC9C5C0BDB9B2AE8F006C888380336B9F2ABEC3C6CB9C029AC858C3BEBA
            B4AF530992888481259FD0219DC3C7CCCE540D4B13C3BEBAB4960559A2888473
            20D0D16564C3C6CBCDCA080013C3BEBAB4AF5DA8A288843C65D1D1C41F9EC5C9
            C84D000012C0BDB9B2AEABA7A188741AC4D1D1D1682FC1C59B61605F8ABEBBB7
            B1ADAAA5A07E2B68D1D1D1D1D14543BFC3C3C3C0BEBCB8B3AFACA9A3903445D1
            D1D1D1D1D1CF442E9DBEBEBDBBB8B4B0ADAAA68C2C44CFD1D1D1D1D1D1D1D169
            1E6399B9B7B3B0ADAB8D3E1D69D1D1D1D1D1D1D1D1D1D1D1C465212941474640
            272165C4D1D1D1D1D1D1D1D1D1D1D1D1D1D1D09F6A66666A9FD0D1D1D1D1D1D1
            D1D1}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F0000000100000000000045B2520047B2
            540048B355004AB356004FB55A004FB55B0050B55B0053B55C0055B65F0059B8
            63005EBA680062BB6B0067B96A0067BB6D0069BB6D0068BB6E006BBB6F0068BE
            710074BE760073BF78007ABF7B0078C27F007DC48300CF9F7900CFA07900CFA0
            7A00D0A17B00D0A17C00D1A37D00D1A27E00D1A37E00D1A47E00D1A47F00D1A5
            7F00D2A47F0081C2820081C3840086C1830088C2840088C3870089C4890089C7
            8C008FC68D0088C88D0092C9930095CC980098C792009FCA9A009DCD9C00ACC6
            9800AAC99D00ADC89A00ADC89C00A6CEA200AECEA600A4D2A600A6D1A600ACD3
            AB00AED0A900AFD1AA00B7D1AE00B9D0AE00BFD8BA00D2A58000D2A68300D2A7
            8300D2A88500D2A88600D2A98600D4AB8700D3A98800D4AC8900D4AD8A00D4AE
            8C00D4AE8D00D5AE8E00D5B08F00D6B18F00D6B29000D6B39100D6B39200D6B3
            9500D7B49400D7B59600D7B59800D7B89B00D8B79B00D9B79C00D9BA9E00D9BB
            A000D9BCA100DABDA300DABDA500DEBCA200DEBDA200C5CAA700C3CFAE00C5CF
            B000C3D5B900CAD5BC00DBC0A800DCC1AA00DEC5A800DEC5A900DEC6AA00DFCA
            AE00D6CFB600DFC9B000DFCAB000DFCBB000DFCBB100DFCBB300DFCCB200DFCC
            B300DFCDB700E2C5AF00E0CBB100E0CCB200E0CCB300E0CDB400E0CDB500E0CE
            B600E0CEB700E0CFB600E0CFB800E0CFB900E0CFBA00E7CFBD00E1D0B800E1D0
            B900E0D0BA00E0D0BB00E0D1BB00E3D0B900E3D1BA00E0D0BC00E0D1BC00E1D1
            BC00E0D2BD00E1D2BD00E0D2BE00E1D2BF00E1D3BE00E1D3BF00E2D2BD00E2D3
            BD00E3D2BD00E2D3BE00E1D4BF00E7D0BD00E8D0BE00E8D1BE00E8D1BF00CFDE
            C800D4D6C000D4DAC600D7D9C600DCDCCD00DDDCCE00CBE1CB00CDE0CB00DEE4
            D800DEE8DC00E1D3C000E1D3C100E1D4C100E0D5C300E1D4C200E1D5C200E1D5
            C300E2D5C300E3D5C200E3D5C300E2D5C400E2D6C500E3D6C500E3D7C500E2D6
            C600E2D7C600E3D7C600E3D7C700E4D5C200E4D7C600E3D7C800E6D8C600E3D8
            C800E4D8C800E4D9C800E4D9C900E4D9CA00E4D9CB00E5D9CA00E4DACB00E6D9
            C900E7DAC900E4DACC00E4DBCD00E6DBCC00E5DDCF00E7DCCF00E8DDCF00ECDA
            CB00EDDACC00E2DCD000E4DCD000E5DDD000E5DDD100E5DDD200E5DED300E6DC
            D000E7DDD100E7DED200E6DED400E7DFD500E3E0D300E3E0D500E6E0D500E7E0
            D600E7E1D800E8E0D700E9E1D700E9E0D800E9E1D800E8E2D900E9E2D900E8E3
            DA00E9E2DA00EBE2DB00E9E5DD00EAE4DC00EAE5DE00EAE6DF00EBE6E000EBE7
            E100EBE7E200EAE8E200EDE8E100EDE8E400EDE9E500EEE9E500EFE9E400EEEA
            E500EEEBE700EEEBE800EFECE900F4EAE200F0ECE800F0EDEB00F3F0EF00F4F1
            F000F7F5F400FAF5F200FAF9F900FDFBFA00FEFEFD00FFFFFF00FFFFFFFFFFFF
            FFFFFEF5C97F7FC9F5FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB731E2049504F48
            1C1E73FBFFFFFFFFFFFFFFFFFFFFFF9819536F7D7D7C797870684E1798FFFFFF
            FFFFFFFFFFFD5D42728C8FAEBED1D2C7B6806E683F5DFDFFFFFFFFFFFF5E4CA3
            A8AFC3CE9D3B2C293899C57769455EFFFFFFFFFF9744ADB2B3BDCC3C0809162B
            11022DD67B692197FFFFFFFB19A4BDAAB2C0360330EBF7F8F99F0A15DC766717
            FBFFFF7358C4B0A7B49A0635E9F3F8FAFCFAA20539BF6C4D73FFFE20B7C68BA7
            B42E0DDAE9F4F9FCFFFCF9370BE079661DFEF542D0BB88A7B4142AE2E9F3F8FA
            FCFAF8A001D7AC6D1CF5CA54D9AB84A5B20E2FDBE6EEF7F8F9F8F7A1009BBC70
            47CA965BDF91828FAE2523D5E2E8EEF3F4F3EE3E04D0C0774E95965CE4907C8A
            A732079C9E3AE6E9E9E9E62413CEBA784E95CA56E7B579838FA610120F28DBE2
            E2E2620363C4AA7848CAF546EAC8717C88A561000027CFD4D4D4CB3DC3B98F79
            1FF5FE22DDEC75777D6A0C000026C0C4C4C4C0BDB4AE846B1DFEFF7365F2C26E
            785F31333460B2B4B4B4B2AEA78F825273FFFFFB1AE3F6866E777C838A8FA5A7
            A7A7A58F8E8C6F18FBFFFFFF974BEFF0856D71797C8284888888848994874197
            FFFFFFFFFF5E57EDF1B8746E7177797A7A7C93A98C4A5EFFFFFFFFFFFFFD5D4B
            DEEAE5C192818189ACBAB17E425DFDFFFFFFFFFFFFFFFF981B64D3E1DAD8D0CD
            C38D551998FFFFFFFFFFFFFFFFFFFFFFFB732043545A5951402073FBFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFEF5C97F7FC9F5FEFFFFFFFFFFFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alRight
          Color = clBtnFace
          ParentColor = False
          OnClick = ElSpeedButton23Click
          DockOrientation = doNoOrient
        end
        object ElSpeedButton24: TElSpeedButton
          Left = 59
          Top = 0
          Width = 30
          Height = 31
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000A28CBE00A28C
            BF00AE9BC200B09DC600B19FC600B4A2C300B5A3C400B2A0C800B9A7C400BAA9
            C700C5B5C500C5B7CB00C6B8C800C7B9CD00C8BBD300CABED200DFC9AC00DFC9
            AD00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCBB100DFCBB200DFCCB200DFCC
            B300DFCCB400DFCDB400DFCDB500DFCDB600DFCEB700DFCEB800DFCFB800E0C9
            AD00E0CAAD00E0CAAE00E1CCB200E3CDB200E3CEB300E1CEB500E4CEB300E4CF
            B400E4CFB500E4CFB600E0CFB800E0CFB900E0CFBA00E3D0B700E4D0B700E5D1
            B700E1D0B800E0D0BA00E0D0BB00E0D1BB00E1D0BA00E3D1B900E2D1BA00E0D1
            BC00E0D1BD00E1D1BC00E0D2BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D2
            BD00E2D3BE00E3D3BF00E4D1B800E4D1B900E5D1B800E5D1B900E5D2BA00E5D2
            BB00E5D3BB00E6D3BB00E5D3BD00E7D4BC00E6D4BE00E7D4BE00E8D4BD00CFC4
            D400D4C7C700D1C4C800D1C5CA00D1C6CC00D2C6CD00D6C9C700D7CCCF00DACD
            C500D9CECB00D1C6D800D9CFD000DFD3C300DAD2D500DBD3D600DED5D200DFD8
            DC00DFD8DF00E0D3C000E0D3C100E1D3C000E0D4C100E1D4C100E1D4C200E1D5
            C300E3D4C100E2D5C300E1D5C400E0D4C600E2D6C400E2D6C500E3D7C500E2D7
            C600E2D7C700E3D7C600E3D7C700E4D6C200E6D5C100E4D7C600E1D6C900E2D7
            C800E7D8C600E7D9C700E3D9CA00E3DACB00E3DACC00E4D9CA00E5DACB00E7DB
            CB00E4DACC00E4DACD00E5DBCC00E4DBCE00E6DBCC00E4DCCE00E4DCCF00E6DD
            CF00E8D6C000E9D7C100E8D7C200E9D8C300E8D9C500E9D9C400EBD9C400E8DA
            C800E8DAC900E9DAC800E8DBCA00EADBC900EADBCA00E9DCCA00EBDCC900EBDC
            CB00E9DCCC00E9DDCF00EADDCD00EBDECD00ECDDCA00EDDDCA00ECDDCC00EDDE
            CD00EDDFCD00ECDFCF00EDDFCE00EEDFCE00E2DAD000E5DCD000E5DDD100E5DE
            D200E5DED300E7DED200E4DDD600E6DFD500E8DED100E9DED000E8DFD300EADF
            D200E1DAE200EEE0CF00E6E0D500E6E0D600E7E0D600E7E1D700E6E0DA00E7E2
            D900E7E2DD00E9E1D700EBE1D600EBE2D700EEE1D100EFE2D200EFE2D300EFE3
            D400E8E2DA00E8E3DB00E9E3DC00E9E4DC00E9E4DD00EAE4DD00EAE5DE00EAE5
            DF00ECE4DB00F0E3D300F0E3D400F0E4D400F0E4D500F1E5D600F1E5D700F1E6
            D900F4EBDF00E6E1E100E8E4E000EBE6E100EBE7E100E9E4E600EBE7E500ECE7
            E000EDE8E200EEE9E300ECE9E400EDE9E500EDEAE500EDEAE600EEEAE400EEEA
            E700EDEAE900EFEBEB00EFECE900F4EBE000F4ECE100F5ECE100F5ECE200F5ED
            E200F7EFE700F0EDEA00F1EEEB00F1EEEC00F2EFED00F7F0E800F7F1E900F7F1
            EA00F8F2EB00F9F4EE00FAF5EF00F4F2F000F5F3F100F7F6F500FAF5F000F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEF2D1B3B3D1F2FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA90101010101010
            101090FAFFFFFFFFFFFFFFFFFFFFFFBF1010181B1C1B161511101010A5FEFFFF
            FFFFFFFFFFFD50102C333535342E2C2718131010104BFDFFFFFFFFFFFF501040
            40676867653F3D3A332C182210104DFEFFFFFFFFBF106B6E737474716F69673F
            3D342C19131010A5FEFFFFFA106A7482838383827F746F69653D342C19121010
            F8FFFF90237D89A8A9A9A9A8A7837F746C673D342C18101090FEFE107BA8ADAD
            B6B6B6ADADA9A753746C653D3327151010FDF010A8B4B7C2C5C5C5C2B7B40D00
            8274693F3A2C192210EAD123B4B9C6C9D6D6D6C9C60F0000A77F6F673D332715
            10CFBE2FB9C8D6DDE1E1E1DD51000000A88374693F342C1810A5BE37C6D6DFEB
            EDEEEDEB51000000AAA77F6F653A2C1910A5D125C9DDEBEEF6F6F6EEE20F0001
            ACA88271673D2D1910CFF210D6E1EDF6F9FBF9F6E3D80F01B6A98374683D2D1B
            10EAFE10C5DFEEF6FBFFFBF6EEE1D551B6A98374683D2D1810FDFF904CE1EDF6
            F9FBF9F6EDE1D6C5B6A98374683D2D1090FEFFFA10C8EBEEF6F6F6EEEBDDC9C2
            ADA88271673D2710F8FEFFFEB321E0EBEDEEEDEBDFD6C6B7ADA77F6F653910A5
            FEFEFFFFFE502ADCE1E1E1DDD6C8B9B4A98374693F104DFDFEFFFFFFFFFD5021
            C5D6D6C9C6B9B6AAA77F6F3D104DFAFEFFFFFFFFFFFFFFBF1048B6C2B7B4AAA7
            826B2310A5FDFFFFFFFFFFFFFFFFFFFFFA90101024272722101090F8FEFFFFFF
            FFFFFFFFFFFFFFFFFEFEFEF0D1B3B3D1F0FDFEFEFFFFFFFFFFFF}
          DisabledImage.Data = {
            46040000424D4604000000000000060200002800000018000000180000000100
            08000000000040020000610F0000610F00007400000000000000AFAFB000B9B9
            BA00BABABB00BCBCBD00BEBEBE00BEBEBF00C1C1C100C2C2C300C9C9CA00CCCC
            CC00CDCDCE00CFCFCF00CFCFD000CFD0D000D0D0D000D0D0D100D0D1D100D1D1
            D200D1D2D200D2D2D300D2D3D300D3D3D300D3D3D400D4D4D400D4D4D500D4D5
            D500D5D5D500D5D5D600D5D6D600D6D6D600D6D6D700D6D7D700D7D7D700D7D7
            D800D7D8D800D8D8D800D8D8D900D8D9D900D9D9D900D9D9DA00D9DADA00DADA
            DA00DADADB00DADBDB00DBDBDB00DBDBDC00DBDCDC00DCDCDC00DCDCDD00DDDD
            DD00DDDDDE00DDDEDE00DEDEDE00DEDFDF00DFDFDF00DFE0E000E0E0E000E0E0
            E100E0E1E100E1E1E100E1E2E200E2E2E200E2E2E300E2E3E300E3E3E300E3E3
            E400E4E4E400E4E4E500E4E5E500E5E5E500E5E5E600E5E6E600E6E6E600E6E6
            E700E6E7E700E7E7E700E7E8E800E8E8E800E8E9E900E9E9E900E9EAEA00EAEA
            EA00EAEBEB00EBEBEB00EBEBEC00EBECEC00ECECEC00ECEDED00EDEDED00EDEE
            EE00EEEEEE00EEEFEF00EFEFEF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2
            F200F2F3F300F3F3F300F3F3F400F4F4F400F4F5F500F5F5F500F6F6F600F6F7
            F700F7F7F700F7F8F800F8F8F800F9F9F900F9FAFA00FAFAFA00FCFCFC00FDFD
            FD00FEFEFE00FFFFFF007373737373737373726C635D5D636C72737373737373
            737373737373737370573C2E25211F222B3C577073737373737373737373735E
            37281B1616130F0C0B0B1C355E7373737373737373725030242121211E1B1813
            0F0C0A0B2850727373737373735030292A2A2A292724211E18130F0B0A225073
            737373735E342F31343434312F2C2924211B130F0B0A285E737373703736383B
            3D3D3D3B3836312C27211B130F0A0A3570737357373D424545454545423D3834
            2C27211B130C091C5773723C42454B4B4D4D4D4B4B454211342C2721180F0B0A
            3C726C38484B4D51535353514D4B0B003B342C241E130C0A2B6C633D4D4F5658
            5A5A5A58561200004238312921180F0B22635E404F565A5D5F5F5F5D1A000000
            453D362C241B130C1C5E5E42565A5E6163656361110000004842382F271E160C
            1C5E6341585D6167686A6867600C000048453B312921160F22636C3C5A5F6368
            6C6F6C68635B0B004D453D342A21180F2B6C723D585F656A6F736F6A655F5A1D
            4D453D342A2118123C7273574B5F63686C6F6C68635F5A534D453D342A211821
            577373703A5B6167686A6867615D58514B453B3129211835707373735E415E61
            636563615E5A564D4B42382F271E2E5E737373737350475D5F5F5F5D5A564F4B
            453D362C242D50737373737373725041585A5A58564F4D484238312C30507273
            737373737373735E3A4853514D4B48423B3431375E7373737373737373737373
            70573F3C3F3F3D38353C57707373737373737373737373737373726C635D5D63
            6C727373737373737373}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000AA7CBD00B58E
            C100B791C400B893C600BA97C300BE9DC300BF9FC600B5BFC600A7C1D900A7C3
            DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AEC4D800AFC6
            DB00AFC7DD00B5C0C700B7C0C500B6C2CB00B6C3CE00B8C0C600BCC1C200BCC0
            C000BCC2C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6
            D800B0C7DC00B0C8DE00B8C6D000B9C7D200BACAD700B8C8D700B9CBDB00A7C9
            EC00A6CAEC00A8C5E200A9C6E100A9C7E400AAC8E500AAC9E700AFCAE300AFCB
            E600AFCAE500AACAE900ADCEEF00AECEEE00ADCDED00A7CCF100A9CDF100ADCF
            F000AFD1F300B0C9E000B3CCE300B1CCE500B5CDE300B4CEE600B6CEE500B2CE
            E900B1CEEC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2EE00BCD1E400B9D3
            ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5F100BBD7F300BAD7
            F300BBD7F400BED7F000BBD9F600BED8F100BEDAF600C8AEC500C8AECA00CAB0
            C800CBB2CC00CCB3D200CDB6D100D3BFC800D2BDD300C3C3BE00C7C3BB00C8C5
            BD00C8C6BF00D2C8B700D7CAB700D6C9B600D7CDBD00DECCB400DFCDB600DFCE
            B700DFCEB800DECFBA00DFD1BE00E0CFB900DFCFB800E0CFBA00E0D0BA00E0D0
            BB00E0D1BC00E0D1BD00E0D2BE00E0D2BF00E0D3BF00E0D2BD00C0C2C000C3C4
            C000C3C5C300C1C7CA00C2CACE00C1C9CC00C8C6C100C8C8C300C9CAC600CACD
            CD00C3CBD100C0CCD500C1CFDA00C8D0D600CCD1D300CCD4D700C9D3DB00CAD4
            DD00CDD5DA00CFD7DD00D6C4C700D3C0CA00D4C2CC00D3CDC200D7CFC000D8C6
            C700DBCBC500DACBCB00D8C9CF00D4C0D700DACCD000DCCFD600D7D0C300D5D0
            C700D6D4CD00DFD2C300D8D3C900DAD5CC00DFD3D200DCDAD300C3D3E000C5D6
            E600C1D5E900CCD8E300CBDAE900CCDBEA00D0D9E000D2DCE400D4DEE900CEE2
            F600CEE3F700CDE3F800CEE3F900CFE3F800DAE9F900DAEAFA00DCEAF900DCEB
            FA00DCEBFB00E0D3C000E0D4C100E1D4C100E1D4C200E1D5C300E0D4C200E2D6
            C400E2D6C500E2D7C600E2D7C700E1D5C500E1D7C900E2D7C800E3D9CA00E3D9
            CB00E3DACB00E3DACC00E3DBCF00E4DACC00E4DACD00E4DCCF00E1D5DE00E2D9
            D000E5DCD000E5DDD100E5DED300E5DED200E6DFD500E4DED500E2D7E100E7DF
            E100E6E0D600E7E1D700E6E0D500E7E2D900E6E0DA00E7E1DD00E8E2DA00E8E3
            DB00E9E3DC00E9E4DC00E9E4DD00EAE5DF00E8E5DF00E1E2E200E0E4E700E2E6
            EA00E5E7E900E9E3E000EAE3E600EBE7E100EBE6E100EBE6E500ECE9E400EDE9
            E500EDEAE600ECEAE700EDEAE700EFEAEA00EFECE900E2EFFC00E4F0FC00F1EE
            EB00F0EEEB00F1EEEC00F2EFED00F4F2F000F5F3F100F7F6F500F2F8FD00F3F8
            FD00F6FAFE00F9F7F700FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDAF563A3A56AFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8372A0808080B08
            08092AEFFDFFFFFFFFFFFFFFFFFFFF3A0908075F6060636060190B0937FAFFFF
            FFFFFFFFFFFA2A08137962626664646360606019082AF8FDFFFFFFFFFF2A087B
            808F9BB4B37674726967636060082AF8FDFFFFFD37087C819CBCBCBBBAB7B576
            776D676563600837F8FDFFF00925819DC6C6C6C5C0BFBAB7B574706865631908
            B2FAFD3709869FCBCDCDCDCBCAC6C0BCB7B5746D6765630B2AF8FA2A2687CFD4
            D3D2D2CECECDCA5DBFB7B5776D67636009F0AC09879FD5D8DBDBDBD8D3D45A00
            C5BCB7767268656308564E098BCFDCDDE5E5E5DDDC5C0000CAC0BAB5746D6463
            083A3709DFDFE5E9ECECECE95C000000CBC6BFB7767168650B37380ADFDEEAF2
            F3F4F3F25E000000CCCAC0BAB5736A650B37542ADFE2F2F4F6F6F6F4ED5C0000
            CCCBC5BBB5746A64084EAF09E0E2F1F6FBFCFBF6F2E95C00CECDC6BCB6746B64
            08ABFA09A1E0F4F6FCFFFCF6F4ECE695D2CDC6BCB6746B6109F0F8372AE1F2F6
            FBFCFBF6F3ECE5DBD2CDC6BCB674660B2AF8FAEF2AA4E2F4F6F6F6F4F2E9DDD8
            CECBC5BBB56C6209ACF8FAF8372AE0EBF3F4F3F2EAE5DCD3CECAC0BAB5660837
            F0FAFDFAF82A2AE0E2ECECE9E5DCD5D4CDC6BFB76C082AF0F8FDFFFDF8F02A09
            A4DEE5DDDCD5D2CCCAC0BA8F082AAFF8FAFDFFFDFAF8F837092AA6D5D3D4CCCA
            C59A080937B2F8FAFDFFFFFFFDFDF8F0B2372A090909090809092AABF0F8FAFD
            FFFFFFFFFFFDFDFAF8F0EF563737373756EFF0F0FAFDFDFDFFFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000AC7EBF00B187
            C100B48CC500B68EC600B790C500BA95CA00DBBFA300DDBFA300DDBFA400C09F
            C800C09FCA00C5A7CA00C8ACCD00C8ACD400CFB7D400CFB8D600D1BCCE00D0BA
            D100D1BAD700D1B9D900D3BCDA00DCC0A400DCC1A500DDC0A500DCC0A500DCC1
            A700DCC2A600DCC3A800DCC3A900DDC2A800DDC3AA00DEC3A900DEC3AA00DEC3
            AB00DDC4A900DCC4AB00DDC5AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7
            AF00DFC5AC00DEC4AD00DEC6AD00DEC7AE00DEC6AF00DEC8AF00DDC7B000DDC8
            B000DEC9B200DEC9B300DFC8B200DECAB400DECAB500DFCDB700DFCEB700DFCC
            B800DFCEB900E0C5AB00E0C5AC00E0C6AD00E0C6AF00E0C7B000E1C7B100E2C8
            B100E2C8B200E2C9B300E1CBB700E2CAB400E3CAB600E0CDB500E0CDB600E0CE
            B700E0CFB700E2CBB800E1CCB900E0CFB800E1CFB900E1CEB800E0CFBB00E3CC
            B900E3CCB900E2CDBA00E3CDBB00E3CEBB00E0CFBC00E1CEBC00E3CFBD00E3CF
            BE00E4CBB800E5CDB800E5CDB900E4CDBB00E5CEBB00E6CFBB00E4CFBE00E6CF
            BD00E6CFBE00E0D0B900E0D0BA00E1D0BA00E0D1BB00E0D1BC00E0D1BD00E0D0
            BC00E1D1BE00E1D2BD00E0D2BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2
            BD00E3D3BF00E5D0BF00E6D0BD00E6D1BE00E7D1BE00E7D2BF00D7C5D000D9C6
            DF00D9C9D100DACBD400DDCFD700DBCBD800DFD3CF00DFD1E400E1D1C000E1D3
            C000E3D1C100E3D1C000E2D2C100E2D3C000E2D3C100E1D4C100E1D4C200E2D4
            C100E3D5C200E1D5C400E2D5C400E2D6C500E3D6C500E2D6C600E2D7C600E2D7
            C700E3D7C600E5D3C300E4D5C200E5D7C500E4D7C700E4D7C600E3D7C800E6D6
            C900E4D8C700E3D8C800E3D8C900E3D9CB00E3DACB00E3D9CC00E5D8C900E4D9
            CB00E5D9CA00E6D8CA00E7DACB00E4DACC00E5DACC00E4DACD00E4DBCE00E4DB
            CF00E7DBCD00E5DCCF00E6DCCE00E8D3C100E8D2C000E8D4C300E8D4C400E9D5
            C400E9D6C700EAD6C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DC
            CF00E0D4D000E2D7D100E2D7DF00E3D9D000E3DAD500E4DBD700E5DCD000E5DD
            D100E7DDD000E6DDD300E6DED300E7DED300E6DED400E7DFD500E7DFD400E4DA
            DA00E7DFD900E2D5E500E4D9E500E6DBE700E6DEE000E7E0D700E8E0D500EFE1
            D500E8E1D900E8E1D800E8E2DA00E9E3DA00E8E2DC00E9E3DF00EAE4DD00EBE5
            DD00EAE5DF00EBE6DF00F0E1D600F0E2D600F0E2D700F0E3D700F0E3D800F3E8
            DF00E9E1E500EBE6E000EBE6E100EBE6E600EBE4E800ECE5EA00ECE6E900EDE7
            EB00ECE8E400EDE9E500EDE8E700EEEAE700EEEAE600EEEBE800EFEAEB00EFEC
            E900F3E9E000F4EAE100F4EAE200F5EBE300F6EEE800F7EFE900F7EFEA00F7F0
            EA00FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDF4B86161B8F4FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3E060606060606
            060608F9FFFFFFFFFFFFFFFFFFFFFF760606061B23242216150606065AFDFFFF
            FFFFFFFFFFFC07061929333A8698A3954E3B16070607FAFEFFFFFFFFFF070633
            366A9CC1C7D4DAE4E3D99422150607FCFFFFFFFF76063A568AA1C0C7D4E3EBEF
            F1EFEBC53D1A065BFDFFFFFA06338084909EC1CFDAEBF1F9F9F0F1EBC53B0706
            F7FCFD1F0688848891A7C6D4E4EFF9FA797FF9F1E4951A0608FCFD0653966788
            91A7C6D4E4F1F979007FF9F0E4D0320706FBE1069886678891A7C6D4E4EF1400
            007FF0F0E4D2722606DDB406A6706687909EC1CFDA7C00000079F0EBDAD39524
            06AE5C06C665646F8DA1C0C7D4DA0A000014E5E3D4C79A2F06426106D6704D68
            8891A5C1C7D2CE090011D6D4C7C197320646B806D89448506F8D9BA7C1C7BFCA
            0910CFC7C1A7893206B3F406D7A4354D67878D9BA5C0C1C3BEBBC1C0A59B6B32
            06DDFC06B9D847474D68878D91A19EA7A7A79EA1918D4D2606FAFC1708EBA432
            474D676F888D90919191908D886F490607FBFEF906C5EE6532474D50686F8788
            8888876F6F682F06F5FBFEFD5C06DBE4553235484D646667676766676F3A0641
            FAFDFFFDFC0706E3EE95323247474849494D6F8B670606FAFCFEFFFEFDFA0706
            C5DBD9A2714E4E678A9A8F3A0606F9FCFDFFFFFFFFFDFC5E0606AAD4D3C7C4C0
            A56D060641FAFCFDFFFFFFFFFFFFFDFCF826060606060606060607F4FAFCFEFF
            FFFFFFFFFFFFFFFDFCFCFADCAD5A5AADDCFAFAFAFDFEFFFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          DockOrientation = doNoOrient
        end
        object ElSpeedButton25: TElSpeedButton
          Left = 89
          Top = 0
          Width = 29
          Height = 31
          PullDownBtn = mbLeft
          Flat = True
          NormalImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F000000010000000000009E87BD00A994
            C000AA96C300AC98C100AC99C200B2A0C700B5A3C700B3A1C900B7A6CC00BEAF
            C700BFAFC800C0B2CC00C2B4CF00C6B8C900C6B9CB00C4B6D300DFC9AC00DFC9
            AD00DFC9AE00DFCAAF00DFCAB000DFCBB000DFCBB100DFCCB200DFCCB300DFCC
            B400DFCDB400DFCDB500DFCDB600DFCEB700DFCEB800DFCFB800E0C9AD00E0CA
            AD00E0CAAE00E1CCB200E3CDB200E1CEB500E4CEB300E4CFB400E4CFB600E0CF
            B800E0CFB900E0CFBA00E3D0B700E4D0B700E5D1B700E1D0B800E0D0BA00E0D0
            BB00E0D1BB00E1D0BA00E3D1B900E2D1BA00E0D1BC00E0D1BD00E1D1BC00E0D2
            BD00E0D2BE00E0D2BF00E0D3BF00E1D3BF00E3D2BD00E2D3BE00E3D3BF00E4D1
            B900E5D1B900E5D2BA00E5D2BB00E5D3BB00E6D3BB00E5D3BD00E7D4BC00E7D4
            BE00E8D4BD00D1C5CC00D5CACB00D5CACC00D1C6D400D3C8D100D7CED300D3C9
            D800D5CBDB00D7CEDE00D9CFD000DCD3CE00DDD4D000D9D1D800D9D1DF00DCD4
            DD00DDD5E300E0D3C000E0D3C100E1D3C000E0D4C100E1D4C100E1D4C200E1D5
            C300E3D4C100E2D5C300E1D5C400E2D6C400E2D6C500E3D7C500E2D7C600E2D7
            C700E3D7C600E3D7C700E4D6C200E6D5C100E4D7C600E0D5CB00E2D7C800E0D6
            CD00E0D7CE00E7D8C500E7D9C700E3D9C900E3D9CA00E3D9CB00E3DACB00E3DA
            CC00E4D9CA00E5DACB00E7DBCB00E4DACC00E4DACD00E5DBCC00E4DBCE00E6DB
            CC00E4DCCE00E4DCCF00E6DDCF00E8D6C000E9D7C100E8D7C200E9D8C300E9D9
            C400E8D9C500EBD9C400E8DAC800E8DAC900E9DAC800E8DBCA00EADBC900EADB
            CA00E9DCCA00EBDCC900EBDCCB00E9DCCC00E9DDCF00EADDCD00EBDECD00ECDD
            CA00EDDDCA00ECDDCC00EDDECD00EDDFCD00ECDFCF00EDDFCE00EEDFCE00E2DA
            D300E4DCD100E5DCD000E5DDD100E5DED200E5DED300E7DED200E5DFD500E6DF
            D500E4DDD900E8DED100E9DED000E8DFD300EADFD200EEE0CF00E6E0D500E6E0
            D600E7E0D600E7E1D700E7E2D900E7E2DA00E6E1DF00E9E1D700EBE1D600EBE2
            D700EEE1D100EFE2D200EFE2D300EFE3D400E8E2DA00E8E3DB00E9E3DC00E9E4
            DC00E9E4DD00EAE4DD00EAE5DE00EAE5DF00ECE4DB00F0E3D300F0E3D400F0E4
            D400F0E4D500F1E5D600F1E5D700F1E6D900F4EBDF00E6E1E900E9E5E000E9E4
            E300EBE6E100EBE7E100ECE7E000EBE7E800EDE8E200EEE9E300ECE8E500ECE9
            E400EDE9E500EDEAE500EDEAE600EEEAE400EEEAE700EFEBED00EFECE900EFEC
            EA00F4EBE000F4ECE100F5ECE100F5ECE200F5EDE200F7EFE700F0EDEA00F1EE
            EB00F1EEEC00F2EFED00F3F0EF00F7F0E800F7F1E900F7F1EA00F8F2EB00F9F4
            EE00FAF5EF00F4F2F000F5F3F100F7F5F400F7F6F500FAF5F000F8F6F600F9F7
            F700FCFAF700FAF9F900FCFAF800FDFCFA00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFEF0CDAFAFCDF0FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8B101010101010
            10108BFAFFFFFFFFFFFFFFFFFFFFFFBB1010171A1B1A161511101010A0FEFFFF
            FFFFFFFFFFFD4A1029303232312B2925171310101046FDFFFFFFFFFFFF4A103D
            3D5F605F5D3C3A3730291721101048FEFFFFFFFFBB1063656A6B6B6866615F3C
            3A312918131010A0FEFFFFFA10626B7D7E7E7E7D7A6B66615D3A312918121010
            F7FFFF8B227884A4A5A5A583A37E7A6B645F3A31291710108BFEFE1074A4A9A9
            B2B2B2A109A5A37D6B645D3A3025151010FDEE10A4B0B3BEC1C1C1AA0009A6A3
            7D6B613C3729182110E7CD22B0B4C2C5D3D3D3B6000009A6A37A665F3A302515
            10CBBA2CB4C4D3DADEDEDED100000009A47E6B613C31291710A0BA34C2D3DCE8
            EAEBEAD500000009A6A37A665D37291810A0CD24C5DAE8ECF4F4F4DF000008B5
            A9A47D685F3A2A1810CBF010D3DEEAF4F8FBF8DF000BD1BFB2A57E6B603A2A1A
            10E7FE10C1DCEBF4FBFFFBEB0CDCD2C1B2A57E6B603A2A1710FDFF8B47DEEAF4
            F8FBF8F3EADED3C1B2A57E6B603A2A108BFEFFFA10C4E8ECF4F4F4ECE8DAC5BE
            A9A47D685F3A2510F7FEFFFEAF20DDE8EAEBEAE8DCD3C2B3A9A37A665D3610A0
            FEFEFFFFFE4A27D9DEDEDEDAD3C4B4B0A57E6B613C1048FDFEFFFFFFFFFD4A20
            C1D3D3C5C2B4B2A6A37A663A1048FAFEFFFFFFFFFFFFFFBB1043B2BEB3B0A6A3
            7D632210A0FDFFFFFFFFFFFFFFFFFFFFFA8B10102325252110108BF7FEFFFFFF
            FFFFFFFFFFFFFFFFFEFEFEEECDAFAFCDEEFDFEFEFFFFFFFFFFFF}
          DisabledImage.Data = {
            3A040000424D3A04000000000000FA0100002800000018000000180000000100
            08000000000040020000610F0000610F00007100000000000000ABABAC00ACAC
            AC00B4B4B500B5B5B600B7B7B800BDBDBD00BDBDBE00BFBFBF00C1C1C200C6C6
            C700C7C7C700C7C8C800C9C9CA00CBCCCC00CCCCCD00CFCFD000CFD0D000D0D0
            D100D0D1D100D1D1D200D1D2D200D2D2D300D2D3D300D3D3D400D4D4D500D4D5
            D500D5D5D500D5D5D600D5D6D600D6D6D700D7D7D700D7D7D800D7D8D800D8D8
            D800D8D8D900D8D9D900D9D9D900D9D9DA00D9DADA00DADADA00DADADB00DADB
            DB00DBDBDB00DBDBDC00DBDCDC00DCDCDC00DCDCDD00DDDDDD00DDDDDE00DDDE
            DE00DEDEDE00DEDFDF00DFDFDF00DFE0E000E0E0E000E0E0E100E0E1E100E1E1
            E100E1E2E200E2E2E200E2E2E300E2E3E300E3E3E300E4E4E400E4E4E500E4E5
            E500E5E5E500E5E5E600E5E6E600E6E6E600E6E6E700E6E7E700E7E7E700E7E8
            E800E8E8E800E8E9E900E9E9E900E9EAEA00EAEAEA00EAEBEB00EBEBEB00EBEB
            EC00EBECEC00ECECEC00ECEDED00EDEDED00EDEEEE00EEEEEE00EEEFEF00EFEF
            EF00EFF0F000F0F0F000F0F1F100F1F1F100F1F2F200F2F3F300F3F3F300F3F3
            F400F4F4F400F4F5F500F5F5F500F6F6F600F6F7F700F7F7F700F7F8F800F8F8
            F800F9F9F900F9FAFA00FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF007070
            7070707070706F69605A5A60696F70707070707070707070707070706D543A2C
            231F1D20293A546D70707070707070707070705B35261B171715110F0F0F1C33
            5B70707070707070706F4D2E221F1F1F1D1B1815110F0E0F264D6F7070707070
            704D2E272828282725221F1D1815110F0E204D70707070705B322D2F3232322F
            2D2A27221F1B15110F0E265B7070706D353436393B3B3B3936342F2A251F1B15
            110E0E336D707054353B3F424242423F3F3B36322A251F1B150F0E1C54706F3A
            3F4248484A4A4A3F09423F39322A251F18110F0E3A6F693645484A4E50505048
            0009453F39322A221D150F0E2969603B4A4C53555757574E00000A453F362F27
            1F18110F20605B3E4C53575A5C5C5C5200000009423B342A221B150F1C5B5B3F
            53575B5E6062605700000008483F362D251D170F1C5B603F555A5E646567655D
            0000084C4842392F271F17112060693A575C6065696C695E000953504A423B32
            281F181129696F3B555C62676C706C600B5A57504A423B32281F18143A6F7054
            485C6065696C69645E5C57504A423B32281F181F5470706D38585E6465676564
            5E5A554E4842392F271F18336D7070705B3F5B5E6062605E5B57534A483F362D
            251D2C5B70707070704D445A5C5C5C5A57534C48423B342A222B4D7070707070
            706F4D3F55575755534C4A453F362F2A2E4D6F70707070707070705B3845504E
            4A48453F39322F355B70707070707070707070706D543D3A3D3D3B36333A546D
            70707070707070707070707070706F69605A5A60696F7070707070707070}
          MouseInImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000A776BB00B085
            BE00B187C100B38BC100B893C600BA96C600BD9ACA00B5BFC600A7C1D900A7C3
            DE00A7C4DF00A8C0D600AEC1D200AEC3D600A8C3DC00A9C4DE00AEC4D800AFC6
            DB00AFC7DD00B5C0C700B7C0C500B6C2CB00B6C3CE00B8C0C600BCC1C200BCC0
            C000BCC2C400BDC4C700B8C4CD00B3C4D300B1C5D700B2C5D400B1C4D500B1C6
            D800B0C7DC00B0C8DE00B8C6D000B9C7D200B9C9D700B9CBDB00A7C9EC00A6CA
            EC00A8C5E200A9C6E100A9C7E400AAC8E500AAC9E700AFCAE300AFCBE600AFCA
            E500AACAE900ADCEEF00AECEEE00ADCDED00A7CCF100A9CDF100ADCFF000AFD1
            F300B0C9E000B3CCE300B1CCE500B5CDE300B4CEE600B6CEE500B2CEE900B1CE
            EC00B7D0E700B5D0EB00B6D0EA00B4D0ED00B5D2EE00B5D1EE00BCD1E400B9D3
            ED00B9D4EE00BED3E800BED6EF00B2D1F000B7D5F400B9D5F100BBD7F300BAD7
            F300BBD7F400BED7F000BBD9F600BED8F100BEDAF600C3A5C600C5A8CB00C6AA
            CE00C9ADD200CAB1C900C3C3BE00C7C3BB00C8C5BD00C8C6BF00D2C8B700D7CA
            B700D6C9B600D7CDBD00DECCB400DFCDB600DFCEB700DFCEB800DECFBA00DFD1
            BE00E0CFB900DFCFB800E0CFBA00E0D0BA00E0D0BB00E0D1BC00E0D1BD00E0D2
            BE00E0D2BF00E0D3BF00E0D2BD00C0C2C000C3C4C000C3C5C300C1C7CA00C2CA
            CE00C1C9CC00C8C6C100C8C8C300C9CAC600CACDCD00C3CBD100C0CCD500C1CF
            DA00C8D0D600CCD1D300CCD4D700C9D3DB00CAD4DD00CDD5DA00CFD7DD00D3C0
            CB00D7C6CC00D3CDC200D7CFC000D5C3D100D5C2D600D8C5DB00D9CAD200DBCC
            D000DAC8DE00DBCDD800DCCCDE00D7D0C300D5D0C700D6D4CD00D8D3C900DAD5
            CC00DDD1CE00DED2D000DED0DC00DCDAD300C3D3E000C5D6E600C1D5E900CCD8
            E300CBDAE900CCDBEA00D0D9E000D2DCE400D4DEE900DFD0E200CEE2F600CEE3
            F700CDE3F800CEE3F900CFE3F800DAE9F900DAEAFA00DCEAF900DCEBFA00DCEB
            FB00E0D3C000E0D4C100E1D4C100E1D4C200E1D5C300E0D4C200E1D5C400E2D6
            C400E2D7C600E2D7C700E2D6C500E2D7C800E1D6CA00E0D5CD00E1D6CE00E3D9
            CA00E3D9CB00E3DACB00E3D9C900E3DACC00E3DBCF00E4DACD00E4DCCF00E2D9
            D300E5DCD000E5DDD100E4DCD100E5DED300E6DFD500E4DDD900E7DDE800E6E0
            D600E7E1D700E6E0D500E7E2D900E7E1DA00E7E0DF00E8E3DB00E9E3DC00E9E4
            DC00E9E4DD00EAE5DF00E1E2E200E0E4E700E2E6EA00E5E7E900E9E3E300EBE7
            E100EBE6E100E9E5E000ECE6E800ECE9E400EDE9E500EDEAE600EDEAE700EFEA
            ED00EFECE900EFEDEB00E2EFFC00E4F0FC00F1EEEB00F0EEEB00F1EEEC00F2EF
            ED00F3F0EF00F4F2F000F5F3F100F7F5F400F7F6F500F2F8FD00F3F8FD00F6FA
            FE00F9F7F700F8F6F600FAF9F900FDFEFE00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDAE56393956AEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF736290808080B08
            080929ECFDFFFFFFFFFFFFFFFFFFFF390908075C5D5D605D5D190B0936F9FFFF
            FFFFFFFFFFF9290813765F5F636161605D5D5D190829F7FDFFFFFFFFFF290878
            7D8BB7B3B273716F6664605D5D0829F7FDFFFFFD3608797E98BBBBBABCB6B473
            746A6462605D0836F7FDFFED09257E99C7C7C7C5C1BDBAB6B4716D6562601908
            B1F9FD3609839DCBCDCDCDC8CAC7C1BBB8B4746A6462600B29F7F9292684CDD3
            D2D1D1C957CDCAC5BDB8B4746A64605D09EDAB09849DD4D7D9D9D9CF0057CDCA
            C5BBB6736F65626008564E0988CFDADBE1E1E1D6000057CDCAC1BAB4716A6160
            08393609DCDCE1E6E8E8E8E000000057CBC7BDB6736E65620B36370ADCE3E7EF
            F0F1F0E400000006CDCAC1BCB47067620B365429DCDFEAF2F4F4F4E9000057D5
            CECBC5BAB4716761084EAE09DDDFEFF4FBFCFBE90058E0D7D1CDC7BBB5716861
            08AAF9099FDEF1F4FCFFFCF159E4E0D8D1CDC7BBB571685E09EDF73629DDEBF4
            FBFCFBF3F0E8E1D9D1CDC7BBB571630B29F7F9EC09A3DFF2F4F4F4F2EBE6DBD7
            CECBC5BAB4695F09ABF7F9F73629DDE8F0F1F0EBE7E1DAD2CECAC1BCB4630836
            EDF9FDF9F72929DDDFE8E8E6E1DAD4D3CDC7BDB6690829EDF7FDFFFDF7ED2909
            A2E0E1DBDAD4D1CDCAC1BA8B0829AEF7F9FDFFFDF9F7F7360929A4D4D2D3CDCA
            C597080936B1F7F9FDFFFFFFFDFDF7EDB136290909090908090929AAEDF7F9FD
            FFFFFFFFFFFDFDF9F7EDEC563636363656ECEDEDF9FDFDFDFFFF}
          PressedImage.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000610F0000610F00000001000000000000AB7EBE00AC7F
            C000AE83BF00B187C200B790C800B892C300BE9CCC00DBBFA300DDBFA300DDBF
            A400C2A3C800C2A2CE00C3A5CA00C3A6CB00C5A7C800C5A8CB00C9AECF00C9AF
            D000CBB1CA00CDB5C900D3BBDC00D4BDDC00DCC0A400DDC0A500DCC1A500DCC1
            A700DCC2A600DCC3A800DCC3A900DDC2A800DDC3AA00DEC3A900DEC3AA00DEC3
            AB00DDC4A900DCC4AB00DDC5AB00DEC4AA00DFC4AA00DDC5AD00DDC7AE00DDC7
            AF00DFC5AC00DEC4AD00DEC6AD00DEC7AE00DEC6AF00DEC8AF00DDC7B000DDC8
            B000DEC9B200DEC9B300DFC8B200DECAB500DFCDB700DFCEB700DFCCB800DFCE
            B900E0C5AB00E0C5AC00E0C6AD00E0C6AF00E0C7B000E1C7B100E2C8B100E2C8
            B200E2C9B300E1CBB700E2CAB400E3CAB600E0CDB500E0CDB600E0CEB700E0CF
            B700E2CBB800E1CCB900E0CFB800E1CFB900E1CEB800E0CFBB00E3CCB900E3CC
            B900E2CDBA00E3CDBB00E3CEBB00E0CFBC00E1CEBC00E3CFBD00E3CFBE00E4CB
            B800E5CDB800E5CDB900E4CDBB00E5CEBB00E6CFBB00E4CFBE00E6CFBD00E6CF
            BE00E0D0B900E0D0BA00E1D0BA00E0D1BB00E0D1BC00E0D1BD00E0D0BC00E1D1
            BE00E1D2BD00E0D2BE00E0D2BF00E1D2BE00E1D3BE00E2D1BC00E2D2BD00E3D3
            BF00E5D0BF00E6D0BD00E6D1BE00E7D1BE00E7D2BF00D9C9CA00D9C9CF00DBCC
            CC00DCCDCD00D4C0D600D6C3DB00D9C9D200DBCBD200DBCDD700DCCDD500DCCF
            D700DDCFD800DED0C900DFD1E100E1D1C000E1D3C000E3D1C100E3D1C000E2D2
            C100E2D3C000E2D3C100E1D4C100E1D4C200E2D4C100E3D5C200E1D5C400E1D4
            C600E2D5C400E2D6C500E3D6C500E2D6C600E2D7C600E2D7C700E3D7C600E5D3
            C300E4D5C200E5D7C500E4D7C700E4D7C600E1D6C900E3D7C800E2D7CB00E6D6
            C900E4D8C700E3D8C800E3D8C900E3D9CB00E3DACB00E5D8C900E5D9CB00E6D8
            CA00E7DACB00E4DACC00E4DACD00E5DACC00E4DBCE00E4DBCF00E7DBCD00E5DC
            CF00E6DCCE00E8D3C100E8D2C000E8D4C300E8D4C400E9D5C400E9D6C700EAD6
            C500EAD6C600EAD7C700EAD7C800EBD8C900EBD9CB00E8DCCF00E2D7D100E0D5
            D900E0D4DE00E5DCD000E5DDD100E7DDD000E6DDD300E6DED300E7DED300E6DE
            D400E7DFD500E3D9DE00E4DBD800E4DBDA00E6DFDD00E7DEE400E8DDE900E9DF
            EA00E7E0D700E7E0D900E8E0D500EFE1D500E8E1D900E8E1D800E8E2DA00E9E3
            DA00EAE4DD00EBE5DD00EAE5DF00F0E1D600F0E2D600F0E2D700F0E3D700F0E3
            D800F3E8DF00EBE6E000EBE6E300ECE7E300EBE1ED00EDE9E500EEEAE700EEE9
            E800EEEBE800EFEAEB00EFECE900F3E9E000F4EAE100F4EAE200F5EBE300F0EC
            EC00F2EFED00F6EEE800F7EFE900F7EFEA00F3F0EF00F7F0EA00F4F1F300F6F4
            F300FBF7F500FBF8F500FCFAF800FEFEFD00FEFEFE00FFFFFF00FFFFFFFFFFFF
            FFFFFDEFBE6060BEEFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3D070707070707
            070709F7FFFFFFFFFFFFFFFFFFFFFF750707071B232422181607070759FDFFFF
            FFFFFFFFFFFC0807192933398B9FA99B4D3A18080708FAFEFFFFFFFFFF080733
            3569A4C4CAD8DCE3E3DB9A22160708FCFFFFFFFF750739558FA5C3CAD8E3E7EA
            ECEAE7C83C1A075AFDFFFFF90733858996A6C4D2DCCBF1F6F6F6F1E7C83A0807
            F4FCFD2607996D8D97ACC9D8E3067CF9FCF9F6EAE39B1A0709FCFD07569C668D
            97ACC9D8E306007CFFFCF6ECE3D4320807FBE2079F8B668D97ACC9D8E3060000
            7CF9F6EAE3D8712607DEBA07A869658C96A6C4D2DC0600000084F1E7DCD29B24
            07B45B07CA64636E93A5C3CAD605000006E9E7E3D8CAA22D07416007D86F4C67
            8D97ABC4CA050006CEDCDAD8CAC49D320745BE07DC9A474F6E93A3ACC4050ACC
            D3D6D2CAC4AC8E3207B9EF07DAB0464C668C93A3AB77C3C6C6C9C4C3ABA36A32
            07DEFC07B0DA46464C678C9397A5A5ACACACA6A597934C2607FAFC1709E7A932
            464C666E8D939697979796938D6E480708FBFEF707D4E76F32464C4F676E8C8D
            8D8D8C6E6E672F07F0FBFEFD5B07DBE5543246474C636566666665666E390740
            FAFDFFFDFC0807E3E79B323246464748484C6E90660707FAFCFEFFFFFDFA0807
            C8E3D9A7704D4D668FA295390707F7FCFDFFFFFFFFFDFC5E0707B0D8D7CAC7C3
            AB6C070740FAFCFDFFFFFFFFFFFFFDFCF526070707070707070708EFFAFCFEFF
            FFFFFFFFFFFFFFFDFCFCFADDB35959B3DDF9FAFAFDFEFFFFFFFF}
          AutoSize = False
          TransparentColor = clBlack
          Align = alLeft
          Color = clBtnFace
          ParentColor = False
          DockOrientation = doNoOrient
        end
        object Panel21: TPanel
          Left = 177
          Top = 0
          Width = 9
          Height = 31
          Align = alLeft
          BevelOuter = bvNone
          Color = clWindow
          TabOrder = 0
        end
      end
      object dxgProductBudget: TdxDBGrid
        Left = 0
        Top = 324
        Width = 1183
        Height = 291
        Bands = <
          item
          end>
        DefaultLayout = True
        KeyField = 'ProductCode_str'
        ShowGroupPanel = True
        ShowSummaryFooter = True
        SummaryGroups = <
          item
            DefaultGroup = True
            SummaryItems = <
              item
                ColumnName = 'dxgProductBudgetItemBugdet_mon'
                SummaryField = 'ItemBugdet_mon'
                SummaryType = cstSum
              end
              item
                SummaryField = 'ReviewedItemBudget_mon'
                SummaryType = cstSum
              end>
            Name = 'dxDBGrid1SummaryGroup2'
          end>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        BandColor = clInfoBk
        BandFont.Charset = ANSI_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = DsProductPackSize
        Filter.Active = True
        Filter.CaseInsensitive = True
        Filter.DropDownCount = 16
        Filter.Criteria = {00000000}
        GroupPanelColor = 16311512
        GroupPanelFontColor = clActiveCaption
        HeaderColor = clInfoBk
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clBlack
        HeaderFont.Height = -12
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToRegistry, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoHeaderPanelHeight, edgoAutoWidth, edgoBandHeaderWidth, edgoInvertSelect, edgoUseBitmap]
        PreviewFont.Charset = ANSI_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        RegistryPath = '\Software\RxSolution\1.2\Grids\Budget\dxgProductBudget'
        ShowBands = True
        object dxgProductBudgetProductCode_str: TdxDBGridColumn
          Caption = 'Code'
          DisableEditor = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Width = 53
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ProductCode_str'
          DisableFilter = True
        end
        object dxgProductBudgetDescription: TdxDBGridColumn
          Caption = 'Description'
          DisableEditor = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Sorted = csDown
          Width = 470
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Description_str'
        end
        object dxgProductBudgetInstLevelOfUse_str: TdxDBGridColumn
          Alignment = taCenter
          Caption = 'Level'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 98
          BandIndex = 0
          RowIndex = 0
          FieldName = 'InstLevelOfUse_str'
        end
        object dxgProductBudgetATC_str: TdxDBGridColumn
          Caption = 'ATC'
          DisableEditor = True
          Width = 48
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ATC_str'
        end
        object dxgProductBudgetVEN_str: TdxDBGridColumn
          Caption = 'VEN'
          DisableEditor = True
          Width = 42
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VEN_str'
        end
        object dxgProductBudgetItemBugdet_mon: TdxDBGridCurrencyColumn
          Caption = 'Budget'
          DisableEditor = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 42
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemBugdet_mon'
          Nullable = False
          DisableFilter = True
        end
        object dxgProductBudgetReviewedItemBudget_mon: TdxDBGridCurrencyColumn
          Caption = 'Reviewed'
          Font.Charset = ANSI_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderAlignment = taRightJustify
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ReviewedItemBudget_mon'
          Nullable = False
          DisableFilter = True
        end
        object dxgProductBudgetGroup1_str: TdxDBGridColumn
          Caption = 'Group 1'
          DisableEditor = True
          Width = 70
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Group1_str'
        end
        object dxgProductBudgetGroup2_str: TdxDBGridColumn
          Caption = 'Group 2'
          DisableEditor = True
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Group2_str'
        end
        object dxgProductBudgetICN_str: TdxDBGridColumn
          Caption = 'ICN'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ICN_str'
        end
        object dxgProductBudgetECN_str: TdxDBGridColumn
          Caption = 'ECN'
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ECN_str'
        end
      end
    end
    object RzBmpButton1: TRzBmpButton
      Left = 17
      Top = 14
      Width = 32
      Height = 32
      Bitmaps.TransparentColor = clWhite
      Bitmaps.Up.Data = {
        42080000424D4208000000000000420000002800000020000000200000000100
        1000030000000008000000000000000000000000000000000000007C0000E003
        00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F3146
        31463146FF7FFF7FFF7F314631463146FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10422925
        29256B2D3146CE39CE39AD3529254A29CE39FF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE39292529256B2D
        C618E71C082129250821903196528C31E71C29258C31FF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F6B2D0821524ADE7B1863
        9452AD352A259031584A574A5B6BFF7F9C731042082129256B2DFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE3908211042BD77DE7BBD77F75E
        D65AD65AB7561542AF35AD35EF3D734E5A6BDE7BDE7B94524A2908216B2D1042
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FCE392925AD355A6BDE7BDE7BBD77BD77F75E
        B556D65AB556E71C4A296B2DAD35EF3D3146734E1863BD77FF7F3967CE390821
        3146FF7FFF7FFF7FFF7FFF7FCE396B2D1863FF7FDE7BDE7BBD77BD779C73D65A
        B556B556D65A3146AD354A296B2DAD35EF3D3146734EB55618639C73FF7FAD35
        3146FF7FFF7FFF7FFF7F734E9452FF7FFF7FDE7BDE7BBD77BD779C739C73B556
        9452B556B556D65AD65AD65A734E1042CE39EF3D3146734E94523146CE392925
        3146FF7FFF7FFF7FFF7F734E5A6BFF7FDE7BDE7BBD77BD779C73D65ACE398C31
        EF3D31469452B556D65AD65AD65AF75ED65A9452524A2925C618F75EEF3D2925
        3146FF7FFF7FFF7FFF7F734E3967DE7BDE7BBD779C739452CE39524A1863B556
        31461042AD35CE3931469452D65AD65AF75EF75EF75E18639452396731462925
        3146FF7FFF7FFF7FFF7F734E3967DE7B9C73B556CE39524A39677B6F5A6BD65A
        734E94529452734E1042CE39CE3931469452F75EF75EF75E8E42AB3ACE392925
        3146FF7FFF7FFF7FFF7F1042D65A734EAD3594527B6F7B6F7B6F5A6B5A6BBD77
        9C733967F75EB5569452B55694523146CE39CE393146B5566D3EEA3E8C312925
        3146FF7FFF7FFF7FFF7FEF3DCE39F75E9C739C737B6F7B6F5A6B5A6B7B6FBD77
        9C73BD77BD77BD777B6F1863D65AB556D65AB556524A10428C318C31EF3D2925
        3146FF7FFF7FFF7FFF7FEF3D5A6B9C739C737B6F7B6F5A6B5A6B5A6BDE7BF75E
        F75ED65AF75E5A6B9C739C739C739C7339671863D65AD65AD65A9452CE394A29
        3146FF7FFF7FFF7FFF7FEF3D9C739C737B6F7B6F5A6B5A6B3967BD775A6B1863
        BD77BD77BD775A6BF75ED65AF75E39679C739C739C737B6F3967186331464A29
        3146FF7FFF7FFF7FFF7F31467B6F7B6F7B6F5A6B5A6B5A6BBD775A6BF75EDE7B
        DE7BBD77BD77BD77BD77BD777B6F3967D65AD65AF75E39679C737B6F3146AD35
        FF7FFF7FFF7FFF7FFF7FFF7F31467B6F5A6B5A6B5A6B7B6FD65A734E5A6BDE7B
        DE7BDE7BBD77BD77BD77BD77BD77BD779C739C737B6FF75EB5565A6B8C31FF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FEF3D524A524AB556734ED65AB556524A3146
        524A9452F75E5A6BBD77BD77BD77BD77BD779C739C73D65A3967EF3DFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EBD77BD77BD77D65AB556D65A
        F75EF75EB556734E3146734E945218639C737B6FD65A1863EF3DFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F734EDE7BFF7FFF7F7B6F18631863
        D65AF75EF75E186339675A6B5A6B9452B556D65A94521042FF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F524AD75ADC56DF52DF521F5F5F67
        9F6F9E6FBD779C735A6B5A6B5A6B9452AD35B556FF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FC4E5F575F573F573F53
        1F531F4FFF4E3F575F5F5E633A671042FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F36465F5B7F5B7F5B7F5B7F5B
        7F5B7F5B7F5B7F5B5F5BFC4E6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153E7F5F7F5F7F5F7F5F7F5F
        7F5F7F5F7F5F7F5F7F5F994A6D2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F57469F679F679F679F679F67
        9F679F679F679F679F675746EF3DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746DB569F679F679F679F679F67
        9F679F679F679F679F67B235FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F35467E67BF6FBF6FBF6FBF6FBF6F
        BF6FBF6FBF6FBF6F7E676E2DFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F153EDF73DF73DF73DF73DF73DF73
        DF73DF73DF73DF73FB5ACF39FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5746FB5EDF77DF77DF77DF77DF77DF77
        DF77DF77DF77DF771442FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF43DFF7BFF7BFF7BFF7BFF7BFF7BFF7B
        FF7BFF7BFF7B9E6FD139FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7F36469D6FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7F554AFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FD95AD95AD95AD95AD95AD95AD95AD95AD95A
        D95AD95AB856FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7F}
      Color = clBtnFace
      TabOrder = 1
      OnClick = RzBmpButton1Click
    end
  end
  object dsTotalBudgetPrint: TDataSource
    DataSet = BudgetDM.tblBudgetProducts
    Left = 504
    Top = 16
  end
  object dsLevelOfUseBudget: TDataSource
    DataSet = BudgetDM.tblBudgetLevelOfUse
    Left = 768
    Top = 168
  end
  object dsVENBudget: TDataSource
    DataSet = BudgetDM.tblBudgetVEN
    Left = 800
    Top = 168
  end
  object DsProductPackSize: TDataSource
    DataSet = BudgetDM.tblBudgetProducts
    Left = 736
    Top = 136
  end
  object dsTenderInflation: TDataSource
    DataSet = BudgetDM.stpBudgetTenderInflation
    Left = 872
    Top = 104
  end
  object dsTotalBudgetEDL: TDataSource
    DataSet = BudgetDM.tblBudgetTotalEDL
    Left = 768
    Top = 136
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsTotalBudgetPrint
    UserName = 'DBPipeline1'
    Left = 544
    Top = 15
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'ProductCode_str'
      FieldName = 'ProductCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'ReviewedItemBudget_mon'
      FieldName = 'ReviewedItemBudget_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'ItemBugdet_mon'
      FieldName = 'ItemBugdet_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'GenericName_str'
      FieldName = 'GenericName_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'Strength_str'
      FieldName = 'Strength_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'Form_str'
      FieldName = 'Form_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'ATC_str'
      FieldName = 'ATC_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'InstLevelOfUse_str'
      FieldName = 'InstLevelOfUse_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'VEN_str'
      FieldName = 'VEN_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'ProvincialEDL_bol'
      FieldName = 'ProvincialEDL_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'PackSize_str'
      FieldName = 'PackSize_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'PackSizeUnit_str'
      FieldName = 'PackSizeUnit_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'PackSizeCode_str'
      FieldName = 'PackSizeCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'Description_str'
      FieldName = 'Description_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'Group1_str'
      FieldName = 'Group1_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'Group2_str'
      FieldName = 'Group2_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
  end
  object ppReport1: TppReport
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter (8.5 x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 584
    Top = 15
    Version = '11.03'
    mmColumnWidth = 0
    object ppTitleBand3: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Budget'
        Color = clBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Microsoft Sans Serif'
        Font.Size = 22
        Font.Style = [fsBold]
        mmHeight = 8996
        mmLeft = 0
        mmTop = 0
        mmWidth = 202936
        BandType = 1
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 20638
      mmPrintPosition = 0
      object ppSubReport3: TppSubReport
        UserName = 'SubReport3'
        ExpandAll = False
        KeepTogether = True
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        PrintBehavior = pbSection
        ShiftRelativeTo = ppSubReport2
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 12700
        mmWidth = 203300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline1
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Letter (8.5 x 11")'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '11.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline1'
          object ppTitleBand4: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 20638
            mmPrintPosition = 0
            object ppLabel12: TppLabel
              UserName = 'Label12'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Budget - [Institutional EDL]'
              Color = clBlue
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 20
              Font.Style = [fsBold]
              mmHeight = 8326
              mmLeft = 0
              mmTop = 0
              mmWidth = 203200
              BandType = 1
            end
            object ppLabel16: TppLabel
              UserName = 'Label16'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Code'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 12435
              mmWidth = 17000
              BandType = 1
            end
            object ppLine5: TppLine
              UserName = 'Line5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.5
              mmHeight = 2117
              mmLeft = 0
              mmTop = 18521
              mmWidth = 202936
              BandType = 1
            end
            object ppLabel19: TppLabel
              UserName = 'Label19'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Product'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 17000
              mmTop = 12435
              mmWidth = 137000
              BandType = 1
            end
            object ppLabel17: TppLabel
              UserName = 'Label17'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Reviewed'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 154000
              mmTop = 12435
              mmWidth = 25000
              BandType = 1
            end
            object ppLabel18: TppLabel
              UserName = 'Label18'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Budget'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 178000
              mmTop = 12435
              mmWidth = 25000
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppLine6: TppLine
              UserName = 'Line6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 794
              mmLeft = 0
              mmTop = 3704
              mmWidth = 202936
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'ProductCode_str'
              DataPipeline = ppDBPipeline1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 3246
              mmLeft = 0
              mmTop = 0
              mmWidth = 17000
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Description_str'
              DataPipeline = ppDBPipeline1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 3246
              mmLeft = 17000
              mmTop = 0
              mmWidth = 137000
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'ReviewedItemBudget_mon'
              DataPipeline = ppDBPipeline1
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 3246
              mmLeft = 154000
              mmTop = 0
              mmWidth = 25000
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'ItemBugdet_mon'
              DataPipeline = ppDBPipeline1
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 3246
              mmLeft = 178000
              mmTop = 0
              mmWidth = 25000
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
          end
        end
      end
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 6879
        mmWidth = 203300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline3
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Letter (8.5 x 11")'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '11.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline3'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 29633
            mmPrintPosition = 0
            object ppLabel5: TppLabel
              UserName = 'Label5'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Institution Level Of Use'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 22490
              mmWidth = 127000
              BandType = 1
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Budget'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 165100
              mmTop = 22490
              mmWidth = 38100
              BandType = 1
            end
            object ppLabel7: TppLabel
              UserName = 'Label7'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Reviewed'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 127000
              mmTop = 22490
              mmWidth = 38100
              BandType = 1
            end
            object ppLabel15: TppLabel
              UserName = 'Label15'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Budget - [Level Of Use]'
              Color = clBlue
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 20
              Font.Style = [fsBold]
              mmHeight = 8326
              mmLeft = 0
              mmTop = 11113
              mmWidth = 203200
              BandType = 1
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.5
              mmHeight = 2117
              mmLeft = 0
              mmTop = 27516
              mmWidth = 202936
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'InstLevelOfUse_str'
              DataPipeline = ppDBPipeline3
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 4763
              mmLeft = 0
              mmTop = 0
              mmWidth = 127000
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'LevelReviewedBudget_mon'
              DataPipeline = ppDBPipeline3
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 4763
              mmLeft = 127000
              mmTop = 0
              mmWidth = 38100
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'LevelBudget_mon'
              DataPipeline = ppDBPipeline3
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 4763
              mmLeft = 165100
              mmTop = 0
              mmWidth = 38100
              BandType = 4
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Pen.Color = clGray
              Weight = 0.75
              mmHeight = 1323
              mmLeft = 0
              mmTop = 5292
              mmWidth = 202936
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'LevelBudget_mon'
              DataPipeline = ppDBPipeline3
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 4233
              mmLeft = 165100
              mmTop = 0
              mmWidth = 38100
              BandType = 7
            end
            object ppDBCalc4: TppDBCalc
              UserName = 'DBCalc4'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'LevelReviewedBudget_mon'
              DataPipeline = ppDBPipeline3
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline3'
              mmHeight = 4233
              mmLeft = 127000
              mmTop = 0
              mmWidth = 38100
              BandType = 7
            end
          end
        end
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 1323
        mmWidth = 203300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Letter (8.5 x 11")'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '11.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 17992
            mmPrintPosition = 0
            object ppLabel1: TppLabel
              UserName = 'Label1'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Budget - [VEN]'
              Color = clBlue
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 20
              Font.Style = [fsBold]
              mmHeight = 8326
              mmLeft = 0
              mmTop = 0
              mmWidth = 203200
              BandType = 1
            end
            object ppLabel2: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Budget'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 127265
              mmTop = 11113
              mmWidth = 38100
              BandType = 1
            end
            object ppLabel3: TppLabel
              UserName = 'Label3'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Reviewed'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 165365
              mmTop = 11113
              mmWidth = 38100
              BandType = 1
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'V,E or N'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 11113
              mmWidth = 127000
              BandType = 1
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.5
              mmHeight = 2117
              mmLeft = 0
              mmTop = 15875
              mmWidth = 202936
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VEN_str'
              DataPipeline = ppDBPipeline2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 4233
              mmLeft = 0
              mmTop = 0
              mmWidth = 6615
              BandType = 4
            end
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VENBuget_mon'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 4233
              mmLeft = 127000
              mmTop = 0
              mmWidth = 38100
              BandType = 4
            end
            object ppDBText3: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VENReviewedBuget_mon'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 4233
              mmLeft = 165100
              mmTop = 0
              mmWidth = 38100
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 9790
            mmPrintPosition = 0
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VENReviewedBuget_mon'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 4233
              mmLeft = 166159
              mmTop = 5556
              mmWidth = 37571
              BandType = 7
            end
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VENBuget_mon'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 4233
              mmLeft = 127529
              mmTop = 5556
              mmWidth = 37571
              BandType = 7
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.5
              mmHeight = 2117
              mmLeft = 0
              mmTop = 2381
              mmWidth = 202936
              BandType = 7
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Summary'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Microsoft Sans Serif'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 3440
              mmWidth = 16933
              BandType = 7
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dxEditStyleController1: TdxEditStyleController
    BorderStyle = xbsNone
    ButtonStyle = btsFlat
    Left = 416
    Top = 16
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = dsVENBudgetPrint
    UserName = 'DBPipeline2'
    Left = 544
    Top = 48
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = dsLoUBudgetPrint
    UserName = 'DBPipeline3'
    Left = 648
    Top = 16
    object ppDBPipeline3ppField1: TppField
      FieldAlias = 'InstLevelOfUse_str'
      FieldName = 'InstLevelOfUse_str'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline3ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'LevelBudget_mon'
      FieldName = 'LevelBudget_mon'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 1
    end
    object ppDBPipeline3ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'LevelReviewedBudget_mon'
      FieldName = 'LevelReviewedBudget_mon'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 2
    end
  end
  object dsVENBudgetPrint: TDataSource
    DataSet = BudgetDM.tblBudgetVEN
    Left = 504
    Top = 48
  end
  object dsLoUBudgetPrint: TDataSource
    DataSet = BudgetDM.tblBudgetLevelOfUse
    Left = 696
    Top = 16
  end
  object ImageList1: TImageList
    Height = 32
    Width = 32
    Left = 208
    Top = 136
    Bitmap = {
      494C010101000400040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C008C8C8C008C8C8C000000000000000000000000008C8C8C008C8C
      8C008C8C8C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84004A4A4A004A4A4A005A5A5A008C8C8C0073737300737373006B6B6B004A4A
      4A00525252007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000737373004A4A4A004A4A
      4A005A5A5A003131310039393900424242004A4A4A004242420084636300B5A5
      A50063636300393939004A4A4A00636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A5A5A004242420094949400F7F7
      F700C6C6C600A5A5A5006B6B6B00524A4A0084636300C6949400BD949400DED6
      D600FFFFFF00E7E7E70084848400424242004A4A4A005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000737373004242420084848400EFEFEF00F7F7F700EFEF
      EF00BDBDBD00B5B5B500B5B5B500BDADAD00AD8484007B6B6B006B6B6B007B7B
      7B009C9C9C00D6D6D600F7F7F700F7F7F700A5A5A50052525200424242005A5A
      5A00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000737373004A4A4A006B6B6B00D6D6D600F7F7F700F7F7F700EFEFEF00EFEF
      EF00BDBDBD00ADADAD00B5B5B500ADADAD0039393900525252005A5A5A006B6B
      6B007B7B7B008C8C8C009C9C9C00C6C6C600EFEFEF00FFFFFF00CECECE007373
      7300424242008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007373
      73005A5A5A00C6C6C600FFFFFF00F7F7F700F7F7F700EFEFEF00EFEFEF00E7E7
      E700B5B5B500ADADAD00ADADAD00B5B5B5008C8C8C006B6B6B00525252005A5A
      5A006B6B6B007B7B7B008C8C8C009C9C9C00ADADAD00C6C6C600E7E7E700FFFF
      FF006B6B6B008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C00A5A5
      A500FFFFFF00FFFFFF00F7F7F700F7F7F700EFEFEF00EFEFEF00E7E7E700E7E7
      E700ADADAD00A5A5A500ADADAD00ADADAD00B5B5B500B5B5B500B5B5B5009C9C
      9C0084848400737373007B7B7B008C8C8C009C9C9C00A5A5A5008C8C8C007373
      73004A4A4A008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C00D6D6
      D600FFFFFF00F7F7F700F7F7F700EFEFEF00EFEFEF00E7E7E700B5B5B5007373
      7300636363007B7B7B008C8C8C00A5A5A500ADADAD00B5B5B500B5B5B500B5B5
      B500BDBDBD00B5B5B500A5A5A500949494004A4A4A0031313100BDBDBD007B7B
      7B004A4A4A008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C00CECE
      CE00F7F7F700F7F7F700EFEFEF00E7E7E700A5A5A5007373730094949400C6C6
      C600ADADAD008C8C8C00848484006B6B6B00737373008C8C8C00A5A5A500B5B5
      B500B5B5B500BDBDBD00BDBDBD00BDBDBD00C6C6C600A5A5A500CECECE008C8C
      8C004A4A4A008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C00CECE
      CE00F7F7F700E7E7E700ADADAD007373730094949400CECECE00DEDEDE00D6D6
      D600B5B5B5009C9C9C00A5A5A500A5A5A5009C9C9C0084848400737373007373
      73008C8C8C00A5A5A500BDBDBD00BDBDBD00BDBDBD0073A584005AAD73007373
      73004A4A4A008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400B5B5
      B5009C9C9C006B6B6B00A5A5A500DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6
      D600EFEFEF00E7E7E700CECECE00BDBDBD00ADADAD00A5A5A500ADADAD00A5A5
      A5008C8C8C0073737300737373008C8C8C00ADADAD006B9C7B0052BD7B006363
      63004A4A4A008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007373
      7300BDBDBD00E7E7E700E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600DEDE
      DE00EFEFEF00E7E7E700EFEFEF00EFEFEF00EFEFEF00DEDEDE00C6C6C600B5B5
      B500ADADAD00B5B5B500ADADAD00949494008484840063636300636363007B7B
      7B004A4A4A008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00D6D6
      D600E7E7E700E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600F7F7
      F700BDBDBD00BDBDBD00B5B5B500BDBDBD00D6D6D600E7E7E700E7E7E700E7E7
      E700E7E7E700CECECE00C6C6C600B5B5B500B5B5B500B5B5B500A5A5A5007373
      7300525252008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00E7E7
      E700E7E7E700DEDEDE00DEDEDE00D6D6D600D6D6D600CECECE00EFEFEF00D6D6
      D600C6C6C600EFEFEF00EFEFEF00EFEFEF00D6D6D600BDBDBD00B5B5B500BDBD
      BD00CECECE00E7E7E700E7E7E700E7E7E700DEDEDE00CECECE00C6C6C6008C8C
      8C00525252008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C00DEDE
      DE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6D600EFEFEF00D6D6D600BDBD
      BD00F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00DEDE
      DE00CECECE00B5B5B500B5B5B500BDBDBD00CECECE00E7E7E700DEDEDE008C8C
      8C006B6B6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C00DEDEDE00D6D6D600D6D6D600D6D6D600DEDEDE00B5B5B5009C9C9C00D6D6
      D600F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00E7E7E700E7E7E700DEDEDE00BDBDBD00ADADAD00D6D6D6006363
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B009494940094949400ADADAD009C9C9C00B5B5B500ADADAD009494
      94008C8C8C0094949400A5A5A500BDBDBD00D6D6D600EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00E7E7E700E7E7E700B5B5B500CECECE007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00EFEFEF00EFEFEF00EFEFEF00B5B5B500ADAD
      AD00B5B5B500BDBDBD00BDBDBD00ADADAD009C9C9C008C8C8C009C9C9C00A5A5
      A500C6C6C600E7E7E700DEDEDE00B5B5B500C6C6C6007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00F7F7F700FFFFFF00FFFFFF00DEDEDE00C6C6
      C600C6C6C600B5B5B500BDBDBD00BDBDBD00C6C6C600CECECE00D6D6D600D6D6
      D600A5A5A500ADADAD00B5B5B500A5A5A5008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094949400BDB5B500E7B5AD00FFB5A500FFB5A500FFC6
      BD00FFD6CE00FFE7DE00F7E7DE00EFEFEF00E7E7E700D6D6D600D6D6D600D6D6
      D600A5A5A5006B6B6B00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BD948C00E7BD9C00FFD6AD00FFD6AD00FFCE
      AD00FFCEA500FFC6A500FFC69C00FFBD9C00FFCEAD00FFD6BD00F7D6C600D6CE
      CE00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B58C8C00FFD6B500FFDEB500FFDEB500FFDE
      B500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFD6B500E7BD9C006B5A
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD847B00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD00CEA594006B5A
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BD948C00FFE7CE00FFE7CE00FFE7CE00FFE7
      CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00BD948C007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD948C00DEB5AD00FFE7CE00FFE7CE00FFE7CE00FFE7
      CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00946B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD8C8C00F7DECE00FFEFDE00FFEFDE00FFEFDE00FFEF
      DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00F7DECE00735A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD847B00FFF7E700FFF7E700FFF7E700FFF7E700FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700DEBDB5007B7373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD948C00DEBDBD00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00A5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A57B7B00FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
      F700FFFFF700FFFFF700FFFFF700FFFFF700F7E7DE008C737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B58C8C00EFE7DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AD94940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CEB5B500CEB5B500CEB5B500CEB5B500CEB5B500CEB5B500CEB5B500CEB5
      B500CEB5B500CEB5B500CEB5B500C6ADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFF1C7FF000000000000000000000000
      FFE003FF000000000000000000000000FF8000FF000000000000000000000000
      FF00003F000000000000000000000000FC000007000000000000000000000000
      F0000003000000000000000000000000E0000003000000000000000000000000
      C0000003000000000000000000000000C0000003000000000000000000000000
      C0000003000000000000000000000000C0000003000000000000000000000000
      C0000003000000000000000000000000C0000003000000000000000000000000
      C0000003000000000000000000000000C0000003000000000000000000000000
      C0000007000000000000000000000000E000000F000000000000000000000000
      F000001F000000000000000000000000FC00003F000000000000000000000000
      FC00007F000000000000000000000000FC0001FF000000000000000000000000
      FE0007FF000000000000000000000000FE000FFF000000000000000000000000
      FE000FFF000000000000000000000000FE000FFF000000000000000000000000
      FC001FFF000000000000000000000000FC001FFF000000000000000000000000
      FC001FFF000000000000000000000000F8003FFF000000000000000000000000
      F8003FFF000000000000000000000000F0007FFF000000000000000000000000
      F000FFFF00000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Left = 384
    Top = 16
    object atnPrintBudget: TAction
    end
  end
end
