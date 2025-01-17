unit MainUDM;

interface

uses    
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ComObj, Variants,
  ppModule, daDataModule, myChkBox, ppCtrls, ppBands, ppVar, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ADODB, DB, DBTables,ExtCtrls, PrjConst,
  ppParameter, Math, TXComp, TXRB, jpeg, ppBarCod, ppStrtch, RBTableGrid,
  ppEndUsr, MyApplicationUtilities, DateUtils;

const
  PROCUREMENT_TIME  = 0;
  LEAD_TIME         = 1;

  HST_CHG = 'CHANGED DESCRIPTION';
  HST_NAM = 'FACILITY NAME';
  HST_COD = 'FACILITY CODE';
  HST_FIN = 'FINANCIAL YEAR';
  HST_REP = 'REPORTING YEAR';
  HST_ADR = 'FACILITY ADDR';
  HST_CON = 'CONTACT PERSON';
  HST_TYP = 'TYPE';
  HST_LVY = 'LEVY';
  HST_LDT = 'LEAD TIME';
  HST_COS = 'COSTING MODEL';
  HST_PHN = 'PHONE';
  HST_BAT = 'BATCH MANAGEMENT';
  HST_INT = 'INTERFACE';
  HST_ACC = 'ACCOUNT';    

type

  TMainDm = class(TDataModule)
    ADOCommand1: TADOCommand;
    ADOMainDBConnection: TADOConnection;
    ADOSecurityConnection: TADOConnection;
    cmdDeleteProductMonthEnd: TADOCommand;
    cmdUpdateProductMonthEnd: TADOCommand;
    DemanderADOConnection: TADOConnection;
    dsDemanderAuthority: TDataSource;
    dsDemanderType: TDataSource;
    dsstpAccountList: TDataSource;
    dsstpDemanderList: TDataSource;
    dsstpSupplierList: TDataSource;
    dsTblBin: TDataSource;
    dstblGeneralProductDescription: TDataSource;
    dstblMainSystem: TDataSource;
    dstblStockStartup: TDataSource;
    dsTlkProductPackSizeGroup1: TDataSource;
    dsTlkProductPackSizeGroup2: TDataSource;
    NumberingADOConnection: TADOConnection;
    qryADOProductMonthEnd: TADOQuery;
    StockControlADOConnection: TADOConnection;
    stpAccountList: TADOTable;
    stpAuditAPPEND: TADOStoredProc;
    stpGeneralProductLookup: TADOStoredProc;
    stpProductCurrentOnHold: TADOStoredProc;
    stpProductCurrentOnOrder: TADOStoredProc;
    stpProductOnhand: TADOTable;
    stpProductUPDATE_StockPrice: TADOCommand;
    stpStockControlRequisitionAudit: TADOStoredProc;
    SupplierADOConnection: TADOConnection;
    tblATC: TADOTable;
    TblBin: TADOTable;
    TblBinCode_str: TWideStringField;
    TblBinDescription_str: TWideStringField;
    TblBinSortorder: TIntegerField;
    tblComparisonUnit: TADOTable;
    tblForm: TADOTable;
    tblFormRange: TADOTable;
    tblGeneralProductDescription: TADOTable;
    tblGenericName: TADOTable;
    tblLevelOfUse: TADOTable;
    tblMainSystem: TADOTable;
    tblMainSystemAccounts: TADOTable;
    tblPackSizeRange: TADOTable;
    tblProductRestriction: TADOTable;
    tblProductTrade: TADOTable;
    tblRecordNumbering1: TADOTable;
    tblStockStartup: TADOTable;
    tblStrengthRange: TADOTable;
    tblSystemRecordNumbering: TADOTable;
    tblTradeName: TADOTable;
    Timer1: TTimer;
    TlkAdministrationUnits: TADOTable;
    tlkDemanderAuthority: TADOTable;
    tlkDemanderType: TADOTable;
    tlkHealthDistrict: TADOTable;
    tlkMagisterialDistrict: TADOTable;
    TlkProductPackSizeGroup1: TADOTable;
    TlkProductPackSizeGroup1Budget_mon: TBCDField;
    TlkProductPackSizeGroup1Code_str: TWideStringField;
    TlkProductPackSizeGroup1Description_str: TWideStringField;
    TlkProductPackSizeGroup1Group1_ID: TAutoIncField;
    TlkProductPackSizeGroup2: TADOTable;
    TlkProductPackSizeGroup2Budget_mon: TBCDField;
    TlkProductPackSizeGroup2Code_str: TWideStringField;
    TlkProductPackSizeGroup2Description_str: TWideStringField;
    TlkProductPackSizeGroup2Group2_ID: TAutoIncField;
    TLKProvince: TADOTable;
    tlkRegion: TADOTable;
    tlkRoute: TADOTable;
    UPDATESQL_ProductStockControl: TADOStoredProc;
    tblBatchRoute: TADOTable;
    tblPositionPosts: TADOTable;
    tblPositionTitle: TADOTable;
    tblDRPProblem: TADOTable;
    tblDRPOutcome: TADOTable;
    qryADODispUnits: TADOQuery;
    qryADODispInterval: TADOQuery;
    qryADODispInstructions: TADOQuery;
    stpClearRecordLocks: TADOStoredProc;
    qryHealthCareReg: TADOQuery;
    dsqryHealthCareReg: TDataSource;
    tblRace: TADOTable;
    tblLanguage: TADOTable;
    tblDepartments: TADOTable;
    tblContracts: TADOTable;
    tblRxLevels: TADOTable;
    tblSpecialisation: TADOTable;
    tblAllergy: TADOTable;
    tlkLabTests: TADOTable;
    tlkLabTeststestCode_str: TWideStringField;
    tlkLabTeststestName_str: TWideStringField;
    tlkLabTeststestDescription_str: TWideStringField;
    tblRecordNumbering: TADOTable;
    tblICD10: TADOTable;
    tblReasons: TADOTable;
    tblOIs: TADOTable;
    tblGeneralProductDescriptionProductCode_ID: TAutoIncField;
    tblGeneralProductDescriptionDescription: TWideStringField;
    tblGeneralProductDescriptionPackSize: TWideStringField;
    tblGeneralProductDescriptionProductCode_str: TWideStringField;
    tblGeneralProductDescriptionCost_mon: TBCDField;
    tblGeneralProductDescriptionNSN_str: TWideStringField;
    tblGeneralProductDescriptionICN_str: TWideStringField;
    tblGeneralProductDescriptionECN_str: TWideStringField;
    tblGeneralProductDescriptionInstitutionEDL_bol: TBooleanField;
    tblGeneralProductDescriptionNationalEDL_bol: TBooleanField;
    tblGeneralProductDescriptionProvincialEDL_bol: TBooleanField;
    tblGeneralProductDescriptionQtyOnHand_int: TIntegerField;
    tblGeneralProductDescriptionDescription_str: TStringField;
    tblGeneralProductDescriptionGroup1_str: TWideStringField;
    tblGeneralProductDescriptionGroup2_str: TWideStringField;
    tblGeneralProductDescriptionSupplement_str: TWideStringField;
    tblPatientClassification: TADOTable;
    tblPatientClassificationClassification_ID: TAutoIncField;
    tblPatientClassificationCode_Str: TWideStringField;
    tblPatientClassificationDescription_str: TWideStringField;
    stp_LockProductforIssuing: TADOStoredProc;
    stp_UnLockProduct: TADOStoredProc;
    stp_IsProductLocked: TADOStoredProc;
    dsPostions: TDataSource;
    tblPositionPostspersonPositionPost_ID: TGuidField;
    tblPositionPostspersonPositionPostDescription_str: TWideStringField;
    tblPositionPostspersonPositionPostArea_str: TWideStringField;
    tblPositionPostsnumberPrefix_str: TWideStringField;
    tblPositionPostslastNumber_int: TIntegerField;
    tblPositionPostsdefaultRxLevel_id: TGuidField;
    tblPositionPostsdefaultRxLevel_str: TWideStringField;
    qryADOAbbreviationsUnits: TADOQuery;
    dsqryAbbreviations: TDataSource;
    stpCorrectProductPAckSizes: TADOQuery;
    stpDemanderList: TADOQuery;
    stpSupplierList: TADOQuery;
    qrySupportMeasures: TADOQuery;
    qrySupportMeasuresSupportMeasure_ID: TAutoIncField;
    qrySupportMeasuresCode_str: TWideStringField;
    qrySupportMeasuresTreatment_str: TWideStringField;
    tblAdhrenceSupportMeasures: TADOTable;
    tblMainSystemSystemStore_ID: TAutoIncField;
    tblMainSystemDemanderCode_str: TWideStringField;
    tblMainSystemFinancialYear_str: TWideStringField;
    tblMainSystemFYStart_dat: TDateTimeField;
    tblMainSystemFYEnd_dat: TDateTimeField;
    tblMainSystemDemanderName_str: TWideStringField;
    tblMainSystemAddress1_str: TWideStringField;
    tblMainSystemAddress2_str: TWideStringField;
    tblMainSystemAddress3_str: TWideStringField;
    tblMainSystemCity_str: TWideStringField;
    tblMainSystemPostalCode_str: TWideStringField;
    tblMainSystemPhone_str: TWideStringField;
    tblMainSystemFax_str: TWideStringField;
    tblMainSystemDistrict_str: TWideStringField;
    tblMainSystemRegion_str: TWideStringField;
    tblMainSystemContact_str: TWideStringField;
    tblMainSystemProvince_str: TWideStringField;
    tblMainSystemType_str: TWideStringField;
    tblMainSystemVAT_int: TFloatField;
    tblMainSystemMainDepot_str: TWideStringField;
    tblMainSystemBudget_mon: TBCDField;
    tblMainSystemBudgetBalance_mon: TBCDField;
    tblMainSystemLevyToRequisition_bol: TBooleanField;
    tblMainSystemLevyRequisition_int: TFloatField;
    tblMainSystemLevyToOrder_bol: TBooleanField;
    tblMainSystemLevyOrder_int: TFloatField;
    tblMainSystemLevyToReceipt_bol: TBooleanField;
    tblMainSystemLevyReceipt_int: TFloatField;
    tblMainSystemInflationRate_int: TIntegerField;
    tblMainSystemProcurementPeriodA_int: TIntegerField;
    tblMainSystemProcurementPeriodB_int: TIntegerField;
    tblMainSystemProcurementPeriodC_int: TIntegerField;
    tblMainSystemProcurementPeriodD_int: TIntegerField;
    tblMainSystemLeadTimeA_int: TIntegerField;
    tblMainSystemLeadTimeB_int: TIntegerField;
    tblMainSystemLeadTimeC_int: TIntegerField;
    tblMainSystemLeadTimeD_int: TIntegerField;
    tblMainSystemA_int: TIntegerField;
    tblMainSystemB_int: TIntegerField;
    tblMainSystemAutoProductCode_bol: TBooleanField;
    tblMainSystemRxCosting: TWideStringField;
    tblMainSystemReportBuilderFile: TStringField;
    tblMainSystemSupplierDef_ID: TIntegerField;
    tblMainSystemAccountDef_ID: TIntegerField;
    tblMainSystemDemanderDef_ID: TIntegerField;
    tblMainSystemReportStart_dat: TDateTimeField;
    tblMainSystemReportEnd_dat: TDateTimeField;
    tblMainSystemLevel_01Description_str: TWideStringField;
    tblMainSystemLevel_02Description_str: TWideStringField;
    tblMainSystemLevel_03Description_str: TWideStringField;
    tblMainSystemLevel_04Description_str: TWideStringField;
    tblMainSystemBatchDispensingReducesStock_Bol: TBooleanField;
    tblMainSystemAllowLessThanZeroStock_Bol: TBooleanField;
    tblMainSystemprovincialLogo_img: TBlobField;
    tblMainSystembatchManagement_bol: TBooleanField;
    tblMainSystemShortDatedDays_int: TIntegerField;
    tblMainSystemAvgWeighedPricing_bol: TBooleanField;
    tblMainSystemTemp01: TWideStringField;
    tblMainSystemTemp02: TWideStringField;
    tblMainSystemTemp03: TWideStringField;
    tblMainSystemTemp04: TWideStringField;
    tblMainSystemTemp05: TWideStringField;
    tblMainSystemCohortInterval: TIntegerField;
    tblMainSystemCohortLength: TIntegerField;
    tblMainSystemVersion_str: TWideStringField;
    tblMainSystemCheckDispensingStock_bol: TBooleanField;
    tblMainSystemEditableExitProductPrice_bol: TBooleanField;
    tblMainSystemdoNotShowDailyDefinedDose_bol: TBooleanField;
    tblMainSystempostRxBeforePrint_bol: TBooleanField;
    tblMainSystemrequestPinBeforePostRx_bol: TBooleanField;
    tblMainSystemuseExactDayForExpiryDate_bol: TBooleanField;
    tblMainSystemdelta9PatientIntegration_bol: TBooleanField;
    qryProductBarCodes: TADOQuery;
    tblMainSystemuseBarCoding_bol: TBooleanField;
    dsBarcode: TDataSource;
    qryProductCodeIDByBarcode: TADOQuery;
    GuidField1: TGuidField;
    WideStringField1: TWideStringField;
    IntegerField1: TIntegerField;
    BCDField1: TBCDField;
    stpProductIDByBarcode: TADOStoredProc;
    stpProductIDByBarcodeProductPackSize_ID: TStringField;
    stpProductIDByBarcodeProductCode_ID: TIntegerField;
    stpProductIDByBarcodepackDescription_Str: TStringField;
    stpProductIDByBarcodeCost_mon: TBCDField;
    qryClinicName: TADOQuery;
    qryUserDetails: TADOQuery;
    qrySystemSettings: TADOQuery;
    tblActiveDemanders: TADOQuery;
    dsActiveDemanders: TDataSource;
    qryDemanderDetail: TADOQuery;
    tblMainSystemISOStdNumber_str: TWideStringField;
    tblMainSystemuseBiometricMachine_bol: TBooleanField;
    tblMainSystemnonEditableRxDate_bol: TBooleanField;
    tblMainSystemExpiringPassword_bol: TBooleanField;
    tblMainSystemPasswordActiveDays_int: TIntegerField;
    tblVersionLog: TADOQuery;
    tblGeneralProductDescriptionBin_str: TWideStringField;
    tblSystemDetailsEditHistory: TADOQuery;
    qryUseUserPin: TADOQuery;
    tblMainSystemrequestPinBeforePost_bol: TBooleanField;
    tblMainSystemSystemStoreUnique_ID: TGuidField;
    tblMainSystemPAABPatientIntegration_bol: TBooleanField;
    QryServerTime: TADOQuery;
    procedure tblMainSystemAccountsBeforePost(DataSet: TDataSet);
    procedure tblMainSystemAccountsNewRecord(DataSet: TDataSet);
    procedure qryADODispUnitsNewRecord(DataSet: TDataSet);
    procedure qryADODispIntervalNewRecord(DataSet: TDataSet);
    procedure qryADODispInstructionsNewRecord(DataSet: TDataSet);
    procedure qryADODispUnitsBeforePost(DataSet: TDataSet);
    procedure tblPositionPostsNewRecord(DataSet: TDataSet);
    procedure tblStockStartupBeforePost(DataSet: TDataSet);
    procedure qryHealthCareRegAfterPost(DataSet: TDataSet);
    procedure qryHealthCareRegBeforePost(DataSet: TDataSet);
    procedure TblBinBeforePost(DataSet: TDataSet);
    procedure qryProductBarCodesNewRecord(DataSet: TDataSet);
    procedure tblMainSystemBeforePost(DataSet: TDataSet);
  private
    addingAccount : Boolean;
    function IsInFieldName(pStr:String): Boolean;
    function UpdateProductStock(pProductID:double; pItemsRequested, pItemsIssued,
        pItemsPosted, pItemsOrdered, pItemsReceived : Integer): Boolean;
    function BoolToString(b:Boolean):String;

  public
    FYStart, FYEnd: TDateTime;
    StartYear, StartMonth, StartDay, EndYear, EndMonth, EndDay: Word;
    procedure ClearAnyRecordLocks(UserID: Double);
    function CloseAuditData: Boolean;
    function CurrentLeadTime(pValue:String): Integer;
    function CurrentProcurementPeriod(pValue:String): Integer;
    procedure FilterProducts(const vFilter: integer);
    function FindProduct(pProdID: double): Boolean;
    function GetDefaultAccount: Double;
    function GetDefaultDemander: Double;
    function GetDefaultSupplier: Double;
    procedure GetFinancialYear(var YearStart, YearEnd :TDateTime);
    function GetLevelDescription(pLevel: integer): String;
    function GetNextVoucherNumber(var pSuccess : boolean; pWhareHouse: double;
        pType: integer): string;
    function GetProductCost: Currency;
    function GetProductData(pID: Double): RProductDetails;
    function GetProductID: Double;
    function GetReceiptLevy(pID: double): Double;
    function GetReportBuilderName: string;
    function GetVAT(pID: double): Double;
    function IsRequisitionManagementOnly: Boolean;
    function IsRxCosting: Boolean;
    procedure LoadSystemLst(var pStrLst: TStringlist; pType: integer);
    function OpenAuditData: Boolean;
    procedure ProductCommitTrans;
    procedure ProductRollbackTrans;
    procedure ProductStartTrans;
    function Product_OnHoldAmount(pProductID:double): Integer;
    function Product_OnOrderAmount(pProductID:double): Integer;
    procedure SortProductsGeneralTable(const vField: String);
    procedure SortProductsSystemTable(const vField: String);
    procedure SortProductsTableASC(const vField: String);
    procedure SortStockStartupData(const vField: String);
    function UpdateProductCost(pID: Double; pCost: Currency): Boolean;
    procedure UpdateProductTable;
    function UpdatePurchaseOrder(pProductID:double; pItemsOrdered, pItemsReceived :
        Integer): Boolean;
    function UpdatePurchaseReceipt(pProductID:double; pItemsOrdered, pItemsReceived
        : Integer): Boolean;
    function UpdateRequisition(pProductID:double; pItemsRequested, pItemsIssued,
        pItemsPosted:integer): Boolean;
    function UseRecordNumbering(pArea : integer): Boolean;
    function WriteAuditData(pAuditData: RProductAuditDetails): Boolean;
    procedure LockProductforIssuing(productCode : Integer);
    procedure UnLockProduct(productCode : Integer);
    function IsProductLocked(productCode : Integer) : Boolean;
    function MyRoundTo(const AValue: Double; const ADigit: TRoundToRange): Double;
    procedure CorrectProductPackSizes;
    function GetProductDetail(barCode: string): Boolean;
    function GetProductCodeIDByBarcodeDetail(barCode: string): Integer;
    function GetUserClinic(UserID: double): string;
    function GetUserClinicID(UserID: double): string;
    function GetUserUniqueID(UserID: double): string;
    function GetUserDispenserID(UserID: double): string;
    function GetUserPrescriberID(UserID: double): string;
    function GetDefaultDemanderName(DemanderID: string): string;
    function GetPinBeforePost: Boolean;
    function GetNumberofDaysPssExpires: integer;
    procedure LogVersionDetails(_machineName: string; _userName: string; _location: string; _version: string);
    function GetUserExpiryDateLastSet(UserID: double): TDateTime;  
    procedure LogSystemChange(vType: string; vDescription: string);
    function RequestUserPinBeforePost: Boolean;
    procedure CheckServerAndClientTimeDifference; 

  end;

