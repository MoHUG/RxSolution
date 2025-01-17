unit ReceiptUDm;
{------------------------------------------------------------------------------}                                                       

{NOTE : THIS IS A SHARED UNIT.  IT IS USED TO BUILD BOTH RXSOLUTION & RXSTORE  }
{-----------------------------------------------d------------------------------}
{   It is optimised for compiling in RxSolution so any specific RxStore        }
{   directives need To be enclose in a compiler directive called -             }
{                                                                              }
{   ($IFDEF RXSTOREBUILD )                                                     }
{     RxStore specific code here.                                              }
{     This can be something like a form or a unit.                             }
{   ($ELSE)                                                                    }           
{     RxStolution specific code here.                                          }
{                                                                              }
{   ($ENDIF)                                                                   }
{                                                                              }
{   This example used normal bracket, but for compiler directive use curly     }
{   brackets.                                                                  }
{                                                                              }
{ ---------------------------------------------------------------------------- }
{ EDIT/CHANGE NOTE                                                             }
{ Date Recorded : 2006-03-09                                                   }
{ Recorded By   : Deane Putzier                                                }
{ Reason        : Merging of the code files for compilation in both apps       }
{------------------------------------------------------------------------------}

interface

uses
{
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ADODB, ppModule, raCodMod, ppBands, ppClass, ppCtrls,
  ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppViewr, Variants, DateUtils, daDataModule,
  ppParameter, ppStrtch, ppMemo, jpeg, ActnList;}

    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, ADODB, Variants, ppBands, ppClass, ppCtrls, ppPrnabl,
  ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,  ExtCtrls,
     MyApplicationUtilities, ppParameter, Math,  DateUtils, PrjConst,
  ActnList, daDataModule, ppVar, ppModule, raCodMod, ppStrtch, ppMemo;

const
  ALLSUPPLIERS = 'All Suppliers';

  HST_ADD     = 'ADDED';
  HST_DEL     = 'DELETED';
  HST_EDT     = 'EDITED';
  HST_OVR     = '*ADMIN OVERRIDE*';
  HST_ERR     = '*ERROR*';
  HST_PRN     = 'PRINTED';
  HST_CHG     = 'CHANGED PRODUCT';
  HST_BAR     = 'BARCODE ADDED';
  HST_FIL     = 'ELECTRONIC ORDER FILE';

  ADD_ITEM    = 0;
  ADD_REC     = 1;


