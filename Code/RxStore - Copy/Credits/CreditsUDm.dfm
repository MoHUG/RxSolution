object CreditsDm: TCreditsDm
  OldCreateOrder = False
  Left = 349
  Top = 136
  Height = 685
  Width = 987
  object qryCreditItems: TADOQuery
    Connection = AdoCreditConn
    CursorType = ctStatic
    BeforePost = qryCreditItemsBeforePost
    AfterScroll = qryCreditItemsAfterScroll
    DataSource = dsCreditsCatalog
    Parameters = <
      item
        Name = '@CreditID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT TblCreditItems.* '
      'FROM TblCreditItems'
      'WHERE TblCreditItems.Credit_ID=:@CreditID')
    Left = 48
    Top = 184
    object qryCreditItemsCreditItems_ID: TAutoIncField
      FieldName = 'CreditItems_ID'
      ReadOnly = True
    end
    object qryCreditItemsCredit_ID: TIntegerField
      FieldName = 'Credit_ID'
    end
    object qryCreditItemsProductCode_ID: TIntegerField
      FieldName = 'ProductCode_ID'
    end
    object qryCreditItemsBatchNumber_str: TWideStringField
      FieldName = 'BatchNumber_str'
      Size = 50
    end
    object qryCreditItemsExpiry_dat: TDateTimeField
      FieldName = 'Expiry_dat'
    end
    object qryCreditItemsProductBatch_ID: TIntegerField
      FieldName = 'ProductBatch_ID'
    end
    object qryCreditItemsNSN_str: TStringField
      FieldName = 'NSN_str'
      Size = 14
    end
    object qryCreditItemsICN_str: TStringField
      FieldName = 'ICN_str'
      Size = 14
    end
    object qryCreditItemsECN_str: TStringField
      FieldName = 'ECN_str'
      Size = 14
    end
    object qryCreditItemsQtyCredit_int: TIntegerField
      FieldName = 'QtyCredit_int'
      OnChange = qryCreditItemsQtyCredit_intChange
    end
    object qryCreditItemsPackCost_mon: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object qryCreditItemsExtendedCost_mon: TBCDField
      FieldName = 'ExtendedCost_mon'
      Precision = 19
    end
    object qryCreditItemsLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object qryCreditItemsUser_ID: TIntegerField
      FieldName = 'User_ID'
    end
    object qryCreditItemsUserName_str: TStringField
      FieldName = 'UserName_str'
      Size = 75
    end
    object qryCreditItemsProductCode_str: TStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object qryCreditItemsDescription_str: TWideStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object qryCreditItemsBin_str: TStringField
      FieldName = 'Bin_str'
    end
    object qryCreditItemsShippingPack_int: TIntegerField
      FieldName = 'ShippingPack_int'
    end
    object qryCreditItemsVAT_dbl: TFloatField
      FieldName = 'VAT_dbl'
    end
    object qryCreditItemsMarkUp_dbl: TFloatField
      FieldName = 'MarkUp_dbl'
    end
    object qryCreditItemsSellingPrice_mon: TBCDField
      FieldName = 'SellingPrice_mon'
      Precision = 19
    end
  end
  object qryCreditCatalog: TADOQuery
    Connection = AdoCreditConn
    CursorType = ctStatic
    AfterScroll = qryCreditCatalogAfterScroll
    Parameters = <
      item
        Name = 'StartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblCredit'
      'WHERE tblCredit.Credit_dat >:StartDate'
      'AND tblCredit.Credit_dat <:EndDate')
    Left = 48
    Top = 80
  end
  object dsCreditsCatalog: TDataSource
    DataSet = qryCreditCatalog
    Left = 176
    Top = 80
  end
  object dsCreditItems: TDataSource
    DataSet = qryCreditItems
    Left = 184
    Top = 184
  end
  object AdoCreditConn: TADOConnection
    CommandTimeout = 400
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=rxsolution;Persist Security Info=Tr' +
      'ue;User ID=sa;Initial Catalog=rxdev;Data Source=ZA-SMAHLABA'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 24
  end
  object qryProductBatch: TADOQuery
    Tag = 1
    Connection = AdoCreditConn
    CursorType = ctStatic
    BeforePost = qryProductBatchBeforePost
    Parameters = <
      item
        Name = 'ProductCodeID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM tblProductBatch'
      'WHERE ProductCode_ID=:ProductCodeID')
    Left = 352
    Top = 117
  end
  object dsqryProductBatch: TDataSource
    DataSet = qryProductBatch
    Left = 352
    Top = 165
  end
  object stpCreditEditHistory: TADOQuery
    Connection = AdoCreditConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = '@CreditID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * FROM TblCreditEditHistory'
      'WHERE Credit_ID =:@CreditID')
    Left = 48
    Top = 248
  end
  object stp_CreditItemsTotals: TADOStoredProc
    Connection = AdoCreditConn
    ProcedureName = 'strdprc_StockControlCreditItemsTotals;1'
    Parameters = <
      item
        Name = '@CreditID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 376
    Top = 264
  end
  object ActionList1: TActionList
    Left = 824
    Top = 16
    object atnAddSingleItem: TAction
      Caption = 'Add Single &Item'
      ShortCut = 16457
      OnExecute = atnAddSingleItemExecute
    end
    object atnDeleteAllItems: TAction
      Caption = 'Remove All Items'
      OnExecute = atnDeleteAllItemsExecute
    end
    object atnPostItem: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsCreditItems
    end
    object atnCancelItem: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsCreditItems
    end
    object atnSaveandClose: TAction
      Caption = '&Close'
      OnExecute = atnSaveandCloseExecute
    end
    object atnPostandClose: TAction
      Caption = 'Post'
      OnExecute = atnPostandCloseExecute
    end
    object atnFirstItem: TDataSetFirst
      Category = 'Dataset'
      Caption = '&First'
      Hint = 'First'
      ImageIndex = 0
      DataSource = dsCreditItems
    end
    object atnNextItem: TDataSetNext
      Category = 'Dataset'
      Caption = '&Next'
      Hint = 'Next'
      ImageIndex = 2
      DataSource = dsCreditItems
    end
    object atnPriorItem: TDataSetPrior
      Category = 'Dataset'
      Caption = '&Prior'
      Hint = 'Prior'
      ImageIndex = 1
      DataSource = dsCreditItems
    end
    object atnLastItem: TDataSetLast
      Category = 'Dataset'
      Caption = '&Last'
      Hint = 'Last'
      ImageIndex = 3
      DataSource = dsCreditItems
    end
    object atnDeleteCredit: TAction
      Caption = 'Delete Credit Note'
      OnExecute = atnDeleteCreditExecute
    end
    object atnSelectBatch: TAction
      Caption = 'Select Batch'
      ShortCut = 16450
      Visible = False
      OnExecute = atnSelectBatchExecute
    end
    object atnDeleteSingleItem: TAction
      Caption = 'atnDeleteSingleItem'
      ShortCut = 16452
      OnExecute = atnDeleteSingleItemExecute
    end
    object atnAddAnotherBatchItem: TAction
      Caption = 'Add Another Batch Item'
      ShortCut = 113
      OnExecute = atnAddAnotherBatchItemExecute
    end
    object atnPrintCreditNoteReport: TAction
      Caption = 'Print Note'
      OnExecute = atnPrintCreditNoteReportExecute
    end
    object atnRefreshAll: TAction
      Caption = 'Refresh'
    end
    object atnShowDemanderItems: TAction
      Caption = 'atnShowDemanderItems'
      OnExecute = atnShowDemanderItemsExecute
    end
    object atnAddRequisitionItems: TAction
      Caption = 'Add Requisition Items'
      OnExecute = atnAddRequisitionItemsExecute
    end
    object atnUnlockReturns: TAction
      Caption = 'Unlock Returns to demander'
      OnExecute = atnUnlockReturnsExecute
    end
    object atnUnLockReturnsMain: TAction
      Caption = 'Unlock Returns to demander'
      OnExecute = atnUnLockReturnsMainExecute
    end
  end
  object AdoAddSingleItem: TADOCommand
    CommandText = 'strdprc_CreditItemsADD_Single;1'
    CommandType = cmdStoredProc
    Connection = AdoCreditConn
    Parameters = <
      item
        Name = '@CreditID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ProductCodeID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 176
    Top = 24
  end
  object dsHistory: TDataSource
    DataSet = stpCreditEditHistory
    Left = 176
    Top = 248
  end
  object tblDemanders: TADOQuery
    Connection = AdoCreditConn
    CursorType = ctStatic
    AfterScroll = tblDemandersAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT Demander_ID, Code_str, Name_str, DemanderUnique_ID'
      'FROM tblDemander'
      'ORDER BY Name_str')
    Left = 56
    Top = 312
  end
  object dsDemanders: TDataSource
    DataSet = tblDemanders
    Left = 176
    Top = 312
  end
  object tblSystemUsers: TADOQuery
    Connection = AdoCreditConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblSystem_User.UserID, ISNULL(tblSystem_User.lastName_str' +
        ', N'#39#39') + N'#39', '#39' + ISNULL(tblSystem_User.firstName_str, N'#39#39') AS De' +
        'scription'
      
        'FROM tblSystem_User INNER JOIN tblSystem_User_Access ON tblSyste' +
        'm_User.UserID = tblSystem_User_Access.UserID'
      
        'WHERE (tblSystem_User_Access.moduleNum_int = 23) AND (tblSystem_' +
        'User_Access.accessLevel_int >2) AND (tblSystem_User.Active_bol =' +
        ' 1)'
      
        'ORDER BY tblSystem_User.lastName_str, tblSystem_User.firstName_s' +
        'tr')
    Left = 392
    Top = 16
    object tblSystemUsersUserID: TGuidField
      FieldName = 'UserID'
      FixedChar = True
      Size = 38
    end
    object tblSystemUsersDescription: TWideStringField
      FieldName = 'Description'
      ReadOnly = True
      Size = 66
    end
  end
  object dsUsers: TDataSource
    DataSet = tblSystemUsers
    Left = 472
    Top = 16
  end
  object stp_CreditMarkComplete: TADOStoredProc
    Connection = AdoCreditConn
    ProcedureName = 'strdprc_Credit_MarkComplete;1'
    Parameters = <
      item
        Name = '@CreditID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 536
    Top = 264
  end
  object stpAddAnotherBatchItem: TADOStoredProc
    Connection = AdoCreditConn
    ProcedureName = 'strdprc_CreditItemsADDAnotherBatch;1'
    Parameters = <
      item
        Name = '@CreditID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ProductCodeID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Prepared = True
    Left = 536
    Top = 328
  end
  object ppreport_CreditNote: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Users\smahlaba\Documents\Projects\RxSolutionCode - BarCoding\' +
      'Compiled\Distribute\tmp\Credit.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 832
    Top = 96
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand2: TppTitleBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 41010
      mmPrintPosition = 0
      object ppDBText16: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'SystemName_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6752
        mmLeft = 3440
        mmTop = 8996
        mmWidth = 83344
        BandType = 1
      end
      object ppDBText17: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Credit_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 26194
        mmTop = 20902
        mmWidth = 55033
        BandType = 1
      end
      object ppDBText19: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Credit_dat'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 23019
        mmTop = 27252
        mmWidth = 55033
        BandType = 1
      end
      object ppLabel19: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        SaveOrder = 12
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Items'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4129
        mmLeft = 3440
        mmTop = 32808
        mmWidth = 18785
        BandType = 1
      end
      object ppLabel20: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        SaveOrder = 13
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4129
        mmLeft = 3440
        mmTop = 27252
        mmWidth = 18785
        BandType = 1
      end
      object ppLabel29: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        SaveOrder = 14
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4129
        mmLeft = 3440
        mmTop = 16140
        mmWidth = 18785
        BandType = 1
      end
      object ppLabel30: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        SaveOrder = 15
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 6879
        mmWidth = 15081
        BandType = 1
      end
      object ppLabel31: TppLabel
        UserName = 'Label104'
        HyperlinkColor = clBlue
        SaveOrder = 11
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 10848
        mmWidth = 15081
        BandType = 1
      end
      object ppLabel32: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        SaveOrder = 16
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Address'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 14817
        mmWidth = 15081
        BandType = 1
      end
      object ppLabel33: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        SaveOrder = 17
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Received By'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 222250
        mmTop = 16933
        mmWidth = 16404
        BandType = 1
      end
      object ppDBText20: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'ReceivedBy_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 238919
        mmTop = 16933
        mmWidth = 21738
        BandType = 1
      end
      object ppDBText21: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'Received_dat'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 238919
        mmTop = 21167
        mmWidth = 18690
        BandType = 1
      end
      object ppDBText24: TppDBText
        UserName = 'DBText33'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'SystemAddress3_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 112184
        mmTop = 19844
        mmWidth = 28829
        BandType = 1
      end
      object ppDBText25: TppDBText
        UserName = 'DBText34'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'SystemAddress1_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 112184
        mmTop = 15610
        mmWidth = 28829
        BandType = 1
      end
      object ppDBText26: TppDBText
        UserName = 'DBText36'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'SystemName_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 112184
        mmTop = 11113
        mmWidth = 23516
        BandType = 1
      end
      object ppDBText27: TppDBText
        UserName = 'DBText59'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'SystemCode_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 112184
        mmTop = 6350
        mmWidth = 22881
        BandType = 1
      end
      object ppLabel37: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        SaveOrder = 18
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Returned By'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 222515
        mmTop = 6615
        mmWidth = 16404
        BandType = 1
      end
      object ppDBText28: TppDBText
        UserName = 'DBText60'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'ReturnedBy_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 239184
        mmTop = 6085
        mmWidth = 21759
        BandType = 1
      end
      object ppDBText29: TppDBText
        UserName = 'DBText61'
        HyperlinkColor = clBlue
        SaveOrder = 10
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16311512
        DataField = 'Returned_dat'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 239184
        mmTop = 10583
        mmWidth = 18711
        BandType = 1
      end
      object ppDBText1: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        SaveOrder = 19
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'ItemsNo_int'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 23019
        mmTop = 33338
        mmWidth = 42069
        BandType = 1
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 529
        mmLeft = 2910
        mmTop = 39158
        mmWidth = 281253
        BandType = 1
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 529
        mmLeft = 2910
        mmTop = 40481
        mmWidth = 281253
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Return from Demander'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7324
        mmLeft = 3440
        mmTop = 794
        mmWidth = 69173
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        SaveOrder = 20
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'ddd, dd mmmm yyyy @ (hh:mm)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 228071
        mmTop = 529
        mmWidth = 49213
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 222250
        mmTop = 20902
        mmWidth = 6879
        BandType = 1
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 222515
        mmTop = 10319
        mmWidth = 6879
        BandType = 1
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Institution Address'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 794
        mmWidth = 23019
        BandType = 1
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reason:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 33338
        mmWidth = 11642
        BandType = 1
      end
      object ppDBText63: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Reason_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 112184
        mmTop = 33338
        mmWidth = 15790
        BandType = 1
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        SaveOrder = 21
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Code'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 159809
        mmTop = 6879
        mmWidth = 15081
        BandType = 1
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        SaveOrder = 22
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 159809
        mmTop = 10848
        mmWidth = 15081
        BandType = 1
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        SaveOrder = 23
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Address'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 159809
        mmTop = 14817
        mmWidth = 15081
        BandType = 1
      end
      object ppDBText4: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        SaveOrder = 24
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'DemAddress2_Str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 176742
        mmTop = 20108
        mmWidth = 25125
        BandType = 1
      end
      object ppDBText5: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        SaveOrder = 25
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'DemAddress1_Str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 176742
        mmTop = 15610
        mmWidth = 25125
        BandType = 1
      end
      object ppDBText6: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        SaveOrder = 26
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'DemName_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 176742
        mmTop = 11113
        mmWidth = 19495
        BandType = 1
      end
      object ppDBText7: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        SaveOrder = 27
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'DemCode_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 176742
        mmTop = 7144
        mmWidth = 18860
        BandType = 1
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Demander Address'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 160073
        mmTop = 794
        mmWidth = 24934
        BandType = 1
      end
      object ppDBText9: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        SaveOrder = 28
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'DemAddress3_Str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 176742
        mmTop = 24606
        mmWidth = 25125
        BandType = 1
      end
      object ppDBText8: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        SaveOrder = 29
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Address4_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 176742
        mmTop = 28840
        mmWidth = 18521
        BandType = 1
      end
      object ppDBText10: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        SaveOrder = 30
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'SystemCity_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 112184
        mmTop = 24077
        mmWidth = 21103
        BandType = 1
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        SaveOrder = 31
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reference'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 3440
        mmTop = 21696
        mmWidth = 18785
        BandType = 1
      end
      object ppDBText11: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        SaveOrder = 32
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'VoucherNo_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 23019
        mmTop = 21431
        mmWidth = 55033
        BandType = 1
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'Posted_bol'
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 221721
        mmTop = 27252
        mmWidth = 6350
        BandType = 1
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Posted?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 227542
        mmTop = 28046
        mmWidth = 10605
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
      object ppLabel43: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pack Cost'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        WordWrap = True
        mmHeight = 4498
        mmLeft = 164042
        mmTop = 5027
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Description'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 50800
        mmTop = 5027
        mmWidth = 112184
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ICN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 4498
        mmTop = 5027
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Batch Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 216165
        mmTop = 5027
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bin'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 39688
        mmTop = 5027
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ECN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 22225
        mmTop = 5027
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Expiry Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        WordWrap = True
        mmHeight = 4498
        mmLeft = 239713
        mmTop = 5027
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        WordWrap = True
        mmHeight = 4498
        mmLeft = 200555
        mmTop = 5027
        mmWidth = 13758
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 2646
        mmLeft = 2910
        mmTop = 10583
        mmWidth = 280723
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Value'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 275696
        mmTop = 5027
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Selling Price'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        WordWrap = True
        mmHeight = 8467
        mmLeft = 184150
        mmTop = 794
        mmWidth = 14552
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText56: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ICN_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Anchors = [atLeft, atBottom]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Description_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 50536
        mmTop = 0
        mmWidth = 111390
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PackCost_mon'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 159946
        mmTop = 0
        mmWidth = 18119
        BandType = 4
      end
      object ppDBText64: TppDBText
        UserName = 'DBText46'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Bin_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4000
        mmLeft = 39423
        mmTop = 0
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText65: TppDBText
        UserName = 'DBText51'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ECN_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4000
        mmLeft = 22225
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QtyCredit_int'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 200025
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Description_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 0
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BatchNumber_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 215900
        mmTop = 0
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ExtendedCost_mon'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 259400
        mmTop = 265
        mmWidth = 23982
        BandType = 4
      end
      object ppDBText70: TppDBText
        UserName = 'DBText70'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Expiry_dat'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'mmm-yy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 239184
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SellingPrice_mon'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3450
        mmLeft = 180711
        mmTop = 0
        mmWidth = 17992
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'ddd, dd mmmm yyyy @ (hh:mm)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 2381
        mmTop = 1852
        mmWidth = 49213
        BandType = 8
      end
      object ppLabel68: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 57679
        mmTop = 1852
        mmWidth = 14023
        BandType = 8
      end
      object ppDBText94: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = 16383986
        DataField = 'Credit_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4763
        mmLeft = 76729
        mmTop = 1588
        mmWidth = 41540
        BandType = 8
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable10'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Color = 16383986
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Name = 'MS Sans Serif'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 250561
        mmTop = 5027
        mmWidth = 33338
        BandType = 8
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 2910
        mmTop = 265
        mmWidth = 280723
        BandType = 8
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ExtendedCost_mon'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 251619
        mmTop = 1058
        mmWidth = 31750
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Save = True
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList1: TppParameterList
    end
  end
  object qryCreditReport: TADOStoredProc
    Connection = AdoCreditConn
    CursorType = ctStatic
    ProcedureName = 'strdprc_CreditReport;1'
    Parameters = <
      item
        Name = '@CreditID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 0
      end>
    Left = 640
    Top = 32
    object qryCreditReportBin_str: TStringField
      FieldName = 'Bin_str'
    end
    object qryCreditReportDescription_str: TWideStringField
      FieldName = 'Description_str'
      Size = 250
    end
    object qryCreditReportQtyCredit_int: TIntegerField
      FieldName = 'QtyCredit_int'
    end
    object qryCreditReportPackCost_mon: TBCDField
      FieldName = 'PackCost_mon'
      Precision = 19
    end
    object qryCreditReportExtendedCost_mon: TBCDField
      FieldName = 'ExtendedCost_mon'
      Precision = 19
    end
    object qryCreditReportNSN_str: TStringField
      FieldName = 'NSN_str'
      Size = 14
    end
    object qryCreditReportECN_str: TStringField
      FieldName = 'ECN_str'
      Size = 14
    end
    object qryCreditReportICN_str: TStringField
      FieldName = 'ICN_str'
      Size = 14
    end
    object qryCreditReportProductCode_str: TStringField
      FieldName = 'ProductCode_str'
      Size = 14
    end
    object qryCreditReportCredit_ID: TAutoIncField
      FieldName = 'Credit_ID'
      ReadOnly = True
    end
    object qryCreditReportDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
    end
    object qryCreditReportDemander_Str: TStringField
      FieldName = 'Demander_Str'
      Size = 100
    end
    object qryCreditReportSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object qryCreditReportSystemStore_str: TStringField
      FieldName = 'SystemStore_str'
      Size = 100
    end
    object qryCreditReportCredit_str: TStringField
      FieldName = 'Credit_str'
      Size = 50
    end
    object qryCreditReportCredit_dat: TDateTimeField
      FieldName = 'Credit_dat'
    end
    object qryCreditReportVoucherNo_str: TStringField
      FieldName = 'VoucherNo_str'
      Size = 50
    end
    object qryCreditReportAuthorizedBy_str: TStringField
      FieldName = 'AuthorizedBy_str'
      Size = 50
    end
    object qryCreditReportAuthorized_Dat: TDateTimeField
      FieldName = 'Authorized_Dat'
    end
    object qryCreditReportTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object qryCreditReportItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object qryCreditReportRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object qryCreditReportPostedBy_str: TStringField
      FieldName = 'PostedBy_str'
      Size = 50
    end
    object qryCreditReportPosted_dat: TDateTimeField
      FieldName = 'Posted_dat'
    end
    object qryCreditReportReceived_dat: TDateTimeField
      FieldName = 'Received_dat'
    end
    object qryCreditReportReceivedBy_str: TStringField
      FieldName = 'ReceivedBy_str'
      Size = 50
    end
    object qryCreditReportLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object qryCreditReportUserName_str: TStringField
      FieldName = 'UserName_str'
      Size = 75
    end
    object qryCreditReportUser_ID: TIntegerField
      FieldName = 'User_ID'
    end
    object qryCreditReportPOReference_str: TWideStringField
      FieldName = 'POReference_str'
      Size = 50
    end
    object qryCreditReportCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object qryCreditReportCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object qryCreditReportCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object qryCreditReportCheckedOut_dat: TDateTimeField
      FieldName = 'CheckedOut_dat'
    end
    object qryCreditReportPosted_bol: TBooleanField
      FieldName = 'Posted_bol'
    end
    object qryCreditReportReturnedBy_str: TWideStringField
      FieldName = 'ReturnedBy_str'
      Size = 50
    end
    object qryCreditReportReturnedBy_id: TIntegerField
      FieldName = 'ReturnedBy_id'
    end
    object qryCreditReportReason_str: TWideStringField
      FieldName = 'Reason_str'
      Size = 200
    end
    object qryCreditReportRequisitionRef_id: TIntegerField
      FieldName = 'RequisitionRef_id'
    end
    object qryCreditReportRequisitionRef_str: TWideStringField
      FieldName = 'RequisitionRef_str'
    end
    object qryCreditReportReturned_dat: TDateTimeField
      FieldName = 'Returned_dat'
    end
    object qryCreditReportGroup1_str: TWideStringField
      FieldName = 'Group1_str'
      Size = 50
    end
    object qryCreditReportGroup2_str: TWideStringField
      FieldName = 'Group2_str'
      Size = 50
    end
    object qryCreditReportSystemCode_str: TWideStringField
      FieldName = 'SystemCode_str'
      Size = 10
    end
    object qryCreditReportSystemName_str: TWideStringField
      FieldName = 'SystemName_str'
      Size = 50
    end
    object qryCreditReportSystemAddress1_str: TWideStringField
      FieldName = 'SystemAddress1_str'
      Size = 150
    end
    object qryCreditReportSystemAddress3_str: TWideStringField
      FieldName = 'SystemAddress3_str'
      Size = 150
    end
    object qryCreditReportSystemCity_str: TWideStringField
      FieldName = 'SystemCity_str'
      Size = 150
    end
    object qryCreditReportDemAddress1_Str: TWideStringField
      FieldName = 'DemAddress1_Str'
      Size = 50
    end
    object qryCreditReportDemAddress2_Str: TWideStringField
      FieldName = 'DemAddress2_Str'
      Size = 50
    end
    object qryCreditReportDemAddress3_Str: TWideStringField
      FieldName = 'DemAddress3_Str'
      Size = 50
    end
    object qryCreditReportBatchNumber_str: TWideStringField
      FieldName = 'BatchNumber_str'
      Size = 50
    end
    object qryCreditReportExpiry_dat: TDateTimeField
      FieldName = 'Expiry_dat'
    end
    object qryCreditReportDemCode_str: TWideStringField
      FieldName = 'DemCode_str'
      Size = 14
    end
    object qryCreditReportDemName_str: TWideStringField
      FieldName = 'DemName_str'
      Size = 50
    end
    object qryCreditReportMarkUp_dbl: TFloatField
      FieldName = 'MarkUp_dbl'
    end
    object qryCreditReportVAT_dbl: TFloatField
      FieldName = 'VAT_dbl'
    end
    object qryCreditReportAccount_ID: TIntegerField
      FieldName = 'Account_ID'
    end
    object qryCreditReportAccountName_str: TWideStringField
      FieldName = 'AccountName_str'
    end
    object qryCreditReportSellingPrice_mon: TBCDField
      FieldName = 'SellingPrice_mon'
      Precision = 19
    end
  end
  object dsCreditReport: TDataSource
    DataSet = qryCreditReport
    Left = 640
    Top = 96
  end
  object stp_DeleteAllItems: TADOStoredProc
    Connection = AdoCreditConn
    ProcedureName = 'strdprc_Credit_DeleteAllItems;1'
    Parameters = <
      item
        Name = '@CreditID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 648
    Top = 200
  end
  object dsDemanderUsers: TDataSource
    DataSet = qryDemanderUsers
    Left = 184
    Top = 384
  end
  object qryDemanderRequisitions: TADOQuery
    Tag = 1
    Connection = AdoCreditConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Demander_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 21
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT Requisition_ID, Requisition_Str, Requisition_dat'
      'FROM tblRequisition'
      'WHERE (Activated_bol = 1)'
      'AND (Demander_ID =:Demander_ID)')
    Left = 56
    Top = 461
  end
  object dsDemanderRequisitions: TDataSource
    DataSet = qryDemanderRequisitions
    Left = 192
    Top = 462
  end
  object qryRequisitionItems: TADOQuery
    Connection = AdoCreditConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = '@DemanderID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT tblRequisition.Requisition_str, tblRequisitionItems.*, tb' +
        'lProductPackSize.Description_str'
      
        'FROM tblRequisition INNER JOIN tblRequisitionItems ON tblRequisi' +
        'tion.Requisition_ID = tblRequisitionItems.Requisition_ID'
      
        'LEFT OUTER JOIN tblProductPackSize ON tblProductPackSize.Product' +
        'Code_ID = tblRequisitionItems.ProductCode_ID'
      'WHERE (tblRequisition.Demander_ID=:@DemanderID)'
      'AND (tblRequisitionItems.QtyIssued_int > 0)'
      'AND (tblRequisition.Activated_bol = 1)'
      'AND (tblRequisition.Requisition_dat >GetDate()-30)')
    Left = 424
    Top = 400
  end
  object dsRequisitionItems: TDataSource
    DataSet = qryRequisitionItems
    Left = 536
    Top = 400
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsCreditReport
    UserName = 'DBPipeline1'
    Left = 736
    Top = 96
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'Bin_str'
      FieldName = 'Bin_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'Description_str'
      FieldName = 'Description_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'QtyCredit_int'
      FieldName = 'QtyCredit_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'PackCost_mon'
      FieldName = 'PackCost_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'ExtendedCost_mon'
      FieldName = 'ExtendedCost_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'NSN_str'
      FieldName = 'NSN_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'ECN_str'
      FieldName = 'ECN_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'ICN_str'
      FieldName = 'ICN_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'ProductCode_str'
      FieldName = 'ProductCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'Credit_ID'
      FieldName = 'Credit_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'Demander_ID'
      FieldName = 'Demander_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'Demander_Str'
      FieldName = 'Demander_Str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'SystemStore_ID'
      FieldName = 'SystemStore_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'SystemStore_str'
      FieldName = 'SystemStore_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'Credit_str'
      FieldName = 'Credit_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'Credit_dat'
      FieldName = 'Credit_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'VoucherNo_str'
      FieldName = 'VoucherNo_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'AuthorizedBy_str'
      FieldName = 'AuthorizedBy_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'Authorized_Dat'
      FieldName = 'Authorized_Dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'TotalCost_mon'
      FieldName = 'TotalCost_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'ItemsNo_int'
      FieldName = 'ItemsNo_int'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'Remarks_mem'
      FieldName = 'Remarks_mem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'PostedBy_str'
      FieldName = 'PostedBy_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'Posted_dat'
      FieldName = 'Posted_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'Received_dat'
      FieldName = 'Received_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'ReceivedBy_str'
      FieldName = 'ReceivedBy_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'LastUpdate_dat'
      FieldName = 'LastUpdate_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'UserName_str'
      FieldName = 'UserName_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'User_ID'
      FieldName = 'User_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'POReference_str'
      FieldName = 'POReference_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'CheckedOutBy_ID'
      FieldName = 'CheckedOutBy_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'CheckedOutName_str'
      FieldName = 'CheckedOutName_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'CheckedOut_bol'
      FieldName = 'CheckedOut_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'CheckedOut_dat'
      FieldName = 'CheckedOut_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'Posted_bol'
      FieldName = 'Posted_bol'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = 'ReturnedBy_str'
      FieldName = 'ReturnedBy_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'ReturnedBy_id'
      FieldName = 'ReturnedBy_id'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'Reason_str'
      FieldName = 'Reason_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = 'RequisitionRef_id'
      FieldName = 'RequisitionRef_id'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField40: TppField
      FieldAlias = 'RequisitionRef_str'
      FieldName = 'RequisitionRef_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField41: TppField
      FieldAlias = 'Returned_dat'
      FieldName = 'Returned_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField42: TppField
      FieldAlias = 'Group1_str'
      FieldName = 'Group1_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField43: TppField
      FieldAlias = 'Group2_str'
      FieldName = 'Group2_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField44: TppField
      FieldAlias = 'SystemCode_str'
      FieldName = 'SystemCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField45: TppField
      FieldAlias = 'SystemName_str'
      FieldName = 'SystemName_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField46: TppField
      FieldAlias = 'SystemAddress1_str'
      FieldName = 'SystemAddress1_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField47: TppField
      FieldAlias = 'SystemAddress3_str'
      FieldName = 'SystemAddress3_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField48: TppField
      FieldAlias = 'SystemCity_str'
      FieldName = 'SystemCity_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField49: TppField
      FieldAlias = 'DemAddress1_Str'
      FieldName = 'DemAddress1_Str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField50: TppField
      FieldAlias = 'DemAddress2_Str'
      FieldName = 'DemAddress2_Str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField51: TppField
      FieldAlias = 'DemAddress3_Str'
      FieldName = 'DemAddress3_Str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField52: TppField
      FieldAlias = 'BatchNumber_str'
      FieldName = 'BatchNumber_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField53: TppField
      FieldAlias = 'Expiry_dat'
      FieldName = 'Expiry_dat'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField54: TppField
      FieldAlias = 'DemCode_str'
      FieldName = 'DemCode_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField55: TppField
      FieldAlias = 'DemName_str'
      FieldName = 'DemName_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField56: TppField
      FieldAlias = 'MarkUp_dbl'
      FieldName = 'MarkUp_dbl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField57: TppField
      FieldAlias = 'VAT_dbl'
      FieldName = 'VAT_dbl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField58: TppField
      FieldAlias = 'Account_ID'
      FieldName = 'Account_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField59: TppField
      FieldAlias = 'AccountName_str'
      FieldName = 'AccountName_str'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField60: TppField
      FieldAlias = 'SellingPrice_mon'
      FieldName = 'SellingPrice_mon'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
  end
  object stpStockDemanderReturn: TADOStoredProc
    Connection = AdoCreditConn
    ProcedureName = 'strdprc_AuditAPPENDDemanderReturn;1'
    Parameters = <
      item
        Name = '@ProductID'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@DemanderFromUniqueID'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@Quantity'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@QtyUnits'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Reference'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 225
        Value = Null
      end
      item
        Name = '@User'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 200
        Value = Null
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@VoucherNo'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 225
        Value = Null
      end
      item
        Name = '@expiry'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@batchnumber'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 50
        Value = Null
      end
      item
        Name = '@itemID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ValueCost'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 800
    Top = 190
  end
  object tblBinLocations: TADOQuery
    Tag = 1
    Connection = AdoCreditConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM tblBin'
      'ORDER BY Code_str')
    Left = 800
    Top = 328
  end
  object qryProductPack: TADOQuery
    Connection = AdoCreditConn
    Parameters = <
      item
        Name = 'ProductCodeID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT productPackSize_ID, ProductCode_ID, ISNULL(PackSizeValue_' +
        'dbl, 1) AS PackSizeValue_dbl'
      'FROM tblProductPackSize'
      'WHERE ProductCode_ID=:ProductCodeID')
    Left = 800
    Top = 384
  end
  object qryDemanders: TADOQuery
    Connection = AdoCreditConn
    Parameters = <
      item
        Name = 'DemanderID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DemanderUnique_ID, Demander_ID'
      'FROM tblDemander'
      'WHERE Demander_ID=:DemanderID')
    Left = 800
    Top = 456
  end
  object dsqryADOSystemWharehouse: TDataSource
    DataSet = stpSystemWharehouse
    Left = 547
    Top = 460
  end
  object stpSystemWharehouse: TADOTable
    Connection = AdoCreditConn
    CursorType = ctStatic
    TableName = 'strdprc_SystemWharehouse'
    Left = 416
    Top = 464
    object stpSystemWharehouseSystemStore_ID: TAutoIncField
      FieldName = 'SystemStore_ID'
      ReadOnly = True
    end
    object stpSystemWharehouseSystemAccount_ID: TAutoIncField
      FieldName = 'SystemAccount_ID'
      ReadOnly = True
    end
    object stpSystemWharehouseDemanderName_str: TWideStringField
      FieldName = 'DemanderName_str'
      Size = 50
    end
    object stpSystemWharehouseDemanderCode_str: TWideStringField
      FieldName = 'DemanderCode_str'
      Size = 10
    end
    object stpSystemWharehouseAccountName_str: TStringField
      FieldName = 'AccountName_str'
      Size = 100
    end
    object stpSystemWharehouseAccount_str: TStringField
      FieldName = 'Account_str'
      Size = 25
    end
    object stpSystemWharehouseDescription: TWideStringField
      FieldName = 'Description'
      ReadOnly = True
      Size = 126
    end
  end
  object stp_AddRequisitionItems: TADOStoredProc
    Connection = AdoCreditConn
    ProcedureName = 'stp_Credit_AddRequisitionItems;1'
    Parameters = <
      item
        Name = '@Requisition_ID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Credit_ID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 416
    Top = 544
  end
  object stp_UpdateItemsVat: TADOStoredProc
    Connection = AdoCreditConn
    ProcedureName = 'strdprc_CreditItemsUpdateVAT;1'
    Parameters = <
      item
        Name = '@Credit_ID'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@VAT'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 800
    Top = 248
  end
  object stp_CustomReport: TADOQuery
    Tag = 1
    Connection = AdoCreditConn
    Parameters = <>
    Left = 728
    Top = 536
  end
  object dsstp_CustomReport: TDataSource
    DataSet = stp_CustomReport
    Left = 832
    Top = 536
  end
  object qrySqlStatements: TADOTable
    Connection = AdoCreditConn
    CursorType = ctStatic
    TableName = 'tblReport_Queries'
    Left = 592
    Top = 536
  end
  object qryCreditWorker: TADOQuery
    Connection = AdoCreditConn
    CursorType = ctStatic
    BeforePost = qryCreditWorkerBeforePost
    Parameters = <
      item
        Name = 'CreditID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblCredit'
      'WHERE tblCredit.Credit_ID=:CreditID')
    Left = 48
    Top = 133
    object qryCreditWorkerCredit_ID: TAutoIncField
      FieldName = 'Credit_ID'
      ReadOnly = True
    end
    object qryCreditWorkerDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
      OnChange = qryCreditWorkerDemander_IDChange
    end
    object qryCreditWorkerDemander_Str: TStringField
      FieldName = 'Demander_Str'
      Size = 100
    end
    object qryCreditWorkerSystemStore_ID: TIntegerField
      FieldName = 'SystemStore_ID'
    end
    object qryCreditWorkerSystemStore_str: TStringField
      FieldName = 'SystemStore_str'
      Size = 100
    end
    object qryCreditWorkerCredit_str: TStringField
      FieldName = 'Credit_str'
      Size = 50
    end
    object qryCreditWorkerCredit_dat: TDateTimeField
      FieldName = 'Credit_dat'
    end
    object qryCreditWorkerVoucherNo_str: TStringField
      FieldName = 'VoucherNo_str'
      Size = 50
    end
    object qryCreditWorkerAuthorizedBy_str: TStringField
      FieldName = 'AuthorizedBy_str'
      Size = 50
    end
    object qryCreditWorkerAuthorized_Dat: TDateTimeField
      FieldName = 'Authorized_Dat'
    end
    object qryCreditWorkerTotalCost_mon: TBCDField
      FieldName = 'TotalCost_mon'
      Precision = 19
    end
    object qryCreditWorkerItemsNo_int: TIntegerField
      FieldName = 'ItemsNo_int'
    end
    object qryCreditWorkerRemarks_mem: TMemoField
      FieldName = 'Remarks_mem'
      BlobType = ftMemo
    end
    object qryCreditWorkerPostedBy_str: TStringField
      FieldName = 'PostedBy_str'
      Size = 50
    end
    object qryCreditWorkerPosted_dat: TDateTimeField
      FieldName = 'Posted_dat'
    end
    object qryCreditWorkerReceived_dat: TDateTimeField
      FieldName = 'Received_dat'
    end
    object qryCreditWorkerReceivedBy_str: TStringField
      FieldName = 'ReceivedBy_str'
      Size = 50
    end
    object qryCreditWorkerLastUpdate_dat: TDateTimeField
      FieldName = 'LastUpdate_dat'
    end
    object qryCreditWorkerUserName_str: TStringField
      FieldName = 'UserName_str'
      Size = 75
    end
    object qryCreditWorkerUser_ID: TIntegerField
      FieldName = 'User_ID'
    end
    object qryCreditWorkerPOReference_str: TWideStringField
      FieldName = 'POReference_str'
      Size = 50
    end
    object qryCreditWorkerCheckedOutBy_ID: TIntegerField
      FieldName = 'CheckedOutBy_ID'
    end
    object qryCreditWorkerCheckedOutName_str: TWideStringField
      FieldName = 'CheckedOutName_str'
      Size = 50
    end
    object qryCreditWorkerCheckedOut_bol: TBooleanField
      FieldName = 'CheckedOut_bol'
    end
    object qryCreditWorkerCheckedOut_dat: TDateTimeField
      FieldName = 'CheckedOut_dat'
    end
    object qryCreditWorkerPosted_bol: TBooleanField
      FieldName = 'Posted_bol'
    end
    object qryCreditWorkerReturnedBy_str: TWideStringField
      FieldName = 'ReturnedBy_str'
      Size = 50
    end
    object qryCreditWorkerReturnedBy_id: TIntegerField
      FieldName = 'ReturnedBy_id'
      OnChange = qryCreditWorkerReturnedBy_idChange
    end
    object qryCreditWorkerReason_str: TWideStringField
      FieldName = 'Reason_str'
      Size = 200
    end
    object qryCreditWorkerRequisitionRef_id: TIntegerField
      FieldName = 'RequisitionRef_id'
    end
    object qryCreditWorkerRequisitionRef_str: TWideStringField
      FieldName = 'RequisitionRef_str'
    end
    object qryCreditWorkerReturned_dat: TDateTimeField
      FieldName = 'Returned_dat'
    end
    object qryCreditWorkerAccount_ID: TIntegerField
      FieldName = 'Account_ID'
      OnChange = qryCreditWorkerAccount_IDChange
    end
    object qryCreditWorkerAccountName_str: TWideStringField
      FieldName = 'AccountName_str'
    end
  end
  object dsqryCreditWorker: TDataSource
    DataSet = qryCreditWorker
    Left = 176
    Top = 136
  end
  object StpUnLockReturns: TADOQuery
    Parameters = <>
    Left = 480
    Top = 128
  end
  object qryIsRecordLocked: TADOQuery
    Connection = AdoCreditConn
    Parameters = <
      item
        Name = 'Credit_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT CheckedOut_bol'
      'FROM tblCredit'
      'WHERE Credit_ID=:Credit_ID')
    Left = 211
    Top = 544
  end
  object qryDemanderUsers: TADOQuery
    Tag = 1
    Connection = AdoCreditConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = '@DemanderID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      
        'SELECT TblDemanderUser.*, (ISNULL(TblDemanderUser.Lastname_str, ' +
        #39#39')+'#39', '#39'+ISNULL(TblDemanderUser.FirstName_str, '#39#39')+'#39' ( '#39'+ISNULL(' +
        'TblDemanderUser.position_str, '#39#39') +'#39')'#39') AS personDescription_str'
      'FROM TblDemanderUser'
      'WHERE TblDemanderUser.Demander_ID = :DemanderID'
      'ORDER BY personDescription_str')
    Left = 56
    Top = 381
    object qryDemanderUsersDemanderUser_ID: TAutoIncField
      FieldName = 'DemanderUser_ID'
      ReadOnly = True
    end
    object qryDemanderUsersDemander_ID: TIntegerField
      FieldName = 'Demander_ID'
    end
    object qryDemanderUsersTitle_str: TStringField
      FieldName = 'Title_str'
      Size = 15
    end
    object qryDemanderUsersFirstName_str: TStringField
      FieldName = 'FirstName_str'
    end
    object qryDemanderUsersLastName_str: TStringField
      FieldName = 'LastName_str'
      Size = 25
    end
    object qryDemanderUsersInitials_str: TStringField
      FieldName = 'Initials_str'
      Size = 5
    end
    object qryDemanderUsersPosition_str: TStringField
      FieldName = 'Position_str'
    end
    object qryDemanderUsersUserLevel_str: TStringField
      FieldName = 'UserLevel_str'
      Size = 3
    end
    object qryDemanderUsersLastUpdated_dat: TDateTimeField
      FieldName = 'LastUpdated_dat'
    end
    object qryDemanderUsersPhone_str: TStringField
      FieldName = 'Phone_str'
      Size = 25
    end
    object qryDemanderUsersCellPhone_str: TStringField
      FieldName = 'CellPhone_str'
      Size = 25
    end
    object qryDemanderUsersFax_str: TStringField
      FieldName = 'Fax_str'
      Size = 25
    end
    object qryDemanderUsersEMail_str: TStringField
      FieldName = 'EMail_str'
      Size = 50
    end
    object qryDemanderUsersDescription_str: TStringField
      FieldName = 'Description_str'
      Size = 75
    end
    object qryDemanderUserspersonDescription_str: TStringField
      FieldName = 'personDescription_str'
      ReadOnly = True
      Size = 71
    end
  end
end