var

  MainDm: TMainDm;

implementation

uses RxSolutionUFrm;


{$R *.DFM}

procedure TMainDm.ClearAnyRecordLocks(UserID: Double);
begin

  with stpClearRecordLocks do
    begin
    Parameters.ParamByName('ID').Value := UserID;
    ExecProc;
    end;

  // TODO -cMM: TMainDm.ClearAnyRecordLocks default body inserted
end;

{ TMainDm }


function TMainDm.CloseAuditData:boolean;
begin
{
  with stpStockControlRequisitionAudit do
    Close;
}
end;

function TMainDm.CurrentLeadTime(pValue:String): integer;
const
  FN  = 'LeadTime%s_int';

begin

  Result := -1;
  if IsInFieldName(pValue) then
    with tblMainSystem do
      if Active then
        Result := FieldByName( Format( FN , [pValue])).AsInteger;

end;

function TMainDm.CurrentProcurementPeriod(pValue:String):integer;
const
  FN  = 'ProcurementPeriod%s_int';

begin

  Result := -1;
  if IsInFieldName(pValue) then
    with tblMainSystem do
      if Active then
        Result := FieldByName( Format( FN , [pValue])).AsInteger;

end;

procedure TMainDm.FilterProducts(const vFilter:integer);

begin (*.............................................................*)(*begin*)(*...........................................*)

  with tblGeneralProductDescription do
    if Active then
      begin

      case vFilter of
        0: Filter := '';
        1: Filter := 'InstitutionEDL_bol = TRUE';
        2: Filter := 'ProvincialEDL_bol = TRUE';
        3: Filter := 'NationalEDL_bol = TRUE';
        end;

      Filtered := True;

      end;