type
//  ECustomException = class(Exception);
//  EPriceTooGreat = class(ECustomException);
  TReceiptDm = class(TDataModule)
    ADOReceiptsConnection: TADOConnection;
    dstblReceiptList: TDataSource;
    dstblReceiptListReport: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
    ppReport2i: TppReport;
    dstblReceiptListReportOutstanding: TDataSource;
    tblGeneralProductStockDetails: TADOTable;
    stpStockControlReceipt: TADOStoredProc;
    stpReceiptEditHistory: TADOStoredProc;
    dsstpReceiptEditHistory: TDataSource;
    dsstpStockControlReceiptItemsTotals: TDataSource;
    dsstpStockControlReceiptItems: TDataSource;
    dsstpStockControlReceipt: TDataSource;
    stpReceiptItemsAPPEND_GenerateReceipt: TADOStoredProc;
    stpReceiptItemsDELETE_AllItems: TADOStoredProc;
    cmdReceiptItemsAPPEND_GenerateReceipt: TADOCommand;
    cmdReceiptItemsUPDATE_ReceiptFromOrderItems: TADOCommand;
    cmdReceiptItemsDELETE_NoReceipts: TADOCommand;
    cmdReceiptItemsAPPEND_Audit: TADOCommand;
    stpOrderItems_ReceiptItemsTotals: TADOStoredProc;
    stpOrderItems_Received: TADOStoredProc;
    dstblSystemUsers: TDataSource;
    stpOrderItems_ReceiptItemsTotalsX: TADOCommand;
    stpReceiptListReport: TADOStoredProc;
    stpReceiptListReportOutstanding: TADOStoredProc;
    ADOCommand1: TADOCommand;
    ADOCommand_General: TADOCommand;
    stpReceiptList: TADOStoredProc;
    dstblReceiptListUniqueSuppliers: TDataSource;
    dstblSystemWharehouse: TDataSource;
    stpReceiptMarkAsComplete: TADOStoredProc;
    stpStockControlReceiptItemsComplete: TADOStoredProc;
    stpOrdersMarkAsComplete: TADOStoredProc;
    stpOrderMarkOrderComplete: TADOStoredProc;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable3: TppSystemVariable;
    ppLabel14: TppLabel;
    ppLabel27: TppLabel;
    ppDBText39: TppDBText;
    ppLine4: TppLine;
    ppLabel25: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLabel18: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppDBText20: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppLine2: TppLine;
    ppDBText28: TppDBText;
    ppVariable1: TppVariable;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable4: TppSystemVariable;
    raCodeModule2: TraCodeModule;
    ADOQuery1_STP: TADOStoredProc;
    ADOQuery1: TADOQuery;
    daDataModule1: TdaDataModule;
    stpReceiptListReportOutstandingReceiptNo_ID: TAutoIncField;
    stpReceiptListReportOutstandingReceiptNo_str: TStringField;
    stpReceiptListReportOutstandingReceiptDate_dat: TDateTimeField;
    stpReceiptListReportOutstandingOrderNo_str: TStringField;
    stpReceiptListReportOutstandingVoucherNo_str: TStringField;
    stpReceiptListReportOutstandingCharges_mon: TBCDField;
    stpReceiptListReportOutstandingOrdered_dat: TDateTimeField;
    stpReceiptListReportOutstandingInvoiced_dat: TDateTimeField;
    stpReceiptListReportOutstandingInvoiceNo_str: TStringField;
    stpReceiptListReportOutstandingReceived_dat: TDateTimeField;
    stpReceiptListReportOutstandingReceivedBy_str: TStringField;
    stpReceiptListReportOutstandingTotalPaid_mon: TBCDField;
    stpReceiptListReportOutstandingBoxes_int: TSmallintField;
    stpReceiptListReportOutstandingItemsNo_int: TSmallintField;
    stpReceiptListReportOutstandingChecked_dat: TDateTimeField;
    stpReceiptListReportOutstandingCheckedBy_str: TStringField;
    stpReceiptListReportOutstandingActivated_bol: TBooleanField;
    stpReceiptListReportOutstandingActivated_dat: TDateTimeField;
    stpReceiptListReportOutstandingActivatedBy_str: TStringField;
    stpReceiptListReportOutstandingType_str: TStringField;
    stpReceiptListReportOutstandingTotalCost_mon: TBCDField;
    stpReceiptListReportOutstandingItemsCost_mon: TBCDField;
    stpReceiptListReportOutstandingOtherCharges_mon: TBCDField;
    stpReceiptListReportOutstandingQtyCalculated_int: TIntegerField;
    stpReceiptListReportOutstandingQtyOnHand_int: TIntegerField;
    stpReceiptListReportOutstandingQtyOrdered_int: TIntegerField;
    stpReceiptListReportOutstandingQtyReceivedCum_int: TIntegerField;
    stpReceiptListReportOutstandingQtyOutstanding_int: TIntegerField;
    stpReceiptListReportOutstandingDescription: TWideStringField;
    stpReceiptListReportOutstandingPackSize: TWideStringField;
    stpReceiptListReportOutstandingDemanderCode_str: TWideStringField;
    stpReceiptListReportOutstandingDemanderName_str: TWideStringField;
    stpReceiptListReportOutstandingProductCode_str: TWideStringField;
    stpReceiptListReportOutstandingCode_str: TWideStringField;
    stpReceiptListReportOutstandingName_str: TWideStringField;
    stpReceiptListReportOutstandingSystemCode_str: TStringField;
    stpReceiptListReportOutstandingAccount_str: TStringField;
    stpReceiptListReportOutstandingAccountName_str: TStringField;
    tblReceiptListUniqueSuppliers: TADOQuery;
    cmdReceiptItemsAPPEND_GenerateReceipt_With_Order_Qty: TADOCommand;
    ADOQuery2: TADOQuery;
    stpAddBatchITem: TADOStoredProc;
    stpOrderItems_ReceivedQtyReceivedCum_int: TIntegerField;
    stpOrderItems_ReceivedQtyCalculated_int: TIntegerField;
    stpOrderItems_ReceivedCompleted_bol: TBooleanField;
    stpOrderItems_ReceivedOrderItemsNo_ID: TAutoIncField;
    stpStockControlReceiptItems: TADOStoredProc;
    stpStockControlReceiptItemsTotals: TADOStoredProc;
    stpStockControlReceiptItemsReceiptItem_ID: TAutoIncField;
    stpStockControlReceiptItemsReceiptNo_ID: TIntegerField;
    stpStockControlReceiptItemsProductCode_ID: TIntegerField;
    stpStockControlReceiptItemsOrderitemsNo_ID: TIntegerField;
    stpStockControlReceiptItemsOrderNo_ID: TIntegerField;
    stpStockControlReceiptItemsQtyOnHand_int: TIntegerField;
    stpStockControlReceiptItemsQtyOrdered_int: TIntegerField;
    stpStockControlReceiptItemsQtyReceived_int: TIntegerField;
    stpStockControlReceiptItemsQtyToFollow_int: TIntegerField;
    stpStockControlReceiptItemsPackCost_mon: TBCDField;
    stpStockControlReceiptItemsExtendedCost_mon: TBCDField;
    stpStockControlReceiptItemsBin_str: TStringField;
    stpStockControlReceiptItemsBarCode_str: TStringField;
    stpStockControlReceiptItemsLastUpdate_dat: TDateTimeField;
    stpStockControlReceiptItemsOrder_QtyOrdered: TIntegerField;
    stpStockControlReceiptItemsOrder_QtyReceived: TIntegerField;
    stpStockControlReceiptItemsOrder_PackCost: TBCDField;
    stpStockControlReceiptItemsOrder_QtyOutstanding: TIntegerField;
    stpStockControlReceiptItemsTradeName_str: TStringField;
    stpStockControlReceiptItemsReceiptNo_str: TStringField;
    stpStockControlReceiptItemsProductCode_str: TStringField;
    stpStockControlReceiptItemsVoucherNo_str: TStringField;
    stpStockControlReceiptItemsNSN_str: TStringField;
    stpStockControlReceiptItemsICN_str: TStringField;
    stpStockControlReceiptItemsECN_str: TStringField;
    stpStockControlReceiptItemsOrderNo_str: TStringField;
    stpStockControlReceiptItemsDuesOut_int: TIntegerField;
    stpStockControlReceiptItemsCompleted_bol: TBooleanField;
    stpStockControlReceiptItemsChargeCode_str: TStringField;
    stpStockControlReceiptItemsExpiry_dat: TDateTimeField;
    stpStockControlReceiptItemsLastUpdateBy_str: TStringField;
    stpStockControlReceiptItemsLastUpdateBy_dbl: TIntegerField;
    stpStockControlReceiptItemsBatchNumber_str: TStringField;
    stpStockControlReceiptItemsBatchQty_int: TIntegerField;
    stpStockControlReceiptItemsDescription_str: TStringField;
    stpStockControlReceiptItemsShippingPack_int: TIntegerField;
    stpReceiptListReportDemanderCode_str: TWideStringField;
    stpReceiptListReportDemanderName_str: TWideStringField;
    stpReceiptListReportReceiptNo_ID: TAutoIncField;
    stpReceiptListReportReceiptNo_str: TStringField;
    stpReceiptListReportReceiptDate_dat: TDateTimeField;
    stpReceiptListReportVoucherNo_str: TStringField;
    stpReceiptListReportCharges_mon: TBCDField;
    stpReceiptListReportOrdered_dat: TDateTimeField;
    stpReceiptListReportInvoiced_dat: TDateTimeField;
    stpReceiptListReportInvoiceNo_str: TStringField;
    stpReceiptListReportReceived_dat: TDateTimeField;
    stpReceiptListReportReceivedBy_str: TStringField;
    stpReceiptListReportLeadTime_int: TIntegerField;
    stpReceiptListReportTotalPaid_mon: TBCDField;
    stpReceiptListReportBoxes_int: TIntegerField;
    stpReceiptListReportItemsNo_int: TIntegerField;
    stpReceiptListReportChecked_dat: TDateTimeField;
    stpReceiptListReportCheckedBy_str: TStringField;
    stpReceiptListReportActivated_bol: TBooleanField;
    stpReceiptListReportActivated_dat: TDateTimeField;
    stpReceiptListReportActivatedBy_str: TStringField;
    stpReceiptListReportType_str: TStringField;
    stpReceiptListReportTotalCost_mon: TBCDField;
    stpReceiptListReportItemsCost_mon: TBCDField;
    stpReceiptListReportOtherCharges_mon: TBCDField;
    stpReceiptListReportProductCode_str: TWideStringField;
    stpReceiptListReportNSN_str: TWideStringField;
    stpReceiptListReportICN_str: TWideStringField;
    stpReceiptListReportECN_str: TWideStringField;
    stpReceiptListReportQtyOnHand_int: TIntegerField;
    stpReceiptListReportQtyOrdered_int: TIntegerField;
    stpReceiptListReportQtyReceived_int: TIntegerField;
    stpReceiptListReportQtyToFollow_int: TIntegerField;
    stpReceiptListReportPackCost_mon: TBCDField;
    stpReceiptListReportExtendedCost_mon: TBCDField;
    stpReceiptListReportBin_str: TStringField;
    stpReceiptListReportBarCode_str: TStringField;
    stpReceiptListReportLastUpdate_dat: TDateTimeField;
    stpReceiptListReportBatchNumber_str: TStringField;
    stpReceiptListReportExpiry_dat: TDateTimeField;
    stpReceiptListReportCode_str: TWideStringField;
    stpReceiptListReportName_str: TWideStringField;
    stpReceiptListReportDescription: TWideStringField;
    stpReceiptListReportPackSize: TWideStringField;
    stpReceiptListReportProductCode_str_1: TWideStringField;
    stpReceiptListReportOrderNo_str: TWideStringField;
    stpReceiptListReportSystemCode_str: TStringField;
    stpReceiptListReportAccount_str: TStringField;
    stpReceiptListReportAccountName_str: TStringField;
    stpReceiptListReportIncludeVat_bol: TBooleanField;
    ppParameterList1: TppParameterList;
    qryProductBatch: TADOQuery;
    stpReceiptListReportOutstandingIncludeVat_bol: TBooleanField;
    stpReceiptListReportOutstandingECN_str: TWideStringField;
    stpReceiptListReportOutstandingICN_str: TWideStringField;
    ppDBText24: TppDBText;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText27: TppDBText;
    ppReport2: TppReport;
    ppTitleBand3: TppTitleBand;
    ppImage7: TppImage;
    ppDBText51: TppDBText;
    ppLabel16: TppLabel;
    ppLabel15: TppLabel;
    ppLabel33: TppLabel;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText68: TppDBText;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppLabel67: TppLabel;
    ppLabel20: TppLabel;
    ppLine5: TppLine;
    ppLabel26: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppHeaderBand3: TppHeaderBand;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel63: TppLabel;
    ppLabel66: TppLabel;
    ppLabel68: TppLabel;
    ppLabel93: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBCalc7: TppDBCalc;
    ppDBText29: TppDBText;
    ppDBText63: TppDBText;
    ppDBText66: TppDBText;
    ppShape4: TppShape;
    ppLine3: TppLine;
    ppDBText86: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSystemVariable6: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppShape2: TppShape;
    ppLabel34: TppLabel;
    ppDBText30: TppDBText;
    ppLabel98: TppLabel;
    ppDBText88: TppDBText;
    ppSystemVariable7: TppSystemVariable;
    ppLabel99: TppLabel;
    ppDBText90: TppDBText;
    ppSystemVariable8: TppSystemVariable;
    ppLabel101: TppLabel;
    ppLabel100: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    raCodeModule3: TraCodeModule;
    ppVariable3: TppVariable;
    tblAllOrders3: TADOQuery;
    tblAllOrders3OrderNo_ID: TIntegerField;
    tblAllOrders3OrderNo_str: TWideStringField;
    tblAllOrders3Ordered_dat: TDateTimeField;
    tblAllOrders3Description: TWideStringField;
    tblAllOrders: TADOTable;
    sp_UpdateCompleteStatus: TADOQuery;
    stpStockControlReceiptReceiptNo_ID: TAutoIncField;
    stpStockControlReceiptSystemStore_Str: TStringField;
    stpStockControlReceiptSystemStore_ID: TIntegerField;
    stpStockControlReceiptSupplier_ID: TIntegerField;
    stpStockControlReceiptSupplier_str: TStringField;
    stpStockControlReceiptOrderNo_ID: TIntegerField;
    stpStockControlReceiptReceiptNo_str: TStringField;
    stpStockControlReceiptReceiptDate_dat: TDateTimeField;
    stpStockControlReceiptVoucherNo_str: TStringField;
    stpStockControlReceiptOrderNo_str: TStringField;
    stpStockControlReceiptCharges_mon: TBCDField;
    stpStockControlReceiptOrdered_dat: TDateTimeField;
    stpStockControlReceiptInvoiced_dat: TDateTimeField;
    stpStockControlReceiptInvoiceNo_str: TStringField;
    stpStockControlReceiptReceived_dat: TDateTimeField;
    stpStockControlReceiptReceivedBy_str: TStringField;
    stpStockControlReceiptTotalPaid_mon: TBCDField;
    stpStockControlReceiptBoxes_int: TIntegerField;
    stpStockControlReceiptItemsNo_int: TIntegerField;
    stpStockControlReceiptChecked_dat: TDateTimeField;
    stpStockControlReceiptCheckedBy_str: TStringField;
    stpStockControlReceiptActivated_bol: TBooleanField;
    stpStockControlReceiptActivated_dat: TDateTimeField;
    stpStockControlReceiptActivatedBy_str: TStringField;
    stpStockControlReceiptTotalCost_mon: TBCDField;
    stpStockControlReceiptItemsCost_mon: TBCDField;
    stpStockControlReceiptOtherCharges_mon: TBCDField;
    stpStockControlReceiptRemarks_mem: TMemoField;
    stpStockControlReceiptLastUpdate_dat: TDateTimeField;
    stpStockControlReceiptSupplierCode_str: TStringField;
    stpStockControlReceiptLeadTime_int: TIntegerField;
    stpStockControlReceiptType_str: TStringField;
    stpStockControlReceiptOrderRef_Str: TStringField;
    stpStockControlReceiptChargeCode_str: TStringField;
    stpStockControlReceiptIncludeVat_bol: TBooleanField;
    stpStockControlReceiptLastUpdateBy_str: TStringField;
    stpStockControlReceiptLastUpdateBy_dbl: TIntegerField;
    stpStockControlReceiptItemsComplete_bol: TBooleanField;
    tblProductBatch: TADOQuery;
    tblBinLocations: TADOQuery;
    qryTotalQtyonHand: TADOQuery;
    qryCurrentPrice: TADOQuery;
    stpStockControlReceiptItemsCalc_PackCost_mon: TBCDField;
    stpReceiptListReportRemarks_mem: TMemoField;
    stpReceiptListReportProvincialLogo_img: TBlobField;
    qryProductBatchProductBatch_ID: TAutoIncField;
    qryProductBatchProductCode_ID: TIntegerField;
    qryProductBatchSupplier_ID: TIntegerField;
    qryProductBatchPrice_mon: TBCDField;
    qryProductBatchContractBrandName_str: TWideStringField;
    qryProductBatchSupplierCode_str: TWideStringField;
    qryProductBatchBatchNumber_str: TWideStringField;
    qryProductBatchBarCode_str: TWideStringField;
    qryProductBatchExpiry_dat: TDateTimeField;
    qryProductBatchQtyOnHand_int: TIntegerField;
    qryProductBatchQtyReceived_int: TIntegerField;
    qryProductBatchQtyOnHold_int: TIntegerField;
    qryProductBatchBin_str: TWideStringField;
    qryProductBatchReceived_dat: TDateTimeField;
    qryProductBatchLastLeadTime_int: TIntegerField;
    qryProductBatchRemarks_mem: TMemoField;
    qryProductBatchLastUpdate_dat: TDateTimeField;
    qryProductBatchShippingPack_int: TIntegerField;
    qrySqlStatements: TADOTable;
    stp_CustomReport: TADOQuery;
    dsstp_CustomReport: TDataSource;
    stpReceiptListReportVATDiff: TBCDField;
    qryOtherPackSizes: TADOQuery;
    dsqryOtherPackSizes: TDataSource;
    qryProductDetails: TADOQuery;
    ActionList1: TActionList;
    atnAddDifferentPackSize: TAction;
    stp_AddProduct: TADOStoredProc;
    stpStockControlReceiptCheckedOutBy_ID: TIntegerField;
    stpStockControlReceiptCheckedOutName_str: TWideStringField;
    stpStockControlReceiptCheckedOut_bol: TBooleanField;
    stpStockControlReceiptCheckedOut_dat: TDateTimeField;
    stpAuditAPPEND: TADOStoredProc;
    tblSystemUsers: TADOQuery;
    tblSystemUsersUserID: TGuidField;
    tblSystemUsersDescription: TWideStringField;
    qryLockeReceiptView: TADOStoredProc;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    StringField4: TStringField;
    StringField5: TStringField;
    BCDField1: TBCDField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    StringField6: TStringField;
    DateTimeField4: TDateTimeField;
    StringField7: TStringField;
    BCDField2: TBCDField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    DateTimeField5: TDateTimeField;
    StringField8: TStringField;
    BooleanField1: TBooleanField;
    DateTimeField6: TDateTimeField;
    StringField9: TStringField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    BCDField5: TBCDField;
    MemoField1: TMemoField;
    DateTimeField7: TDateTimeField;
    StringField10: TStringField;
    IntegerField6: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    BooleanField2: TBooleanField;
    StringField14: TStringField;
    IntegerField7: TIntegerField;
    BooleanField3: TBooleanField;
    IntegerField8: TIntegerField;
    WideStringField1: TWideStringField;
    BooleanField4: TBooleanField;
    DateTimeField8: TDateTimeField;
    qryLockedReceiptItemsView: TADOStoredProc;
    AutoIncField2: TAutoIncField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    BCDField6: TBCDField;
    BCDField7: TBCDField;
    StringField15: TStringField;
    StringField16: TStringField;
    DateTimeField9: TDateTimeField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    BCDField8: TBCDField;
    IntegerField19: TIntegerField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    IntegerField20: TIntegerField;
    BooleanField5: TBooleanField;
    StringField25: TStringField;
    DateTimeField10: TDateTimeField;
    StringField26: TStringField;
    IntegerField21: TIntegerField;
    StringField27: TStringField;
    IntegerField22: TIntegerField;
    StringField28: TStringField;
    IntegerField23: TIntegerField;
    BCDField9: TBCDField;
    dsLockeReceiptView: TDataSource;
    dsLockedReceiptItemsView: TDataSource;
    qryIsReceiptLocked: TADOQuery;
    stpStockControlReceiptDemander_ID: TIntegerField;
    stpStockControlReceiptDemanderName_str: TWideStringField;
    tblSystemWharehouse: TADOQuery;
    tblSystemWharehouseSystemStore_ID: TAutoIncField;
    tblSystemWharehouseSystemAccount_ID: TAutoIncField;
    tblSystemWharehouseDemanderName_str: TWideStringField;
    tblSystemWharehouseDemanderCode_str: TWideStringField;
    tblSystemWharehouseAccountName_str: TStringField;
    tblSystemWharehouseAccount_str: TStringField;
    tblSystemWharehouseDescription: TWideStringField;
    stpReceiptListReceiptNo_ID: TAutoIncField;
    stpReceiptListReceiptDate_dat: TDateTimeField;
    stpReceiptListActivated_bol: TBooleanField;
    stpReceiptListReceiptNo_str: TStringField;
    stpReceiptListActivated_dat: TDateTimeField;
    stpReceiptListVoucherNo_str: TStringField;
    stpReceiptListOrderNo_ID: TIntegerField;
    stpReceiptListSupplier_ID: TIntegerField;
    stpReceiptListCharges_mon: TBCDField;
    stpReceiptListOrdered_dat: TDateTimeField;
    stpReceiptListInvoiced_dat: TDateTimeField;
    stpReceiptListInvoiceNo_str: TStringField;
    stpReceiptListReceived_dat: TDateTimeField;
    stpReceiptListReceivedBy_str: TStringField;
    stpReceiptListLeadTime_int: TIntegerField;
    stpReceiptListTotalPaid_mon: TBCDField;
    stpReceiptListBoxes_int: TIntegerField;
    stpReceiptListItemsNo_int: TIntegerField;
    stpReceiptListChecked_dat: TDateTimeField;
    stpReceiptListCheckedBy_str: TStringField;
    stpReceiptListActivatedBy_str: TStringField;
    stpReceiptListType_str: TStringField;
    stpReceiptListTotalCost_mon: TBCDField;
    stpReceiptListItemsCost_mon: TBCDField;
    stpReceiptListOtherCharges_mon: TBCDField;
    stpReceiptListLastUpdate_dat: TDateTimeField;
    stpReceiptListSystemStore_Str: TStringField;
    stpReceiptListSupplier_str: TStringField;
    stpReceiptListOrderRef_Str: TStringField;
    stpReceiptListItemsComplete_bol: TBooleanField;
    stpReceiptListCheckedOut_bol: TBooleanField;
    stpReceiptListCheckedOutName_str: TWideStringField;
    stpReceiptListCheckedOutBy_ID: TIntegerField;
    stpReceiptListDemander_ID: TIntegerField;
    stpReceiptListDemanderName_str: TWideStringField;
    ppHeaderBand1: TppHeaderBand;
    ppDBText2: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel4: TppLabel;
    ppLabel30: TppLabel;
    ppDBText35: TppDBText;
    ppDBText6: TppDBText;
    ppDBText21: TppDBText;
    ppDBImage1: TppDBImage;
    ppDBText13: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText15: TppDBText;
    ppLabel12: TppLabel;
    ppDBText19: TppDBText;
    ppDBText14: TppDBText;
    ppDBText18: TppDBText;
    ppDBText40: TppDBText;
    ppLabel8: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel11: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel28: TppLabel;
    ppDBText1: TppDBText;
    ppLabel39: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine7: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBMemo1: TppDBMemo;
    raCodeModule1: TraCodeModule;
    tblStockControlReceiptItemsAvailableOrders: TADOQuery;
    dstblStockControlReceiptItemsAvailableOrders: TDataSource;
    tblStockControlReceiptItemsAvailableOrdersCode_str: TWideStringField;
    tblStockControlReceiptItemsAvailableOrdersName_str: TWideStringField;
    tblStockControlReceiptItemsAvailableOrdersOrderNo_ID: TAutoIncField;
    tblStockControlReceiptItemsAvailableOrdersOrderNo_str: TWideStringField;
    tblStockControlReceiptItemsAvailableOrdersItemsNo_int: TIntegerField;
    tblStockControlReceiptItemsAvailableOrdersActivated_bol: TBooleanField;
    tblStockControlReceiptItemsAvailableOrdersOrder_dat: TDateTimeField;
    tblStockControlReceiptItemsAvailableOrdersOrdered_dat: TDateTimeField;
    tblStockControlReceiptItemsAvailableOrdersDescription: TWideStringField;
    tblStockControlReceiptItemsAvailableOrdersVoucherNo_str: TWideStringField;
    tblStockControlReceiptItemsAvailableOrdersSystemStore_ID: TIntegerField;
    tblStockControlReceiptItemsAvailableOrdersSystemStore_str: TWideStringField;
    tblStockControlReceiptItemsAvailableOrdersSupplier_ID: TIntegerField;
    tblStockControlReceiptItemsAvailableOrdersDemander_ID: TIntegerField;
    tblStockControlReceiptItemsAvailableOrdersDemanderName_str: TWideStringField;
    tblStockControlReceiptItemsAvailableOrdersDecriptionLookup: TADOQuery;
    dstblStockControlReceiptItemsAvailableOrdersDecriptionLookup: TDataSource;
    tblStockControlReceiptItemsAvailableOrdersDecriptionLookupCode_str: TWideStringField;
    tblStockControlReceiptItemsAvailableOrdersDecriptionLookupName_str: TWideStringField;
    tblStockControlReceiptItemsAvailableOrdersDecriptionLookupOrderNo_ID: TAutoIncField;
    tblStockControlReceiptItemsAvailableOrdersDecriptionLookupOrderNo_str: TWideStringField;
    tblStockControlReceiptItemsAvailableOrdersDecriptionLookupItemsNo_int: TIntegerField;
    tblStockControlReceiptItemsAvailableOrdersDecriptionLookupActivated_bol: TBooleanField;
    tblStockControlReceiptItemsAvailableOrdersDecriptionLookupOrder_dat: TDateTimeField;
    tblStockControlReceiptItemsAvailableOrdersDecriptionLookupOrdered_dat: TDateTimeField;
    tblStockControlReceiptItemsAvailableOrdersDecriptionLookupDescription: TWideStringField;
    tblStockControlReceiptItemsAvailableOrdersDecriptionLookupVoucherNo_str: TWideStringField;
    tblStockControlReceiptItemsAvailableOrdersDecriptionLookupSystemStore_ID: TIntegerField;
    tblStockControlReceiptItemsAvailableOrdersDecriptionLookupSystemStore_str: TWideStringField;
    tblStockControlReceiptItemsAvailableOrdersDecriptionLookupSupplier_ID: TIntegerField;
    tblStockControlReceiptItemsAvailableOrdersDecriptionLookupDemander_ID: TIntegerField;
    tblStockControlReceiptItemsAvailableOrdersDecriptionLookupDemanderName_str: TWideStringField;
    tblReceiptListUniqueSuppliersNames: TADOQuery;
    dstblReceiptListUniqueSuppliersNames: TDataSource;
    dstblSystemWharehouseNames: TDataSource;
    tblSystemWharehouseNames: TADOQuery;
    tblSystemWharehouseNamesSystemStore_ID: TIntegerField;
    tblSystemWharehouseNamesSystemAccount_ID: TIntegerField;
    tblSystemWharehouseNamesDemanderName_str: TWideStringField;
    tblSystemWharehouseNamesDemanderCode_str: TWideStringField;
    tblSystemWharehouseNamesAccountName_str: TStringField;
    tblSystemWharehouseNamesAccount_str: TStringField;
    tblSystemWharehouseNamesDescription: TWideStringField;
    qryItemInAudit: TADOQuery;
    qryTotalBatchesReceived: TADOQuery;
    qryAllBatchesReceiptItems: TADOStoredProc;
    AutoIncField3: TAutoIncField;
    IntegerField24: TIntegerField;
    IntegerField25: TIntegerField;
    IntegerField26: TIntegerField;
    IntegerField27: TIntegerField;
    IntegerField28: TIntegerField;
    IntegerField29: TIntegerField;
    IntegerField30: TIntegerField;
    IntegerField31: TIntegerField;
    BCDField10: TBCDField;
    BCDField11: TBCDField;
    StringField29: TStringField;
    StringField30: TStringField;
    DateTimeField11: TDateTimeField;
    IntegerField32: TIntegerField;
    IntegerField33: TIntegerField;
    BCDField12: TBCDField;
    IntegerField34: TIntegerField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    IntegerField35: TIntegerField;
    BooleanField6: TBooleanField;
    StringField39: TStringField;
    DateTimeField12: TDateTimeField;
    StringField40: TStringField;
    IntegerField36: TIntegerField;
    StringField41: TStringField;
    IntegerField37: TIntegerField;
    StringField42: TStringField;
    IntegerField38: TIntegerField;
    BCDField13: TBCDField;
    SaveDialog1: TSaveDialog;

    procedure DataModuleCreate(Sender: TObject);
    procedure tblReceiptListUniqueSuppliersFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppReport2iPreviewFormCreate(Sender: TObject);
    procedure stpStockControlReceiptNewRecord(DataSet: TDataSet);
    procedure stpStockControlReceiptBeforePost(DataSet: TDataSet);
    procedure stpReceiptListFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure stpStockControlReceiptItemsAfterPost(DataSet: TDataSet);
    procedure stpStockControlReceiptItemsAfterDelete(DataSet: TDataSet);
    procedure stpStockControlReceiptItemsBeforePost(DataSet: TDataSet);
    procedure stpStockControlReceiptItemsAfterInsert(DataSet: TDataSet);
    procedure stpStockControlReceiptItemsNewRecord(DataSet: TDataSet);
    function LoadSqlStatement(pType : integer): boolean;
    procedure atnAddDifferentPackSizeExecute(Sender: TObject);
    procedure stpStockControlReceiptSystemStore_IDChange(Sender: TField);
    procedure stpStockControlReceiptSupplier_IDChange(Sender: TField);
    procedure stpStockControlReceiptReceivedBy_strChange(Sender: TField);
    procedure stpStockControlReceiptCheckedBy_strChange(Sender: TField);

  private
    { Private declarations }
    FReceiptNo          :double;
    FOriginalOrderID    :double;
    FNewOrderID         :double;
    FAdding             :boolean;
    FVat, FLevy         :double;
    FRecounting         :boolean;

    FDaysExpiryWarning : integer;



    function ConnectDataSource: Boolean;
    function GetAccessLevel(vSecurityItem: double): integer;
    function SetDocumentPrintName(const pType: integer): String;
    procedure PreparePreviewForm(const pRep: TppReport);
    function DrillReceipt(pReceipt: double): double;
    function GetCurrProductID: double;
    procedure UpdateReceiptItemsDataSource;
    function GetReceiptOrderNo: double;
    function GetOrderNumber: string;
    procedure SetDateParams(DateStart :TDateTime; DateEnd :TDateTime; OpenTable :boolean = True);
    function CanAddReceipt: boolean;
    procedure PrintReceiptReportDetail;
    function RemoveOrderAmount(pTotalOrdered, pTotalAlreadyReceived, pQtyReceived : 
        integer): Integer;
    procedure LoadSystemUsers;
    function HasItemBeenCommitted(productCodeID: double;
      ReceiptItemID: integer): Boolean;
    function TotalBatchesReceived(receiptID: integer; productID: integer): integer;
    function CodeMyString(mystring: string; vlength: integer): string;   

  public
    { Public declarations }
    FUserName : string;
    FUserID : Variant;
    FUsesBatchManagement : Boolean;
    FUseAvgWeighedPrice : Boolean;
    FUseExactDayForExpiryDate : Boolean;
    FUsesBarcoding: Boolean;
    function FilterSuppliers(const pFrm, pTo: TDateTime): String;
    procedure PrintReceiptReport;
    procedure PrintReceiptReportOutStanding;
    procedure EditReceipt;
    procedure AddReceipt;
    procedure SetReceiptNumber;
    procedure UpdateReceiptTotalDataSource;
    procedure GenerateReceiptFromOrder;
    procedure GenerateReceiptFromWithOrderQuantities;//SM
    procedure UpdateReceiptSubTotals;
    procedure UpDateReceiptTotals;
    function ValidatePosting: Boolean;
    function DeleteReceipt: boolean;
    procedure UpdateTotals;
    function SetTypeValue(pVal: integer): boolean;
    function SetVATValue(pVal:integer): boolean;
    procedure MarkAllItemsAsComplete(pFrom: integer);
    procedure UpdateOrderDetails;

    procedure UpdateProductBatch(item_id: double; bin_str: string; batchnumber_str: string;
     expiry: TDateTime; qtyrec: integer; price_mon: Double; shippingPack: integer);

    procedure UpdateProduct(item_id: double; bin_str: string; qtyrec: integer; price_mon: Double; shippingPack: integer);

    function CalAvgWPrice(item_id : double; qtyReceiving : integer; receivingPrice: double; VAT: double) : double;
    procedure PrinterSelector(reportdoc: TppReport; printername : string; showDialog: boolean);

    procedure LoadOtherPackSizes(ProductID : integer);
    function  IsLockedBySameUser:Boolean;
    procedure MakeRecordAvailable;
    procedure CheckOutRecord;

    procedure PostNewReceipt;
    function UpdateItemDB( pItems : TADOStoredProc): Boolean;
