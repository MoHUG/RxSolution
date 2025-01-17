object BinLocationSelectFrm: TBinLocationSelectFrm
  Left = 507
  Top = 276
  Width = 731
  Height = 594
  Caption = 'Bin Locations'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 120
  TextHeight = 16
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 504
    Width = 713
    Height = 45
    CaptionOk = 'OK'
    CaptionCancel = 'Cancel'
    CaptionHelp = '&Help'
    TabOrder = 0
  end
  object dxgBinLocations: TdxDBGrid
    Left = 0
    Top = 0
    Width = 713
    Height = 504
    Bands = <
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'Code_str'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    ArrowsColor = clNavy
    BandColor = clBackground
    BandFont.Charset = ANSI_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = StockTakeDM.dstblBinLocations
    Filter.Active = True
    Filter.DropDownCount = 16
    Filter.Criteria = {00000000}
    GridLineColor = clInactiveCaptionText
    GroupPanelColor = 16311512
    GroupPanelFontColor = clActiveCaption
    GroupNodeColor = 16311512
    GroupNodeTextColor = clActiveCaption
    HeaderColor = clInfoBk
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clBlack
    HeaderFont.Height = -12
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    IndentDesc = 10
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToRegistry, edgoTabs, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoHeaderPanelSizing]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoInvertSelect, edgoUseBitmap]
    PreviewFont.Charset = ANSI_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    RowFooterColor = clHighlight
    RowFooterTextColor = clWindow
    ShowPreviewGrid = False
    object dxgBinLocationsCode_str: TdxDBGridColumn
      Caption = 'Code'
      DisableEditor = True
      Width = 120
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Code_str'
    end
    object dxgBinLocationsDescription_str: TdxDBGridColumn
      Caption = 'Description'
      DisableEditor = True
      Width = 460
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Description_str'
    end
  end
end