end; (*................................................................*)(*end*)(*...........................................*)

function TMainDm.FindProduct( pProdID :double): boolean;

begin

  with tblGeneralProductDescription do
    if Active then
      try
      DisableControls;
      Locate('ProductCode_ID', pProdID, []);
      finally
      EnableControls;
      end;

end;

function TMainDm.GetDefaultAccount: double;
begin

  Result := 0;
  //Result := tblMainSystem.FieldByName('AccountDef_ID').AsFloat;

end;

function TMainDm.GetDefaultDemander: double;
begin

  Result := 0;
  //Result := tblMainSystem.FieldByName('DemanderDef_ID').AsFloat;

end;

function TMainDm.GetDefaultSupplier: double;
begin

  Result := 0;
  //Result := tblMainSystem.FieldByName('SupplierDef_ID').AsFloat;

end;

procedure TMainDm.GetFinancialYear(var YearStart, YearEnd :TDateTime);
begin

  with tblMainSystem do
    if Active then
      begin
      YearStart := FieldByName('FYStart_dat').AsDateTime;
      YearEnd   := FieldByName('FYEnd_dat').AsDateTime;
      end;

end;

function TMainDm.GetLevelDescription(pLevel:integer): String;
begin
  Result := 'Not Set:';
  with tblMainSystem do
    try
    if (pLevel > 0)and (pLevel < 5) then
      Result := FieldByName('Level_0' + IntToStr(pLevel) + 'Description_str').AsString;
    except
      on E:Exception do MessageDlg( E.Message, mtWarning, [mbOK], 0);
    end;

end;

function TMainDm.GetNextVoucherNumber(  var pSuccess :boolean; pWhareHouse:double;
                                        pType:integer       ) :string;
const
  MaxAttempts = 5000;
  NumWidth    = 4;
  AdjustDate  = True;

var
  Attempts: Integer;
  Year1, Month1, Day1 : Word;
  Year2, Month2, Day2 : Word;
  Present, LastSet: TDateTime;
  NextID,i : Integer;
  vNum, vPre, vYr, vMth, vTp, vDiv : string;

begin
  Result    := '';

 tblRecordNumbering.Active := false;
 tblRecordNumbering.Active := true;
 if tblRecordNumbering.Locate('SystemStore_ID;Record_TypeID',
                  VarArrayOf([pWharehouse, pType]),
                  []) then
  begin
  Attempts := 0;
        while Attempts <= MaxAttempts do
          try
          Inc(Attempts);
          // If another user has the table in edit mode, an error occurs here.
          tblRecordNumbering.Edit;
          // If we reach the Break statement, we are successful. Break out of loop.
          Break;
          except
            on EDataBaseError do
              begin
                // Do some delay
              Continue;
              end;
          end;


     if tblRecordNumbering.State = dsEdit then
     begin
      Present := Now();
          LastSet := tblRecordNumbering.FieldByName('Record_DateSet').AsDateTime;
           if Present > LastSet then
            begin
            DecodeDate(Present, Year1, Month1, Day1);
            DecodeDate(LastSet, Year2, Month2, Day2);
            if Month1 <> Month2 then
              begin
              tblRecordNumbering.FieldByName('Record_Month').AsInteger     := Month1;

              if tblRecordNumbering.FieldByName('Record_bol').AsBoolean then
               begin
               tblRecordNumbering.FieldByName('Record_Number').AsInteger    := 0;
               end;
              end;
            if Year1 <> Year2 then
              tblRecordNumbering.FieldByName('Record_Year').AsInteger      := Year1;
            end;

     NextID := tblRecordNumbering.FieldByName('Record_Number').AsInteger+1;
     tblRecordNumbering.FieldByName('Record_number').AsInteger := NextID;
     tblRecordNumbering.FieldByName('Record_DateSet').AsDateTime  := Present;

     tblRecordNumbering.Post;

          vYr     := Copy(tblRecordNumbering.FieldByName('Record_Year').AsString, 3 , 2);
          vMth    := tblRecordNumbering.FieldByName('Record_Month').AsString;
          vPre    := tblRecordNumbering.FieldByName('Record_StorePre').AsString;
          vTp     := tblRecordNumbering.FieldByName('Record_Type').AsString;
          vDiv    := tblRecordNumbering.FieldByName('Record_Divider').AsString;
          vNum := IntToStr(NextID);  // Close the rec so somone else can access
     tblRecordNumbering.Close;

          for i:= Length(vNum) to NumWidth-1 do
            vNum := '0' + vNum;
          if AdjustDate then
            if Length(vMth) = 1 then vMth := '0' + vMth;

            if vTp = '' then
            Result := vPre + '/' + vYr + vDiv + vMth + vDiv + vNum
            else
            Result := vPre + vDiv + vTp + '/' + vYr + vDiv + vMth + vDiv + vNum;

            //Result := vYr + vDiv + vMth + vDiv + vNum;

          pSuccess := True;
         // end; (* if State = dsEdit then *)
      end;
    end;