//    function PostItems( pItems : TADOStoredProc): Boolean;
    function WriteAuditData(pAuditData:RProductAuditDetails): Boolean;
    procedure LoadLockedView;
    function IsReceiptLocked: Boolean;
    procedure UnLockRecordMain;
    procedure AddEditHistory(const pType, pStr: string; pAddType: integer);
    function UpdateLastDayMon(MyDate : TDate): TDate;
    function UpdateBarcode: Boolean;
    function CheckAllTotalBatches(showMsg: Boolean): Boolean;
    procedure CreateTextFileReceivingPMPUReport;

  end;

var
  ReceiptDm: TReceiptDm;

implementation



uses

  {$IFDEF RXSTOREBUILD}
  RxStoreMainUFrm,
  SystemSecurityUDM,
  SystemSecurityConstantsU,
  GridColumnSelectorUFrm,
  ProgressIndicatorUFrm,
  {$ELSE}

  RxSolutionUFrm, {Was RxStoreMainUFrm,}
  RxSolutionSecurityClass, {Was  SystemSecurityConstantsU,}
  DialogGridColumnSelectorUFrm,
  dmpDataObjectBaseModule,
  DialogProgressIndicatorUFrm,
  {$ENDIF}

  ProductGeneralUFrm,
  //MyApplicationUtilities,
  ReceiptDetailUFrm,
  MainUDM, ProductUpdateBarcodeUFrm;

  {$R *.DFM}

function TReceiptDm.UpdateLastDayMon(MyDate : TDate): TDate;
begin

 if (not ReceiptDm.FUseExactDayForExpiryDate) then
  Result := EncodeDate(YearOf(Mydate),MonthOf(MyDate), DaysInMonth(MyDate))
 else
  Result := MyDate;

end;

function TReceiptDm.GetAccessLevel(vSecurityItem: double): integer;
begin

  {$IFDEF RXSTOREBUILD}
  Result := USER_NONE;
  if Assigned(MainForm) then
    with MainForm, SystemSecurityDM do
      Result := GetUserRights(SYSTEM_RECEIPTS, vSecurityItem);
  {$ELSE}
  Result := RxSolutionFrm.Security.GetUserAccessLevel(MODULE_STORE_RECEIPTS, vSecurityItem)
  {$ENDIF}

end;

procedure TReceiptDm.tblReceiptListUniqueSuppliersFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var
  vCurSupplier  :double;

begin

  with Dataset do
    begin
    vCurSupplier := FieldByName('Supplier_ID').AsFloat;
    Accept := GetAccessLevel(vCurSupplier) > USER_NONE;
    end;

end;




function TReceiptDm.FilterSuppliers(  const pFrm, pTo :TDateTime):String;
begin

  Result := '';
  SetDateParams(pFrm,pTo);

end;


function TReceiptDm.ConnectDataSource: Boolean; (*::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:ConnectDataSource-----------------*)
                                                                                (*===========================================*)
                                                                   (*30.7.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  i, j                : integer;
  aAllDataSetsOpened  : boolean;
  Connections         : array[0..0] of TADOConnection;
  FDataBasePath       : string;

begin (*.............................................................*)(*begin*)(*...........................................*)

  aAllDataSetsOpened    := True;                                                // If datasets could not be opened, set this to false
  Connections[0]        := ADOReceiptsConnection;

  if Assigned(MainDM) then
    with MainDM do
      FDataBasePath     := ADOMainDBConnection.ConnectionString;

  for i:= low(Connections) to high(Connections) do
    with Connections[i] do
      try
      Connected         := False;                                               // Make sure it's not connected
      ConnectionString  := FDatabasePath;

      for j := 0 to DataSetCount - 1 do
        if Datasets[j].Tag < 1 then
          if not DataSets[j].Active then
            DataSets[j].Active := True;                                           // Activate the datastores.

      LoadSystemUsers;                                                                          // Connection is activated automatically.
      except
        on E: EDatabaseError do                                                 // Pick up any databse errors
          aAllDataSetsOpened := False;
      end;

  Result := aAllDataSetsOpened;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TReceiptDm.DataModuleCreate(Sender: TObject);
begin

  FRecounting := False;
  FAdding := False;
  FDaysExpiryWarning   := 0;
  SetDateParams(date - 30, date, False); //make sure this includes today's date...
  if Assigned(MainDM) then
    begin
    ConnectDataSource;
    end;
  FUsesBatchManagement  := MainDm.tblMainSystem.FieldByName('batchManagement_bol').AsBoolean; //SM
  FUseAvgWeighedPrice   := MainDm.tblMainSystem.FieldByName('AvgWeighedPricing_bol').AsBoolean; //SM
  if not MainDm.tblMainSystem.FieldByName('ShortDatedDays_int').IsNull then
   FDaysExpiryWarning   := MainDm.tblMainSystem.FieldByName('ShortDatedDays_int').AsInteger; //SM

  FUserName      := RxSolutionFrm.Security.User.LastName.ToString + ', ' +
                RxSolutionFrm.Security.User.FirstName.ToString;
  FUserID        := RxSolutionFrm.Security.User.UserNumID.Value;
  //****** SM 21 August 2013
  FUseExactDayForExpiryDate := MainDm.tblMainSystem.FieldByName('useExactDayForExpiryDate_bol').AsBoolean;
  //****** SM 21 Oct 2013
  FUsesBarcoding := MainDm.tblMainSystem.FieldByName('useBarCoding_bol').AsBoolean;

end;



function TReceiptDm.SetDocumentPrintName(const pType:integer):String;
const
  NDOCNAME = 'RxSolution - [%sReceipt No:%s from (%s)-%s]';

var
  i :integer;
  vCodeStr,vNoStr,vDemStr, vDraft :string;
  vRecID    :double;
  vReport   :TADOStoredProc;

begin

  Result := '';

   case pType of
    0,2:
      begin
      vReport := stpReceiptListReport;
      vDraft := '';
      end;
    1:
      begin
      vReport := stpReceiptListReportOutstanding;
      vDraft := 'Outstanding Items ';
      end;
   end;

   with stpReceiptList do
    if Active then
      begin
//     vCodeStr  := FieldByName('Code_Str').AsString;
      vCodeStr  := '';
      vNoStr    := FieldByName('ReceiptNo_str').AsString;
      vDemStr   := FieldByName('Supplier_str').AsString;
      vRecID    := FieldByName('ReceiptNo_ID').AsFloat;
      end;


    with stpStockControlReceipt do
      if Active then
        begin
//        vCodeStr  := FieldByName('Code_Str').AsString;
        vCodeStr  := '';
        vNoStr    := FieldByName('ReceiptNo_str').AsString;
        vDemStr   := FieldByName('Supplier_str').AsString;
        vRecID    := FieldByName('ReceiptNo_ID').AsFloat;
        end;


  Result    := Format(NDOCNAME, [vDraft, vNoStr, vCodeStr, vDemStr]);

  with vReport do
    begin
    Close;
    Prepared := False;
    Parameters.ParamByName('@RecID').Value := vRecID;
    Prepared := True;
    Open;
    end;
end;


procedure TReceiptDm.PreparePreviewForm(const pRep:TppReport);
begin

end;


procedure TReceiptDm.ppReport1PreviewFormCreate(Sender: TObject);
begin
  PreparePreviewForm(Sender as TppReport);
end;

procedure TReceiptDm.ppReport2iPreviewFormCreate(Sender: TObject);
begin
  PreparePreviewForm(Sender as TppReport);
end;

procedure TReceiptDm.PrintReceiptReport;
begin
with ppReport1 do
 begin
        if LoadSqlStatement(0) then
         begin
         //Change the datasource of the DB pipe line to point to user defined report query
         ppDBPipeline1.DataSource := dsstp_CustomReport;
         //Load from file
         Template.FileName := ExtractFilePath(Application.ExeName) + 'tmp\Receipt.rtm';
         Template.LoadFromFile;
         end;


    PrinterSetup.DocumentName := SetDocumentPrintName(0);

    Print;
    
 end;

    AddEditHistory(HST_PRN, 'Printing receipt', ADD_REC);
end;

procedure TReceiptDm.PrintReceiptReportDetail;
begin
//  with tblReceiptListReport do
//    begin
    ppReport1.PrinterSetup.DocumentName := SetDocumentPrintName(0);
    ppReport1.Print;
    AddEditHistory(HST_PRN, 'Printing receipt', ADD_REC);
//    end;
end;


procedure TReceiptDm.PrintReceiptReportOutStanding;
begin
//  with tblReceiptListReport do
//    begin
    ppReport2.PrinterSetup.DocumentName := SetDocumentPrintName(1);
    ppReport2.Print;
    AddEditHistory(HST_PRN, 'Printing outstanding items for receipt', ADD_REC);
//    end;
end;




procedure TReceiptDm.AddReceipt; (*:::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:EditReq--------------------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vCurrRec  :double;
  vNewRec  :double;

begin (*.............................................................*)(*begin*)(*...........................................*)

  if CanAddReceipt then
    begin
    with stpReceiptList do
      try
      DisableControls;
      vCurrRec := FieldByName('ReceiptNo_ID').AsFloat;
      vNewRec  := DrillReceipt(0);                            // pIssues display.  True shows issues else requests (OLD)
      if vNewRec <> 0 then vCurrRec := vNewRec;
      Requery;
        try
        Locate('ReceiptNo_ID', vCurrRec, []);
        except
        end;
      finally
      EnableControls;
      end
    end else
    MessageDlg('You cannot Add a receipt.  Their are no suppliers ' + #13 +
                'or' + #13 + 'oustanding orders available!', mtError, [mbOK],0);

end; (*................................................................*)(*end*)(*...........................................*)




procedure TReceiptDm.EditReceipt;

var (*.................................................................*)(*var*)(*...........................................*)
  vCurrRec  :double;

begin (*.............................................................*)(*begin*)(*...........................................*)

  with stpReceiptList do
    try
    DisableControls;
    vCurrRec := FieldByName('ReceiptNo_ID').AsFloat;
    DrillReceipt(vCurrRec);                            // pIssues display.  True shows issues else requests (OLD)
    Requery;
      try
      Locate('ReceiptNo_ID', vCurrRec, []);
      except
      end;
    finally
    EnableControls;
    end;

end;



function TReceiptDm.DrillReceipt( pReceipt  : double): double; (*::::::START:*)(*===========================================*)
                                                (*function:DrillRequisition------------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)

var (*.................................................................*)(*var*)(*...........................................*)
  vReceiptEdit        : TReceiptEditor;
  vSaveOrDelete,
  vCurrentPosting,
  vWasPosted      : Boolean;
  vStpProcs       : array[0..3] of TADOStoredProc;
  vStpPreProcs    : array[0..0] of TADOCommand;
  vStpPostProcs   : array[0..0] of TADOCommand;
  i               : integer;


  vProductID      : Double;
  vItemsReceived,
  vItemsPosted    :integer;
  vAddedRecord    :boolean;

procedure intUpdateReceiptTotals(pRec, pTotals: TADOStoredProc);
begin (*...........................................................*)(*begin*)(*...........................................*)
  pTotals.Close;
  pTotals.Open;
  with pRec  do
    begin
//    if (IsLockedBySameUser) then
     begin
     Edit;
     FieldByName('ItemsNo_int').Asinteger := pTotals.FieldByName('countOfReceiptItem_ID').AsInteger;
     Post;
     end;
    end;
end; (*..............................................................*)(*end*)(*...........................................*)

procedure PostThisReceipt(pItems : TADOStoredProc);
begin

    with pItems do
      begin
      if not (State in [dsEdit, dsInsert]) then Edit;

      {$IFDEF RXSTOREBUILD}
      FieldByName('ActivatedBy_str').AsString   :=
        SystemSecurityDM.UserLName +','+ SystemSecurityDM.UserFName;
      {$ELSE}
      FieldByName('ActivatedBy_str').AsString   :=
        RxSolutionFrm.Security.User.LastName.ToString + ', ' +
        RxSolutionFrm.Security.User.FirstName.ToString;
      {$ENDIF}
      FieldByName('Activated_dat').AsDateTime   := Date;
      Post;
      end;
end;


begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := 0;
  vStpProcs[0] := stpStockControlReceipt;
  vStpProcs[1] := stpStockControlReceiptItems;
  vStpProcs[2] := stpStockControlReceiptItemsTotals;
  vStpProcs[3] := stpReceiptEditHistory;

  vStpPreProcs[0]   := cmdReceiptItemsUPDATE_ReceiptFromOrderItems;
  vStpPostProcs[0]  := cmdReceiptItemsDELETE_NoReceipts;
//  vStpPostProcs[1] := cmdReceiptItemsAPPEND_Audit;

try
  tblReceiptListUniqueSuppliers.Close;
  tblReceiptListUniqueSuppliers.Open;

  tblReceiptListUniqueSuppliersNames.Close;
  tblReceiptListUniqueSuppliersNames.Open;
  

  tblGeneralProductStockDetails.Requery;
  tblSystemWharehouse.Close;
  tblSystemWharehouse.Open;

  tblSystemWharehouseNames.Close;

  tblSystemWharehouseNames.Open;

  //MC Mankga  - 30/01/2013
  tblStockControlReceiptItemsAvailableOrders.Open;
  tblStockControlReceiptItemsAvailableOrdersDecriptionLookup.Open;

  LoadSystemUsers;


  with ADOReceiptsConnection do
    try

    vAddedRecord := False;
    if Length(vStpPreProcs) > 0 then
      for i := low(vStpPreProcs) to high(vStpPreProcs) do
        with vStpPreProcs[i] do
          begin
          Parameters.ParamByName('ReceiptID').Value    := pReceipt;
          Prepared := True;
          Execute;
          end;

    if pReceipt = 0 then
      with vStpProcs[0] do
        begin
        Close;
        Prepared := False;
        Parameters.ParamByName('@ReceiptID').Value := pReceipt;                    // All stored procs have same param name
        Prepared := True;                                                         // Need to prepare for the qry to return result set
        Open;        // has to be done this way. cannot close a table and hold the transaction.
        Append;   //checkout here

        FieldByName('LastUpdateBy_str').AsString      := FUserName;
        FieldByName('LastUpdateBy_dbl').AsInteger      := FUserID;
        FieldByName('LastUpdate_dat').AsDateTime      := Now;
        FieldByName('CheckedOut_bol').AsBoolean       := True;
        FieldByName('CheckedOutName_str').AsString    := FUserName;
        FieldByName('CheckedOutBy_ID').AsInteger      := FUserID;
        FieldByName('CheckedOut_dat').AsDateTime      := Now();

        Post;
        pReceipt := FieldByName('ReceiptNo_ID').AsFloat;
        vAddedRecord := True;
        end;

    for i := low(vStpProcs) to high(vStpProcs) do
      with vStpProcs[i] do
        begin
        Close;
        Prepared := False;
        Parameters.ParamByName('@ReceiptID').Value := pReceipt;                    // All stored procs have same param name
        Prepared := True;                                                         // Need to prepare for the qry to return result set
        Open;
        if i = 0 then
        begin
        Edit;
        FieldByName('CheckedOut_bol').AsBoolean       := True;
        FieldByName('CheckedOutName_str').AsString    := FUserName;
        FieldByName('CheckedOutBy_ID').AsInteger      := FUserID;
        FieldByName('CheckedOut_dat').AsDateTime      := Now();
        Post;
        end;


        end;

//    BeginTrans;
//    MainDm.ProductStartTrans;

    FReceiptNo        := pReceipt;
    Result            := pReceipt;
    FOriginalOrderID  := GetReceiptOrderNo;
    FNewOrderID       := FOriginalOrderID;

    vReceiptEdit  := TReceiptEditor.Create;

      try
      vWasPosted      := vStpProcs[0].FieldByName('Activated_bol').AsBoolean;
      vSaveOrDelete   := vReceiptEdit.EditReceipt;
      vCurrentPosting := vStpProcs[0].FieldByName('Activated_bol').AsBoolean;

      if vSaveOrDelete then
        begin
        for i := low(vStpProcs) to high(vStpProcs) do
          with vStpProcs[i] do
            if State in [dsEdit, dsInsert] then Post;

        UpdateReceiptTotalDataSource;
        if not vWasPosted then
          if vCurrentPosting then
            begin

            for i := low(vStpPostProcs) to high(vStpPostProcs) do
              with vStpPostProcs[i] do
                begin
                Parameters.ParamByName('ReceiptID').Value    := pReceipt;
                Prepared := True;
                Execute;
                end;
            vStpProcs[1].Close;
            vStpProcs[1].Open;

          // if IsLockedBySameUser then
           //  if UpdateItemDB(vStpProcs[1]) then
           //   PostThisReceipt( vStpProcs[0] );
            end;
        //if IsLockedBySameUser then
         intUpdateReceiptTotals( vStpProcs[0], vStpProcs[2]);
//        CommitTrans;
//        MainDm.ProductCommitTrans;
        //MakeRecordAvailable;  //SN                                            

        end else
        begin
        for i := low(vStpProcs) to high(vStpProcs) do
          with vStpProcs[i] do
            if State in [dsEdit, dsInsert] then Cancel;

//        RollBackTrans;
//        MainDm.ProductRollbackTrans;

        if vAddedRecord then
          begin              // because this was outside transaction, delete here
          with vStpProcs[0] do
            if FieldByName('ReceiptNo_ID').AsFloat = pReceipt then
              Delete;
          Result := 0;
          end;
        end;

      finally
      vReceiptEdit.Free;
      end;

    finally
    
//    if InTransaction then RollBackTrans; // Don't leave the database in an unknown state
//    if Assigned(MainDM) then
//      with MainDM do
//        ProductRollbackTrans;
    FReceiptNo := 0;


    for i := low(vStpProcs) to high(vStpProcs) do
      vStpProcs[i].Close;
    tblStockControlReceiptItemsAvailableOrders.Close;
    tblStockControlReceiptItemsAvailableOrdersDecriptionLookup.Close;

    end;
  except
    on E:Exception do
      MessageDlg(E.Message, mtInformation, [mbOK], 0);

end;
end; (*................................................................*)(*end*)(*...........................................*)




function TReceiptDm.GetCurrProductID: double; (*::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:GetCurrProductID------------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := 0;
  with stpStockControlReceiptItems do
    if Active then
      if RecordCount > 0 then
        Result := FieldByName('ProductCode_ID').AsFloat;
end; (*................................................................*)(*end*)(*...........................................*)




function TReceiptDm.GetOrderNumber: string; (*::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*function:GetCurrProductID------------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

  Result := '';
  with tblStockControlReceiptItemsAvailableOrders do
    if Active then
      if RecordCount > 0 then
        Result := FieldByName('OrderNo_str').AsString;

end; (*................................................................*)(*end*)(*...........................................*)



procedure TReceiptDm.UpdateReceiptItemsDataSource; (*::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:UpdateRequisitionTotalDisplay----*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

//  if FUpdateData then
    with stpStockControlReceiptItems do
      if Active then
        begin
        Close;
        Open;
        end;
end; (*................................................................*)(*end*)(*...........................................*)




procedure TReceiptDm.SetReceiptNumber; (*:::::::::::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:SetRequisitionNumber-------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vFetchSuccess :boolean;

begin (*.............................................................*)(*begin*)(*...........................................*)

  if Assigned(MainDM) then
    with stpStockControlReceipt, MainDM do
      begin
      if not (State in [dsEdit, dsInsert]) then Edit;
      FieldByName('ReceiptNo_str').AsString   :=
        GetNextVoucherNumber( vFetchSuccess, 1, FRM_RECEIPTS);                  // the 1 is the wharehouse ID
      Post;
      end;
end; (*................................................................*)(*end*)(*...........................................*)


function TReceiptDm.GetReceiptOrderNo:double;

begin

  Result := 0;
  with stpStockControlReceipt do
    if Active then
      if RecordCount > 0 then
        begin
        if State in [dsEdit, dsInsert] then Post;
        Result := stpStockControlReceipt.FieldByName('OrderNo_ID').AsFloat;
        end;

end;



procedure TReceiptDm.GenerateReceiptFromOrder;
var
  i : integer;
begin

  if MessageDlg('Replace ALL Existing Items?',mtWarning,[mbOK,mbCancel],0) = mrOK then
    begin
    FNewOrderID := GetReceiptOrderNo;
    if FNewOrderID > 0 then
      begin
      with stpReceiptItemsDELETE_AllItems do
        begin
        Prepared := False;
        Parameters.ParamByName('ReceiptID').Value    := FReceiptNo;
        Prepared := True;
        ExecProc;
        end;

      with cmdReceiptItemsAPPEND_GenerateReceipt do
        begin
        Prepared := False;
        Parameters.ParamByName('ReceiptID').Value    := FReceiptNo;
        Parameters.ParamByName('OrderID').Value      := FNewOrderID;
        Prepared := True;
        Execute;
        end;
      AddEditHistory(HST_ADD, 'Adding product(s) to receipt', ADD_REC);
      UpdateReceiptItemsDataSource;
      UpdateReceiptTotalDataSource;
      UpdateReceiptSubTotals;
      end;  
    end;

end;

procedure TReceiptDm.GenerateReceiptFromWithOrderQuantities;  //SM 07/06/06
var
  i               : integer;

begin
    FNewOrderID := GetReceiptOrderNo;
    if FNewOrderID > 0 then
      begin
      with stpReceiptItemsDELETE_AllItems do
        begin
        Prepared := False;
        Parameters.ParamByName('ReceiptID').Value    := FReceiptNo;
        Prepared := True;
        ExecProc;
        end;

      with cmdReceiptItemsAPPEND_GenerateReceipt_With_Order_Qty do
        begin
        Prepared := False;
        Parameters.ParamByName('ReceiptID').Value    := FReceiptNo;
        Parameters.ParamByName('OrderID').Value      := FNewOrderID;
        Prepared := True;
        Execute;
        end;
      AddEditHistory(HST_ADD, 'Adding product(s) to receipt with quantities', ADD_REC);
      UpdateReceiptItemsDataSource;
      UpdateReceiptTotalDataSource;
      UpdateReceiptSubTotals;
      end;
end;



procedure TReceiptDm.stpStockControlReceiptNewRecord(DataSet: TDataSet);


var (*.................................................................*)(*var*)(*...........................................*)
  vFetchSuccess :boolean;
  vContinue     :boolean;
  vSuppID       :Double;
  vRefID        :Double;
const
  ErrMsg =  'No Supplier available.'#13'Please add or activate at least one Supplier'#13'OR'#13 +
            'Check with the system administrator';    
begin

  vContinue := False;
  vSuppID   := 0;
  vRefID    := 0;

  with tblReceiptListUniqueSuppliers do
    if Active then
      if RecordCount > 0 then
        begin
        vContinue := True;
        if SYSTEMSUPP_DEF = 0 then
          vSuppID    := FieldByName('Supplier_ID').AsFloat
          else
          vSuppID    := SYSTEMSUPP_DEF;
        end;

  if vContinue then
    begin
    if Assigned(MainDM) then
      with DataSet do
        begin
//        FieldByName('Supplier_ID').AsFloat        := vSuppID;
//        FieldByName('SystemStore_ID').AsFloat     := SYSTEMSTORE_DEF;
        FieldByName('ReceiptNo_str').AsString     := MainDM.GetNextVoucherNumber( vFetchSuccess, 1, FRM_RECEIPTS);                  // the 1 is the wharehouse ID
        FieldByName('Activated_bol').AsBoolean    := False;
        FieldByName('IncludeVat_bol').AsBoolean   := False;
        FieldByName('Charges_mon').AsCurrency     := 0;
        FieldByName('ReceiptDate_dat').AsDateTime := Date;
        FieldByName('TotalPaid_mon').AsCurrency   := 0;
        FieldByName('Boxes_int').AsInteger        := 0;
        FieldByName('TotalCost_mon').AsCurrency   := 0;
        FieldByName('ItemsCost_mon').AsCurrency   := 0;
        FieldByName('Type_str').AsString          := 'D';
    //    FieldByName('OrderNo_ID').AsFloat         := vRefID;  //SM 18 March 2008
    // Don't want to populate this field on new receipt record, thats why is has been blocked off.
        end;
    end else
    begin
    MessageDlg(ErrMsg,mtWarning,[mbOK],0);
    Abort;
    end;

end;


procedure TReceiptDm.UpdateReceiptSubTotals;
begin (*...........................................................*)(*begin*)(*...........................................*)


  with stpStockControlReceipt do
    begin
    if not (State in [dsEdit, dsInsert]) then Edit;


    FieldByName('TotalCost_mon').AsCurrency :=
      stpStockControlReceiptItemsTotals.FieldByName('SumOfExtendedCost_mon').AsCurrency +
      FieldByName('Charges_mon').AsCurrency;

    FieldByName('ItemsNo_int').AsInteger :=
      stpStockControlReceiptItems.RecordCount;

//    Post;
    end;

end; (*..............................................................*)(*end*)(*...........................................*)



procedure TReceiptDm.UpdateReceiptTotalDataSource; (*::::::::::::::START:*)(*===========================================*)
                                                                                (*procedure:UpdateRequisitionTotalDisplay----*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
begin (*.............................................................*)(*begin*)(*...........................................*)

//  if FUpdateData then
    with stpStockControlReceiptItemsTotals do
//      if Active then
        begin
        Close;
        Open;
        end;
end; (*................................................................*)(*end*)(*...........................................*)


procedure TReceiptDm.UpDateReceiptTotals;
begin
  UpdateReceiptTotalDataSource;
  UpdateReceiptSubTotals;
end;

procedure TReceiptDm.stpStockControlReceiptBeforePost(DataSet: TDataSet);
var
  vADOTable         :TADOTable;
  vADOQuery         :TADOQuery;
  prvQry            :TADOQuery;
  vAllItemComplete  :boolean;
begin

  with stpStockControlReceiptItemsComplete do
    begin
    Close;
    Parameters.ParamByName('@RecID').Value := DataSet.FieldByName('ReceiptNo_ID').AsFloat;
    Prepared := True;
    Open;
    vAllItemComplete := (not stpStockControlReceiptItemsComplete.RecordCount > 0);
    Close;
    end;

  with DataSet do
    begin
    FieldByName('ItemsComplete_bol').AsBoolean :=  vAllItemComplete;
    // Set leadtime Var
    vADOQuery := tblStockControlReceiptItemsAvailableOrders;
    if (FieldByName('Received_dat').IsNull) or
      (vADOQuery.FieldByName('Ordered_dat').IsNull) then
      FieldByName('LeadTime_int').AsInteger := 0
      else
      FieldByName('LeadTime_int').AsInteger :=
        Round(DaySpan(FieldByName('Received_dat').AsDateTime,
              vADOQuery.FieldByName('Ordered_dat').AsDateTime));

    // Set Supplier string
    prvQry := tblReceiptListUniqueSuppliers;
    //prvQry.FieldByName('Name_str').AsString {+ ' [' +
    //  prvQry.FieldByName('Code_str').AsString + ']'};  //SM Reomve [] from Supplier Name
        //only update account string if the record is not posted
{   if not (FieldByName('Activated_bol').AsBoolean) then
    begin
    FieldByName('Supplier_str').AsString      :=

    //SM
    FieldByName('SupplierCode_str').AsString      :=
    prvQry.FieldByName('Code_str').AsString;
    end;

    // Set Account string

//only update account string if the record is not posted
    if not (FieldByName('Activated_bol').AsBoolean) then
     if not (FieldByName('SystemStore_ID').IsNull) then
      FieldByName('SystemStore_str').AsString   := tblSystemWharehouse.FieldByName('Description').AsString;
      }

//SM 18 March Don't update the Order Ref anything if the receipt has been POSTED
    if not (FieldByName('Activated_bol').AsBoolean)  then
     begin
     if not FieldByName('OrderNo_ID').IsNull then
      begin
      //SM Code updated to lookup from all records the table orders
       vADOTable := tblAllOrders; vADOTable.Close; vADOTable.Open;     //SM 26 Mar 2008// Revised 15 May 2009
       if vADOTable.Locate('OrderNo_ID', FieldByName('OrderNo_ID').AsInteger, []) then
        begin
        FieldByName('OrderNo_str').AsString := vADOTable.fieldByName('OrderNo_str').AsString;
        FieldByName('OrderRef_Str').AsString:= vADOTable.fieldByName('Supplier_str').AsString +' '+vADOTable.fieldByName('OrderNo_str').AsString ;
        //*********** 27 March 2012 ******** Task: 3336
        FieldByName('Ordered_dat').AsDateTime := vADOTable.fieldByName('Ordered_dat').AsDateTime;
        end;
       end;

     end;

    end;  //with DataSet do
end;


function TReceiptDm.ValidatePosting:Boolean;
const
  EMSG = 'You may not post this record unless all of the following are completed!' +
          #13 + 'Checked By && Date' +
          #13 + 'Received By && Date' +
          #13 + 'Invoice Number';
  WMSG = 'If you post this record, you may no longer edit it once you have saved && closed';      
begin
  Result := True;

    if stpStockControlReceipt.Active then
     begin
     with stpStockControlReceipt do
      begin
      if FieldByName('CheckedBy_str').AsString = '' then Result := False;
      if FieldByName('ReceivedBy_str').AsString = '' then Result := False;
      if FieldByName('Checked_dat').IsNull then Result := False;
      if FieldByName('Received_dat').IsNull then Result := False;
      if FieldByName('InvoiceNo_str').IsNull then Result := False;
      end;
   if not Result then
    MessageDlg(EMSG, mtWarning, [mbOK],0);
   end
  else
   Result := False;
   
end;


function TReceiptDm.DeleteReceipt:boolean;
var
  vWasPosted      : Boolean;
  vSupplier       : string;
  vReceiptID        : Double;
  i               : integer;
  vDescription    : string;

begin
  with stpReceiptList do
    begin
    vWasPosted    :=  FieldByName('Activated_bol').AsBoolean;
    vSupplier     :=  '[' + FieldByName('ReceiptNo_str').AsString + '] ' +
                      FieldByName('Supplier_str').AsString;
    vReceiptID    :=  FieldByName('ReceiptNo_ID').AsFloat;
    vDescription  :=  'because it has already been posted!';

    if vWasPosted then
      begin
      MessageDlg('Cannot Delete Receipt' + #13 + vSupplier + #13 + vDescription ,mtError	, [mbOK],0);
      end else
      begin
      if MessageDlg('DELETE RECEIPT?' + #13 + vSupplier, mtWarning, [mbYes, mbNo],0) = mrYes then
        begin
        with ADOCommand_General do
          for i:=0 to 1 do
            begin
            case i of
              0: CommandText := 'DELETE TblReceiptItems WHERE (((TblReceiptItems.ReceiptNo_ID)=' + FloatToStr(vReceiptID) + '));';
//Edit hist not yet available
              1: CommandText := 'DELETE TblReceipt WHERE (((TblReceipt.ReceiptNo_ID)=' + FloatToStr(vReceiptID) + '));';
              end; //case
            Execute;
            end; //  for i:=0 to 3 do
        stpReceiptList.Close;
        stpReceiptList.Open;
        end; // messagedlg
      end; // vWasPosted
    end;
end;

// called when changing VAt or Depot status.  Needs to then update totals
procedure TReceiptDm.UpdateTotals;
var
  i, vVal :integer;
  vOverallProgress            : TProgressIndicatorFrm;
begin
//  if (stpStockControlReceipt.State in [dsEdit, dsInsert]) then
//    stpStockControlReceipt.Post;
  FRecounting := True;
  with stpStockControlReceiptItems do
    if RecordCount > 0 then
      begin
      DisableControls;
      First;
      i := 1;
        try
        vOverallProgress := TProgressIndicatorFrm.Create(Self);
        vOverallProgress.MaxProgress := RecordCount;
        while not EOF do
          begin
          vVal := stpStockControlReceiptItems.FieldByName('QtyReceived_int').AsInteger;
          Edit;
          FieldByName('QtyReceived_int').AsInteger := vVal;
          Post;
          vOverallProgress.CurrentProgress := i;
          inc(i);
          Next;
          end;
        if RecordCount > 0 then First;
        finally
        vOverallProgress.MaxProgress := 0;
        vOverallProgress.Free;
        end;
      EnableControls;
      end;
  FRecounting := False;
  UpdateReceiptTotalDataSource;
  UpdateReceiptSubTotals;
end;

function TReceiptDm.SetTypeValue(pVal:integer):boolean;
begin
  with stpStockControlReceipt do
    begin
    if not (State in [dsEdit, dsInsert]) then Edit;
    case pVal of
      1: FieldByName('Type_Str').AsString := 'D';
      2: FieldByName('Type_Str').asString := 'V';
      3: FieldByName('Type_Str').asString := 'B';
      end;
//    Post;
    end;
end;

function TReceiptDm.SetVATValue(pVal:integer):boolean;
begin

  with stpStockControlReceipt do
    begin
    if not (State in [dsEdit, dsInsert]) then Edit;
    case pVal of
      1: FieldByName('IncludeVat_bol').AsBoolean  := True;
      2: FieldByName('IncludeVat_bol').AsBoolean  := False;
      end;
//    Post;
    end;

end;

procedure TReceiptDm.SetDateParams(DateStart, DateEnd: TDateTime;OpenTable : boolean);
begin

  with stpReceiptList do
    begin
    Close;
    Parameters.ParamByName('Startdate').Value   := (DateStart);
    Parameters.ParamByName('EndDate').Value     := (DateEnd);
    Prepared := True;
    if OpenTable then Open;
    end;

end;


procedure TReceiptDm.stpReceiptListFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  vCurSupplier  :double;

begin

  with Dataset do
    begin
    vCurSupplier := FieldByName('ReceiptNo_ID').AsFloat;
    Accept := GetAccessLevel(vCurSupplier) > USER_NONE;
    end;

end;

function TReceiptDm.CanAddReceipt:boolean;

var (*.................................................................*)(*var*)(*...........................................*)
  vContinue     :boolean;
  vSuppID       :Double;
  vRefID        :Double;
begin

  vContinue := False;
  vSuppID   := 0;
  vRefID    := 0;

  with tblReceiptListUniqueSuppliers do
    if Active then
      if RecordCount > 0 then
        vContinue := True;

  with tblStockControlReceiptItemsAvailableOrders do
    if Active then
      if RecordCount > 0 then
        vContinue := True;

  Result := vContinue;

end;


procedure TReceiptDm.AddEditHistory(const pType, pStr :string;
                                              pAddType: integer ); (*:::::::::START:*)(*===========================================*)
                                                                                (*procedure:AddEditHistory-------------------*)
                                                                                (*===========================================*)
                                                                   (*15.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vRecID, vRecItemID  :double;

begin (*.............................................................*)(*begin*)(*...........................................*)


  vRecID      := 0;
  vRecItemID  := 0;

  with stpReceiptList do
    if Active then
      if RecordCount > 0 then                                                   //
        vRecID := stpReceiptList.FieldByName('ReceiptNo_ID').AsFloat; // Get current ID's for Req items

  with stpStockControlReceipt do                                            // Use same table as curently being edited
    if Active then
      vRecID := FieldByName('ReceiptNo_ID').AsFloat;                           // Get current ID's for Req items



  with stpStockControlReceiptItems do
    if Active then
      if RecordCount > 0 then
        vRecItemID := FieldByName('ReceiptItem_ID').AsFloat;



    with stpReceiptEditHistory do
        begin

        if not Active then
          begin
          Close;
          Prepared := False;
          Parameters.ParamByName('@ReceiptID').Value := vRecID;                    // All stored procs have same param name
          Prepared := True;                                                         // Need to prepare for the qry to return result set
          Open;        // has to be done this way. cannot close a table and hold the transaction.
          end;

        Append;
        FieldByname('Receipt_ID').AsFloat       := vRecID;
        FieldByName('Description_str').AsString := pStr;
        {$IFDEF RXSTOREBUILD}
        FieldByName('UserName_str').AsString    := SystemSecurityDM.UserLName +','+ SystemSecurityDM.UserFName;
        FieldByName('User_ID').AsFloat          := SystemSecurityDM.UserID;
        {$ELSE}
        FieldByName('UserName_str').AsString    :=
                RxSolutionFrm.Security.User.LastName.ToString + ', ' +
                RxSolutionFrm.Security.User.FirstName.ToString;
        FieldByName('User_ID').AsFloat          :=
                RxSolutionFrm.Security.User.UserNumID.Value;
        {$ENDIF}
        FieldByName('Date_dat').AsDateTime      := Now;
        FieldByName('Type_str').AsString        := pType;

        case pAddType of
          ADD_ITEM :
            begin
            FieldByName('ProductCode_ID').AsFloat   := GetCurrProductID;
            FieldByName('Item_ID').AsFloat          := vRecItemID;
            end;
          ADD_REC :
            begin
            FieldByName('ProductCode_ID').AsFloat   := 0;
            FieldByName('Item_ID').AsFloat          := 0;
            end;
          end;

        Post;
        Close;
        Open;
        end;

end; (*................................................................*)(*end*)(*...........................................*)



procedure TReceiptDm.MarkAllItemsAsComplete(pFrom:integer);
var
  pID, pOrdID :double;
  CurRec :TBookMark;
begin

  case pFrom of
    0:
      begin
      pID     := stpReceiptList.FieldByName('ReceiptNo_ID').AsFloat;
      pOrdID  := stpReceiptList.FieldByName('OrderNo_ID').AsFloat;
      with stpReceiptMarkAsComplete do
        begin
        Parameters.ParamByName('@RecID').Value := pID;                           // All stored procs have same param name
        Prepared := True;                                                       // Need to prepare for the qry to return result set
        ExecProc;                                                               // has to be done this way. cannot close a table and hold the transaction.
        end;

      with stpReceiptList do
        begin
        if not (State in [dsEdit, dsInsert]) then Edit;
        FieldByName('ItemsComplete_bol').AsBoolean :=  True;
        Post;
        end;

      end;
    1:
      begin
       pID     :=  stpReceiptList.FieldByName('ReceiptNo_ID').AsFloat;
      pOrdID  := stpReceiptList.FieldByName('OrderNo_ID').AsFloat;

      with stpStockControlReceiptItems do
        try
        DisableControls;
//        CurRec := GetBookMark;

        with stpReceiptMarkAsComplete do
          begin
          Parameters.ParamByName('@RecID').Value := pID;                           // All stored procs have same param name
          Prepared := True;                                                       // Need to prepare for the qry to return result set
          ExecProc;                                                               // has to be done this way. cannot close a table and hold the transaction.
        end;

        Close;
        Open;

        with stpStockControlReceipt do
          begin
          if not (State in [dsEdit, dsInsert]) then Edit;
          FieldByName('ItemsComplete_bol').AsBoolean :=  True;
          Post;
          end;

        try
//          if BookMarkValid(CurRec) then GotoBookMark(CurRec)
        except
        end;

        finally
        FreeBookMark(CurRec);
        EnableControls;
        end;
      end;
    end;

end;

function TReceiptDm.RemoveOrderAmount(pTotalOrdered, pTotalAlreadyReceived,
    pQtyReceived : integer): Integer;
var
  vMaxAmnt :integer;
  vAmtRec :integer;

begin
  Result := 0;

  try
    vMaxAmnt  := pTotalOrdered - pTotalAlreadyReceived;
    Result    := pQtyReceived;
    if Result > vMaxAmnt then Result := vMaxAmnt;
  except
  end;

//  messageDlg(IntToStr(Result), mtInformation, [mbOK], 0);

end;


procedure TReceiptDm.stpStockControlReceiptItemsAfterPost(
  DataSet: TDataSet);
begin
  if not FRecounting then
    begin
    UpdateReceiptTotalDataSource;
    UpdateReceiptSubTotals;
    end;
end;

procedure TReceiptDm.stpStockControlReceiptItemsAfterDelete(
  DataSet: TDataSet);
begin
  UpdateReceiptTotalDataSource;
  UpdateReceiptSubTotals;
end;

procedure TReceiptDm.stpStockControlReceiptItemsBeforePost(
  DataSet: TDataSet);
var
  vOldPrice, vNewPrice  :currency;
  vIncVat       :boolean;
  vAccount      :double;
  vType,vsProduct         :string;
  vPackCost, vExtendedCost    :currency;
  vQty          :integer;
  vOutQty       :integer;
  vProductID    : integer;

begin

  with Dataset do
    begin

    try

    if stpStockControlReceipt.FieldByName('SystemStore_ID').IsNull then
      vAccount := 0 else
      vAccount := stpStockControlReceipt.FieldByName('SystemStore_ID').AsFloat;

    vsProduct  := FieldByName('Description_str').AsString;
    vProductID := FieldByName('ProductCode_ID').AsInteger;

    if stpStockControlReceipt.FieldByName('IncludeVat_bol').IsNull then
      vIncVat := False else
      vIncVat := stpStockControlReceipt.FieldByName('IncludeVat_bol').AsBoolean;

    if stpStockControlReceipt.FieldByName('Type_str').IsNull then
      vType   := '' else
      vType   := stpStockControlReceipt.FieldByName('Type_str').AsString;

    except
      MessageDlg('Error 01',mtError, [mbOK],0);
    end;  

    try
    FVat    := MainDM.GetVAT(vAccount);
    FVat    := (FVat/100) + 1;
    FLevy   := MainDM.GetReceiptLevy(vAccount);
    FLevy   := (FLevy/100) + 1;
    except
      MessageDlg('Error: Cannot obtain VAT or Levy amounts!',mtError, [mbOK],0);
    end;

    if FieldByName('QtyReceived_int').IsNull then FieldByName('QtyReceived_int').AsInteger := 0;
    if FieldByName('PackCost_mon').IsNull then FieldByName('PackCost_mon').AsCurrency := 0;
    if (FieldByName('Order_QtyOutstanding').IsNull) or (FieldByName('Order_QtyOutstanding').AsInteger < 0) then
      vOutQty := 0
      else
      vOutQty := FieldByName('Order_QtyOutstanding').AsInteger;

    vPackCost     := FieldByName('PackCost_mon').AsCurrency;
    vQty          := FieldByName('QtyReceived_int').AsInteger;
    vExtendedCost := 0;

 
    if vQty >= vOutQty then
      begin
      FieldByName('Completed_bol').AsBoolean := True;
      end;

{
    if TotalBatchesReceived(FieldByName('ReceiptNo_ID').AsInteger, vProductID) >= vOutQty then
      begin
      FieldByName('Completed_bol').AsBoolean := True;
      end;
}

    if vType = 'V' then
      vExtendedCost := (vPackCost * vQty) * FLevy
      else
      vExtendedCost := vPackCost * vQty;

    //AVERAGE WEIGHTED PRICE
    //if avg pricing TRUE then
     if FUseAvgWeighedPrice then
      FieldByName('Calc_PackCost_mon').AsFloat := CalAvgWPrice(vProductID, FieldByName('QtyReceived_int').AsInteger, FieldByName('PackCost_mon').AsFloat, FVat)
     else
      FieldByName('Calc_PackCost_mon').AsFloat := FieldByName('PackCost_mon').AsFloat;

    if vIncVat then
     begin
     vExtendedCost := vExtendedCost * FVAT;
     end;

    FieldByName('ExtendedCost_mon').AsCurrency := vExtendedCost;
//    FieldByName('TotalCost_mon').AsCurrency := vExtendedCost;

    vNewPrice := FieldByName('PackCost_mon').AsCurrency;
    vOldPrice := FieldByName('Order_PackCost').AsCurrency;

    if FieldByName('QtyReceived_int').OldValue <> FieldByName('QtyReceived_int').NewValue then
     AddEditHistory(HST_EDT, vsProduct + ': -' + IntToStr( FieldByName('QtyReceived_int').OldValue) +' TO '+ IntToStr( FieldByName('QtyReceived_int').NewValue), ADD_ITEM);

    if vOldPrice > 0 then
      if vNewPrice > (vOldPrice * 1.3) then
        begin
        MessageDlg( 'The price is 30% greater than the order value', mtWarning,[mbOK],0);
        AddEditHistory(HST_EDT, vsProduct + ': The price is 30% greater than the order value', ADD_ITEM);
        end;

    if (FUsesBatchManagement) and (FieldByName('QtyReceived_int').AsInteger > 0) then
     begin
     if (FieldByName('BatchNumber_str').IsNull) OR (Length(FieldByName('BatchNumber_str').AsString)< 1) then
      begin
      MessageDlg( 'Please enter a batch number.', mtWarning,[mbOK],0);
      Abort;
      end;

      if FieldByName('Expiry_dat').IsNull then
      begin
      MessageDlg( 'Please enter the expiry date for this item.', mtWarning,[mbOK],0);
      Abort;
      end;


    if (FieldByName('QtyReceived_int').AsInteger > 0) and
     (DayOfTheMonth(stpStockControlReceiptItems.FieldByName('Expiry_dat').AsDateTime) <> DaysInMonth(stpStockControlReceiptItems.FieldByName('Expiry_dat').AsDateTime)) then
     stpStockControlReceiptItems.FieldByName('Expiry_dat').AsDateTime := UpdateLastDayMon(stpStockControlReceiptItems.FieldByName('Expiry_dat').AsDateTime);


     if ((stpStockControlReceiptItems.FieldByName('Expiry_dat').AsDateTime < Date()) and (not stpStockControlReceiptItems.FieldByName('Expiry_dat').IsNull)) then
      begin MessageDlg( 'Please check the expiry date of the product. The product has expired already.', mtWarning,[mbOK],0); Abort; end;

    //******* SM 13 Feb 2013 - Allow user to capture a short-dated Expiring Product Item
    //******* Task 5249   
     if (FieldByName('QtyReceived_int').AsInteger > 0)and (((stpStockControlReceiptItems.FieldByName('Expiry_dat').AsDateTime - Date()) < FDaysExpiryWarning) and
       (not stpStockControlReceiptItems.FieldByName('Expiry_dat').IsNull)) then
      begin MessageDlg( 'The item is short-dated. Check the expiry date.', mtWarning,[mbOK],0); end;

     end;

    end;

end;

procedure TReceiptDm.stpStockControlReceiptItemsAfterInsert(
  DataSet: TDataSet);
begin
  UpdateReceiptTotalDataSource;
  UpdateReceiptSubTotals;
end;

procedure TReceiptDm.stpStockControlReceiptItemsNewRecord(
  DataSet: TDataSet);
begin
  if not FAdding then Abort;
end;

procedure TReceiptDm.UpdateOrderDetails;
begin
if not stpStockControlReceipt.FieldByName('Activated_bol').Asboolean then
 if stpStockControlReceipt.FieldByName('OrderNo_ID').Value <> stpStockControlReceipt.FieldByName('OrderNo_ID').OldValue  then
 begin
 //display warning message
 if MessageDlg('Order Reference Number has changed. Do you want to continue?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
   with stpReceiptItemsDELETE_AllItems do
    begin
    Prepared := False;
    Parameters.ParamByName('ReceiptID').Value    := FReceiptNo;
    Prepared := True;
    ExecProc;
    end;
    if tblStockControlReceiptItemsAvailableOrders.RecordCount > 0 then
    begin
    stpStockControlReceiptSystemStore_ID.Value   := tblStockControlReceiptItemsAvailableOrdersSystemStore_ID.Value;
    stpStockControlReceiptSystemStore_Str.Value  := tblStockControlReceiptItemsAvailableOrdersSystemStore_Str.Value;
    stpStockControlReceiptSupplier_ID.Value      := tblStockControlReceiptItemsAvailableOrdersSupplier_ID.Value;
    stpStockControlReceiptSupplier_str.Value     := tblStockControlReceiptItemsAvailableOrdersName_str.Value;
    end;
   //if budget model...
   if MainDm.IsRequisitionManagementOnly then
    begin
    stpStockControlReceiptDemander_ID.AsInteger := tblStockControlReceiptItemsAvailableOrdersDemander_ID.AsInteger;
    stpStockControlReceiptDemanderName_str.AsString := tblStockControlReceiptItemsAvailableOrdersDemanderName_str.AsString;
    end;
   end
 else
  stpStockControlReceipt.FieldByName('OrderNo_ID').Value := stpStockControlReceipt.FieldByName('OrderNo_ID').OldValue;

  UpdateReceiptItemsDataSource;
  UpdateReceiptTotalDataSource;
  UpdateReceiptSubTotals;
 end;  
end;

//new tblProductBatch update procedure 18/08/2008
procedure TReceiptDm.UpdateProductBatch(item_id: double; bin_str: string; batchnumber_str: string;
  expiry: TDateTime; qtyrec: integer; price_mon: Double; shippingPack: integer);
begin

with tblProductBatch do
 begin

//Open table with all items.
 Open;
//First Items
 First;
//Locate the right one
 if Locate('ProductCode_ID;BatchNumber_Str;bin_str',VarArrayOf([item_id, batchnumber_str, bin_str]), []) then
  begin
  Edit;
  FieldByName('QtyOnHand_int').AsInteger := FieldByName('QtyOnHand_int').AsInteger + qtyrec;
  end
//If not locate then Add to List;
 else
  begin
  Append;
  FieldByName('QtyOnHand_int').AsInteger := qtyrec;
  end;
//Assign values
 FieldByName('Bin_str').ASString                := bin_str;
 FieldByName('BatchNumber_str').AsString        := batchnumber_str;
 FieldByName('Expiry_dat').AsDateTime           := expiry;

 FieldByName('ProductCode_ID').AsFloat          := item_id;
 FieldByName('Price_mon').AsFloat               := price_mon;
 FieldByName('ShippingPack_int').AsInteger      := shippingPack;
 FieldByName('LastUpdate_dat').AsDateTime       := Now;
//Post
 Post;
//Close table
 Close;
 end;//end of with

end;

//new tblProductBatch update procedure 18/08/2008 when not in batch management mode
procedure TReceiptDm.UpdateProduct(item_id: double; bin_str: string; qtyrec: integer; price_mon: Double; shippingPack: integer);
begin
with tblProductBatch do
 begin
//Open table with all items.
 Open;
//First Items
 First;
//Locate the right one
 if Locate('ProductCode_ID',item_id, []) then
  begin
  Edit;
  FieldByName('QtyOnHand_int').AsInteger := FieldByName('QtyOnHand_int').AsInteger + qtyrec;
  end
//If not locate then Add to List;
 else
  begin
  Append;
  FieldByName('QtyOnHand_int').AsInteger := qtyrec;
  end;
//Assign values
 FieldByName('Bin_str').ASString                := bin_str;
 FieldByName('ProductCode_ID').AsFloat          := item_id;
 FieldByName('Price_mon').AsFloat               := price_mon;
 FieldByName('ShippingPack_int').AsInteger      := shippingPack;
 FieldByName('LastUpdate_dat').AsDateTime       := Now;
//Post
 Post;
//Close table
 Close;
 end;//end of with

end;

function TReceiptDm.CalAvgWPrice(item_id : double; qtyReceiving : integer; receivingPrice: double; VAT: double) : double;
var
 QtyOnHand : integer;
 vValueofTotal, wPrice, CostPrice, currentPrice, sellingPrice, percVAT : double;
begin

 //Avg Weighted Price = [( Value of Total Potential Stock on hand ) / ( total Potential Stock on hand)]

 QtyOnHand := 0;     //Get from current product
 CostPrice := 0;     //To be calculated
 currentPrice := 0;  //Get from current product Cost/Selling Price 
 percVAT := VAT;     //Get from Account, percentage
 vValueofTotal := 0;

 with qryTotalQtyonHand do
  begin
  Close;
  Parameters.ParamByName('ProductCodeID').Value := item_id;
  Open;
  if RecordCount > 0 then
   QtyOnHand := FieldByName('QtyOnHand').AsInteger;
  end;

 with qryCurrentPrice do
  begin
  Close;
  Parameters.ParamByName('ProductCodeID').Value := item_id;
  Open;
  if RecordCount > 0 then
   currentPrice := fieldByName('Cost_mon').AsFloat;
  end;

 vValueofTotal := (receivingPrice * qtyReceiving) + (QtyOnHand * currentPrice);

 wPrice :=  (vValueofTotal / (QtyOnHand + qtyReceiving));

 CostPrice := wPrice;

 Result := CostPrice;

end;

function TReceiptDm.LoadSqlStatement(pType : integer): boolean;
var
 sql_str : string;
 vReceiptID : integer;
begin

  
 if stpStockControlReceipt.Active then
  vReceiptID := stpStockControlReceipt.FieldByName('ReceiptNo_ID').AsInteger
 else
  vReceiptID := stpReceiptList.FieldByName('ReceiptNo_ID').AsInteger;

 with qrySqlStatements do
  begin
  Close;
  Open;
  if recordCount > 0 then
   sql_str := qrySqlStatements.FieldByName('Receipt_01').AsString;
  end;


 with stp_CustomReport do
  begin
  if (qrySqlStatements.RecordCount > 0) then
   if (not VarISNull(sql_str)) and (FileExists(ExtractFilePath(Application.ExeName) + 'tmp\Receipt.rtm')) then
    begin
    Active := False;
    SQL.Clear;
    SQL.Add(sql_str);
    ParamCheck := True;
    Parameters.ParamByName('@ReceiptID').Value := vReceiptID;
    Active := True;

    Result := True;
    end
  else
   Result := False;
  end;   
end;

procedure TReceiptDm.PrinterSelector(reportdoc: TppReport; printername : string; showDialog: boolean);
begin
 //Get latest printer settings
 RxSolutionFrm.LoadPrinterSettings;

 if RxSolutionFrm.CheckUsePrnt then
   begin
   reportdoc.PrinterSetup.PrinterName := printername;
   reportdoc.DeviceType := 'Printer';
   end
  else
   begin
   reportdoc.DeviceType := 'Screen';
   end;
  reportdoc.ShowPrintDialog := showDialog;
  reportdoc.Print;

end;

procedure TReceiptDm.LoadSystemUsers;
begin
//Load system users table//Changed from Stored Procedure
 with tblSystemUsers do
  begin
  Close;
  Open;
  end;

end;

procedure TReceiptDm.LoadOtherPackSizes(ProductID: integer);
var
 ProductCodeID, ReceiptNoId, OrderNOId : integer;
 strength, generic: string;
begin
{
 //
 with qryProductDetails do
  begin
  Close;
  Parameters.ParamByName('ProductCodeID').Value := ProductID;
  Open;
  strength := FieldByName('Strength_str').Asstring;
  generic  := FieldByName('GenericName_Str').Asstring;
  end;

 with qryOtherPackSizes do
  begin
  Close;
  Parameters.ParamByName('ProductCodeID').Value := ProductID;
  Parameters.ParamByName('StrengthStr').Value   := strength;
  Parameters.ParamByName('GenericNameStr').Value:= generic;
  Open;
  ProductCodeID := ReceiptChangePackSizeFrm.SelectProduct;

  if ProductCodeID > 0 then
   begin
   
  //Add the item to the list now
   OrderNOId := stpStockControlReceiptItems.FieldByName('OrderNo_ID').AsInteger;
   ReceiptNoId := stpStockControlReceiptItems.FieldByName('ReceiptNo_ID').AsInteger;

 //NOTE; use the last batch price as well.
   stp_AddProduct.Parameters.ParamByName('@OrderID').Value := OrderNoId;
   stp_AddProduct.Parameters.ParamByName('@ReceiptID').Value := ReceiptNoId;
   stp_AddProduct.Parameters.ParamByName('@ProductCodeID').Value := ProductCodeID;
   stp_AddProduct.ExecProc;

   stpStockControlReceiptItems.Close;
   stpStockControlReceiptItems.Open;
   stpStockControlReceiptItems.Locate('ProductCode_ID', ProductCodeID, []);
   Close;
   end;
  end;
 }
end;

procedure TReceiptDm.atnAddDifferentPackSizeExecute(Sender: TObject);
var
 ProductID: integer;
begin

 ProductID := stpStockControlReceiptItems.FieldByName('ProductCode_ID').AsInteger;
 LoadOtherPackSizes(ProductID);

end;

function  TReceiptDm.IsLockedBySameUser;
begin

 if FUserID = stpStockControlReceipt.FieldByName('CheckedOutBy_ID').AsVariant then
  Result := True
 else                
  Result := False;

end;

procedure TReceiptDM.MakeRecordAvailable;
begin

  with stpStockControlReceipt do
  begin
  if not (State in [dsEdit, dsInsert]) then
    Edit;
  FieldByName('LastUpdateBy_str').AsString      := FUserName;
  FieldByName('LastUpdateBy_dbl').AsInteger     := FUserID;
  FieldByName('LastUpdate_dat').AsDateTime      := Now;
  FieldByName('CheckedOut_bol').AsBoolean       := False;
  FieldByName('CheckedOutName_str').AsString    := '';
  FieldByName('CheckedOutBy_ID').AsInteger      := 0;
//  FieldByName('CheckedOut_dat').AsDateTime      := NullDate;
  Post;
  end;
end;

procedure TReceiptDM.CheckOutRecord;
begin

  with stpStockControlReceipt do
  begin
  if not (State in [dsEdit, dsInsert]) then
    Edit;
  FieldByName('LastUpdateBy_str').AsString      := FUserName;
  FieldByName('LastUpdateBy_dbl').AsInteger     := FUserID;
  FieldByName('LastUpdate_dat').AsDateTime      := Now;
  FieldByName('CheckedOut_bol').AsBoolean       := True;
  FieldByName('CheckedOutName_str').AsString    := FUserName;
  FieldByName('CheckedOutBy_ID').AsInteger      := FUserID;
  FieldByName('CheckedOut_dat').AsDateTime      := Now();
  Post;
  end;

end;


function TReceiptDM.UpdateItemDB( pItems : TADOStoredProc): Boolean;
var (*...............................................................*)(*var*)(*...........................................*)
  vOverallProgress            : TProgressIndicatorFrm;
  j                           : integer;
  vProdID                     : double;
  vProdCost                   : currency;
  vReceiptID                  : double;
  vQtyReceived                : integer;
  vMaxQtyReceivable           : integer;
  vQtyOrdered                 : integer;
  vQtyAlreadyReceived         : integer;
  vTotalOrdered               : integer;
  vTotalAlreadyReceived       : integer;
  vTotalReceived              : integer;
  vItemID                     : Double;

  vHasPosted                  : boolean;


  vProductDetails             : RProductDetails;
  vAuditData                  : RProductAuditDetails;

  vSystemStID                 : double;
  vSuppID                     : double;
  vRefStr                     : string;
  vVoucherStr                 : string;
  vPostBy                     : string;
  vCompleted                  : boolean;
  onOrder                     : Integer;
  vShippingPack               : Integer;
  vBin                        : string;
  Level                       : integer;
  vReceiptITemID              : integer;
  begin (*...........................................................*)(*begin*)(*...........................................*)

//  08 MARCH 2010 MONDAY SM
//  vStpProcs[1] := stpStockControlReceiptItems;    

  Level:=ADOReceiptsConnection.BeginTrans;
  try
  vQtyReceived := 0;
  vSystemStID := stpStockControlReceipt.FieldByName('SystemStore_ID').AsFloat;
  vSuppID     := stpStockControlReceipt.FieldByName('Supplier_ID').AsFloat;
  vRefStr     := stpStockControlReceipt.FieldByName('ReceiptNo_str').AsString;
  vVoucherStr := stpStockControlReceipt.FieldByName('VoucherNo_str').AsString;
  vPostBy     :=  RxSolutionFrm.Security.User.LastName.ToString + ', ' +
                RxSolutionFrm.Security.User.FirstName.ToString;//stpStockControlReceipt.FieldByName('ActivatedBy_str').AsString;

   with pItems do
    begin
    if Active then
      First;
      j := 0;
      vOverallProgress := TProgressIndicatorFrm.Create(Self);
      vOverallProgress.MaxProgress := pItems.RecordCount;
      while not EOF do
        begin        
        
        vProdID         := FieldByName('ProductCode_ID').AsFloat;
        vItemID         := FieldByName('OrderitemsNo_ID').AsFloat;
        vQtyReceived    := FieldByName('QtyReceived_int').AsInteger;     // makesure here ?????
        vQtyOrdered     := FieldByName('Order_QtyOrdered').AsInteger;
        vQtyAlreadyReceived := FieldByName('Order_QtyReceived').AsInteger;
        vTotalOrdered   := FieldByName('QtyOrdered_int').AsInteger;
        vReceiptID      := FieldByName('ReceiptNo_ID').AsFloat;
        vReceiptITemID  := FieldByName('ReceiptItem_ID').AsInteger;

        if (not HasItemBeenCommitted(vProdID, vReceiptITemID)) then
        begin

        if FUseAvgWeighedPrice then
         vProdCost       := FieldByName('Calc_PackCost_mon').AsCurrency
        else
         vProdCost       := FieldByName('PackCost_mon').AsCurrency;

        vShippingPack   := FieldByName('ShippingPack_int').AsInteger;
        vBin            := fieldByName('Bin_str').AsString;

        ADOQuery1.Close;
        ADOQuery1.Parameters.ParamByName('ProductCode_ID').Value := vProdID;
        ADOQuery1.Active := True;

        if vQtyReceived > 0 then
          if Assigned(MainDM) then
            begin
            vTotalAlreadyReceived := 0;
            {get the amount already received excluding this receipt}
            with stpOrderItems_ReceiptItemsTotals do
              begin
              Close;
              Parameters.ParamByName('OrderItemsNoID').Value  := vItemID;       // this must include only posted, duplicates over receipt arise
              Prepared := True;
              Open;
              while not stpOrderItems_ReceiptItemsTotals.EOF do
                begin
                vHasPosted := stpOrderItems_ReceiptItemsTotals.FieldByName('Activated_bol').AsBoolean;
                if vHasPosted then
                  if vReceiptID <> stpOrderItems_ReceiptItemsTotals.FieldByName('ReceiptNo_ID').AsFloat then
                    vTotalAlreadyReceived := vTotalAlreadyReceived +
                      stpOrderItems_ReceiptItemsTotals.FieldByName('QtyReceived_int').AsInteger;  // this sum excludes the current receipt
                Next;
                end;
              Close;
              end;


            {find out if this order has already be fulfilled}
            vTotalReceived    := vTotalAlreadyReceived + vQtyReceived;
            vMaxQtyReceivable := vQtyOrdered - vTotalAlreadyReceived;


            // Todo if quantity received is greater or equal to order mark off as complete

            if vTotalReceived >= vQtyOrdered then
              begin
              if not (State in [dsEdit, dsInsert]) then Edit;
              FieldByName('Completed_bol').AsBoolean := True;
              Post;
              end;


            {this updates orders tables}
            with stpOrderItems_Received do
              begin
              Close;
              Parameters.ParamByName('OrderItemsNoID').Value  := vItemID;       // All stored procs have same param name
              Prepared := True;
              Open;
              if RecordCount > 0 then
                begin
                stpOrderItems_Received.Edit;
                stpOrderItems_Received.FieldByName('QtyReceivedCum_int').AsInteger :=
                 stpOrderItems_Received.FieldByName('QtyReceivedCum_int').AsInteger + stpStockControlReceiptItems.fieldByName('QtyReceived_int').AsInteger;
                 stpOrderItems_Received.FieldByName('QtyCalculated_int').AsInteger :=
                 stpOrderItems_Received.FieldByName('QtyCalculated_int').AsInteger -
                        stpStockControlReceiptItems.fieldByName('QtyReceived_int').AsInteger;
                if stpOrderItems_Received.FieldByName('QtyCalculated_int').AsInteger < 0 then
                 stpOrderItems_Received.FieldByName('QtyCalculated_int').AsInteger := 0;

                stpOrderItems_Received.FieldByName('Completed_bol').AsBoolean := pItems.FieldByName('Completed_bol').AsBoolean;
                stpOrderItems_Received.Post;
                end;
              Close;
              end;


            {this updates productpacksize table}
            if vQtyReceived > 0 then
                begin
                if (FUsesBatchManagement)  then
                 UpdateProductBatch(vProdID, vBin, FieldByName('BatchNumber_Str').AsString, FieldByName('Expiry_dat').AsDateTime,
                 vQtyReceived, vProdCost, vShippingPack)
                else
                 UpdateProduct(vProdID, vBin, vQtyReceived, vProdCost, vShippingPack);
                 

//******************************************************************************// POTENTIAL PROBLEM.
                //Accesses the products table directly
                ADOQuery1.Edit;
 //SM 20-10-06
                onOrder := ADOQuery1.FieldByName('QtyOnOrder_int').AsInteger -
                  RemoveOrderAmount(vTotalOrdered, vQtyAlreadyReceived, vQtyReceived);
                if not (onOrder < 0) then
                 ADOQuery1.FieldByName('QtyOnOrder_int').AsInteger :=  onOrder
                else //make it zero if you receive more then ordered
                 ADOQuery1.FieldByName('QtyOnOrder_int').AsInteger :=  0;


 ///SM 20-10-06
                if pItems.FieldByName('Completed_bol').AsBoolean then
                 begin
                 onOrder := ADOQuery1.FieldByName('QtyOnOrder_int').AsInteger - Abs(vQtyOrdered-vQtyReceived);
                 if not (onOrder < 0) then
                        ADOQuery1.FieldByName('QtyOnOrder_int').AsInteger := onOrder
                 else     //make it zero if you receive more then ordered
                   ADOQuery1.FieldByName('QtyOnOrder_int').AsInteger :=  0;
                 end;
 //SM

                if (vProdCost > 0) and (vProdCost <> ADOQuery1.FieldByName('Cost_mon').AsCurrency) then
                  ADOQuery1.FieldByName('Cost_mon').AsCurrency := vProdCost;
                if (vShippingPack > 0) and (VShippingPack <> ADOQuery1.FieldByName('ShippingPack_int').AsInteger) then
                  ADOQuery1.FieldByName('ShippingPack_int').AsInteger := VShippingPack;
//                if ADOQuery1.FieldByName('NSN_Str').AsString <> FieldByName('NSN_Str').AsString then
//                  ADOQuery1.FieldByName('NSN_Str').AsString := FieldByName('NSN_Str').AsString;
                ADOQuery1.Post;

                vProductDetails.QtyOnHand   := ADOQuery1.FieldByName('QtyOnHand_int').AsInteger;
                vProductDetails.NSN         := ADOQuery1.FieldByName('NSN_Str').AsString;
                vProductDetails.ECN         := ADOQuery1.FieldByName('ECN_Str').AsString;
                vProductDetails.ICN         := ADOQuery1.FieldByName('ICN_Str').AsString;

                vAuditData.Quantity_int     := FieldByName('QtyReceived_int').AsInteger;
                vAuditData.ProductCode_ID   := vProdID;
                vAuditData.Item_ID          := FieldByName('ReceiptItem_ID').AsFloat;
                vAuditData.Value_mon        := FieldByName('ExtendedCost_mon').AsCurrency;

                vAuditData.SystemStore_ID   := vSystemStID;
                vAuditData.Demander_ID      := 0;
                vAuditData.Supplier_ID      := vSuppID;
                vAuditData.Type_str         := 'R';
                vAuditData.Reference_str    := vRefStr;
                vAuditData.DemanderSupplier_str := 'S';

                vAuditData.ProductCode_str  := ADOQuery1.FieldByName('ProductCode_Str').AsString;;
                vAuditData.VoucherNo_str    := vVoucherStr;
                vAuditData.Date_dat         := Now;
//                vAuditData.QuantityOnHand_int := vProductDetails.QtyOnHand + vAuditData.Quantity_int;
                vAuditData.QuantityOnHand_int := vProductDetails.QtyOnHand + FieldByName('QtyReceived_int').AsInteger;;

                vAuditData.User_str         := vPostBy;
                vAuditData.NSN_Str          := vProductDetails.NSN;
                vAuditData.ECN_str          := vProductDetails.ECN;
                vAuditData.ICN_str          := vProductDetails.ICN;
                vAuditData.BatchNumber_str  := FieldByName('BatchNumber_Str').AsString;
                if (FieldByName('Expiry_dat').AsDateTime > Now() - 360*10) then
                 vAuditData.ExpiryDate_dat   := FieldByName('Expiry_dat').AsDateTime;

                WriteAuditData(vAuditData);
                end;
               end

            end;

        inc(j);
        vOverallProgress.CurrentProgress := j;
        Next;
        end;

       ADOReceiptsConnection.CommitTrans;
       Result := True;
       end;

      except
        on E:Exception do begin ADOReceiptsConnection.RollbackTrans; AddEditHistory(HST_ERR,'DB Transaction Rollback', ADD_REC);
        Result := False; end;
       end;
      
//      finally
      ADOQuery1.Active := False;
      vOverallProgress.MaxProgress := 0;
      vOverallProgress.Free;
//      end;
      //First;


end;

function TReceiptDM.HasItemBeenCommitted(productCodeID: double; ReceiptItemID: integer): Boolean;
begin

 with qryItemInAudit do
  begin
  Close;
  Parameters.ParamByName('productCodeID').Value := productCodeID;
  Parameters.ParamByName('ItemID').Value := ReceiptItemID;
  Open;

  if (RecordCount > 0) then
   Result := True
  else
   Result := False;
  Close;
  end;

end;

{
function TReceiptDM.PostItems( pItems : TADOStoredProc): Boolean;
var (*...............................................................*)(*var*)(*...........................................*)
  vOverallProgress            : TProgressIndicatorFrm;
  j                           : integer;
  vProdID                     : double;
  vProdCost                   : currency;
  vReceiptID                  : double;
  vQtyReceived                : integer;
  vMaxQtyReceivable           : integer;
  vQtyOrdered                 : integer;
  vQtyAlreadyReceived         : integer;
  vTotalOrdered               : integer;
  vTotalAlreadyReceived       : integer;
  vTotalReceived              : integer;
  vItemID                     : Double;

  vHasPosted                  : boolean;


  vProductDetails             : RProductDetails;
  vAuditData                  : RProductAuditDetails;

  vSystemStID                 : double;
  vSuppID                     : double;
  vRefStr                     : string;
  vVoucherStr                 : string;
  vPostBy                     : string;
  vCompleted                  : boolean;
  onOrder                     : Integer;
  vShippingPack               : Integer;
  vBin                        : string;
  Level                       : integer;    
begin (*...........................................................*)(*begin*)(*...........................................*)

//  08 MARCH 2010 MONDAY SM
//  vStpProcs[1] := stpStockControlReceiptItems;    

  Level:=ADOReceiptsConnection.BeginTrans;
  try
  vQtyReceived := 0;
  vSystemStID := stpStockControlReceipt.FieldByName('SystemStore_ID').AsFloat;
  vSuppID     := stpStockControlReceipt.FieldByName('Supplier_ID').AsFloat;
  vRefStr     := stpStockControlReceipt.FieldByName('ReceiptNo_str').AsString;
  vVoucherStr := stpStockControlReceipt.FieldByName('VoucherNo_str').AsString;
  vPostBy     :=  RxSolutionFrm.Security.User.LastName.ToString + ', ' +
                RxSolutionFrm.Security.User.FirstName.ToString;//stpStockControlReceipt.FieldByName('ActivatedBy_str').AsString;

   with stpStockControlReceiptItems do
    begin
    Active := True;

      First;
      j := 0;
      vOverallProgress := TProgressIndicatorFrm.Create(Self);
      vOverallProgress.MaxProgress := pItems.RecordCount;

      while not EOF do
        begin
        vProdID         := FieldByName('ProductCode_ID').AsFloat;
        vItemID         := FieldByName('OrderitemsNo_ID').AsFloat;
        vQtyReceived    := FieldByName('QtyReceived_int').AsInteger;     // makesure here ?????
        vQtyOrdered     := FieldByName('Order_QtyOrdered').AsInteger;
        vQtyAlreadyReceived := FieldByName('Order_QtyReceived').AsInteger;
        vTotalOrdered   := FieldByName('QtyOrdered_int').AsInteger;
        vReceiptID      := FieldByName('ReceiptNo_ID').AsFloat;

        if FUseAvgWeighedPrice then
         vProdCost       := FieldByName('Calc_PackCost_mon').AsCurrency
        else
         vProdCost       := FieldByName('PackCost_mon').AsCurrency;

        vShippingPack   := FieldByName('ShippingPack_int').AsInteger;
        vBin            := fieldByName('Bin_str').AsString;

            //this updates productpacksize table
      //  if vQtyReceived > 0 then
      //  begin

        ADOQuery1.Close;
        ADOQuery1.Parameters.ParamByName('ProductCode_ID').Value := vProdID;
        ADOQuery1.Active := True;

                if (FUsesBatchManagement)  then
                 UpdateProductBatch(vProdID, vBin, FieldByName('BatchNumber_Str').AsString, FieldByName('Expiry_dat').AsDateTime,
                 vQtyReceived, vProdCost, vShippingPack)
                else
                 UpdateProduct(vProdID, vBin, vQtyReceived, vProdCost, vShippingPack);

               ADOQuery1.Edit;
                if (vProdCost > 0) and (vProdCost <> ADOQuery1.FieldByName('Cost_mon').AsCurrency) then
                  ADOQuery1.FieldByName('Cost_mon').AsCurrency := vProdCost;
                if (vShippingPack > 0) and (VShippingPack <> ADOQuery1.FieldByName('ShippingPack_int').AsInteger) then
                  ADOQuery1.FieldByName('ShippingPack_int').AsInteger := VShippingPack;
                if ADOQuery1.FieldByName('NSN_Str').AsString <> FieldByName('NSN_Str').AsString then
                  ADOQuery1.FieldByName('NSN_Str').AsString := FieldByName('NSN_Str').AsString;
                ADOQuery1.Post;

                
                vProductDetails.QtyOnHand   := ADOQuery1.FieldByName('QtyOnHand_int').AsInteger;
                vProductDetails.NSN         := ADOQuery1.FieldByName('NSN_Str').AsString;
                vProductDetails.ECN         := ADOQuery1.FieldByName('ECN_Str').AsString;
                vProductDetails.ICN         := ADOQuery1.FieldByName('ICN_Str').AsString;
                vAuditData.Quantity_int     := FieldByName('QtyReceived_int').AsInteger;
                vAuditData.ProductCode_ID   := vProdID;
                vAuditData.Item_ID          := FieldByName('ReceiptItem_ID').AsFloat;
                vAuditData.Value_mon        := FieldByName('ExtendedCost_mon').AsCurrency;
                vAuditData.SystemStore_ID   := vSystemStID;
                vAuditData.Demander_ID      := 0;
                vAuditData.Supplier_ID      := vSuppID;
                vAuditData.Type_str         := 'R';
                vAuditData.Reference_str    := vRefStr;
                vAuditData.DemanderSupplier_str := 'S';
                vAuditData.ProductCode_str  := ADOQuery1.FieldByName('ProductCode_Str').AsString;;
                vAuditData.VoucherNo_str    := vVoucherStr;
                vAuditData.Date_dat         := Now;
//                vAuditData.QuantityOnHand_int := vProductDetails.QtyOnHand + vAuditData.Quantity_int;
                vAuditData.QuantityOnHand_int := vProductDetails.QtyOnHand + FieldByName('QtyReceived_int').AsInteger;;
                vAuditData.User_str         := vPostBy;
                vAuditData.NSN_Str          := vProductDetails.NSN;
                vAuditData.ECN_str          := vProductDetails.ECN;
                vAuditData.ICN_str          := vProductDetails.ICN;
                vAuditData.BatchNumber_str  := FieldByName('BatchNumber_Str').AsString;
                if (FieldByName('Expiry_dat').AsDateTime > Now() - 360*10) then
                vAuditData.ExpiryDate_dat   := FieldByName('Expiry_dat').AsDateTime;
                //Showmessage('gets there');
                WriteAuditData(vAuditData);
                ADOQuery1.Close;
      //   end;

        inc(j);
        vOverallProgress.CurrentProgress := j;
        Next;
        end;

       ADOReceiptsConnection.CommitTrans;    Result := True;
    end;
      except
        on E:Exception do begin
        ShowMEssage(E.Message);
        ADOReceiptsConnection.RollbackTrans;
        AddEditHistory(HST_ERR,'DB Transaction Rollback', ADD_REC);
        Result := False; end;
      end;

      //finally
      vOverallProgress.MaxProgress := 0;
      vOverallProgress.Free;
     // end;
      //First;
end;
}

function TReceiptDM.WriteAuditData(pAuditData:RProductAuditDetails):
    Boolean;
begin

  with stpAuditAPPEND do
    begin
    Parameters.ParamByName('SystemStoreID').Value     := pAuditData.SystemStore_ID; //OK
    Parameters.ParamByName('ProductCodeID').Value     := pAuditData.ProductCode_ID; //ok
    Parameters.ParamByName('DemanderID').Value        := pAuditData.Demander_ID;    //ok
    Parameters.ParamByName('SupplierID').Value        := pAuditData.Supplier_ID;    //ok
    Parameters.ParamByName('ItemID').Value            := pAuditData.Item_ID;       //ok
    Parameters.ParamByName('Type').Value              := pAuditData.Type_str;      //ok
    Parameters.ParamByName('Reference').Value         := pAuditData.Reference_str; //ok
    Parameters.ParamByName('DemanderSupplier').Value  := pAuditData.DemanderSupplier_str; //ok
    Parameters.ParamByName('ProductCode').Value       := pAuditData.ProductCode_str; //ok
    Parameters.ParamByName('VoucherNo').Value         := pAuditData.VoucherNo_str; //ok
    Parameters.ParamByName('Date').Value              := pAuditData.Date_dat;       //ok
    Parameters.ParamByName('Quantity').Value          := pAuditData.Quantity_int;   //ok
    Parameters.ParamByName('Value').Value             := pAuditData.Value_mon;//ok
    Parameters.ParamByName('QuantityOnHand').Value    := pAuditData.QuantityOnHand_int; //ok
    Parameters.ParamByName('User').Value              := pAuditData.User_str;
    Parameters.ParamByName('NSN').Value               := pAuditData.NSN_Str;
    Parameters.ParamByName('ICN').Value               := pAuditData.ICN_str;
    Parameters.ParamByName('ECN').Value               := pAuditData.ECN_str;
    Parameters.ParamByName('BatchNumber_str').Value   := pAuditData.BatchNumber_str;
    Parameters.ParamByName('ExpiryDate_dat').Value    := pAuditData.ExpiryDate_dat;
    ExecProc;
    end;
end;

procedure TReceiptDM.PostNewReceipt;
var
 WMS : string;
begin
 WMS := 'WARNING' + #13 +'Once you post this record, it can no longer be edited.' + #13 + #13 + 'Continue and Post?';
 //
 if stpStockControlReceiptItems.State in [dsEdit, dsInsert] then stpStockControlReceiptItems.Post
 else
  begin
  if MessageDlg(WMS, mtWarning, [mbYes, mbNo], 0)=mrYes then
   if ValidatePosting then
    if UpdateItemDB(stpStockControlReceiptItems) then
     begin
     with stpStockControlReceipt do
      begin
{      stpStockControlReceiptItems.Close;
      stpStockControlReceiptItems.Parameters.ParamByName('@ReceiptID').Value := pReceipt;
      stpStockControlReceiptItems.Open;       }

      if not (State in [dsEdit, dsInsert]) then
       Edit;
      FieldByName('CheckedOut_bol').AsBoolean            := False;
      FieldByName('CheckedoutName_str').AsString         := '';
      FieldByName('CheckedOutBy_ID').Asinteger           := 0;
      FieldByName('Activated_bol').AsBoolean             := True;
      FieldByName('Activated_dat').AsDateTime            := Now();
      FieldByName('ActivatedBy_str').AsString            := FUserName;
//      FieldByName('ItemsNo_int').Asinteger               := stpStockControlReceiptItemsTotals.FieldByName('CountOfReceiptItem_ID').AsInteger;
      Post;
      end;
     end;
   end;  
end;

procedure TReceiptDM.LoadLockedView;
var
 vRID: integer;
begin

 vRID := stpReceiptList.FieldByName('ReceiptNo_ID').AsInteger;

 with qryLockeReceiptView do
  begin
  Close;
  Parameters.ParamByName('@ReceiptID').Value := vRID;
  Open;
  end;

 with qryLockedReceiptItemsView do
  begin
  Close;
  Parameters.ParamByName('@ReceiptID').Value := vRID;
  Open;
  end;
  
end;

procedure TReceiptDM.UnLockRecordMain;
begin

  with stpReceiptList do
  begin
  if not (State in [dsEdit, dsInsert]) then
    Edit;
  FieldByName('CheckedOut_bol').AsBoolean       := False;
  FieldByName('CheckedOutName_str').AsString    := '';
  FieldByName('CheckedOutBy_ID').AsInteger      := 0;
//  FieldByName('CheckedOut_dat').AsDateTime      := NullDate;
  Post;
  Refresh;
  end;
end;

function TReceiptDM.IsReceiptLocked: Boolean;
begin

 with qryIsReceiptLocked do
  begin
  Close;
  Parameters.ParamByName('ReceiptNo_ID').Value := stpReceiptList.FieldByName('ReceiptNo_ID').AsInteger;
  Open;

  if FieldByName('CheckedOut_bol').AsBoolean then
   Result := True
  else
   Result := False;
  end;

end;


procedure TReceiptDm.stpStockControlReceiptSystemStore_IDChange(
  Sender: TField);
begin
 with stpStockControlReceipt do
  begin
  FieldByName('SystemStore_str').AsString   := tblSystemWharehouse.FieldByName('Description').AsString;
  end;
end;

procedure TReceiptDm.stpStockControlReceiptSupplier_IDChange(
  Sender: TField);
begin

 with stpStockControlReceipt do
  begin
 { FieldByName('Supplier_str').AsString :=  tblReceiptListUniqueSuppliers.FieldByName('Name_str').AsString
    +' '+
      tblReceiptListUniqueSuppliers.FieldByName('Code_str').AsString
 }
  FieldByName('Supplier_str').AsString := MainDm.GetSuppierNameCode(stpStockControlReceiptSupplier_ID.AsInteger);
  end;
  
end;

// ************ 
function TReceiptDm.TotalBatchesReceived(receiptID: integer; productID: integer): integer;
var
 totQty: integer;
begin

 totQty := 0;

 with qryTotalBatchesReceived do
  begin
  Close;
  Parameters.ParamByName('ReceiptNo_ID').Value := receiptID;
  Parameters.ParamByName('ProductCode_ID').Value := productID;
  Open;

  if RecordCount > 0 then
   totQty := FieldByName('TotalReceived').AsInteger
  else
   totQty := 0;
  end;

 Result := totQty;

end;

function TReceiptDm.UpdateBarcode: Boolean;
var
 vOrderRef, vReceiptRef: integer;
begin

 //
 with ReceiptDm.stpStockControlReceipt do
   begin
   vOrderRef := FieldByName('OrderNo_ID').AsInteger;
   vReceiptRef := FieldByName('ReceiptNo_ID').AsInteger;
   end;

 ProductUpdateBarcodesFrm.LoadProductsDetail(vOrderRef, vReceiptRef);

 Result := true;

end;

//******* SM 13 Nov 2014
//******* This functions Check All Item For completeness
//******* It will mark additional batches as complete if the cumulative QTY >= Outstanding Qty
function TReceiptDm.CheckAllTotalBatches(showMsg: Boolean): Boolean;
var
 vOutQty, vProductID, vReceiptID: integer;
begin

 //Post Items if still in edit mode.
 with stpStockControlReceiptItems do
    begin
    if (State in [dsEdit, dsInsert]) then Post;
    end;

 try
 vReceiptID := stpStockControlReceipt.FieldByName('ReceiptNo_ID').AsInteger;
 //
 with qryAllBatchesReceiptItems do
  begin

  Close;
  Parameters.ParamByName('@ReceiptID').Value := vReceiptID;
  Open;

  First;

  while (not EOF) do
   begin
   //Product Data
   vProductID := FieldByName('ProductCode_ID').AsInteger;
   if (FieldByName('Order_QtyOutstanding').IsNull) or (FieldByName('Order_QtyOutstanding').AsInteger < 0) then
      vOutQty := 0
   else
      vOutQty := FieldByName('Order_QtyOutstanding').AsInteger;  

   if (not FieldByName('completed_bol').AsBoolean) then
     begin
     if TotalBatchesReceived(vReceiptID, vProductID) >= vOutQty then
      begin
       if (not (State in [DsEdit]))  then Edit;
      FieldByName('completed_bol').AsBoolean := True;
      Post;
      end;
     end;

     Next;
   end;
   if (showMsg) then
     MessageDlg('Items checked for completeness', mtInformation, [mbOk], 0);
   end;
  except  on E: Exception do MessageDlg(E.Message, mtError, [mbOk], 0);
 end;

 //Refresh Current DataSet View
 with stpStockControlReceiptItems do
    begin
    if (State in [dsEdit, dsInsert]) then Post;
    Close;
    Open;
    end;

end;


procedure TReceiptDm.stpStockControlReceiptReceivedBy_strChange(
  Sender: TField);
begin

  //Auto Update Received Date
  with stpStockControlReceipt do
   begin
   if VarISNuLL(FieldByName('ReceivedBy_str').OldValue) then
      if (not VarISNuLL(FieldByName('ReceivedBy_str').NewValue)) then
         FieldByName('Received_dat').Value := Date();
   end;


end;

procedure TReceiptDm.stpStockControlReceiptCheckedBy_strChange(
  Sender: TField);
begin
  //Auto Update Checked Date
  with stpStockControlReceipt do
   begin
   if VarISNuLL(FieldByName('CheckedBy_str').OldValue) then
      if (not VarISNuLL(FieldByName('CheckedBy_str').NewValue)) then
         FieldByName('Checked_dat').Value := Date();
   end;

end;



function TReceiptDm.CodeMyString(mystring: string; vlength: integer): string;
begin

 if (Length(mystring) >= vlength) then
  begin
  mystring := Copy(mystring, (Length(mystring) - vlength) + 1 ,vlength);
  end
 else
  while Length(mystring) < vlength do
   begin
   mystring :=  mystring +' ';
   end;

 Result:= mystring;

end;


procedure TReceiptDm.CreateTextFileReceivingPMPUReport;
var
 F1, F2  : TextFile;
 DataStr : String;
 FacilityCode,
 FacilityName,
 NSN_str,
 QtyOrdered,
 QtyReceived,
 ReceivedBy,
 ReceivedDate,
 OrderRef,
 VoucherNo_str,
 InvoiceNo,
 InvoideDate,
 ReceiptRef:string;
 RecID: integer;
begin

  with stpStockControlReceiptItems do
   begin
   if (State in [dsEdit, dsInsert]) then
    Post;
   end;

  //********** GRV Report file format
  //********** 03 July 2015
  //NSN
  //Voucher Number
  //Qty Ordered
  //Qty Received
  //Received by
  //Received Date
  //Invoice Number
  //Facility Code/Demander Code
  //
  //********** 

  with stpStockControlReceipt do
   begin
   if (State in [dsEdit, dsInsert]) then
    Post;

   OrderRef             := CodeMyString(FieldByName('OrderRef_Str').AsString, 20);
   ReceivedBy           := CodeMyString(FieldByName('ReceivedBy_str').AsString, 50);
   ReceivedDate         := FormatDateTime('dd/mm/yyyy', FieldByName('Received_dat').AsDateTime) + ' ';
   VoucherNo_str        := CodeMyString(FieldByName('VoucherNo_str').AsString, 10);
   InvoiceNo            := CodeMyString(FieldByName('InvoiceNo_str').AsString, 10);
   InvoideDate          := FormatDateTime('dd/mm/yyyy', FieldByName('Invoiced_dat').AsDateTime) + ' ';
   ReceiptRef           := CodeMyString(FieldByName('ReceiptNo_str').AsString, 20);  
   RecID                := FieldByName('ReceiptNo_ID').AsInteger;
   end;

 //FOrderNo := stpStockControlOrderItems.FieldByName('OrderNo_ID').AsFloat;

 with stpReceiptListReport do //need parameters
  begin
  Close;
  Parameters.ParamByName('@RecID').Value := RecID;
  Open;
  First;
  //******  Facility name and order reference (last 4 digits) 
  SaveDialog1.FileName := Copy(Trim(FieldByName('DemanderName_str').AsString), 0, 10) + Copy(ReceiptRef, Length((ReceiptRef))-5, 5);

  if SaveDialog1.Execute then begin
   AssignFile(F2, SaveDialog1.Filename);
   Rewrite(F2);
   while not Eof do
     begin
     if (Trim(FieldByName('NSN_str').AsString) <> '') then
       begin
       FacilityCode         := CodeMyString(FieldByName('DemanderCode_str').AsString, 20);
       FacilityName         := CodeMyString(FieldByName('DemanderName_str').AsString, 50);

       //Data string per line should have the following format
       NSN_str         := CodeMyString(Copy(Trim(FieldByName('NSN_str').AsString), 1, 9), 9);           //TblProductPackSize.ICN_str
       QtyOrdered      := CodeMyString(FieldByName('QtyOrdered_int').AsString, 10);
       QtyReceived     := CodeMyString(FieldByName('QtyReceived_int').AsString, 10);
       DataStr := FacilityCode + FacilityName + NSN_str + QtyOrdered + QtyReceived + ReceivedBy + ReceivedDate + VoucherNo_str + InvoiceNo + InvoideDate;
       Writeln(F2, DataStr);
       end;
     Next;
     end;
   CloseFile(F2);
   MessageDlg('PMPU GRV file '+SaveDialog1.FileName+' has been created successfully', mtInformation, [mbOk], 0);
   AddEditHistory(HST_FIL, 'PMPU GRV FILE ' + SaveDialog1.FileName, ADD_ITEM);
  Close;
  end; 
  end;
  
end;

end.