end;


function TMainDm.GetProductCost: Currency;

begin

  Result := 0;
  with tblGeneralProductDescription do
    if Active then
      Result := FieldByName('Cost_mon').AsCurrency;

end;

function TMainDm.GetProductData(pID :Double):RProductDetails;
begin

  Result.ID := 0;

  {
  with stpProductOnhand do
    if Active then
      begin
      Refresh;
      if Locate('ProductCode_ID',pID,[]) then
        begin
        Result.ID         := pID;
        Result.QtyOnHand  := FieldByName('QtyOnHand_int').AsInteger;
        Result.NSN        := FieldByName('NSN_Str').AsString;
        Result.ECN        := FieldByName('ECN_Str').AsString;
        Result.ICN        := FieldByName('ICN_Str').AsString;
        end else
        begin
        Result.ID         := 0;
        Result.QtyOnHand  := 0;
        Result.NSN        := '';
        Result.ECN        := '';
        Result.ICN        := '';
        end;
      end; // active
  }


  with stpGeneralProductLookup do
    begin
    Close;
    Parameters.ParamByName('ProductID').Value       := pID;
    Prepared := True;
    Open;
//    if stpGeneralProductLookup.RecordCount > 0 then
//      begin
      Result.ID         := pID;
      Result.QtyOnHand  := FieldByName('QtyOnHand_int').AsInteger;
      Result.NSN        := FieldByName('NSN_Str').AsString;
      Result.ECN        := FieldByName('ECN_Str').AsString;
      Result.ICN        := FieldByName('ICN_Str').AsString;
//      end;
    Close;
    end;

end;

function TMainDm.GetProductID: Double;

begin

  Result := 0;
  with tblGeneralProductDescription do
    if Active then
      Result := FieldByName('ProductCode_ID').AsFloat;

end;

function TMainDm.GetReceiptLevy(pID:double): double;
var
  vLevy  :variant;
  vRet  : double;
begin

  Result  := 1;
  vLevy    := tblMainSystemAccounts.Lookup('SystemAccount_ID', pID, 'LevyReceipt_dbl');
  if not VarIsEmpty(vLevy) then
    begin
    vRet := VarAsType( vLevy, varDouble );
    vRet := (vRet);
    Result := vRet;
    end;

end;

function TMainDm.GetReportBuilderName: String;
begin

  Result := '';
  with tblMainSystem do
    begin
    Close;
    Open;
    Result := FieldByName('ReportBuilderFile').AsString;
    end;

end;

function TMainDm.GetVAT(pID:double): double;
var
  vVat  : variant;
  vRet  : double;
begin

  Result  := 1;
  vVat    := tblMainSystemAccounts.Lookup('SystemAccount_ID', pID, 'VatPercent_dbl');
  if not VarIsEmpty(vVat) then
    begin
    vRet := VarAsType( vVat, varDouble );
    vRet := (vRet);
    Result := vRet;
    end;

end;

function TMainDm.IsInFieldName(pStr: String): Boolean;
begin

  Result := False;
  if pStr = 'A' then Result := True
  else if pStr = 'B' then Result := True
  else if pStr = 'C' then Result := True
  else if pStr = 'D' then Result := True;
end;

function TMainDm.IsRequisitionManagementOnly: Boolean;
begin
  Result := False;
  with tblMainSystem do
    if Active then
      if FieldByName('RxCosting').AsString = '3' then
        Result := True;
end;

function TMainDM.IsRxCosting:boolean;
begin

  Result := False;
  with tblMainSystem do
    if Active then
      if FieldByName('RxCosting').AsString = '2' then
        Result := True;

end;

procedure TMainDm.LoadSystemLst(var pStrLst: TStringlist; pType: integer);
begin

 with tblMainSystem, pStrLst do
  if Active then
    begin
    First;
    Clear;
    case pType of
      PROCUREMENT_TIME:
        begin
        Add('A = ' + FieldByName('ProcurementPeriodA_int').AsString + ' days');
        Add('B = ' + FieldByName('ProcurementPeriodB_int').AsString + ' days');
        Add('C = ' + FieldByName('ProcurementPeriodC_int').AsString + ' days');
        Add('D = ' + FieldByName('ProcurementPeriodD_int').AsString + ' days');
        end;
      LEAD_TIME:
        begin
        Add('A = ' + FieldByName('LeadTimeA_int').AsString + ' days');
        Add('B = ' + FieldByName('LeadTimeB_int').AsString + ' days');
        Add('C = ' + FieldByName('LeadTimeC_int').AsString + ' days');
        Add('D = ' + FieldByName('LeadTimeD_int').AsString + ' days');
        end;
      end; (*case *)
   end;

end;

function TMainDm.OpenAuditData:boolean;
begin

{
  with stpStockControlRequisitionAudit do
    begin
    Close;
    Parameters.ParamByName('ReferanceStr').Value := '-';
    Prepared := True;
    Open;
    end;
}

end;

procedure TMainDm.ProductCommitTrans;
begin

  with StockControlADOConnection do
    if InTransaction then
      CommitTrans;

end;

procedure TMainDm.ProductRollbackTrans;
begin

  with StockControlADOConnection do
    if InTransaction then
      RollBackTrans;

end;

procedure TMainDm.ProductStartTrans;
begin

  with StockControlADOConnection do
    if not InTransaction then
      BeginTrans;

end;

function TMainDm.Product_OnHoldAmount(pProductID:double): Integer;
begin
  Result := 0;
  with stpProductCurrentOnHold do
    try
    Close;
    Parameters.ParamByName('ProductID').Value := pProductID;          // All stored procs have same param name
    Open;
    if RecordCount > 0 then
      if not FieldByName('SumOfQtyOrdered_int').IsNull then
        Result := FieldByName('SumOfQtyOrdered_int').AsInteger;
    Close;
    except
      //MessageDlg( 'OnHold: ' + IntToStr(vOnHold),mtWarning,[mbOK],0);
    end;
  if Result < 1 then Result := 0;
end;

function TMainDm.Product_OnOrderAmount(pProductID:double): Integer;
begin
  Result := 0;
  with stpProductCurrentOnOrder do
    try
    Close;
    Parameters.ParamByName('ProductID').Value := pProductID;          // All stored procs have same param name
    Open;
    if RecordCount > 0 then
      if not FieldByName('SumOfQtyOrdered_int').IsNull then
        Result := FieldByName('SumOfQtyOrdered_int').AsInteger;
    Close;
    except
      //MessageDlg( 'OnOrder: ' + IntToStr(vOnHold),mtWarning,[mbOK],0);
    end;
  if Result < 1 then Result := 0;


end;

procedure TMainDm.SortProductsGeneralTable(const vField:String); (*:::START:*)(*===========================================*)
                                                                                (*procedure:SortRequisitionGrid--------------*)
                                                                                (*===========================================*)
                                                                    (*9.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vIsCurrentSort, vDescOrder  :Boolean;
  vNewSort                    :String;

begin (*.............................................................*)(*begin*)(*...........................................*)

  with tblGeneralProductDescription do
    if Active then
      begin
      vIsCurrentSort  := Pos(vField, Sort) > 0;                                 // Sort = Property of ADO dataset
      vDescOrder      := Pos('DESC', Sort) > 0;
      vNewSort        := vField;
      if vIsCurrentSort then
        if not vDescOrder then
          vNewSort := vNewSort + ' DESC';
      Sort := vNewSort;
      end;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TMainDm.SortProductsSystemTable(const vField:String); (*:::START:*)(*===========================================*)
                                                                                (*procedure:SortRequisitionGrid--------------*)
                                                                                (*===========================================*)
                                                                    (*9.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vIsCurrentSort, vDescOrder  :Boolean;
  vNewSort                    :String;

begin (*.............................................................*)(*begin*)(*...........................................*)

  with tblGeneralProductDescription do
    if Active then
      begin
      vIsCurrentSort  := Pos(vField, Sort) > 0;                                 // Sort = Property of ADO dataset
      vDescOrder      := Pos('DESC', Sort) > 0;
      vNewSort        := vField;
      if vIsCurrentSort then
        if not vDescOrder then
          vNewSort := vNewSort + ' DESC';
      Sort := vNewSort;
      end;
end; (*................................................................*)(*end*)(*...........................................*)

procedure TMainDm.SortProductsTableASC(const vField:String); (*:::START:*)(*===========================================*)
                                                                                (*procedure:SortRequisitionGrid--------------*)
                                                                                (*===========================================*)
                                                                    (*9.8.2002*)(* Orig::Deane Putzier                       *)
var (*.................................................................*)(*var*)(*...........................................*)
  vIsCurrentSort, vDescOrder  :Boolean;
  vNewSort                    :String;
  vCurRec                     :Double;


begin (*.............................................................*)(*begin*)(*...........................................*)

  with tblGeneralProductDescription do
    if Active then
      begin
      vCurRec := FieldByName('ProductCode_ID').AsFloat;
      vIsCurrentSort  := Pos(vField, Sort) > 0;                                 // Sort = Property of ADO dataset
      vNewSort        := vField;
      if not vIsCurrentSort then
        begin
        Sort := vNewSort;
        Locate('ProductCode_ID', vCurRec, []);
        end;
      end;

end; (*................................................................*)(*end*)(*...........................................*)

procedure TMainDm.SortStockStartupData(const vField:String);
var (*.................................................................*)(*var*)(*...........................................*)
  vIsCurrentSort, vDescOrder  :Boolean;
  vNewSort                    :String;

begin (*.............................................................*)(*begin*)(*...........................................*)

  with tblStockStartup do
    if Active then
      begin
      vIsCurrentSort  := Pos(vField, Sort) > 0;                                 // Sort = Property of ADO dataset
      vDescOrder      := Pos('DESC', Sort) > 0;
      vNewSort        := vField;
      if vIsCurrentSort then
        if not vDescOrder then
          vNewSort := vNewSort + ' DESC';
      Sort := vNewSort;
      end;

end;

procedure TMainDm.tblMainSystemAccountsBeforePost(DataSet: TDataSet);
begin

  with Dataset do
    begin
    if FieldByName('AccountBudget_mon').IsNull then
      FieldByName('AccountBudget_mon').AsCurrency := 0;
    if FieldByName('BudgetBalance_mon').IsNull then
      FieldByName('BudgetBalance_mon').AsCurrency := 0;

    if FieldByName('LevyRequisition_dbl').IsNull then
      FieldByName('LevyRequisition_dbl').AsFloat := 0;
    if FieldByName('LevyOrder_dbl').IsNull then
      FieldByName('LevyOrder_dbl').AsFloat := 0;
    if FieldByName('LevyReceipt_dbl').IsNull then
      FieldByName('LevyReceipt_dbl').AsFloat := 0;
    if FieldByName('InflationRate_dbl').IsNull then
      FieldByName('InflationRate_dbl').AsFloat := 0;
    if FieldByName('VatPercent_dbl').IsNull then
      FieldByName('VatPercent_dbl').AsFloat := 0; 

    //Log any changes here
    if (not VarIsNULL(FieldByName('Account_str').OldValue)) then
     if (FieldByName('Account_str').OldValue <> FieldByName('Account_str').NewValue) then
      LogSystemChange(HST_ACC + ' NUMBER', FieldByName('AccountName_str').AsString + ' ' + FieldByName('Account_str').OldValue + ' TO ' + FieldByName('Account_str').NewValue );

    if (not VarIsNULL(FieldByName('AccountName_str').OldValue)) then
      if FieldByName('AccountName_str').OldValue <> FieldByName('AccountName_str').NewValue then
       LogSystemChange(HST_ACC + ' NAME', FieldByName('AccountName_str').OldValue + ' TO ' + FieldByName('AccountName_str').NewValue );

    if (not VarIsNULL(FieldByName('VatPercent_dbl').OldValue)) then
     if (FieldByName('VatPercent_dbl').OldValue <> FieldByName('VatPercent_dbl').NewValue) then
      LogSystemChange(HST_ACC + ' VAT', FieldByName('AccountName_str').AsString  + ' ' +FloatToStr(FieldByName('VatPercent_dbl').OldValue) + ' TO ' + FloatToStr(FieldByName('VatPercent_dbl').NewValue));

    if (not VarIsNULL(FieldByName('InflationRate_dbl').OldValue)) then
     if (FieldByName('InflationRate_dbl').OldValue <> FieldByName('InflationRate_dbl').NewValue) then
      LogSystemChange(HST_ACC + ' Inflation', FieldByName('AccountName_str').AsString + ' ' + FloatToStr(FieldByName('InflationRate_dbl').OldValue) + ' TO ' + FloatToStr(FieldByName('InflationRate_dbl').NewValue));

    //LevyToOrder_bol
    if (not VarIsNULL(FieldByName('LevyToOrder_bol').OldValue)) then
     if (FieldByName('LevyToOrder_bol').OldValue <> FieldByName('LevyToOrder_bol').NewValue) then
      LogSystemChange(HST_ACC + ' ORD LEVY', FieldByName('AccountName_str').AsString  + ' ' + BoolToString(FieldByName('LevyToOrder_bol').OldValue) + ' TO ' + BoolToString(FieldByName('LevyToOrder_bol').NewValue));

    if (not VarIsNULL(FieldByName('LevyToRequisition_bol').OldValue)) then
     if (FieldByName('LevyToRequisition_bol').OldValue <> FieldByName('LevyToRequisition_bol').NewValue) then
      LogSystemChange(HST_ACC + ' REQ LEVY', FieldByName('AccountName_str').AsString  + ' ' + BoolToString(FieldByName('LevyToRequisition_bol').OldValue) + ' TO ' + BoolToString(FieldByName('LevyToRequisition_bol').NewValue));

    if (not VarIsNULL(FieldByName('LevyToReceipt_bol').OldValue)) then
     if (FieldByName('LevyToReceipt_bol').OldValue <> FieldByName('LevyToReceipt_bol').NewValue) then
      LogSystemChange(HST_ACC + ' REC LEVY', FieldByName('AccountName_str').AsString  + ' ' + BoolToString(FieldByName('LevyToReceipt_bol').OldValue) + ' TO ' + BoolToString(FieldByName('LevyToReceipt_bol').NewValue));

   //LevyOrder_dbl
    if (not VarIsNULL(FieldByName('LevyOrder_dbl').OldValue)) then
     if (FieldByName('LevyOrder_dbl').OldValue <> FieldByName('LevyOrder_dbl').NewValue) then
      LogSystemChange(HST_ACC + ' ORD LEVY', FieldByName('AccountName_str').AsString  + ' ' + FloatToStr(FieldByName('LevyOrder_dbl').OldValue) + ' TO ' + FloatToStr(FieldByName('LevyOrder_dbl').NewValue));
   //LevyRequisition_dbl
    if (not VarIsNULL(FieldByName('LevyRequisition_dbl').OldValue)) then
     if (FieldByName('LevyRequisition_dbl').OldValue <> FieldByName('LevyRequisition_dbl').NewValue) then
      LogSystemChange(HST_ACC + ' REQ LEVY', FieldByName('AccountName_str').AsString  + ' ' + FloatToStr(FieldByName('LevyRequisition_dbl').OldValue) + ' TO ' + FloatToStr(FieldByName('LevyRequisition_dbl').NewValue));
   //LevyReceipt_dbl
    if (not VarIsNULL(FieldByName('LevyReceipt_dbl').OldValue)) then
     if (FieldByName('LevyReceipt_dbl').OldValue <> FieldByName('LevyReceipt_dbl').NewValue) then
      LogSystemChange(HST_ACC + ' REC LEVY', FieldByName('AccountName_str').AsString  + ' ' + FloatToStr(FieldByName('LevyReceipt_dbl').OldValue) + ' TO ' + FloatToStr(FieldByName('LevyReceipt_dbl').NewValue));

   //AccountBudget_mon
    if (not VarIsNULL(FieldByName('AccountBudget_mon').OldValue)) then
     if (FieldByName('AccountBudget_mon').OldValue <> FieldByName('AccountBudget_mon').NewValue) then
      LogSystemChange(HST_ACC + ' BUDGET', FieldByName('AccountName_str').AsString  + ' ' + FloatToStr(FieldByName('AccountBudget_mon').OldValue) + ' TO ' + FloatToStr(FieldByName('AccountBudget_mon').NewValue));

    if addingAccount then
     LogSystemChange('ADDING '+ HST_ACC,  FieldByName('AccountName_str').AsString);

    end;



 addingAccount := False;
end;

procedure TMainDm.tblMainSystemAccountsNewRecord(DataSet: TDataSet);
begin

  DataSet.FieldByName('SystemStore_ID').AsFloat :=
    tblMainSystem.FieldByName('SystemStore_ID').AsFloat;

 addingAccount := True; 

end;

function TMainDm.UpdateProductCost(pID :Double;pCost:Currency):Boolean;
begin

  with stpProductUPDATE_StockPrice do
    begin
    Parameters.ParamByName('ProductID').Value := pID;
    Parameters.ParamByName('NewPrice').Value := pCost;
    Prepared := True;
    Execute;
    Result := True;
    end;

end;

function TMainDm.UpdateProductStock(pProductID: double;
                                    pItemsRequested,
                                    pItemsIssued,
                                    pItemsPosted,
                                    pItemsOrdered,
                                    pItemsReceived: Integer): Boolean;

begin

  Result := False;

  with StockControlADOConnection do
    with UPDATESQL_ProductStockControl do
      try
      Parameters.ParamByName('ProductID').Value       := pProductID;
      Parameters.ParamByName('ItemsRequested').Value  := pItemsRequested;
      Parameters.ParamByName('ItemsIssued').Value     := pItemsIssued;
      Parameters.ParamByName('ItemsPosted').Value     := pItemsPosted;
      Parameters.ParamByName('ItemsOrdered').Value    := pItemsOrdered;
      Parameters.ParamByName('ItemsReceived').Value   := pItemsReceived;
      Prepared := True;
      ExecProc;
      Result := True;

      except

      Result := False;
      end;

      // if posting, update audit table here;


{

SystemStore_ID      :++
ReqItemID           :++
TypeAudit           :++ Type_Str (I,O,R)
Num                 : refstr ?? is this the link
Num                 : Voucher
DemanderID          :++
SupplierID          :++
DemSuppType         : which type for table purposes
ProductID           : productCodeID
date(issued)        : date_dat
Quantity)int        : QtyIssued;
Value_mon           : ExtendedCost
QtyOnHand           : QtyOnHand_int;



O=ordered
I=issued
R=received



INSERT INTO TblAudit(
Reference_str,
VoucherNo_str,
DemanderSupplier_str,
ProductCode_str,
Date_dat,
Type_str,
Quantity_int,
Value_mon,
QuantityOnHand_int)

SELECT
Tblrequisition.Requisition_str,
Tblrequisition.Requisition_str,
Tblrequisition.Code_str,
Tblrequisitionitems.ProductCode_str,
Tblrequisition.Issued_Dat,
'I',
Tblrequisitionitems.QtyIssued_int,
Tblrequisitionitems.ExtendedCost_mon,
Tblrequisitionitems.QtyOnHand_int


FROM TblRequisition Tblrequisition, TblRequisitionItems Tblrequisitionitems
WHERE  (Tblrequisition.Requisition_str = Tblrequisitionitems.Requisition_str)
AND (Tblrequisition.Requisition_str =:Requisition_str)
}



end;

procedure TMainDm.UpdateProductTable;

begin (*.............................................................*)(*begin*)(*...........................................*)

  with tblGeneralProductDescription do
    if Active then
      begin
      Close;
      Open;
      end;
end;

function TMainDm.UpdatePurchaseOrder (  pProductID:double; pItemsOrdered,
                                        pItemsReceived : Integer): Boolean;
begin

Result := UpdateProductStock( pProductID, 0, 0, 0, pItemsOrdered, pItemsReceived);

end;

function TMainDm.UpdatePurchaseReceipt (  pProductID:double;
                                          pItemsOrdered,
                                          pItemsReceived : Integer): Boolean;

begin

Result := UpdateProductStock( pProductID, 0, 0, 0, pItemsOrdered, pItemsReceived);

end;

function TMainDm.UpdateRequisition (pProductID:double; pItemsRequested,
                                    pItemsIssued, pItemsPosted : Integer): Boolean;

begin

if not IsRequisitionManagementOnly then
  begin
  Result := UpdateProductStock( pProductID, pItemsRequested, pItemsIssued,
                                pItemsPosted, 0, 0);
  end else
  Result := UpdateProductStock( pProductID, pItemsRequested, pItemsIssued,
                                pItemsPosted, 0, 0);

end;

function TMainDm.UseRecordNumbering(pArea : integer): Boolean;
const
  CREQ = 3;
  CORD = 4;
  CREC = 5;
begin

  Result    := False;
  with tblRecordNumbering do
    begin
    Active := False;
    Active := True;                                                             // do this to prevent can't locate record error
    if active then
      if Locate(  'Record_TypeID', VarArrayOf([pArea]), []) then
          Result := FieldByName('Record_bol').AsBoolean;
    end;

end;

function TMainDm.WriteAuditData(pAuditData:RProductAuditDetails):Boolean;
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
    if pAuditData.ExpiryDate_dat < Now -(20*360) then
     Parameters.ParamByName('ExpiryDate_dat').Value    := NULL
    else
     Parameters.ParamByName('ExpiryDate_dat').Value    := pAuditData.ExpiryDate_dat;

    ExecProc;
    end;

end;

procedure TMainDm.qryADODispUnitsNewRecord(DataSet: TDataSet);
begin

  with DataSet Do
    begin

    FieldByName('abbreviation_Str').AsString := '';
    FieldByName('abbreviationDescription_Str').AsString := '';
    FieldByName('abbreviationValue_dbl').AsFloat := 1;
    FieldByName('abbreviationValueUnit_Str').AsString := 'of';
    FieldByName('abbreviationValueRatio_dbl').AsFloat := 1;
    FieldByName('abbreviationType_Str').AsString := 'Unit';
    FieldByName('abbreviationValueRatioUnit_Str').AsString := 'of';
    FieldByName('abbreviationInstruction_Str').AsString := '';
    FieldByName('abbreviationLanguage_str').AsString := 'English';

    end;

end;

procedure TMainDm.qryADODispIntervalNewRecord(DataSet: TDataSet);
begin
  with DataSet Do
    begin

    FieldByName('abbreviation_Str').AsString := '';
    FieldByName('abbreviationDescription_Str').AsString := '';
    FieldByName('abbreviationValue_dbl').AsFloat := 1;
    FieldByName('abbreviationValueUnit_Str').AsString := 'hour';
    FieldByName('abbreviationValueRatio_dbl').AsFloat := 1;
    FieldByName('abbreviationType_Str').AsString := 'Interval';
    FieldByName('abbreviationValueRatioUnit_Str').AsString := 'hour';
    FieldByName('abbreviationInstruction_Str').AsString := 'Nil';
    FieldByName('abbreviationLanguage_str').AsString := 'English';

    end;

end;

procedure TMainDm.qryADODispInstructionsNewRecord(DataSet: TDataSet);
begin
  with DataSet Do
    begin

    FieldByName('abbreviation_Str').AsString := '<?>';
    FieldByName('abbreviationDescription_Str').AsString := '<?>';
    FieldByName('abbreviationValue_dbl').AsFloat := 1;
    FieldByName('abbreviationValueUnit_Str').AsString := 'None';
    FieldByName('abbreviationValueRatio_dbl').AsFloat := 1;
    FieldByName('abbreviationType_Str').AsString := 'Additional Directions';
    FieldByName('abbreviationValueRatioUnit_Str').AsString := 'None';
    FieldByName('abbreviationInstruction_Str').AsString := '';
    FieldByName('abbreviationLanguage_str').AsString := 'English';

    end;

end;

procedure TMainDm.qryADODispUnitsBeforePost(DataSet: TDataSet);
begin
  with DataSet Do
    begin
    FieldByName('abbreviationInstruction_Str').AsString :=
      FieldByName('abbreviationDescription_Str').AsString ;
    end;

end;

procedure TMainDm.tblPositionPostsNewRecord(DataSet: TDataSet);
begin

  with Dataset do
    begin
    {
     personPositionPost_ID
     personPositionPostDescription_str
     personPositionPostArea_str
     numberPrefix_str
     lastNumber_int
     defaultRxLevel_id
     defaultRxLevel_str
     

    }

    end;

end;

procedure TMainDm.tblStockStartupBeforePost(DataSet: TDataSet);
begin
  with DataSet do
    begin
    try
      FieldByName('UnitsOnHand_dbl').AsFloat :=
      FieldByName('PackSizeValue_dbl').AsFloat *
      FieldByName('QtyOnHand_int').AsInteger;
    except
    end

    end
end;

procedure TMainDm.qryHealthCareRegAfterPost(DataSet: TDataSet);
begin
 qryHealthCareReg.Insert;
end;

procedure TMainDm.qryHealthCareRegBeforePost(DataSet: TDataSet);
begin
 with qryHealthCareReg do
 begin
 // FieldByName('CompletedBy_str').AsString := get user details that is logged on
 end;
end;

procedure TMainDm.LockProductforIssuing(productCode: integer);
begin
//Lock the Product and make it unavailable for issuing
 with stp_LockProductforIssuing do
  begin
  Parameters.ParamByName('@ProductCodeID').Value := productCode;
  ExecProc;
  end;
end;

procedure TMainDm.UnLockProduct(productCode : integer);
begin
//UnLock the Product and make it available for issuing
 with stp_UnLockProduct do
  begin
  Parameters.ParamByName('@ProductCodeID').Value := productCode;
  ExecProc;
  end;
end;

function TMainDm.IsProductLocked(productCode : integer) : boolean;
begin
 //Return True result if the Product has been locked
 with stp_IsProductLocked do
  begin
  Close;
  Parameters.ParamByName('@ProductCodeID').Value := productCode;
  Open;
  if FieldByName('LockedForIssuing_bol').AsBoolean = True then
   Result := True
  else
   Result := False;
  Close;
  end;

end;

function TMainDm.MyRoundTo(const AValue: Double; const ADigit: TRoundToRange): Double;
var
 LFactor, lResult: Double;
begin
 LFactor := IntPower(10, ADigit);
 lResult := AValue / LFactor;
 Result := Round(lResult) * LFactor;
end;

procedure TMainDm.CorrectProductPackSizes;
begin
//disabled for now... 

//This procedure will update all items on the system that have pack size = 0
{ with stpCorrectProductPAckSizes do
  begin
  ExecSQL;
  end;  }


end;


procedure TMainDm.TblBinBeforePost(DataSet: TDataSet);
begin

if TblBinCode_str.AsString  = '' then
 begin
 MessageDlg('Please enter code for the new Bin location',mtInformation,[mbOK],0);
 Abort;
 end;
end;

procedure TMainDm.qryProductBarCodesNewRecord(DataSet: TDataSet);
begin

 with qryProductBarCodes do
  begin
  FieldByName('productPackSize_ID').Value := tblStockStartup.FieldByName('productPackSize_ID').Value;
  FieldByName('productCode_ID').Value := tblStockStartup.FieldByName('productCode_ID').Value;
  end;

end;

function TMainDm.GetProductDetail(barCode: string): Boolean;
begin

 with stpProductIDByBarcode do
  begin
  Close;
  Parameters.ParamByName('@barCode').Value := barCode;
  Open;

  if (FieldByName('ProductCode_ID').AsInteger > -1) then
   Result := True
  else
   Result := False;
  end;

end;

function TMainDm.GetProductCodeIDByBarcodeDetail(barCode: string): Integer;
begin

 //*******
 Result := -1;

 with qryProductCodeIDByBarcode do
  begin
  Close;
  Parameters.ParamByName('barCode1').Value := barCode;
  Parameters.ParamByName('barCode').Value := barCode;
  Open; 
  Result := FieldByName('ProductCode_ID').AsInteger;
  Close;
  end;

end;

function TMainDm.GetUserClinic(UserID: double): string;
begin

 Result := '';

 with qryClinicName do
  begin
  Close;
  Parameters.ParamByName('userNo_int').Value := UserID;
  Open;
  if (RecordCount > 0) then
   Result := fieldByname('clinicName_str').AsString
  else
   Result := '';
  end;


end;

function TMainDm.GetUserClinicID(UserID: double): string;
begin

 Result := '';

 with qryClinicName do
  begin
  Close;
  Parameters.ParamByName('userNo_int').Value := UserID;
  Open;
  if (RecordCount > 0) then
   Result := fieldByname('clinic_ID').AsString
  else
   Result := '';
  end;


end;

function TMainDm.GetUserUniqueID(UserID: double): string;
begin

 Result := '';

 with qryUserDetails do
  begin
  Close;
  Parameters.ParamByName('userNoint').Value := UserID;
  Open;
  if (RecordCount > 0) then
   Result := fieldByname('UserID').AsString
  else
   Result := '';
  end; 

end;

function TMainDm.GetUserDispenserID(UserID: double): string;
begin

 Result := '';

 with qryUserDetails do
  begin
  Close;
  Parameters.ParamByName('userNoint').Value := UserID;
  Open;
  if (RecordCount > 0) then
   Result := fieldByname('Dispenser_ID').AsString
  else
   Result := '';
  end;

end;

function TMainDm.GetUserPrescriberID(UserID: double): string;
begin

 Result := '';

 with qryUserDetails do
  begin
  Close;
  Parameters.ParamByName('userNoint').Value := UserID;
  Open;
  if (RecordCount > 0) then
   Result := fieldByname('Prescriber_ID').AsString
  else
   Result := '';
  end;

end;

function TMainDm.GetPinBeforePost: Boolean;
begin
 //********** 26 June 2013
 //********** This functions returns True if system has been setup so that users are
 //********** forced to enter a pin/password before posting the prescription
 with qrySystemSettings do
  begin
  Close;
  Open;
  if RecordCount > 0 then
   begin
   if FieldByName('requestPinBeforePostRx_bol').AsBoolean then
    Result := True
   else Result := False;
   end
  else
    Result := False;
  end;

end;

function TMainDm.GetDefaultDemanderName(DemanderID: string): string;
begin

 with qryDemanderDetail do
  begin
  Close;
  Parameters.ParamByName('DemanderID').Value := DemanderID;
  Open;
  if (RecordCount > 0) then
   Result := fieldByname('Name_str').AsString
  else
   Result := '';
  end;

end;

function TMainDm.GetNumberofDaysPssExpires: Integer;
begin

 Result := 0;
 
 with tblMainSystem do
  begin
  if (FieldByName('PasswordActiveDays_int').AsInteger > 0) then
   Result := FieldByName('PasswordActiveDays_int').AsInteger
  else
   Result := 0
  end;

end;

procedure TMainDm.LogVersionDetails(_machineName: string; _userName: string; _location: string; _version: string);
begin  

 try
 with tblVersionLog do
  begin
  Open;
  //if last entry is different then the current version then log version details
  //if (not Locate('version_str', _version, [])) then
  if FieldByName('version_str').AsString <> _version then
   begin
   Append;
   FieldByName('updated_dat').AsDateTime        := Now();
   FieldByName('versionUsedby_str').AsString    := _userName; //RxSolutionFrm.Security.User.LastName.Value + ','+RxSolutionFrm.Security.User.FirstName.Value ;
   FieldByName('machineName_str').AsString      := _machineName;
   FieldByName('location_str').AsString         := _location;
   FieldByName('version_str').AsString          := _version;
   Post;
   end;

  Close;
  end;
 except
 end;

end;

function TMainDm.GetUserExpiryDateLastSet(UserID: double): TDateTime;
begin

  Result := Now() + 360;

  with qryUserDetails do
   begin
   Close;
   Parameters.ParamByName('userNoint').Value := UserID;
   Open;
   if (RecordCount > 0) then
    Result := fieldByname('passwordSet_dat').AsDateTime
   else
    Result :=  Now() + 360;
   end;

end;

procedure TMainDm.LogSystemChange(vType: string; vDescription: string);
begin

 with tblSystemDetailsEditHistory do
  begin
  if not Active then Open;
  Append;
  FieldByName('Type_str').AsString              := vType;
  FieldByName('ChangeDescription_str').AsString := vDescription;
  FieldByName('ChangeDate_dat').AsDateTime      := Now();
  FieldByName('UserName_str').AsString          := RxSolutionFrm.Security.User.LastName.Value + ','+RxSolutionFrm.Security.User.FirstName.Value ;
  FieldByName('User_ID').AsFloat                := RxSolutionFrm.Security.User.UserNumID.Value;
  Post;
  end;

end;

procedure TMainDm.tblMainSystemBeforePost(DataSet: TDataSet);
begin

 //Log system changes 07 July 2014

 with tblMainSystem do
  begin
  //Demander Code
  if (not VarIsNull(FieldByName('DemanderCode_str').OldValue)) then
   if (FieldByName('DemanderCode_str').OldValue <> FieldByName('DemanderCode_str').NewValue) then
    LogSystemChange(HST_COD, FieldByName('DemanderCode_str').OldValue + ' TO '  + FieldByName('DemanderCode_str').NewValue);

  //Demander Name
  if (not VarIsNull(FieldByName('DemanderName_str').OldValue)) then
   if (FieldByName('DemanderName_str').OldValue <> FieldByName('DemanderName_str').NewValue) then
    LogSystemChange(HST_NAM, FieldByName('DemanderName_str').OldValue + ' TO '  + FieldByName('DemanderName_str').NewValue);

  //FY START Date
  if (not VarIsNull(FieldByName('FYStart_dat').OldValue)) then
   if (FieldByName('FYStart_dat').OldValue <> FieldByName('FYStart_dat').NewValue) then
    LogSystemChange(HST_FIN, DateToStr(FieldByName('FYStart_dat').OldValue) + ' TO '  + DateToStr(FieldByName('FYStart_dat').NewValue));

    //Financial Year
  if (not VarIsNull(FieldByName('FinancialYear_str').OldValue)) then
   if (FieldByName('FinancialYear_str').OldValue <> FieldByName('FinancialYear_str').NewValue) then
    LogSystemChange(HST_FIN, DateToStr(FieldByName('FinancialYear_str').OldValue) + ' TO '  + DateToStr(FieldByName('FinancialYear_str').NewValue));

  //Address Line 1
  if (not VarIsNull(FieldByName('Address1_str').OldValue)) then
   if (FieldByName('Address1_str').OldValue <> FieldByName('Address1_str').NewValue) then
    LogSystemChange(HST_ADR + ' LINE 1', FieldByName('Address1_str').OldValue + ' TO '  + FieldByName('Address1_str').NewValue);

  //Address Line 2
  if (not VarIsNull(FieldByName('Address2_str').OldValue)) then
   if (FieldByName('Address2_str').OldValue <> FieldByName('Address2_str').NewValue) then
    LogSystemChange(HST_ADR + ' LINE 2', FieldByName('Address2_str').OldValue + ' TO '  + FieldByName('Address2_str').NewValue);

    //Address Line 3
  if (not VarIsNull(FieldByName('Address3_str').OldValue)) then
   if (FieldByName('Address3_str').OldValue <> FieldByName('Address3_str').NewValue) then
    LogSystemChange(HST_ADR + ' LINE 3', FieldByName('Address3_str').OldValue + ' TO '  + FieldByName('Address3_str').NewValue);

  //Address City
  if (not VarIsNull(FieldByName('City_str').OldValue)) then
   if (FieldByName('City_str').OldValue <> FieldByName('City_str').NewValue) then
    LogSystemChange(HST_ADR + ' CITY', FieldByName('City_str').OldValue + ' TO '  + FieldByName('City_str').NewValue);


  //PostalCode_str
  if (not VarIsNull(FieldByName('PostalCode_str').OldValue)) then
   if (FieldByName('PostalCode_str').OldValue <> FieldByName('PostalCode_str').NewValue) then
    LogSystemChange(HST_ADR + ' POSTAL CODE', FieldByName('PostalCode_str').OldValue + ' TO '  + FieldByName('PostalCode_str').NewValue);

    //Phone
  if (not VarIsNull(FieldByName('Phone_str').OldValue)) then
   if (FieldByName('Phone_str').OldValue <> FieldByName('Phone_str').NewValue) then
    LogSystemChange(HST_PHN, FieldByName('Phone_str').OldValue + ' TO '  + FieldByName('Phone_str').NewValue);

   //Fax
  if (not VarIsNull(FieldByName('Fax_str').OldValue)) then
   if (FieldByName('Fax_str').OldValue <> FieldByName('Fax_str').NewValue) then
    LogSystemChange('FAX', FieldByName('Fax_str').OldValue + ' TO '  + FieldByName('Fax_str').NewValue);  

  //Contact Person
  if (not VarIsNull(FieldByName('Contact_str').OldValue)) then
   if (FieldByName('Contact_str').OldValue <> FieldByName('Contact_str').NewValue) then
    LogSystemChange(HST_CON, FieldByName('Contact_str').OldValue + ' TO '  + FieldByName('Contact_str').NewValue);

  //District
  if (not VarIsNull(FieldByName('District_str').OldValue)) then
   if (FieldByName('District_str').OldValue <> FieldByName('District_str').NewValue) then
    LogSystemChange(HST_ADR + ' DISTRICT', FieldByName('District_str').OldValue + ' TO '  + FieldByName('District_str').NewValue);

  //REGION
  if (not VarIsNull(FieldByName('Region_str').OldValue)) then
   if (FieldByName('Region_str').OldValue <> FieldByName('Region_str').NewValue) then
    LogSystemChange(HST_ADR + ' REGION', FieldByName('Region_str').OldValue + ' TO '  + FieldByName('Region_str').NewValue);

//  Province_str
  if (not VarIsNull(FieldByName('Province_str').OldValue)) then
   if (FieldByName('Province_str').OldValue <> FieldByName('Province_str').NewValue) then
    LogSystemChange(HST_ADR + ' PROVINCE', FieldByName('Province_str').OldValue + ' TO '  + FieldByName('Province_str').NewValue);

  //RxCosting
  if (not VarIsNull(FieldByName('RxCosting').OldValue)) then
   if (FieldByName('RxCosting').OldValue <> FieldByName('RxCosting').NewValue) then
    LogSystemChange(HST_COS, FieldByName('RxCosting').OldValue + ' TO '  + FieldByName('RxCosting').NewValue);

  //batchManagement_bol
  if (not VarIsNull(FieldByName('batchManagement_bol').OldValue)) then
   if (FieldByName('batchManagement_bol').OldValue <> FieldByName('batchManagement_bol').NewValue) then
    LogSystemChange(HST_BAT, BoolToString(FieldByName('batchManagement_bol').OldValue) + ' TO '  + BoolToString(FieldByName('batchManagement_bol').NewValue));

  //Integration Settings dELTA 9
  if (not VarIsNull(FieldByName('delta9PatientIntegration_bol').OldValue)) then
   if (FieldByName('delta9PatientIntegration_bol').OldValue <> FieldByName('delta9PatientIntegration_bol').NewValue) then
    LogSystemChange(HST_INT + ' D9', BoolToString(FieldByName('delta9PatientIntegration_bol').OldValue) + ' TO '  + BoolToString(FieldByName('delta9PatientIntegration_bol').NewValue));

  //Integration Settings  Biometric
  if (not VarIsNull(FieldByName('useBiometricMachine_bol').OldValue)) then
   if (FieldByName('useBiometricMachine_bol').OldValue <> FieldByName('useBiometricMachine_bol').NewValue) then
    LogSystemChange(HST_INT + ': Biometric', BoolToString(FieldByName('useBiometricMachine_bol').OldValue) + ' TO '
     + BoolToString(FieldByName('useBiometricMachine_bol').NewValue));

  //Integration Settings  Bar coding
  if (not VarIsNull(FieldByName('useBarCoding_bol').OldValue)) then
   if (FieldByName('useBarCoding_bol').OldValue <> FieldByName('useBarCoding_bol').NewValue) then
    LogSystemChange(HST_INT + ': Barcoding', BoolToString(FieldByName('useBarCoding_bol').OldValue) + ' TO '
     + BoolToString(FieldByName('useBarCoding_bol').NewValue));

    //Integration Settings  Paab interface
  if (not VarIsNull(FieldByName('PAABPatientIntegration_bol').OldValue)) then
   if (FieldByName('PAABPatientIntegration_bol').OldValue <> FieldByName('PAABPatientIntegration_bol').NewValue) then
    LogSystemChange(HST_INT + ': PAAB', BoolToString(FieldByName('PAABPatientIntegration_bol').OldValue) + ' TO '
     + BoolToString(FieldByName('PAABPatientIntegration_bol').NewValue));

     

 end; 

end;

function TMainDm.BoolToString(b:Boolean):String;
begin
 if B then
    Result := 'True'
 else
    Result := 'False';
end;

function TMainDm.RequestUserPinBeforePost: Boolean;
begin

 Result := False;
 
 with qryUseUserPin do
  begin
  Close;
  Open;

  if RecordCount > 0 then
   Result := FieldByName('requestPinBeforePost_bol').AsBoolean
  else
   Result := False;
  end;

end;

procedure TMainDm.CheckServerAndClientTimeDifference;
var
 vServerDat, vClientDat: TDateTime;
 vDateDiff: integer;
 vErrMSGStart, vErrMSGEnd, vDateStrMSG : string;
begin

 vErrMSGStart   := 'There is a date/time difference between this machine and the database server.' + #13;
 vErrMSGEnd     := 'Please check the dates.';

 vServerDat := Now;
 vClientDat := Now;

 //Load Server Time
 with QryServerTime do
  begin
  Close;
  Open;
  if RecordCount > 0 then
   vServerDat := fieldByName('ServerDat').AsDateTime;

  vDateStrMSG := 'Server Machine date/time :' + DateToStr(vServerDat)+ #13 + 'Client Machine date/time :' + DateToStr(vClientDat);

  Close;
  end;

 vDateDiff := DaysBetween(vServerDat, vClientDat);

 if vDateDiff > 0 then
  MessageDlg(vErrMSGStart + vDateStrMSG, mtWarning, [mbOk], 0);

end;

end.

