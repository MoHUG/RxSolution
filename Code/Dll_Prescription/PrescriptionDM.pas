unit PrescriptionDM;

interface

uses
  SysUtils, Classes, DB, ADODB, Variants, Dialogs, DateUtils,
  Math, PrescriptionUtilities, PrescriptionClasses, IniFiles, Controls, Forms,

  DBClient, Provider, ComObj, ppDB, ppCtrls,                                                                                       
  ppBands, ppStrtch, ppRegion, ppClass, ppVar, jpeg, ppPrnabl, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppModule, daDataModule,
  TXComp, TXRB, ppParameter, myChkBox, raCodMod, ppEndUsr,
   ActiveX, ppBarCod;

const
  HST_ADD     = 'ADDED PROTOCOL';
  HST_DEL     = 'REMOVED';
  HST_EDT     = 'EDITED';
  HST_OVR     = '*ADMIN OVERRIDE*';
  HST_ERR     = '*ERROR*';
  HST_PRN     = 'PRINTED';
  HST_NMC     = 'NAME CHANGED';
  HST_CDC     = 'CODE CHANGED';
  HST_GRP     = 'GROUP CHANGED';
  HST_REG_ADD = 'ADDED REGIMEN';
  HST_REG_DEL = 'REMOVED REGIMEN';


type


  TdmRX = class(TDataModule)
    conRx: TADOConnection;
    dsqryProductFormulation: TDataSource;
    dsqryRXPrint: TDataSource;
    dsqryRXPrintAddress: TDataSource;
    dsqryRXPrintLabels: TDataSource;
    dsqryRX_Worker: TDataSource;
    ExtraOptions1: TExtraOptions;
    ppDBCalc1: TppDBCalc;
    ppDBRX: TppDBPipeline;
    ppDBRXAddress: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText19: TppDBText;
    ppDBText2: TppDBText;
    ppDBText20: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText3: TppDBText;
    ppDBText31: TppDBText;
    ppDBText34: TppDBText;
    ppDBText37: TppDBText;
    ppDBText4: TppDBText;
    ppDBText43: TppDBText;
    ppDBText46: TppDBText;
    ppDBText49: TppDBText;
    ppDBText5: TppDBText;
    ppDBText50: TppDBText;
    ppDBText52: TppDBText;
    ppDBText6: TppDBText;
    ppDBText72: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText8: TppDBText;
    ppDBText80: TppDBText;
    ppDBText84: TppDBText;
    ppDBText86: TppDBText;
    ppDBText92: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppDetailBand9: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppGroup3: TppGroup;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppHeaderBand3: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel2: TppLabel;
    ppLabel20: TppLabel;
    ppLabel23: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel4: TppLabel;
    ppLabel43: TppLabel;
    ppLabel50: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel8: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel9: TppLabel;
    ppLabel90: TppLabel;
    ppLine1: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine3: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppPageStyle1: TppPageStyle;
    ppParameterList1: TppParameterList;
    ppRegion1: TppRegion;
    ppRegion2: TppRegion;
    ppRegion3: TppRegion;
    ppRegion4: TppRegion;
    ppRegion5: TppRegion;
    ppRegion6: TppRegion;
    ppRegion8: TppRegion;
    ppRX: TppReport;
    ppRXAddress: TppReport;
    ppRXLabel: TppReport;
    ppShape1: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppShape18: TppShape;                                             
    ppShape19: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    pRxTrailerLabel: TppReport;
    qryAppendAudit: TADOStoredProc;
    qryAppendRX: TADOQuery;
    qryClinic: TADOQuery;
    qryDemanders: TADOQuery;
    qryDispenser: TADOQuery;
    qryHospital: TADOQuery;
    qryICD10: TADOQuery;
    qryInterventionOutcome: TADOQuery;
    qryInterventionProblem: TADOQuery;
    qryNumbering: TADOQuery;
    qryPatient: TADOQuery;
    qryPrescriber: TADOQuery;
    qryProductFormulation: TADOQuery;
    qryRegiminInstruction: TADOQuery;
    qryRegiminInterval: TADOQuery;
    qryRegiminIntervalabbreviationDescription_Str: TWideStringField;
    qryRegiminIntervalabbreviationInstruction_Str: TWideStringField;
    qryRegiminIntervalabbreviationLanguage_str: TWideStringField;
    qryRegiminIntervalabbreviationType_Str: TWideStringField;
    qryRegiminIntervalabbreviationValueRatioUnit_Str: TWideStringField;
    qryRegiminIntervalabbreviationValueRatio_dbl: TFloatField;
    qryRegiminIntervalabbreviationValueUnit_Str: TWideStringField;
    qryRegiminIntervalabbreviationValue_dbl: TFloatField;
    qryRegiminIntervalabbreviation_Str: TWideStringField;
    qryRX: TADOQuery;
    qryRXactive_bol: TBooleanField;
    qryRXadmissionNo_Str: TWideStringField;
    qryRXbatchIsBatched_bol: TBooleanField;
    qryRXbatchIsCollated_bol: TBooleanField;
    qryRXbatchIsShipped_bol: TBooleanField;
    qryRXclinic_ID: TGuidField;
    qryRXclinic_str: TWideStringField;
    qryRXcompleted_bol: TBooleanField;
    qryRXdate_Dat: TDateTimeField;
    qryRXDemanderName_Str: TWideStringField;
    qryRXDemanderUnique_ID: TGuidField;
    qryRXdispensedAuthorisedBy_Str: TWideStringField;
    qryRXdispensed_Bol: TBooleanField;
    qryRXdispenserName_Str: TWideStringField;
    qryRXdispenserRxLevel_Str: TWideStringField;
    qryRXdispenser_ID: TGuidField;
    qryRXdispensingAuthorised_bol: TBooleanField;
    qryRXdispensingCollected_bol: TBooleanField;
    qryRXdispensingPicked_bol: TBooleanField;
    qryRXdispensingPosted_bol: TBooleanField;
    qryRXdownRefferal_Str: TWideStringField;
    qryRXdownRefRouteSchedule_ID: TGuidField;
    qryRXfolderNumber_Str: TWideStringField;
    qryRXisReferred_bol: TBooleanField;
    qryRXissuedOrCollected_Bol: TBooleanField;
    qryRXItem: TADOQuery;
    qryRXItemDspDescription_Str: TWideStringField;
    qryRXItemDspDirectionsAuto_Bol: TBooleanField;
    qryRXItemDspDirections_Str: TWideStringField;
    qryRXItemDspInterventionOutcome_Str: TWideStringField;
    qryRXItemDspInterventionProblem_Str: TWideStringField;
    qryRXItemDspItemCost_Mny: TBCDField;
    qryRXItemDspLabel01_Str: TWideStringField;
    qryRXItemDspLabel02_Str: TWideStringField;
    qryRXItemDspLabel03_Str: TWideStringField;
    qryRXItemDspLabel04_Str: TWideStringField;
    qryRXItemDspLabel05_Str: TWideStringField;
    qryRXItemDspLabel06_Str: TWideStringField;
    qryRXItemDspNotDispensed_Bol: TBooleanField;
    qryRXItemDspProductBatch_Str: TWideStringField;
    qryRXItemDspProductBreakPack_Bol: TBooleanField;
    qryRXItemDspProductCalc_Dbl: TFloatField;
    qryRXItemDspProductCost_Mny: TBCDField;
    qryRXItemDspProduct_ID: TGuidField;
    qryRXItemDspProduct_Str: TWideStringField;
    qryRXItemDspSKUActual_Dbl: TFloatField;
    qryRXItemDspWarning_Str: TWideStringField;
    qryRXItemFrmAdministrationUnit_Str: TWideStringField;
    qryRXItemFrmAdministration_Str: TWideStringField;
    qryRXItemFrmDailyDoseCalc_Dbl: TFloatField;
    qryRXItemFrmDescription_Str: TWideStringField;
    qryRXItemFrmDirections_Str: TWideStringField;
    qryRXItemFrmDoseCalc_Dbl: TFloatField;
    qryRXItemFrmDuration_Dbl: TFloatField;
    qryRXItemFrmFormulation_Str: TWideStringField;
    qryRXItemFrmICDCode_Str: TWideStringField;
    qryRXItemFrmInterval_Str: TWideStringField;
    qryRXItemFrmProtocol_ID: TGuidField;
    qryRXItemFrmRepeat_Dbl: TFloatField;
    qryRXItemFrmSKUTotal_Dbl: TFloatField;
    qryRXItemFrmSKU_Dbl: TFloatField;
    qryRXItemInputOrder_int: TIntegerField;
    qryRXItemItemPreview_Str: TWideStringField;
    qryRXItemRXItem_ID: TGuidField;
    qryRXItemRX_ID: TGuidField;
    qryRXItem_BackgroundWorker: TADOQuery;
    qryRXItem_Worker: TADOQuery;
    qryRXnaive_bol: TBooleanField;
    qryRXpatientName_Str: TWideStringField;
    qryRXpatient_ID: TGuidField;
    qryRXpersonpregnant_bol: TBooleanField;
    qryRXprescribedAuthorisedBy_Str: TWideStringField;
    qryRXprescriberAlert_mem: TMemoField;
    qryRXprescriberName_Str: TWideStringField;
    qryRXprescriberRXLevel_Str: TWideStringField;
    qryRXprescriber_ID: TGuidField;
    qryRXprescriptionActive_bol: TBooleanField;
    qryRXprescriptionAuthorised_bol: TBooleanField;
    qryRXprescriptionCost_Mon: TBCDField;
    qryRXprescriptionItemsCount_Int: TIntegerField;
    qryRXprescriptionLastEdited_dat: TDateTimeField;
    qryRXprescriptionLastEdited_ID: TGuidField;
    qryRXprescriptionLastEdited_Str: TWideStringField;
    qryRXprescriptionNumber_Str: TWideStringField;
    qryRXprescriptionStatus_ID: TGuidField;
    qryRXprescriptionStatus_Str: TWideStringField;
    qryRXprescription_ID: TGuidField;
    qryRXprescription_ID_Original: TGuidField;
    qryRXPrint: TADOQuery;
    qryRXPrintAddress: TADOQuery;
    qryRXPrintLabels: TADOQuery;
    qryRXprotocolID: TGuidField;
    qryRXrepeatDate_dat: TDateTimeField;
    qryRXRepeatDuration_Int: TIntegerField;
    qryRXrepeatNo_Int: TIntegerField;
    qryRXRepeatStatus_str: TWideStringField;
    qryRXrepeats_Int: TIntegerField;
    qryRX_Worker: TADOQuery;
    dsqryRX: TDataSource;
    ADOQuery1: TADOQuery;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel5: TppLabel;
    qryIsDispenserValid: TADOQuery;
    qryComplexDeptName: TADOQuery;
    qryComplexDepts: TADOQuery;
    dsqryComplexDepts: TDataSource;
    qryComplexDeptscomplexSiteDepartment_ID: TGuidField;
    qryComplexDeptsdepartmentName_str: TWideStringField;
    qryRXcomplexSiteDepartment_ID: TGuidField;
    qryRXcomplexSiteDepartment_str: TWideStringField;
    qryRXvstNextVisit_dat: TDateTimeField;
    qryRXPersonAge_int: TIntegerField;
    qryRxReasons: TADOQuery;
    qryRXRxCancelReasonsAfterPosting_str: TWideStringField;
    qryAllergies: TADOQuery;
    dsAllergies: TDataSource;
    ppDBAllergies: TppDBPipeline;
    ppPersonAllergies: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape9: TppShape;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine4: TppLine;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppShape10: TppShape;
    ppDBText15: TppDBText;
    ppDBText30: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppImage2: TppImage;
    ppLine5: TppLine;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel7: TppLabel;
    ppDBText35: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppLabel10: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppPageStyle2: TppPageStyle;
    ppParameterList5: TppParameterList;
    raCodeModule3: TraCodeModule;
    ppDBCalc2: TppDBCalc;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    qryProductPacksize: TADOQuery;
    dsqryProductPacksize: TDataSource;
    qryProductStockAvail: TADOQuery;
    qryDemanderID: TADOQuery;
    qryProductID: TADOQuery;
    ppDetailBand1: TppDetailBand;
    ppDBText11: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppRegion7: TppRegion;
    ppVariable2: TppVariable;
    ppLabel3: TppLabel;
    ppDBText17: TppDBText;
    ppVariable3: TppVariable;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText7: TppDBText;
    ppLine2: TppLine;
    ppVariable4: TppVariable;
    raCodeModule2: TraCodeModule;
    ppDBText24: TppDBText;
    ppDBText18: TppDBText;
    qryPrescriberAll: TADOQuery;
    qryDispenserAll: TADOQuery;
    ppDetailBand8: TppDetailBand;
    ppDBText36: TppDBText;
    ppDBText42: TppDBText;
    ppDBText21: TppDBText;
    ppRegion12: TppRegion;
    ppDBText32: TppDBText;
    ppVariable1: TppVariable;
    ppDBText16: TppDBText;
    ppVariable5: TppVariable;
    raCodeModule1: TraCodeModule;
    qryRXPrintECN_str: TWideStringField;
    ppVariable6: TppVariable;
    ppRxDesigner: TppDesigner;
    qrySystemUsers: TADOQuery;
    qryProtocolsDisplay: TADOQuery;
    dsProtocolsDisplay: TDataSource;
    qryProtocolsDisplayProtocols: TStringField;
    qryRXPrintDemanderName: TWideStringField;
    qryRXPrintDemanderAddress: TWideStringField;
    qryUserDetail: TADOQuery;
    qrySystemSettings: TADOQuery;
    qryRXPrintpersonSignatureImage_Img: TBlobField;
    qryRXPrintpersonQualificationName_Str: TWideStringField;
    ppDBImage1: TppDBImage;
    ppDBText33: TppDBText;
    ppLabel15: TppLabel;
    qryRXPrintStorageConditions_str: TWideStringField;
    qryRXPrintStorageTemp_str: TWideStringField;
    qryRXPrintRefrigerated_bol: TBooleanField;
    qryRXPosted_dat: TDateTimeField;
    qryRXPostedBy_str: TWideStringField;
    qryProductPacks: TADOQuery;
    qryPrescriberperson_ID: TGuidField;
    qryPrescriberpersonLastName_Str: TWideStringField;
    qryPrescriberpersonFirstName_Str: TWideStringField;
    qryPrescriberpersonKnownName_Str: TWideStringField;
    qryPrescriberpersonInitials_Str: TWideStringField;
    qryPrescriberpersonDOB_Dat: TDateTimeField;
    qryPrescriberpersonGender_Str: TWideStringField;
    qryPrescriberpersonReviewed_Dat: TDateTimeField;
    qryPrescriberpersonActive_Bol: TBooleanField;
    qryPrescriberpersonRace_Str: TWideStringField;
    qryPrescriberpersonLanguageNarrative_Str: TWideStringField;
    qryPrescriberpersonLanguageWritten_Str: TWideStringField;
    qryPrescriberpersonAgeYears_int: TIntegerField;
    qryPrescriberpersonAgeMonths_int: TIntegerField;
    qryPrescriberpersonDescription_str: TWideStringField;
    qryPrescriberpersonRefNoCurrent_str: TWideStringField;
    qryPrescriberpersonTelNoCurrent_str: TWideStringField;
    qryPrescriberpersonCelNoCurrent_str: TWideStringField;
    qryPrescriberpersonAddressCurrent_str: TWideStringField;
    qryPrescriberpersonRegistrationNo_str: TWideStringField;
    qryPrescriberpersonInstitution_str: TWideStringField;
    qryPrescriberpersonPatient_bol: TBooleanField;
    qryPrescriberpersonPrescriber_bol: TBooleanField;
    qryPrescriberpersonDispenser_bol: TBooleanField;
    qryPrescriberpersonOther_bol: TBooleanField;
    qryPrescribersysLastEdited_dat: TDateTimeField;
    qryPrescribersysLastEditedBy_ID: TGuidField;
    qryPrescribersysLastEditedBy_str: TWideStringField;
    qryPrescribersysDeleted_bol: TBooleanField;
    qryPrescriberpersonDateDeceased_dat: TDateTimeField;
    qryPrescriberpersonStatus_Str: TWideStringField;
    qryPrescriberpersonIDNumber_Str: TWideStringField;
    qryPrescriberpersonStatusChangeDate_dat: TDateTimeField;
    qryPrescriberpersonPead_bol: TBooleanField;
    qryPrescriberpersonDateJoined_dat: TDateTimeField;
    qryPrescriberpersonStatusDesc_str: TWideStringField;
    qryPrescriberpersonPAS_str: TWideStringField;
    qryPrescriberpersonInstitution_ID: TGuidField;
    qryPrescriberpersonNaive_Bol: TBooleanField;
    qryPrescriberpersonNaiveDate_Dat: TDateTimeField;
    qryPrescriberpersonTransferredOutTo_str: TWideStringField;
    qryPrescriberpersonTransferredOut_bol: TBooleanField;
    qryPrescriberpersonClintech_ID: TIntegerField;
    qryPrescriberpersonTransferredInDate_dat: TDateTimeField;
    qryPrescriberpersonDefaulted_dat: TDateTimeField;
    qryPrescriberpersonMaritalStatus_str: TWideStringField;
    qryPrescriberpersonDeceased_bol: TBooleanField;
    qryPrescriberpersonTransferredOutDate_dat: TDateTimeField;
    qryPrescriberpersonTransferredInFrom_str: TWideStringField;
    qryPrescriberpersonRegisteredInSys_bol: TBooleanField;
    qryPrescriberpersonTransferredIn_bol: TBooleanField;
    qryPrescriberpersonPAAB_ID: TWideStringField;
    qryPrescriberpersonRegisteredInSys_dat: TDateTimeField;
    qryPrescriberpersonDefaulted_bol: TBooleanField;
    qryPrescribervstPregnancyDeliveryDate_dat: TDateTimeField;
    qryPrescribervstFunctionalStatus_str: TWideStringField;
    qryPrescribervstClinicalStage_str: TWideStringField;
    qryPrescribervstRegimenChange_From_str: TWideStringField;
    qryPrescribervstRegimenChange_To_str: TWideStringField;
    qryPrescribervstRegimenChange_Reason_str: TWideStringField;
    qryPrescribervstVisitDate_dat: TDateTimeField;
    qryPrescribervstNextVisit_dat: TDateTimeField;
    qryPrescribervstScheduledVisit_dat: TDateTimeField;
    qryPrescriberpersonpregnant_bol: TBooleanField;
    qryPrescribervstSupporterName_str: TWideStringField;
    qryPrescribervstSupporterAddress_str: TWideStringField;
    qryPrescribervstUpporterPhone_str: TWideStringField;
    qryPrescribervstSupporterRelationship_str: TWideStringField;
    qryPrescribervstCohort_str: TWideStringField;
    qryPrescribervstHeight_dbl: TFloatField;
    qryPrescribervstLostToFollowUpDate_dat: TDateTimeField;
    qryPrescribervstRegimenStart_str: TWideStringField;
    qryPrescribervstRegimenStartDate_dat: TDateTimeField;
    qryPrescribervstTreatmentEligibility_str: TWideStringField;
    qryPrescribervstTreatmentStopped_date_dat: TDateTimeField;
    qryPrescribervstWeight_dbl: TFloatField;
    qryPrescribervstTempPatient_bol: TBooleanField;
    qryPrescriberReasonForEligibility_Str: TWideStringField;
    qryPrescriberClassification_ID: TIntegerField;
    qryPrescribervstIsOnSite_bol: TBooleanField;
    qryPrescribervstOnSiteDate_dat: TDateTimeField;
    qryPrescriberDiagnosis_dat: TDateTimeField;
    qryPrescriberARTStart_dat: TDateTimeField;
    qryPrescriberEntryPoint_str: TWideStringField;
    qryPrescriberpersonReligion_str: TWideStringField;
    qryPrescriberClassification_str: TWideStringField;
    qryPrescribereligibilityCD4Count_str: TWideStringField;
    qryPrescribereligibilityWHOStaging_str: TWideStringField;
    qryPrescriberNationality_str: TWideStringField;
    qryPrescriberReferredTo_str: TWideStringField;
    qryPrescriberReferredBy_str: TWideStringField;
    qryPrescriberpersonEducation_str: TWideStringField;
    qryPrescriberpersonEmployed_bol: TBooleanField;
    qryPrescriberpersonEmployeeNumber_str: TWideStringField;
    qryPrescriberPatientNumberType: TWideStringField;
    qryPrescriberSouthAfricanID_bol: TBooleanField;
    qryPrescriberForeigner_bol: TBooleanField;
    qryPrescriberpersonGreenBox_ID: TGuidField;
    qryPrescriberpersonSignatureImage_Img: TBlobField;
    qryPrescriberpersonQualificationName_Str: TWideStringField;
    ppLabel17: TppLabel;
    ppDBText41: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    qryPatientWeight: TADOQuery;
    ppDBText47: TppDBText;
    ppLabel21: TppLabel;
    dsPatientWeight: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppDBText48: TppDBText;
    ppDBProtocolsDisplay: TppDBPipeline;
    ppLabel22: TppLabel;
    ppRegion9: TppRegion;
    ppRegion10: TppRegion;
    ppDBText51: TppDBText;
    qryAllergiesDisplay: TADOQuery;
    qryAllergiesDisplayAllergies: TStringField;
    dsAllergiesDisplay: TDataSource;
    ppDBAllergiesDisplay: TppDBPipeline;
    ppDBText53: TppDBText;
    ppLabel24: TppLabel;
    ppDBPrescriberNumber: TppDBPipeline;
    qryPrescriberNumber: TADOQuery;
    dsPrescriberNumber: TDataSource;
    ppDBText54: TppDBText;
    ppLabel25: TppLabel;
    qryRXPrintLabelsRXItem_ID: TGuidField;
    qryRXPrintLabelsRX_ID: TGuidField;
    qryRXPrintLabelsFrmFormulation_Str: TWideStringField;
    qryRXPrintLabelsFrmAdministration_Str: TWideStringField;
    qryRXPrintLabelsFrmSKU_Dbl: TFloatField;
    qryRXPrintLabelsFrmInterval_Str: TWideStringField;
    qryRXPrintLabelsFrmAdministrationUnit_Str: TWideStringField;
    qryRXPrintLabelsFrmDailyDoseCalc_Dbl: TFloatField;
    qryRXPrintLabelsFrmDoseCalc_Dbl: TFloatField;
    qryRXPrintLabelsFrmSKUTotal_Dbl: TFloatField;
    qryRXPrintLabelsFrmDuration_Dbl: TFloatField;
    qryRXPrintLabelsFrmRepeat_Dbl: TFloatField;
    qryRXPrintLabelsFrmDirections_Str: TWideStringField;
    qryRXPrintLabelsFrmICDCode_Str: TWideStringField;
    qryRXPrintLabelsFrmDescription_Str: TWideStringField;
    qryRXPrintLabelsFrmProtocol_ID: TGuidField;
    qryRXPrintLabelsDspDescription_Str: TWideStringField;
    qryRXPrintLabelsDspProduct_ID: TGuidField;
    qryRXPrintLabelsDspProduct_Str: TWideStringField;
    qryRXPrintLabelsDspSKUActual_Dbl: TFloatField;
    qryRXPrintLabelsDspProductCalc_Dbl: TFloatField;
    qryRXPrintLabelsDspProductCost_Mny: TBCDField;
    qryRXPrintLabelsDspProductBreakPack_Bol: TBooleanField;
    qryRXPrintLabelsDspItemCost_Mny: TBCDField;
    qryRXPrintLabelsDspProductBatch_Str: TWideStringField;
    qryRXPrintLabelsDspWarning_Str: TWideStringField;
    qryRXPrintLabelsDspDirections_Str: TWideStringField;
    qryRXPrintLabelsDspNotDispensed_Bol: TBooleanField;
    qryRXPrintLabelsDspInterventionProblem_Str: TWideStringField;
    qryRXPrintLabelsDspInterventionOutcome_Str: TWideStringField;
    qryRXPrintLabelsDspLabel01_Str: TWideStringField;
    qryRXPrintLabelsDspLabel02_Str: TWideStringField;
    qryRXPrintLabelsDspLabel03_Str: TWideStringField;
    qryRXPrintLabelsDspLabel04_Str: TWideStringField;
    qryRXPrintLabelsDspLabel05_Str: TWideStringField;
    qryRXPrintLabelsDspLabel06_Str: TWideStringField;
    qryRXPrintLabelsItemPreview_Str: TWideStringField;
    qryRXPrintLabelsDspDirectionsAuto_Bol: TBooleanField;
    qryRXPrintLabelsInputOrder_int: TIntegerField;
    qryRXPrintLabelsdate_Dat: TDateTimeField;
    qryRXPrintLabelsDemanderName: TWideStringField;
    qryRXPrintLabelsDemanderAddress: TWideStringField;
    qryRXPrintLabelsprescriberName_Str: TWideStringField;
    qryRXPrintLabelsdispenserName_Str: TWideStringField;
    qryRXPrintLabelsStorageConditions_str: TWideStringField;
    qryRXPrintLabelsStorageTemp_str: TWideStringField;
    qryRXPrintLabelsRefrigerated_bol: TBooleanField;
    qryRXPrintAddressclinic_str: TWideStringField;
    qryRXPrintAddresscomplexSiteDepartment_str: TWideStringField;
    qryRXPrintAddressperson_ID: TGuidField;
    qryRXPrintAddresspersonLastName_Str: TWideStringField;
    qryRXPrintAddresspersonFirstName_Str: TWideStringField;
    qryRXPrintAddresspersonKnownName_Str: TWideStringField;
    qryRXPrintAddresspersonInitials_Str: TWideStringField;
    qryRXPrintAddresspersonDOB_Dat: TDateTimeField;
    qryRXPrintAddresspersonGender_Str: TWideStringField;
    qryRXPrintAddresspersonReviewed_Dat: TDateTimeField;
    qryRXPrintAddresspersonActive_Bol: TBooleanField;
    qryRXPrintAddresspersonRace_Str: TWideStringField;
    qryRXPrintAddresspersonLanguageNarrative_Str: TWideStringField;
    qryRXPrintAddresspersonLanguageWritten_Str: TWideStringField;
    qryRXPrintAddresspersonAgeYears_int: TIntegerField;
    qryRXPrintAddresspersonAgeMonths_int: TIntegerField;
    qryRXPrintAddresspersonDescription_str: TWideStringField;
    qryRXPrintAddresspersonRefNoCurrent_str: TWideStringField;
    qryRXPrintAddresspersonTelNoCurrent_str: TWideStringField;
    qryRXPrintAddresspersonCelNoCurrent_str: TWideStringField;
    qryRXPrintAddresspersonAddressCurrent_str: TWideStringField;
    qryRXPrintAddresspersonRegistrationNo_str: TWideStringField;
    qryRXPrintAddresspersonInstitution_str: TWideStringField;
    qryRXPrintAddresspersonPatient_bol: TBooleanField;
    qryRXPrintAddresspersonPrescriber_bol: TBooleanField;
    qryRXPrintAddresspersonDispenser_bol: TBooleanField;
    qryRXPrintAddresspersonOther_bol: TBooleanField;
    qryRXPrintAddresssysLastEdited_dat: TDateTimeField;
    qryRXPrintAddresssysLastEditedBy_ID: TGuidField;
    qryRXPrintAddresssysLastEditedBy_str: TWideStringField;
    qryRXPrintAddresssysDeleted_bol: TBooleanField;
    qryRXPrintAddresspersonDateDeceased_dat: TDateTimeField;
    qryRXPrintAddresspersonStatus_Str: TWideStringField;
    qryRXPrintAddresspersonIDNumber_Str: TWideStringField;
    qryRXPrintAddresspersonStatusChangeDate_dat: TDateTimeField;
    qryRXPrintAddresspersonPead_bol: TBooleanField;
    qryRXPrintAddresspersonDateJoined_dat: TDateTimeField;
    qryRXPrintAddresspersonStatusDesc_str: TWideStringField;
    qryRXPrintAddresspersonPAS_str: TWideStringField;
    qryRXPrintAddresspersonInstitution_ID: TGuidField;
    qryRXPrintAddresspersonNaive_Bol: TBooleanField;
    qryRXPrintAddresspersonNaiveDate_Dat: TDateTimeField;
    qryRXPrintAddresspersonTransferredOutTo_str: TWideStringField;
    qryRXPrintAddresspersonTransferredOut_bol: TBooleanField;
    qryRXPrintAddresspersonClintech_ID: TIntegerField;
    qryRXPrintAddresspersonTransferredInDate_dat: TDateTimeField;
    qryRXPrintAddresspersonDefaulted_dat: TDateTimeField;
    qryRXPrintAddresspersonMaritalStatus_str: TWideStringField;
    qryRXPrintAddresspersonDeceased_bol: TBooleanField;
    qryRXPrintAddresspersonTransferredOutDate_dat: TDateTimeField;
    qryRXPrintAddresspersonTransferredInFrom_str: TWideStringField;
    qryRXPrintAddresspersonRegisteredInSys_bol: TBooleanField;
    qryRXPrintAddresspersonTransferredIn_bol: TBooleanField;
    qryRXPrintAddresspersonPAAB_ID: TWideStringField;
    qryRXPrintAddresspersonRegisteredInSys_dat: TDateTimeField;
    qryRXPrintAddresspersonDefaulted_bol: TBooleanField;
    qryRXPrintAddressvstPregnancyDeliveryDate_dat: TDateTimeField;
    qryRXPrintAddressvstFunctionalStatus_str: TWideStringField;
    qryRXPrintAddressvstClinicalStage_str: TWideStringField;
    qryRXPrintAddressvstRegimenChange_From_str: TWideStringField;
    qryRXPrintAddressvstRegimenChange_To_str: TWideStringField;
    qryRXPrintAddressvstRegimenChange_Reason_str: TWideStringField;
    qryRXPrintAddressvstVisitDate_dat: TDateTimeField;
    qryRXPrintAddressvstNextVisit_dat: TDateTimeField;
    qryRXPrintAddressvstScheduledVisit_dat: TDateTimeField;
    qryRXPrintAddresspersonpregnant_bol: TBooleanField;
    qryRXPrintAddressvstSupporterName_str: TWideStringField;
    qryRXPrintAddressvstSupporterAddress_str: TWideStringField;
    qryRXPrintAddressvstUpporterPhone_str: TWideStringField;
    qryRXPrintAddressvstSupporterRelationship_str: TWideStringField;
    qryRXPrintAddressvstCohort_str: TWideStringField;
    qryRXPrintAddressvstHeight_dbl: TFloatField;
    qryRXPrintAddressvstLostToFollowUpDate_dat: TDateTimeField;
    qryRXPrintAddressvstRegimenStart_str: TWideStringField;
    qryRXPrintAddressvstRegimenStartDate_dat: TDateTimeField;
    qryRXPrintAddressvstTreatmentEligibility_str: TWideStringField;
    qryRXPrintAddressvstTreatmentStopped_date_dat: TDateTimeField;
    qryRXPrintAddressvstWeight_dbl: TFloatField;
    qryRXPrintAddressvstTempPatient_bol: TBooleanField;
    qryRXPrintAddressReasonForEligibility_Str: TWideStringField;
    qryRXPrintAddressClassification_ID: TIntegerField;
    qryRXPrintAddressvstIsOnSite_bol: TBooleanField;
    qryRXPrintAddressvstOnSiteDate_dat: TDateTimeField;
    qryRXPrintAddressDiagnosis_dat: TDateTimeField;
    qryRXPrintAddressARTStart_dat: TDateTimeField;
    qryRXPrintAddressEntryPoint_str: TWideStringField;
    qryRXPrintAddresspersonReligion_str: TWideStringField;
    qryRXPrintAddressClassification_str: TWideStringField;
    qryRXPrintAddresseligibilityCD4Count_str: TWideStringField;
    qryRXPrintAddresseligibilityWHOStaging_str: TWideStringField;
    qryRXPrintAddressNationality_str: TWideStringField;
    qryRXPrintAddressReferredTo_str: TWideStringField;
    qryRXPrintAddressReferredBy_str: TWideStringField;
    qryRXPrintAddresspersonEducation_str: TWideStringField;
    qryRXPrintAddresspersonEmployed_bol: TBooleanField;
    qryRXPrintAddresspersonEmployeeNumber_str: TWideStringField;
    qryRXPrintAddressPatientNumberType: TWideStringField;
    qryRXPrintAddressSouthAfricanID_bol: TBooleanField;
    qryRXPrintAddressForeigner_bol: TBooleanField;
    qryRXPrintAddresspersonGreenBox_ID: TGuidField;
    qryRXPrintAddressbatchIsBatched_bol: TBooleanField;
    qryRXPrintAddressRxNextVisit: TDateTimeField;
    qryRXPrintClinicAddress: TWideStringField;
    qryRXPrintClinic: TWideStringField;
    qryRXPrintLabelsClinicAddress: TWideStringField;
    qryRXPrintLabelsClinic: TWideStringField;
    ppDBRXLabels: TppDBPipeline;
    qryRXPrintLabelsSchedule_int: TIntegerField;
    qryRxEditHistory: TADOQuery;
    QryInputNumberMax: TADOQuery;
    ppDBBarCode1: TppDBBarCode;
    myDBCheckBox2: TmyDBCheckBox;
    qrySystemSettingspostRxBeforePrint_bol: TBooleanField;
    qrySystemSettingsrequestPinBeforePostRx_bol: TBooleanField;
    qrySystemSettingsnonEditableScriptDropDowns_bol: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryRXBeforePost(DataSet: TDataSet);
    procedure qryRXItemAfterCancel(DataSet: TDataSet);
    procedure qryRXItemAfterDelete(DataSet: TDataSet);
    procedure qryRXItemAfterPost(DataSet: TDataSet);
    procedure qryRXItemAfterScroll(DataSet: TDataSet);
    procedure qryRXItemBeforePost(DataSet: TDataSet);
    procedure qryRXItemNewRecord(DataSet: TDataSet);
    procedure RXItemFieldsChanged(Sender: TField);
    procedure qryRXItem_WorkerNewRecord(DataSet: TDataSet);
    procedure qryRXNewRecord(DataSet: TDataSet);
    procedure qryRXItemBeforeDelete(DataSet: TDataSet);
  private
    FAddingCompleteItem: Boolean;
    FCalculatingRXItem: Boolean;
    FCheckUsePrnt: Boolean;
    FCountingTotals: Boolean;
    FDatabaseConString: WideString;
    FDefaulDemanderID: string;
    FDemanderID: string;
    FDispenserID: string;
    FPrescriberID: string;
    FHospitalAddressStr: string;
    FHospitalNameStr: string;
    FIsCollected: Boolean;
    FIsPosted: Boolean;
    FLabelPrnt: string;
    FListOfDirections: TStringList;
    FListOfDRPOutcome: TStringList;
    FListOfDRPProblem: TStringList;
    FListOfFormulation: TStringList;
    FListOfICD: TStringList;
    FListOfIndication: TStringList;
    FListOfIndicationCode: TStringList;
    FListOfInterval: TStringList;
    FListOfProducts: TStrings;
    FPatientId: string;
    FPatientNameStr: string;
    FRepeatCount: Double;
    FRepeatNumber: Double;
    FReportPrnt: string;
    FRXID: string;
    FRXNumberStr: string;
    FRepeatStatus : integer;
    CustomReportPATH : string;

    procedure AddCompleteItem(_rxItem: TRxItem);
    procedure AddPrescription(const patientId: string; userNameID: string; userPin: string);
    procedure AdjustRepeatRxNumber(var _rxNum: string; const _repNum: Integer);
    procedure ClosePrescription;
    procedure CountTotals(var _maximumRepeats, _totalRxCost: Double; var
        _totalItemsOnRX, _maxDuration: Integer);
    function GetCurrentEditStatus: Integer;
    procedure LoadPrescription(id: string; canEdit: Boolean; userID: string; _userPin: string);
    procedure LoadProductList;
    procedure LoadSupportData;
    procedure LoadSupportDataProperties;
    procedure LogException(const _method, _errorMessage, _errorInformation: string);
    procedure NotYetImplementetedInThisVersion;
    procedure PositionProductList(formulation: string);
    { Public declarations }
    procedure PrinterSelector(reportdoc: TppReport; printername: string;
        _showDialog: Boolean = true);
    procedure RXItemCalculate(Sender: TField; Dataset: TDataSet);
    function RX_Commit(const postingType: Integer): Boolean;
    procedure RX_CreateNextRepeat;
    procedure RX_CopyScript;
    procedure RX_Delete(id: string; _useTran: Boolean = true);
    function RX_GetNextRepeatID(id: string): string;
    procedure RX_UpdateInformation(_dataSet: TDataSet);
    procedure RX_UpdateTotals(_dataSet: TDataSet);
    procedure SetDatabaseConString(const Value: WideString);
    procedure UpdateRowInformation(Dataset: TDataSet; const _date: TDateTime;
        _repeatNum: Integer);

    procedure UpdateRowInformationPriceChange(Dataset: TDataSet);
    function GetDemanderID(vDemanderID: string): integer;
    function GetProductID(vProductCodeID: string) : integer;
    function CheckDispensingStock: Boolean;

    function GetDispenserID(userID: string): string;
    function GetPrescriberID(userID: string): string;
    function GetUserUniqueID(userID: string): string;
    function GetUserFullName(userID: string): string;                
    function GetUserID(userID: string): Double;
    function GetMaxInputOrderNumber: integer;


  public
    FUserID: string;
    FUserPin: string;
    FCanEditRecord: Boolean;
    FCanDispenseOnly: Boolean;
    FCanPrescribeOnly: Boolean;
    FNotSamePrescriber: Boolean;
    FDefaultDispenserID: string;
    FDefaultPrescriberID: string;
    FDefaultDemander: string;
    function AbortCurrentItemRowEditing: Boolean;
    procedure Add(_patientId: string; _userNameID: string; _userPin: string); overload;
    procedure Add(_rxItem: TRxItem); overload;
    procedure CloseData;
    procedure CopyRx(_id: string; _userID: string; _userPin: string);
    procedure Delete(id: string);
    procedure Edit(_id: string; _canEdit: Boolean; _userID: string; _userPin: string);
    procedure ForceProductListUpdate;
    function ItemRowEdited: Boolean;
    function Post: Boolean;
    function PostAndCancel: Boolean;
    function PostAndCancelCollection: Boolean;
    procedure Print(_showDialog: boolean = true);
    procedure PrintAddress(_showDialog: boolean = true);
    procedure PrintLabels(_showDialog: Boolean = true);
    procedure PrintTrailerLabels(_showDialog: Boolean = true);   //SM
    procedure PrintAllergies(_showDialog: Boolean = true);   //SM
    procedure SaveAll;
    procedure SetProductRetrieveQuery(_repeat: string = '');
    procedure UpdateRX(const _rxItemId: string);
    property CurrentEditStatus: Integer read GetCurrentEditStatus;
    property DatabaseConString: WideString read FDatabaseConString write
        SetDatabaseConString;
    property DefaulDemanderID: string read FDefaulDemanderID write
        FDefaulDemanderID;
    property DefaultDispenserID: string read FDefaultDispenserID write
        FDefaultDispenserID;
    property DefaultPrescriberID: string read FDefaultPrescriberID write
        FDefaultPrescriberID;
    property ListOfDirections: TStringList read FListOfDirections;
    property ListOfDRPOutcome: TStringList read FListOfDRPOutcome;
    property ListOfDRPProblem: TStringList read FListOfDRPProblem;
    property ListOfFormulation: TStringList read FListOfFormulation;
    property ListOfICD: TStringList read FListOfICD;
    property ListOfIndication: TStringList read FListOfIndication;
    property ListOfIndicationCode: TStringList read FListOfIndicationCode;
    property ListOfInterval: TStringList read FListOfInterval;
    property ListOfProducts: TStrings read FListOfProducts write FListOfProducts;
    property PatientId: string read FPatientId write FPatientId;
    property RXId: string read FRXId write FRXId;
    //property UserId: string read FUserID write FUserID; //SM 
    function GetComplexDeptName(complexID : string): String;
    function GetPersonAge(): Integer;
    procedure LoadPersonAllergies;
    function CheckPatientAllergies: Boolean;
    function IsStockAvailableFromDemander(vDemanderID: string; vProductID: string): Boolean;
    procedure ConfigureLabelReport(vReport : TppReport);
    procedure EditRxLabel(vOption: integer);
    procedure LoadProtocolsDisplay;
    function PostBeforPrint: Boolean;
    function GetPinBeforePost: Boolean;
    function NonEditableRxDate: Boolean;
    function IsRepeatRxOverDue: Boolean;
    procedure LoadCustomReports;
    procedure LogEditHistory(vdesc: string; vtype: string; vRXID: string; vReason: string);
    function NonEditableScriptDropDowns: Boolean;

  end;

var
  dmRX: TdmRX;

implementation

uses PrescriptionFRM_Posting, PrescriptionFRM, PrescriptionFRM_Reason, PrescriptionAllergiesUFrm,
  PrescriptionFRM_PasswordPin, frmPatientActiveReasonUFrm;


{$R *.dfm}

function TdmRX.AbortCurrentItemRowEditing: Boolean;
begin

  if qryRXItem.State in [dsInsert, dsEdit] then qryRXItem.Cancel;

end;

procedure TdmRX.Add(_patientId: string; _userNameID: string; _userPin: string);
begin
  AddPrescription(_patientId, _userNameID, _userPin);
end;

procedure TdmRX.Add(_rxItem: TRxItem);
begin
  AddCompleteItem(_rxItem);
end;

procedure TdmRX.AddCompleteItem(_rxItem: TRxItem);
var
    _loaderItemWrite : TLoader;

begin

//  FAddingCompleteItem := True;

  _loaderItemWrite := TLoader.Create;
  _loaderItemWrite.DataSet := qryRXItem;

//  ShowMessage('Add(_rxItem)');

  if ((qryRXItem.FieldByName(fldDspProduct_Str).AsString = '') and (qryRXItem.FieldByName(fldFrmFormulation_Str).AsString = '')) then
    _loaderItemWrite.DataSet.Edit else _loaderItemWrite.DataSet.Append;

  _loaderItemWrite.WriteGUID(_rxItem.Id, fldRXItemID );
  _loaderItemWrite.WriteGUID(_rxItem.RxId, fldRXID );

  _loaderItemWrite.Write( _rxItem.Formulation.Formulation , fldFrmFormulation_Str );
  _loaderItemWrite.Write( _rxItem.Formulation.Administration, fldFrmAdministration_Str );
  _loaderItemWrite.Write( _rxItem.Formulation.SKU, fldFrmSKU_Dbl);
  _loaderItemWrite.Write( _rxItem.Formulation.AdministrationUnit, fldFrmAdministrationUnit_Str);
  _loaderItemWrite.Write( _rxItem.Formulation.Interval, fldFrmInterval_Str);
  _loaderItemWrite.Write( _rxItem.Formulation.Duration, fldFrmDuration_Dbl);
  _loaderItemWrite.Write( _rxItem.Formulation.Directions, fldFrmDirections_Str);
  _loaderItemWrite.Write( _rxItem.Formulation.DailyDoseCalculated, fldFrmDailyDoseCalc_Dbl);
  _loaderItemWrite.Write( _rxItem.Formulation.DoseCalculated, fldFrmDoseCalc_Dbl);
  _loaderItemWrite.Write( _rxItem.Formulation.SKUTotal, fldFrmSKUTotal_Dbl);
  _loaderItemWrite.Write( _rxItem.Formulation.ICDCode, fldFrmICDCode_Str);
  _loaderItemWrite.Write( _rxItem.Formulation.Description, fldFrmDescription_Str);
  _loaderItemWrite.WriteGUID( _rxItem.Formulation.ProtocolID, fldFrmProtocol_ID);
          //Dispensing Data
  _loaderItemWrite.Write( _rxItem.Product.Product, fldDspProduct_Str);
  _loaderItemWrite.WriteGUID( _rxItem.Product.ProductID, fldDspProduct_ID);
  _loaderItemWrite.Write( _rxItem.Product.SKUActual, fldDspSKUActual_Dbl);
  _loaderItemWrite.Write( _rxItem.Product.SKUCalculated, fldDspProductCalc_Dbl);
  _loaderItemWrite.Write( _rxItem.Product.Directions, fldDspDirections_Str);
  _loaderItemWrite.Write( _rxItem.Product.Warning, fldDspWarning_Str);
  _loaderItemWrite.Write( _rxItem.Product.BreakPack, fldDspProductBreakPack_Bol);
  _loaderItemWrite.Write( _rxItem.Product.Description, fldDspDescription_Str);
  _loaderItemWrite.Write( _rxItem.Product.ItemPreview, fldItemPreviewStr);
  _loaderItemWrite.Write( _rxItem.Product.AutomaticDirections, fldDspDirectionsAuto_Bol);

  _loaderItemWrite.Post;
  _loaderItemWrite.DataSet := nil;
  _loaderItemWrite.Free;



end;

procedure TdmRX.AddPrescription(const patientId: string; userNameID: string; userPin: string);
var
  _rxId : string;
  _rxNum : string;

begin

  try
  _rxId := CreateClassID;
  _rxNum := RX.GetNextRXNumber(qryNumbering);
  _rxNum := _rxNum + '/0';
  with qryAppendRX do
    begin
    Parameters.ParamByName('rxId').Value := _rxId;
    Parameters.ParamByName('patId').Value := patientId;
    Parameters.ParamByName('rxNum').Value := _rxNum;
    ExecSQL;
    end;

  LoadPrescription(_rxId, True, userNameID, userPin);
//  RX_UpdateTotals;


  except
    on E:Exception do ShowMessage(E.Message);
  end;

end;

procedure TdmRX.AdjustRepeatRxNumber(var _rxNum: string; const _repNum:
    Integer);
var
  strLength: Integer;
begin

  _rxNum := Trim(_rxNum);
//  ShowMessage(IntToStr(_repNum) + #13 + _rxNum);
  strLength := Length(_rxNum);
  if _repNum > 0 then
   _rxNum := Copy(_rxNum, 1, strLength -2);
  _rxNum := _rxNum + '/' + IntToStr(_repNum);
//  ShowMessage(IntToStr(_repNum) + #13 + _rxNum);

end;

procedure TdmRX.CloseData;
begin

// showMessage('ClosePrescription;');
ClosePrescription;

end;

procedure TdmRX.ClosePrescription;
begin

  try

  // Close all data before trying to open.
  qryPatient.Close;
  qryRXItem.Close;
  qryRX.Close;
  qryPatient.Close;

  FDemanderID := '';
  FPatientId := '';
  FRXNumberStr := '';
  FRXID := '';

  except
    on E:Exception do raise Exception.Create('Prescription Close Error.' + #13 + E.Message);
  end;

end;

procedure TdmRX.CopyRx(_id: string; _userID: string; _userPin: string);
begin
  LoadPrescription(_id, True, _userID, _userPin);
  RX_CopyScript;
end;

procedure TdmRX.CountTotals(var _maximumRepeats, _totalRxCost: Double; var
    _totalItemsOnRX, _maxDuration: Integer);
var
  _itemRepeatsReq: Double;
  _itemCost: Double;
  _duration: Integer;
begin

  try
  with qryRXItem_BackgroundWorker do
    try
    FCountingTotals := True;
    Open;

    _maximumRepeats := 0;
    _totalRxCost := 0;
    _maxDuration := 0;
    _totalItemsOnRX := RecordCount;

    while not EOF do
      begin
      _itemRepeatsReq := FieldByName(fldFrmRepeat_Dbl).AsFloat;
      _itemCost := FieldByName(fldDspItemCost_Mny).AsFloat;
      _duration := FieldByName(fldFrmDuration_Dbl).AsInteger;

      if _duration > _maxDuration then _maxDuration := _duration;
      if _itemRepeatsReq > _maximumRepeats then _maximumRepeats := _itemRepeatsReq;
      _totalRxCost := _totalRxCost + _itemCost;

      Next;
      end;

    finally
    Close;
    FCountingTotals := False;
    end;
  except
  end;

end;

procedure TdmRX.DataModuleCreate(Sender: TObject);
begin

  FListOfFormulation := TStringList.Create;
  FListOfDirections := TStringList.Create;
  FListOfInterval := TStringList.Create;
  FListOfIndication := TStringList.Create;
  FListOfIndicationCode := TStringList.Create;
  FListOfDRPOutcome := TStringList.Create;
  FListOfDRPProblem := TStringList.Create;
  FListOfICD := TStringList.Create;

  // FieldNames

  FCountingTotals := False;
  FAddingCompleteItem := False;

  LoadCustomReports;

end;

procedure TdmRX.LoadCustomReports;
begin


  CustomReportPATH := Application.GetNamePath();

   //Load Path if Label found
  if (FileExists(CustomReportPATH + 'labels\rx_address_label.rtm')) then
     begin
     ppRXAddress.Template.FileName := CustomReportPATH + 'labels\rx_address_label.rtm';
     ppRXAddress.Template.LoadFromFile;
     end;
    //Load Path if Label found
  if (FileExists(CustomReportPATH + 'labels\rx_label.rtm')) then
     begin
     ppRXLabel.Template.FileName := CustomReportPATH + 'labels\rx_label.rtm';
     ppRXLabel.Template.LoadFromFile;
     end;

    //Load Path if Label found
  if (FileExists(CustomReportPATH + 'labels\rx_trailer_label.rtm')) then
     begin
     pRxTrailerLabel.Template.FileName := CustomReportPATH + 'labels\rx_trailer_label.rtm';
     pRxTrailerLabel.Template.LoadFromFile;
     end;


end;

procedure TdmRX.DataModuleDestroy(Sender: TObject);
begin
  FListOfFormulation.Free;
  FListOfDirections.Free;
  FListOfInterval.Free;
  FListOfIndication.Free;
  FListOfIndicationCode.Free;

  FListOfDRPOutcome.Free;
  FListOfDRPProblem.Free;

end;

procedure TdmRX.Delete(id: string);
begin

  RX_Delete(id);

end;

procedure TdmRX.Edit(_id: string; _canEdit: Boolean; _userID: string; _userPin: string);
begin

  //ShowMessage('Here Edit');
  LoadPrescription(_id, _canEdit, _userID, _userPin);
end;

procedure TdmRX.ForceProductListUpdate;
begin
  PositionProductList(qryRXItem.FieldByName(fldFrmFormulation_Str).AsString);
end;

function TdmRX.GetCurrentEditStatus: Integer;
begin


  Result := _EDIT_NORMAL;

  if FIsPosted then
    begin
    if FIsCollected then
      Result := _EDIT_POSTEDCOLLECTED
      else
      Result := _EDIT_POSTEDNOTCOLLECTED;
    end;


  if not FIsPosted then
    begin

    if FRepeatNumber > 0 then Result := _EDIT_REPEAT;

    end;


    {
    FRepeatCount := _repeats;
   FRepeatNumber := _repeatNumber;
     Load(FIsPosted, fldRXIsPosted_Bol);
    Load(FIsCollected, fldDispensingCollected_bol);
    }

end;

function TdmRX.ItemRowEdited: Boolean;
begin
  Result := False;

  with qryRXItem do
    if active then
      begin
      Result := not ((FieldByName(fldDspProduct_Str).AsString = '') and (FieldByName(fldFrmFormulation_Str).AsString = ''));

      {
      if Result then
        ShowMessage(FieldByName(fldDspProduct_Str).AsString + ' ' + FieldByName(fldFrmFormulation_Str).AsString + ' True')
        else
        ShowMessage(FieldByName(fldDspProduct_Str).AsString + ' ' + FieldByName(fldFrmFormulation_Str).AsString + ' False');
      }

      end;

end;

procedure TdmRX.LoadPrescription(id: string; canEdit: Boolean; userID: string; _userPin: string);
var
  ini : TIniFile;
begin

  try
  try


  Ini := TIniFile.Create('RxPrinters.ini');
  try
      FLabelPrnt := ini.ReadString('Rx','LabelPrinter','');
      FReportPrnt := ini.ReadString('Rx','ReportPrinter','');
      FCheckUsePrnt := ini.ReadBool('Rx','UsePrinters_bol', False);
      FDefaultDemander := ini.ReadString('Rx','DefaultDemander','');
  except
  end;


  //********** Can User Edit Current record
  FCanEditRecord := canEdit;
  FUserID := userID;
  FUserPin := _userPin;

  // Close all data before trying to open.
  qryPatient.Close;
  qryRXItem.Close;
  qryRX.Close;
  qryPatient.Close;
  qryProtocolsDisplay.Close;

  qryRX.Parameters.ParamByName('prescription_id').Value := id;
  qryRXItem.Parameters.ParamByName('PRx_ID').Value := id;
  qryRX.Open;
  qryRXItem.Open;
  qryPatient.Open;

  qryProtocolsDisplay.Parameters.ParamByName('RX_ID').Value := id;
  qryProtocolsDisplay.Open;

  FRepeatCount := qryRX.FieldByName(fldRepeatCurrent_Int).AsInteger;
  if FRepeatCount > 0 then
    SetProductRetrieveQuery('Repeat')
    else
    SetProductRetrieveQuery('');

  //********** SM 11 June 2013
  FDefaultDispenserID := GetDispenserID(userID);
  FDefaultPrescriberID := GetPrescriberID(userID);

  //********** SM 03 Mar 2014
  FCanDispenseOnly := (FDefaultDispenserID <> '') and (FDefaultPrescriberID = '');
  FCanPrescribeOnly := (FDefaultPrescriberID <> '') and (FDefaultDispenserID = '');

  FDispenserID := qryRX.FieldByName(fldDispenser_ID).AsString;
  FDemanderID := qryRX.FieldByName(fldDemanderUnique_ID).AsString;
  FPatientId := qryRX.FieldByName(fldPatient_ID).AsString;
  FRXNumberStr := qryRX.FieldByName(fldPrescriptionNumber_Str).AsString;
  FRXID := qryRX.FieldBYName(fldPrescription_ID).AsString;

  //********** SM 11 June 2013
  FPrescriberID := qryRX.FieldByName(fldPrescriber_ID).AsString;

  //********** SM 20 Mar 2014 Always default to current dispenser
  //********** Need to check this in Tshwane
//  if (qryRX.FieldByName('Active_bol').AsBoolean ) then
 if (qryRX.FieldByName('prescriptionStatus_Str').AsString  <> STATUSDESC_POSTALL) and (qryRX.FieldByName('prescriptionStatus_Str').AsString <> STATUSDESC_STATUS) then
   if (FDispenserID = '') or (VarISNull(FDispenserID)) then
    if FDefaultDispenserID <> '' then
      try
      if not (qryRX.State in [dsEdit, dsInsert]) then qryRX.Edit;
      qryRX.FieldByName(fldDispenser_ID).AsString := FDefaultDispenserID;
      except
      end;

// if (qryRX.FieldByName('Active_bol').AsBoolean ) then
 if (qryRX.FieldByName('prescriptionStatus_Str').AsString <> STATUSDESC_POSTALL) and (qryRX.FieldByName('prescriptionStatus_Str').AsString <> STATUSDESC_STATUS) then
  if FPrescriberID = '' then
    if FDefaultPrescriberID <> '' then
      try
      if not (qryRX.State in [dsEdit, dsInsert]) then qryRX.Edit;
      qryRX.FieldByName(fldPrescriber_ID).AsString := FDefaultPrescriberID;
      except
      end;

  if (FPrescriberID <> '') AND (FDefaultPrescriberID <> '') then
   if (FPrescriberID <> FDefaultPrescriberID) then
    begin
    FNotSamePrescriber := True;
    end;

    {
  //********** SM 20 Mar 2014 Always default to current demander
  //if FDemanderID = '' then
  if (qryRX.FieldByName('prescriptionStatus_Str').AsString <> 'POSTED') and (qryRX.FieldByName('Active_bol').AsBoolean ) then
   if FDemanderID = '' then
    if (FDefaultDemander <> '') and (FDefaultDemander <> ' ')then
      try
      if not (qryRX.State in [dsEdit, dsInsert]) then qryRX.Edit;
      qryRX.FieldByName(fldDemanderUnique_ID).AsString := FDefaultDemander;
      except
      end;           }

    RX_UpdateInformation(qryRX);
    RX_UpdateTotals(qryRX);

    //Bug Issue 253
    //if statement and command commented out because of Bug Issue 253
    //RX_UpdateInformation updates FIsPosted
    //if not FIsPosted then with qryRXItem do if RecordCount < 1 then Append;

    except
    on E:Exception do raise Exception.Create('Prescription load Error.' + #13 + E.Message);
   end;
  finally
  ini.Free;
  end;

end;

procedure TdmRX.LoadProductList;
begin
//  dxDBGrid1ProductSelected_str.Items;
  if Assigned(FListOfProducts) then
    begin
    FListOfProducts.Clear;
    qryProductPacks.First;
    while not qryProductPacks.Eof do
      begin
      FListOfProducts.Add(qryProductPacks.FieldByName('packDescription_Str').AsString);
      qryProductPacks.Next;
      end;
    end;

end;

procedure TdmRX.LoadSupportData;
var
  ErrPos : string;
begin

  try
  // Lookup Tables
  ErrPos := 'qryRegiminInterval';
  qryRegiminInterval.Open;
  ErrPos := 'qryRegiminInstruction';
  qryRegiminInstruction.Open;
  ErrPos := 'qryPrescriber';
  qryPrescriber.Open;
  qryPrescriberAll.Open;
  ErrPos := 'qryDispenser';
  qryDispenser.Open;
  qryDispenserAll.Open;
  ErrPos := 'qryDemanders';
  qryDemanders.Open;

  ErrPos := 'qryRxReasons';
  qryRxReasons.Open;

  ErrPos := 'qryICD10';
  qryICD10.Open;
  ErrPos := 'qryInterventionProblem';
  qryInterventionProblem.Open;
  ErrPos := 'qryInterventionOutcome';
  qryInterventionOutcome.Open;
  ErrPos := 'qryClinic';
  qryClinic.Open;

  ErrPos := 'qryComplexDepts';
  qryComplexDepts.Open;

  ErrPos := 'qryProductFormulation';
  qryProductFormulation.Open;
  ErrPos := 'qryProductPacks';
  qryProductPacks.Open;

  ErrPos := 'qryHospital';
  qryHospital.Open;

  FHospitalNameStr := qryHospital.FieldByName('DemanderName_str').AsString + ' T:(' + qryHospital.FieldByName('Phone_str').AsString + ')';
  FHospitalAddressStr := qryHospital.FieldByName('Address1_str').AsString + ', ' + qryHospital.FieldByName('Address2_str').AsString + ', ' + qryHospital.FieldByName('City_str').AsString;

  ErrPos := 'qrySystemUsers';
  qrySystemUsers.Open;

 // ErrPos := 'qryProtocolsDisplay';
 // qryProtocolsDisplay.Open;

   except
    on E:Exception do raise Exception.Create('LoadSupportData' + #13 + ErrPos + #13 + E.Message);
  end; 
end;

procedure TdmRX.LoadSupportDataProperties;
var
  ErrPos : string;
begin


  try

  ErrPos := 'ListOfFormulation';
  if not Assigned(FListOfFormulation) then ShowMessage('Not Assigned');
  with qryProductFormulation do
    if Active then
    begin
    FListOfFormulation.Clear;
    First;
    while not EOF do
      begin
      FListOfFormulation.Append(FieldByName('strengthExtraDescription_str').AsString);
      Next;
      end;
    end;

  ErrPos := 'ListOfInterval';
  FListOfInterval.Clear;
  with qryRegiminInterval do
    if Active then
    begin
    First;
    while not EOF do
      begin
      FListOfInterval.Add(FieldByName('abbreviation_Str').AsString);
      Next;
      end;
    end;

  ErrPos := 'ListOfDirections';
  FListOfDirections.Clear;
  with qryRegiminInstruction do
    if Active then
    begin
    First;
    while not EOF do
      begin
      FListOfDirections.Add(FieldByName('abbreviation_Str').AsString);
      Next;
      end;
    end;

  ErrPos := 'ListOfIndication & ListOfIndicationCode';
  FListOfIndication.Clear;
  FListOfIndicationCode.Clear;
  FListOfICD.Clear;
  with qryICD10 do
    if Active then
    begin
    First;
    while not EOF do
      begin
      FListOfIndication.Add(FieldByName('Description_str').AsString);
      FListOfIndicationCode.Add(FieldByName('ICode_str').AsString);
      FListOfICD.Add(FieldByName('ICode_str').AsString + ' - ' + FieldByName('Description_str').AsString);
      Next;
      end;
    end;

  ErrPos := 'ListOfDRPOutcome';
  FListOfDRPOutcome.Clear;
  with qryInterventionOutcome do
    if Active then
    begin
    First;
    while not EOF do
      begin
      FListOfDRPOutcome.Add(FieldByName('drp_OutcomeCode_Str').AsString + ', ' + FieldByName('drp_OutcomeDescription_Str').AsString);
      Next;
      end;
    end;

  ErrPos := 'ListOfDRPOutcome';
  FListOfDRPProblem.Clear;
  with qryInterventionProblem do
    if Active then
    begin
    First;
    while not EOF do
      begin
      FListOfDRPProblem.Add(FieldByName('drp_ProblemCode_Str').AsString + ', ' + FieldByName('drp_ProblemDescription_Str').AsString);
      Next;
      end;
    end;

  except
    on E:Exception do raise Exception.Create('LoadSupportDataProperties' + #13 + ErrPos + #13 + E.Message);
  end;


end;

procedure TdmRX.LogException(const _method, _errorMessage, _errorInformation:
    string);
begin
  // TODO -cMM: TdmRX.LogException default body inserted
end;

procedure TdmRX.NotYetImplementetedInThisVersion;
begin
  raise Exception.Create('Not YET implemented. Check back soon');
end;

procedure TdmRX.PositionProductList(formulation: string);
begin

  // If you position the product fomulation dataset, the product list should
  // sync as they are linked via properties in the dataset.
  if not FCountingTotals then
    if not FCalculatingRXItem then
      with qryProductFormulation do
        begin
 //     ShowMessage('Reloading Products');
        Locate('strengthExtraDescription_str', formulation, []);
        LoadProductList;
        end;

end;

function TdmRX.Post: Boolean;
var
 fPin: string;
begin

 //********** 28 June2013  SM
 //********** Do check for pin here
  if GetPinBeforePost then
    begin
    fPin :=  TRXPinBeforePost.Show;
    if (TRIM(fPin)=TRIM(FUserPin)) then
     begin
     if TRXPost.Show(False) then
     Result := RX_Commit(POST_ALL)
     else
     Result := False;
     end
     else
      MessageDlg('In-correct pin. Cannot post the prescription.', mtWarning, [mbOk], 0);
    end
   else
    begin
    if TRXPost.Show(False) then
     Result := RX_Commit(POST_ALL)
     else
     Result := False;
    end;
     
end;

function TdmRX.PostAndCancel: Boolean;
const
 EMSG = 'Please select a reason for voiding the script';
begin

//MC MANKGA 08/03/2011
  
if TRXReason.Show then
   begin
    while qryRx.FieldByName('RxCancelReasonsAfterPosting_str').AsString  = '' do
      begin
              MessageDlg(EMSG, mtWarning, [mbOK],0);
              if TRXReason.Show then
            else
              begin
                qryRx.FieldByName('RxCancelReasonsAfterPosting_str').AsVariant := NULL;
                abort;
              end
      end
   end else
   begin
      qryRx.FieldByName('RxCancelReasonsAfterPosting_str').AsVariant := NULL;
      abort;
   end;
  Result := RX_Commit(POST_CANCEL);
end;

function TdmRX.PostAndCancelCollection: Boolean;
const
 EMSG = 'Please select a reason before posting.';
begin
  //MC MANKGA 11/09/2010

PrescriptionFRM.frmRx.DBText1.Visible := False;

if TRXReason.Show then
   begin
    while qryRx.FieldByName('RxCancelReasonsAfterPosting_str').AsString  = '' do
      begin
              MessageDlg(EMSG, mtWarning, [mbOK],0);
              if TRXReason.Show then
            else
              begin
                qryRx.FieldByName('RxCancelReasonsAfterPosting_str').AsVariant := NULL;
                abort;
              end
      end
   end else
   begin
      qryRx.FieldByName('RxCancelReasonsAfterPosting_str').AsVariant := NULL;
      abort;
   end;
  Result := RX_Commit(POST_CANCELNOTCOLLECTED);
end;


procedure TdmRX.Print(_showDialog: boolean = true);
begin

  SaveAll; // save before opening data

  //****** Load Patient Weight before print
  with qryPatientWeight do
   begin
   Close;
   Open;
   end;
   
  //****** Load Prescriber Number
  with qryPrescriberNumber do
   begin
   Close;
   Open;
   end;

  with qryProtocolsDisplay do
   begin
   Close;
   Open;
   end;

  with qryAllergiesDisplay do
   begin
   Close;
   Open;
   end;

  with qryRXPrint do
    begin
    Connection := conRX;
    DataSource := dsqryRX;
    Open;
    PrinterSelector(ppRX, FReportPrnt, _showDialog);
    Close;
    DataSource := nil;
    Connection := nil;
    end;

end;

procedure TdmRX.PrintAddress(_showDialog: boolean = true);
begin

  SaveAll; // save before opening data
  with qryRXPrintAddress do
    begin
    Connection := conRX;
    DataSource := dsqryRX;
    Open;

    PrinterSelector(ppRXAddress, FLabelPrnt, _showDialog);
    Close;
    DataSource := nil;
    Connection := nil;
    end;

end;

procedure TdmRX.PrinterSelector(reportdoc: TppReport; printername: string;
    _showDialog: Boolean = true);
begin

  try
  if printername = '' then
    begin
    FCheckUsePrnt := False;
    _showDialog := True;
    end
   else
    reportdoc.PrinterSetup.PrinterName := printername;

  if FCheckUsePrnt then
    begin
    reportdoc.DeviceType := 'Printer';
    end
  else
    reportdoc.DeviceType := 'Screen';

  reportdoc.ShowPrintDialog := _showDialog;
  reportdoc.Print;
  except

      on E:Exception do
      begin
      raise Exception.Create(E.Message);
      end;     

  end;

end;

procedure TdmRX.PrintLabels(_showDialog: Boolean = true);
begin

  SaveAll; // save before opening data
  with qryRXPrintLabels do
    begin
    Connection := conRX;
    DataSource := dsqryRX;
    Open;

    PrinterSelector(ppRXLabel, FLabelPrnt, _showDialog);

    Close;
    DataSource := nil;
    Connection := nil;
    end;

end;

procedure TdmRX.PrintTrailerLabels(_showDialog: Boolean = true);
begin

  SaveAll; // save before opening data
  with qryRXPrint do
    begin
    Connection := conRX;
    DataSource := dsqryRX;
    Open;

    PrinterSelector(pRxTrailerLabel, FLabelPrnt, _showDialog);
    Close;
    DataSource := nil;
    Connection := nil;
    end;

end;

procedure TdmRX.PrintAllergies(_showDialog: Boolean = true);
begin

  SaveAll; // save before opening data
  with qryAllergies do
    begin
    Close;
    Connection := conRX;
    Parameters.ParamByName('person_ID').Value := qryRX.fieldByName('patient_ID').AsString;
    Open;
    ppPersonAllergies.Print;
//    PrinterSelector(ppPersonAllergies, FReportPrnt, _showDialog);
//    Close;
//    DataSource := nil;
//    Connection := nil;
    end;

end;

procedure TdmRX.qryRXBeforePost(DataSet: TDataSet);
begin
  RX_UpdateInformation(DataSet);
end;

procedure TdmRX.qryRXItemAfterCancel(DataSet: TDataSet);
begin

  with Dataset do
    if RecordCount < 1 then Append;


end;

procedure TdmRX.qryRXItemAfterDelete(DataSet: TDataSet);
begin

  RX_UpdateTotals(qryRX);
  with Dataset do
    if RecordCount < 1 then Append;

end;

procedure TdmRX.qryRXItemAfterPost(DataSet: TDataSet);
begin
RX_UpdateTotals(qryRX);
end;

procedure TdmRX.qryRXItemAfterScroll(DataSet: TDataSet);
begin

  if not FCountingTotals then
    with Dataset do
      begin
      PositionProductList(FieldByName(fldFrmFormulation_Str).AsString);
      end;


end;

procedure TdmRX.qryRXItemBeforePost(DataSet: TDataSet);
begin

try
  with Dataset do
    begin

    if  (FieldByName(fldFrmFormulation_Str).AsString = '') and
        (FieldByName(fldDspProduct_Str).AsString = '') then
      begin
      //ShowMessage('Aborting');
      Abort;
      end;
     //********* 17 Dec 2013 Repeat should not be more than 1+5
     if (FieldByName('FrmRepeat_Dbl').AsInteger > 5) then
       begin
       MessageDlg('Repeats can not be more than 5', mtError, [mbOk], 0);
       FieldByName('FrmRepeat_Dbl').AsInteger := 5;
       Abort;
       end;
    end;
  except
  end;

end;

procedure TdmRX.qryRXItemNewRecord(DataSet: TDataSet);
var
  _loader : TLoader;
  vInputOrderint: integer;  
begin

  _loader := TLoader.Create;
  _loader.DataSet := Dataset;

  with _loader do
try


  try


    // Insert New value into dataset here

    // Primary and foreign key data

    WriteGUID(CreateClassID, fldRXItemID );
    WriteGUID(FRXID, fldRXID );

    vInputOrderint := GetMaxInputOrderNumber + 1;

    Write(vInputOrderint, fldInputOrder_int);

    //  Formulation Data
    Write('', fldFrmFormulation_Str );
    Write('', fldFrmAdministration_Str );
    Write(0, fldFrmSKU_Dbl);
    Write('', fldFrmAdministrationUnit_Str);
    Write('', fldFrmInterval_Str);
    Write(0, fldFrmDuration_Dbl);
    Write(0, fldFrmRepeat_Dbl);
    Write('', fldFrmDirections_Str);
    Write(0, fldFrmDailyDoseCalc_Dbl);
    Write(0, fldFrmDoseCalc_Dbl);
    Write(0, fldFrmSKUTotal_Dbl);
    Write('', fldFrmICDCode_Str);
    Write('', fldFrmDescription_Str);
    WriteGUID('', fldFrmProtocol_ID);


    //Dispensing Data
    Write('', fldDspProduct_Str);
    WriteGUID('', fldDspProduct_ID);
    Write(0, fldDspSKUActual_Dbl);
    Write(0, fldDspProductCalc_Dbl);

    Write('', fldDspDirections_Str);
    Write('', fldDspWarning_Str);
    Write('', fldDspProductBatch_Str);

    Write(False, fldDspProductBreakPack_Bol);

    Write('', fldDspDescription_Str);
    Write(0, fldDspProductCost_Mny);
    Write(0, fldDspItemCost_Mny);
    Write(False, fldDspNotDispensed_Bol);
    Write('', fldDspInterventionProblem_Str);
    Write('', fldDspInterventionOutcome_Str);
    Write('', fldDspLabel01_Str);
    Write('', fldDspLabel02_Str);
    Write('', fldDspLabel03_Str);
    Write('', fldDspLabel04_Str);
    Write('', fldDspLabel05_Str);
    Write('', fldDspLabel06_Str);

    Write('', fldItemPreviewStr);
    
    Write(True, fldDspDirectionsAuto_Bol);

   except
    on E:Exception do
      begin
      raise Exception.Create('qryRXItemNewRecord' + #13 + E.Message);
      end;

    end;

  finally

    _loader.Free;

  end;

end;

procedure TdmRX.RXItemCalculate(Sender: TField; Dataset: TDataSet);
var
  _loader : TLoader;
  _rXLabel: TRXLabel;
  _frmFormulationStr: string;
  _frmAdministrationStr: string;
  _frmSKUDbl: Double;
  _frmAdministrationUnitStr: string;
  _frmIntervalStr: string;
  _frmDurationDbl: Double;
  _frmRepeatDbl: Double;
  _frmDirectionStr: string;
  _frmDailyDoseDbl: Double;
  _frmDoseDbl: Double;
  _frmSKUTotalDbl: Double;
  _frmICDCodeStr: string;
  _frmDescriptionStr: string;
  _frmProtocolID: string;
  _dspProductStr: string;
  _dspProductId: string;
  _dspSKUCalculatedDbl: Double;
  _dspProductCalculatedDbl: Double;
  _dspSKUActualDbl: Double;
  _dspDirectionsStr: string;
  _dspWarningStr: string;
  _dspProductBatchStr: string;
  _dspProductBreakPackBol: Boolean;
  _dspDescriptionStr: string;
  _dspProductCostDbl: Double;
  _dspItemCostDbl: Double;
  _dspNotDispensedBol: Boolean;
  _dspInterventionProblemStr: string;
  _dspInterventionOutcomeStr: string;
  _dspLabel01Str: string;
  _dspLabel02Str: string;
  _dspLabel03Str: string;
  _dspLabel04Str: string;
  _dspLabel05Str: string;
  _dspLabel06Str: string;

  _intFormulationRecalcRequiredBol: Boolean;
  _intClearCurrentlySelectedProductBol: Boolean;
  _itemPreviewStr: string;
  _luFrmStrengthCoEffDbl: Double;
  _luFrmRouteStr: string;
  _luFrmStrengthDbl: Double;
  _luFrmIntervalDbl: Double;
  _luFrmIntervalDescriptionStr: string;
  _luFrmGenericnameStr: string;
  _luFrmStrengthUnitStr: string;
  _luDspStrengthDbl: Double;
  _luDspStrengthUnitStr: string;
  _luDspStrengthCoEffDbl: Double;
  _luAdministeredByUnitStr: string;
  _luAdministeredByCoEffDbl: Double;
  _luProductPackSizeDbl: Double;
  _clcDspSKUPerDoseDbl: Double;
  _dspDirectionsAutoBol: Boolean;
  _luDirectionsStr: string;
  _calcDspSKUDbl: Double;
  _luDspPackCoEffDbl: Double;
  _date: TDateTime;
  _repeat: string;
  _currentRxRepeatInt : integer;
  _repeatsLeft: Double;
  _dispensingFormStr : string;
  _luProdBreakPack_Bol : Boolean;


begin

try



  FCalculatingRXItem := True;

  _loader := TLoader.Create;
  _loader.DataSet := Dataset;

  _date := qryRX.FieldByName(fldDate_Dat).AsDateTime;
  _currentRxRepeatInt := qryRX.FieldByName(fldRepeatCurrent_Int).AsInteger;




  try
  with _loader do
    begin

    Dataset.DisableControls;


    if (Sender.FieldName = fldFrmFormulation_Str) or
      (Sender.FieldName = fldFrmSKU_Dbl) or
      (Sender.FieldName = fldFrmInterval_Str) then
      _intFormulationRecalcRequiredBol := True;

    if (Sender.FieldName = fldFrmFormulation_Str) then
      _intClearCurrentlySelectedProductBol := True;


    if (Sender.FieldName = fldDspProductBatch_Str) then
      Exit;

    // Fetch any fields that need to be used in the calculation here.

    {Formulation Data}
    Load(_frmFormulationStr, Sender, fldFrmFormulation_Str );
    Load(_frmAdministrationStr, Sender, fldFrmAdministration_Str );
    Load(_frmSKUDbl, Sender, fldFrmSKU_Dbl);
    Load(_frmAdministrationUnitStr, Sender, fldFrmAdministrationUnit_Str);
    Load(_frmIntervalStr, Sender, fldFrmInterval_Str);
    Load(_frmDurationDbl, Sender, fldFrmDuration_Dbl);
    Load(_frmRepeatDbl, Sender, fldFrmRepeat_Dbl);
    Load(_frmDirectionStr, Sender, fldFrmDirections_Str);

    Load(_frmDailyDoseDbl, Sender, fldFrmDailyDoseCalc_Dbl);
    Load(_frmDoseDbl, Sender, fldFrmDoseCalc_Dbl);
    Load(_frmSKUTotalDbl, Sender, fldFrmSKUTotal_Dbl);

    Load(_frmICDCodeStr, Sender, fldFrmICDCode_Str);
    Load(_frmDescriptionStr, Sender, fldFrmDescription_Str);
    Load(_frmProtocolID, Sender, fldFrmProtocol_ID);



    {Dispensing Data}
    Load(_dspProductStr, Sender, fldDspProduct_Str);
    Load(_dspProductId, Sender, fldDspProduct_ID);

    Load(_dspSKUActualDbl, Sender, fldDspSKUActual_Dbl);
    Load(_dspProductCalculatedDbl, Sender, fldDspProductCalc_Dbl);

    Load(_dspDirectionsStr, Sender, fldDspDirections_Str);
    Load(_dspWarningStr, Sender, fldDspWarning_Str);
    Load(_dspProductBatchStr, Sender, fldDspProductBatch_Str);

    Load(_dspProductBreakPackBol, Sender, fldDspProductBreakPack_Bol);

    Load(_dspDescriptionStr, Sender, fldDspDescription_Str);
    Load(_dspProductCostDbl, Sender, fldDspProductCost_Mny);
    Load(_dspItemCostDbl, Sender, fldDspItemCost_Mny);
    Load(_dspNotDispensedBol, Sender, fldDspNotDispensed_Bol);
    Load(_dspInterventionProblemStr, Sender, fldDspInterventionProblem_Str);
    Load(_dspInterventionOutcomeStr, Sender, fldDspInterventionOutcome_Str);

    Load(_dspLabel01Str, Sender, fldDspLabel01_Str);
    Load(_dspLabel02Str, Sender, fldDspLabel02_Str);
    Load(_dspLabel03Str, Sender, fldDspLabel03_Str);
    Load(_dspLabel04Str, Sender, fldDspLabel04_Str);
    Load(_dspLabel05Str, Sender, fldDspLabel05_Str);
    Load(_dspLabel06Str, Sender, fldDspLabel06_Str);

    Load(_dspDirectionsAutoBol, Sender, fldDspDirectionsAuto_Bol);

    // Do not print label when not dispensed, or product not availble
    // Product packDescription_str field.  add space between strength and strength unit
    // prn interval -> 0 calc qty, let user select required amount.


    // General Data
    Load(_itemPreviewStr, Sender, fldItemPreviewStr);


    if Sender.FieldName = fldFrmFormulation_Str then
      begin
      _dspProductId := '';
      _dspProductStr := '';
      end;

    if Sender.FieldName = fldDspSKUActual_Dbl then
      _dspProductBreakPackBol := True;

    if Sender.FieldName = fldDspDirections_Str then
      _dspDirectionsAutoBol := False;

   //SN
    if Sender.FieldName = fldDspWarning_Str then
      _dspDirectionsAutoBol := False;


    if  (Sender.FieldName = fldFrmDirections_Str) or
        (Sender.FieldName = fldDspProduct_Str)
      then
      begin
      _dspDirectionsAutoBol := True;
      _dspNotDispensedBol := False;
      end;


    // Lookup Formulation Table values
    if _frmFormulationStr <> '' then
      begin
      LookUpData := qryProductFormulation;
      Key := _frmFormulationStr;
      KeyField := 'strengthExtraDescription_str';

      // 250mg/5ml broken up as per the following
      // _luFrmStrengthDbl + _luFrmStrengthUnitStr / _luFrmStrengthCoEffDbl + _frmAdministrationUnitStr
      LookUpValue(_luFrmStrengthUnitStr, 'StrengthUnit_Str');
      LookUpValue(_frmAdministrationUnitStr, 'DispensingUnit_str');
      LookUpValue(_luFrmStrengthDbl, 'StrengthValue_dbl');
      LookUpValue(_luFrmStrengthCoEffDbl, 'DispensingValue_dbl');


      _frmAdministrationUnitStr := LowerCase(_frmAdministrationUnitStr);

      // Take, Insert, etc
      LookUpValue(_frmAdministrationStr, 'Administration_str');

      // General data
      LookUpValue(_luFrmGenericnameStr, 'GenericName_str');
      LookUpValue(_luFrmRouteStr, 'route_str');

      end;


    // Update formulation before coming here.!!!!!!

    // Product Table values
    if _dspProductStr <> '' then
      begin
      LookUpData := qryProductPacks;
      Key := _dspProductStr;
      KeyField := 'packDescription_Str';

      LookUpValue(_luDspStrengthDbl, 'StrengthValue_dbl');
      LookUpValue(_luDspStrengthUnitStr, 'StrengthUnit_Str');
      LookUpValue(_luDspStrengthCoEffDbl, 'DispensingValue_dbl');
      LookUpValue(_luDspPackCoEffDbl, 'StrengthRangePackCoefficient_dbl');
      //Bug issue 347
      LookUpValue(_luProdBreakPack_Bol, 'canBreakUnit');

      // Medicine measure etc
      LookUpValue(_luAdministeredByUnitStr, 'dispensedUnit_str'); // AdministeredBy = how the patient sees it eg medicine measure.
      LookUpValue(_luAdministeredByCoEffDbl, 'dispensedValue_dbl');

      // Form
      LookUpValue(_dispensingFormStr, 'dispensingForm_str');

      LookUpValue(_dspProductId, 'productPackSize_ID');
      LookUpValue(_luProductPackSizeDbl, 'PackSizeValue_dbl');

      LookUpValue(_dspProductCostDbl, 'Cost_mon'); 
      end;


    // Interval Table values
    if _frmIntervalStr <> '' then
      begin
      LookUpData := qryRegiminInterval;
      Key := _frmIntervalStr;
      KeyField := 'abbreviation_Str';

      LookUpValue(_luFrmIntervalDbl, 'abbreviationValue_dbl');
      LookUpValue(_luFrmIntervalDescriptionStr, 'abbreviationInstruction_Str');
      end;


    // Directions Table values
    if _frmDirectionStr <> '' then
      begin
      LookUpData := qryRegiminInstruction;
      Key := _frmDirectionStr;
      KeyField := 'abbreviation_Str';

      //if Sender.FieldName = fldFrmDirections_Str then
       LookUpValue(_luDirectionsStr, 'abbreviationInstruction_Str');
      end;

    // Do any calculations here.


    // Build _repeat to include canceled, not collected etc.
    _repeat := 'Repeats = Nil';
    if _frmRepeatDbl > 0 then
      begin
      _repeat := 'FINAL REPEAT';
      _repeatsLeft := _frmRepeatDbl - _currentRxRepeatInt ;
      if _repeatsLeft > 0 then _repeat := 'Repeats Left = ' + FloatToStr(_repeatsLeft);
      end;


    if _luFrmIntervalDbl > 0 then _luFrmIntervalDbl := 24 / _luFrmIntervalDbl;

    if _luFrmStrengthCoEffDbl >= 1 then
      _luFrmStrengthDbl := _luFrmStrengthDbl / _luFrmStrengthCoEffDbl
      else if _luFrmStrengthCoEffDbl > 0 then
      _luFrmStrengthDbl := _luFrmStrengthDbl * _luFrmStrengthCoEffDbl;

    if _luDspPackCoEffDbl <> 0 then
      _frmDoseDbl := (_luFrmStrengthDbl * _frmSKUDbl) / _luDspPackCoEffDbl
      else
      _frmDoseDbl := (_luFrmStrengthDbl * _frmSKUDbl);

    _frmDailyDoseDbl := _frmDoseDbl * _luFrmIntervalDbl;
    _frmSKUTotalDbl := _frmSKUDbl * _luFrmIntervalDbl * _frmDurationDbl;



    // Evaluate chosen product
    if _dspProductStr <> '' then
      begin
      //BUG ISSUE TEST SM
      //_dspProductBreakPackBol := _luProdBreakPack_Bol;
      //BUG ISSUE TEST SM

      _clcDspSKUPerDoseDbl := 1;
      if _luDspStrengthCoEffDbl > 0 then _luDspStrengthDbl := _luDspStrengthDbl / _luDspStrengthCoEffDbl;
      if _luDspStrengthDbl > 0 then _clcDspSKUPerDoseDbl := _frmDoseDbl / _luDspStrengthDbl;

      if not _dspProductBreakPackBol then _dspSKUActualDbl := _clcDspSKUPerDoseDbl * _luFrmIntervalDbl * _frmDurationDbl ;

      if Sender.FieldName = fldDspProductBreakPack_Bol then
        if _dspProductBreakPackBol then _dspSKUActualDbl := _frmSKUTotalDbl;       

      if _luProductPackSizeDbl > 0 then
        _dspProductCalculatedDbl := (_dspSKUActualDbl / _luProductPackSizeDbl)
        else
        _dspProductCalculatedDbl := _dspSKUActualDbl;


      RX.PacksRequired(_luProductPackSizeDbl * _luDspPackCoEffDbl, _dspSKUActualDbl, _dspProductCalculatedDbl, _dspProductBreakPackBol);

      if _luAdministeredByCoEffDbl > 0 then
        _calcDspSKUDbl := _clcDspSKUPerDoseDbl  / _luAdministeredByCoEffDbl * _luDspPackCoEffDbl;
       //Bug issue 2429
      if CheckDispensingStock then
       if (not VarIsNull(qryRX.fieldByName('DemanderUnique_ID').Value)) then   //Prevent Null Value bein sent to function
        if not IsStockAvailableFromDemander(qryRX.fieldByName('DemanderUnique_ID').AsString, _dspProductId) then
         MessageDlg('Demander stock is below zero', mtWarning, [mbOk], 0);
      end else
      begin
      _dspProductCalculatedDbl := 0;
      _dspSKUActualDbl := 0;
      _calcDspSKUDbl := 0;
      _dspProductBreakPackBol := False;
      _dspNotDispensedBol := True;
      end; // Evaluate chosen product

    if _dspNotDispensedBol then
      _dspItemCostDbl := 0
      else
      _dspItemCostDbl := _dspProductCalculatedDbl * _dspProductCostDbl;

    _frmDescriptionStr := RX.RxDescription( '', //_brandNameFormulation
                                            _luFrmGenericnameStr,
                                            _luFrmStrengthUnitStr,
                                            _luFrmRouteStr,
                                            _frmIntervalStr,
                                            '',
                                            _frmRepeatDbl,
                                            _frmDurationDbl,
                                            _frmDoseDbl,
                                            0);




    if _dspDirectionsAutoBol then
      begin
      _dspDirectionsStr := RX.Instruction( _frmAdministrationStr, _calcDspSKUDbl, _luAdministeredByUnitStr, _luFrmIntervalDescriptionStr, _luDirectionsStr, _dispensingFormStr);

      // Clear if no product selected.
      if _dspSKUActualDbl = 0 then _dspDirectionsStr := 'Nil';
      end;

    RX.RxItemLabel( _rXLabel,
                    _dspProductStr,
                    _dspSKUActualDbl,
                    _frmAdministrationUnitStr,
                    _dspDirectionsStr,
//                    '', // specialInstruction
                    _dspWarningStr, // warning
                    FPatientNameStr, // patientName
                    FRXNumberStr, // RXNum
//                    _frmRepeatDbl,
//                    0,
                    FHospitalNameStr,  // hospital
                    FHospitalAddressStr,
                    _date,
                    _repeat
                    ); // hospital Address

     _dspLabel01Str := _rXLabel[1];
     _dspLabel02Str := _rXLabel[2];
     _dspLabel03Str := _rXLabel[3];
     _dspLabel04Str := _rXLabel[4];
     _dspLabel05Str := _rXLabel[5];
     _dspLabel06Str := _rXLabel[6];

     if _frmDailyDoseDbl <> 0 then
      _frmDescriptionStr := _frmDescriptionStr + ' - (D.D. = ' + FloatToStr(_frmDailyDoseDbl) + _luFrmStrengthUnitStr + ')';

    _dspDescriptionStr := _dspLabel01Str + '    (Dir. - ' + _dspDirectionsStr + ')';

    _itemPreviewStr := _frmDescriptionStr + #13 + _dspDescriptionStr;


    // Now update the dataset here.
    {Formulation Data}
    Write(_frmFormulationStr, fldFrmFormulation_Str );
    Write(_frmAdministrationStr, fldFrmAdministration_Str );
    Write(_frmSKUDbl, fldFrmSKU_Dbl);
    Write(_frmAdministrationUnitStr, fldFrmAdministrationUnit_Str);
    Write(_frmIntervalStr, fldFrmInterval_Str);
    Write(_frmDurationDbl, fldFrmDuration_Dbl);
    Write(_frmRepeatDbl, fldFrmRepeat_Dbl);
    Write(_frmDirectionStr, fldFrmDirections_Str);

    Write(_frmDailyDoseDbl, fldFrmDailyDoseCalc_Dbl);
    Write(_frmDoseDbl, fldFrmDoseCalc_Dbl);
    Write(_frmSKUTotalDbl, fldFrmSKUTotal_Dbl);

    Write(_frmICDCodeStr, fldFrmICDCode_Str);
    Write(_frmDescriptionStr, fldFrmDescription_Str);
    WriteGUID(_frmProtocolID, fldFrmProtocol_ID);


    {Dispensing Data}
    Write(_dspProductStr, fldDspProduct_Str);
    WriteGUID(_dspProductId, fldDspProduct_ID);

    Write(_dspSKUActualDbl, fldDspSKUActual_Dbl);
    Write(_dspProductCalculatedDbl, fldDspProductCalc_Dbl);

    Write(_dspDirectionsStr, fldDspDirections_Str);
    Write(_dspWarningStr, fldDspWarning_Str);
    Write(_dspProductBatchStr, fldDspProductBatch_Str);

    Write(_dspProductBreakPackBol, fldDspProductBreakPack_Bol);

    Write(_dspDescriptionStr, fldDspDescription_Str);
    Write(_dspProductCostDbl, fldDspProductCost_Mny);
    Write(_dspItemCostDbl, fldDspItemCost_Mny);
    Write(_dspNotDispensedBol, fldDspNotDispensed_Bol);
    Write(_dspInterventionProblemStr, fldDspInterventionProblem_Str);
    Write(_dspInterventionOutcomeStr, fldDspInterventionOutcome_Str);

    Write(_dspLabel01Str, fldDspLabel01_Str);
    Write(_dspLabel02Str, fldDspLabel02_Str);
    Write(_dspLabel03Str, fldDspLabel03_Str);
    Write(_dspLabel04Str, fldDspLabel04_Str);
    Write(_dspLabel05Str, fldDspLabel05_Str);
    Write(_dspLabel06Str, fldDspLabel06_Str);

    Write(_itemPreviewStr, fldItemPreviewStr);
    Write(_dspDirectionsAutoBol, fldDspDirectionsAuto_Bol);

    end;

  finally

    Dataset.EnableControls;

  end;

finally
  FCalculatingRXItem := False;
  _loader.Free;
end;

end;

procedure TdmRX.RXItemFieldsChanged(Sender: TField);

begin

  if not FCalculatingRXItem then
    if not FAddingCompleteItem then
      begin
      if Sender.FieldName = fldFrmFormulation_Str then PositionProductList(Sender.AsString);
      RXItemCalculate(Sender, qryRXItem);
      end

end;

function TdmRX.RX_Commit(const postingType: Integer): Boolean;
var
  _items    :TADOQuery;
  _isPosted : boolean;
  _demanderID: string;
  _loader : TLoader;
  _dspProductId: string;
  _dspProductCalculatedDbl: Double;
  _dspSKUActualDbl: Double;
  _refNo: string;
  _voucherNo: string;
  _isCollected: Boolean;
  _itemNotDispensingBol: Boolean;
  _postRX: Boolean;
  _rxId : string;
  _rxIdRepeat : string;
  _cancelReasonsAfterPosting : string;
  _vstNextVisit : TDate;
  _repeatsDuration : integer;
 //********* SM Used to capture user name in audit table
  _user : string;
  _userID: double;
  //MC

  _itemDispensable : boolean;

  cancelReason : string;

  procedure CommitItem(const prdID, demID: string; const sKUPck, sKU: Double;
      const refNo, voucherNo: string; const user: string; const userID: Double);
  begin
           
  with qryAppendAudit do
    begin
    Parameters.ParamByName('@ProductID').Value := prdId;
    Parameters.ParamByName('@DemanderUniqueID').Value := demId;
    Parameters.ParamByName('@Quantity').Value := sKUPck;
    Parameters.ParamByName('@QtyUnits').Value := sKU;
    Parameters.ParamByName('@Reference').Value := refNo;
    Parameters.ParamByName('@User').Value := user;
    Parameters.ParamByName('@VoucherNo').Value := voucherNo;
    Parameters.ParamByName('@Age').Value := GetPersonAge();
    Parameters.ParamByName('@UserID').Value := userID;
    ExecProc;
    end;

  end;

begin

  Result := False;
  _loader := TLoader.Create;

  _postRX := FIsPosted;

  _rxId := qryRX.FieldBYName(fldPrescription_ID).AsString;
  _demanderID := qryRX.FieldBYName(fldDemanderUnique_ID).AsString;
  _isPosted := qryRX.FieldByName(fldRXIsPosted_Bol).AsBoolean;
  _isCollected := qryRX.FieldByName(fldRXIsCollected_Bol).AsBoolean;
  _cancelReasonsAfterPosting := qryRX.FieldBYName(fldRxCancelReasonsAfterPosting_str).AsString;
  _vstNextVisit := qryRX.FieldByName(fldvstNextVisit_dat).AsDateTime;
  _repeatsDuration := qryRX.FieldByName(fldRepeatDuration_Int).AsInteger;
  //_items just cycles through the list of prescription items
  _items := qryRXItem_BackgroundWorker;
  qryRX_Worker.Open;
  qryRXItem_Worker.Open;
  //********* 17 Dec 2013
  //********* SM Capture User name in audit table
  _user         := GetUserFullName(FUserID);
  _userID       := GetUserID(FUserID);

  try

//    if not _isPosted then // has rx already been posted
      try
      conRX.BeginTrans;


      // Manage the RX items first.
      _items.Open;
      _items.First;

      _loader.DataSet := _items; // Use loader for items.

      while not _items.Eof do
        begin

        _loader.Load(_dspProductId, fldDspProduct_ID);
        _loader.Load(_dspProductCalculatedDbl, fldDspProductCalc_Dbl);
        _loader.Load(_dspSKUActualDbl, fldDspSKUActual_Dbl);

        _loader.Load(_itemNotDispensingBol, fldDspNotDispensed_Bol);
        _refNo := Trim(FRXNumberStr) + ' [' + Trim(FPatientNameStr) + ']';
        _voucherNo := Trim(FRXNumberStr) + ' [' + Trim(FPatientNameStr) + ']';
         UpdateRowInformationPriceChange(_items);    // BUG ISSUE 287
        case postingType of

          POST_CANCEL:
            begin
            _loader.Write( False, fldDspNotDispensed_Bol);
            _loader.Post;
            CommitItem(_dspProductId, _demanderID, 0, 0, _refNo + ' NOT DISPENSED', _voucherNo, _user, _userID);

            end; //POST_CANCEL

          POST_CANCELNOTCOLLECTED:
            begin
            _loader.Write( False, fldDspNotDispensed_Bol);
            _loader.Post;
            CommitItem(_dspProductId, _demanderID, -_dspProductCalculatedDbl, -_dspSKUActualDbl, _refNo + ' NOT COLLECTED', _voucherNo, _user, _userID);

            end; //POST_CANCELNOTCOLLECTED

          POST_ALL:
            begin

            _loader.Write( _itemNotDispensingBol, fldDspNotDispensed_Bol);//SM
           if Length(_dspProductId) < 2 then
            _itemDispensable := false
           else
            _itemDispensable := true;

            if _itemDispensable then
             begin
             if (_itemNotDispensingBol) then
               CommitItem(_dspProductId, _demanderID, 0, 0, _refNo + ' NOT DISPENSED', _voucherNo, _user, _userID)
             else
              CommitItem(_dspProductId, _demanderID, _dspProductCalculatedDbl, _dspSKUActualDbl, _refNo, _voucherNo, _user, _userID);
             end;
             
            end; //POST_ALL

          end; // case postingType of

// BUG ISSUE 287         UpdateRowInformationPriceChange(_items);
        _items.Next;
        end; //while not _items.Eof do

      // Now process Rx itself
      _loader.DataSet := qryRX; // Use loader again for main RX

      _loader.Write(True, fldRXIsPosted_Bol); //Posted

      case postingType of

          POST_CANCEL:
            begin
            _loader.Write(False, fldActive_bol); //Make Rx in-active when cancelled
            _loader.Write(STATUSDESC_CANCEL, fldPrescriptionStatus_Str); //CANCELLED
            _postRX := true;
            _isCollected := False;
            end; //POST_CANCEL

          POST_CANCELNOTCOLLECTED:
            begin
            _loader.Write(False, fldActive_bol);
             //Make Rx in-active when not collected
            _loader.Write(STATUSDESC_CANCELNOTCOLLECTED, fldPrescriptionStatus_Str); //CANCELLED
            _loader.Write(_cancelReasonsAfterPosting, fldRxCancelReasonsAfterPosting_str);
            _rxIdRepeat := RX_GetNextRepeatID(_rxId);

            if _rxIdRepeat <> '' then RX_Delete(_rxIdRepeat, False);
            _postRX := true;
            _isCollected := False;
            end; //POST_CANCELNOTCOLLECTED

          POST_ALL:
            begin
           _loader.Write(STATUSDESC_POSTALL, fldPrescriptionStatus_Str); //Posted
           _loader.Write(GetPersonAge(), fldPersonAge_int);

           //******* SM 05 Aug 2013
           //******* Default next visit field to TODAY + MAX DAYS DURATION
           if ((_vstNextVisit < (Date-365*100)) AND (_repeatsDuration > 0)) then
             begin
             _vstNextVisit := Date + _repeatsDuration;
             _loader.Write(_vstNextVisit, fldvstNextVisit_dat);
             end;

            RX_CreateNextRepeat;
            _postRX := true;
            _isCollected := True;
            end; //POST_ALL

          end; // case postingType of

      _loader.Post;


      FIsPosted := _postRX;
      FIsCollected := _isCollected;

      if not (qryRX.State in [dsEdit, dsInsert]) then qryRX.Edit;
      qryRX.FieldByName(fldRXIsPosted_Bol).AsBoolean := FIsPosted;
      qryRX.FieldByName(fldRXIsCollected_Bol).AsBoolean := FIsCollected;
      //****** SM Posted Date 18 Dec 2013
      qryRX.FieldByName(fldPosted_dat).AsDateTime := Now();
      qryRX.FieldByName(fldPostedBy_str).AsString := _user;
      qryRX.Post;

      conRX.CommitTrans;

      Result := True;

      except
        on E:Exception do
          begin
          _loader.Cancel;
          conRX.RollbackTrans;
          raise Exception.Create(e.Message);
          end;

      end;

  finally

    qryRX_Worker.Close;
    qryRXItem_Worker.Close;

    _items.Close;
    _loader.Free;

  end
end;

procedure TdmRX.RX_CreateNextRepeat;
var
  _loader : TLoader;
  _loaderItemRead : TLoader;
  _loaderItemWrite : TLoader;
  _clinicId: string;
  _currentRXId: string;
  _rXNumber_Str: string;
  _date: TDateTime;


  _vstNextVisit_dat : TDateTime;


  _patientId: string;
  _patientName: string;
  _folderNumber: string;
  _prescriberId: string;
  _prescriberName: string;
  _prescriberRXLvl: string;
  _prescriberAlert: string;
  _repeatTotal: Integer;
  _repeatNumber: Integer;
  _cost: Double;
  _items: Integer;
  _clinic: string;
  _status: string;
  _referred: Boolean;
  _demanderId: string;
  _demanderName: string;
  _repeatStatus: string;
  _frmFormulation: string;
  _frmAdministration: string;
  _frmSKU: Double;
  _frmAdministrationUnt: string;
  _frmInterval: string;
  _frmDuration: Double;
  _frmRepeat: Double;
  _frmDirections: string;
  _frmDailyDoseCalc: Double;
  _frmDoseCalc: Double;
  _frmSKUTotal: Double;
  _frmICD: string;
  _frmDescription: string;
  _frmProtocolId: string;
  _dspProduct: string;
  _dspProductId: string;
  _dspSKUActual: Double;
  _dspProductCalc: Double;
  _dspDirections: string;
  _dspWarning: string;
  _dspBreakPack: Boolean;
  _dspDescription: string;
  _dspProductCost: Double;
  _dspItemCost: Double;
  _dspItemPreview: string;
  _dspDirectionsAuto: Boolean;
  _newRXId: string;
  _origRXId: string;
  _maxDuration: Integer;

begin


  _loader := TLoader.Create;
  _loaderItemRead := TLoader.Create;
  _loaderItemWrite := TLoader.Create;

  try
    with _loader do
      try
      _loader.DataSet := qryRX;
      Load( _repeatTotal, fldRepeatTotal_Int);
      Load( _repeatNumber, fldRepeatCurrent_Int);

      if _repeatNumber <> _repeatTotal then
        begin
        Load( _clinicId, fldClinic_ID);
        Load( _currentRXId, fldPrescription_ID);
        Load( _origRXId, fldPrescription_ID_Original);
        Load( _rXNumber_Str, fldPrescriptionNumber_Str);
        Load( _date, fldDate_Dat);

        Load(_vstNextVisit_dat, fldvstNextVisit_dat);


        Load( _patientId, fldPatient_ID);
        Load( _patientName, fldPatientName_Str);
        Load( _folderNumber, fldFolderNumber_Str);
        Load( _prescriberId, fldPrescriber_ID);
        Load( _prescriberName, fldPrescriberName_Str);
        Load( _prescriberRXLvl, fldPrescriberRXLevel_Str);
        Load( _prescriberAlert, fldPrescriberAlert_mem);

        Load( _cost, fldPrescriptionCost_Mon);

        
        Load( _items, fldPrescriptionItemsCount_Int);
        Load( _clinic, fldClinic_str);
        Load( _status, fldPrescriptionStatus_Str);
        Load( _referred, fldBatchIsBatched_bol);
        Load( _demanderId, fldDemanderUnique_ID);
        Load( _demanderName, fldDemanderName_Str);
        Load( _repeatStatus, fldRepeatStatus_str);
        Load( _maxDuration, fldRepeatDuration_Int);

       //MC 19/09/2010 set the repeat date to be same as Next visit date if filled in
       //Bug
       
        if _vstNextVisit_dat < (Date-365*100)  then
        begin
            _date := IncDay(_date, _maxDuration);
            _repeatNumber := _repeatNumber + 1;
        end else
        begin
            _date := _vstNextVisit_dat;
            _repeatNumber := _repeatNumber + 1;
        end;

        AdjustRepeatRxNumber(_rXNumber_Str, _repeatNumber);
  
      //
        DataSet := qryRX_Worker;
        DataSet.Append;
        _newRXId := CreateClassID;
        Write( _clinicId, fldClinic_ID);
        WriteGUID( _newRXId, fldPrescription_ID);
        WriteGUID( _origRXId, fldPrescription_ID_Original);
        Write( _rXNumber_Str, fldPrescriptionNumber_Str);
        WriteDATE( _date, fldDate_Dat);
        WriteGUID( _patientId, fldPatient_ID);
        Write( _patientName, fldPatientName_Str);
        Write( _folderNumber, fldFolderNumber_Str);
        WriteGUID( _prescriberId, fldPrescriber_ID);
        Write( _prescriberName, fldPrescriberName_Str);
        Write( _prescriberRXLvl, fldPrescriberRXLevel_Str);
        Write( _prescriberAlert, fldPrescriberAlert_mem);
        Write( _repeatTotal, fldRepeatTotal_Int);
        Write( _repeatNumber, fldRepeatCurrent_Int);
        Write( _cost, fldPrescriptionCost_Mon);
        Write( _items, fldPrescriptionItemsCount_Int);
        Write( _clinic, fldClinic_str);
        Write( _status, fldPrescriptionStatus_Str);
        Write( _referred, fldBatchIsBatched_bol);
        WriteGUID( _demanderId, fldDemanderUnique_ID);
        Write( _demanderName, fldDemanderName_Str);
        Write( _repeatStatus, fldRepeatStatus_str);
        Write( False, fldRXIsCollected_Bol);
        Write( False, fldRXIsPosted_Bol);
        Write( _maxDuration, fldRepeatDuration_Int);

        RX_UpdateInformation(DataSet);
        RX_UpdateTotals(DataSet);
        Post;
        // for parameter info
        Load( _repeatStatus, fldRepeatStatus_str);

        _loaderItemRead.DataSet := qryRXItem;
        _loaderItemWrite.DataSet := qryRXItem_Worker;  

        _loaderItemRead.DataSet.First;

        while not _loaderItemRead.DataSet.Eof do
          begin
          //  Formulation Data
          _loaderItemRead.Load( _frmFormulation , fldFrmFormulation_Str );
          _loaderItemRead.Load( _frmAdministration, fldFrmAdministration_Str );
          _loaderItemRead.Load( _frmSKU, fldFrmSKU_Dbl);
          _loaderItemRead.Load( _frmAdministrationUnt, fldFrmAdministrationUnit_Str);
          _loaderItemRead.Load( _frmInterval, fldFrmInterval_Str);
          _loaderItemRead.Load( _frmDuration, fldFrmDuration_Dbl);
          _loaderItemRead.Load( _frmRepeat, fldFrmRepeat_Dbl);
          _loaderItemRead.Load( _frmDirections, fldFrmDirections_Str);
          _loaderItemRead.Load( _frmDailyDoseCalc, fldFrmDailyDoseCalc_Dbl);
          _loaderItemRead.Load( _frmDoseCalc, fldFrmDoseCalc_Dbl);
          _loaderItemRead.Load( _frmSKUTotal, fldFrmSKUTotal_Dbl);
          _loaderItemRead.Load( _frmICD, fldFrmICDCode_Str);
          _loaderItemRead.Load( _frmDescription, fldFrmDescription_Str);
          _loaderItemRead.Load( _frmProtocolId, fldFrmProtocol_ID);
          //Dispensing Data
          _loaderItemRead.Load( _dspProduct, fldDspProduct_Str);
          _loaderItemRead.Load( _dspProductId, fldDspProduct_ID);
          _loaderItemRead.Load( _dspSKUActual, fldDspSKUActual_Dbl);
          _loaderItemRead.Load( _dspProductCalc, fldDspProductCalc_Dbl);
          _loaderItemRead.Load( _dspDirections, fldDspDirections_Str);
          _loaderItemRead.Load( _dspWarning, fldDspWarning_Str);
          _loaderItemRead.Load( _dspBreakPack, fldDspProductBreakPack_Bol);
          _loaderItemRead.Load( _dspDescription, fldDspDescription_Str);
          _loaderItemRead.Load( _dspProductCost, fldDspProductCost_Mny);
          _loaderItemRead.Load( _dspItemCost, fldDspItemCost_Mny);
          _loaderItemRead.Load( _dspItemPreview, fldItemPreviewStr);
          _loaderItemRead.Load( _dspDirectionsAuto, fldDspDirectionsAuto_Bol);


          if _frmRepeat >= _repeatNumber then
            begin
            _loaderItemWrite.DataSet.Append;
            _loaderItemWrite.WriteGUID(CreateClassID, fldRXItemID );
            _loaderItemWrite.WriteGUID(_newRXId, fldRXID );

            _loaderItemWrite.Write( _frmFormulation , fldFrmFormulation_Str );
            _loaderItemWrite.Write( _frmAdministration, fldFrmAdministration_Str );
            _loaderItemWrite.Write( _frmSKU, fldFrmSKU_Dbl);
            _loaderItemWrite.Write( _frmAdministrationUnt, fldFrmAdministrationUnit_Str);
            _loaderItemWrite.Write( _frmInterval, fldFrmInterval_Str);
            _loaderItemWrite.Write( _frmDuration, fldFrmDuration_Dbl);
            _loaderItemWrite.Write( _frmRepeat, fldFrmRepeat_Dbl);
            _loaderItemWrite.Write( _frmDirections, fldFrmDirections_Str);
            _loaderItemWrite.Write( _frmDailyDoseCalc, fldFrmDailyDoseCalc_Dbl);
            _loaderItemWrite.Write( _frmDoseCalc, fldFrmDoseCalc_Dbl);
            _loaderItemWrite.Write( _frmSKUTotal, fldFrmSKUTotal_Dbl);
            _loaderItemWrite.Write( _frmICD, fldFrmICDCode_Str);
            _loaderItemWrite.Write( _frmDescription, fldFrmDescription_Str);
            _loaderItemWrite.WriteGUID( _frmProtocolId, fldFrmProtocol_ID);
            //Dispensing Data
            _loaderItemWrite.Write( _dspProduct, fldDspProduct_Str);
            _loaderItemWrite.WriteGUID( _dspProductId, fldDspProduct_ID);
            _loaderItemWrite.Write( _dspSKUActual, fldDspSKUActual_Dbl);
            _loaderItemWrite.Write( _dspProductCalc, fldDspProductCalc_Dbl);
            _loaderItemWrite.Write( _dspDirections, fldDspDirections_Str);
            _loaderItemWrite.Write( _dspWarning, fldDspWarning_Str);
            _loaderItemWrite.Write( _dspBreakPack, fldDspProductBreakPack_Bol);
            _loaderItemWrite.Write( _dspDescription, fldDspDescription_Str);
            _loaderItemWrite.Write( _dspProductCost, fldDspProductCost_Mny);
            _loaderItemWrite.Write( _dspItemCost, fldDspItemCost_Mny);
            _loaderItemWrite.Write( _dspItemPreview, fldItemPreviewStr);
            _loaderItemWrite.Write( _dspDirectionsAuto, fldDspDirectionsAuto_Bol);
            //end;

            UpdateRowInformation(_loaderItemWrite.DataSet, _date, _repeatNumber);

            // Update the row data first
            _loaderItemWrite.Post;   
            end;

          _loaderItemRead.DataSet.Next;
          end;

        end; //if _repeatNumber <> _repeatTotal then

      except
        on E:Exception do raise Exception.Create('Repeat create Error.' + #13 + E.Message);

      end;
    finally
      _loader.Free;
      _loaderItemRead.Free;
      _loaderItemWrite.Free;
    end;

end;

//MC 22/09/2010 Update product prices in case of change

procedure TdmRX.UpdateRowInformationPriceChange(Dataset: TDataSet);
var
  _loader : TLoader;
  _dspSKUActualDbl: Double;
  _dspProductCostDbl: Double;
  _dspItemCostDbl: Double;
  _dspProductCalculatedDbl: Double;
  _dspNotDispensedBol : Boolean;
  _dspProductStr : string;
  _DspProduct_ID : string;

    
begin

try

    FCalculatingRXItem := True;
   _loader := TLoader.Create;
   _loader.DataSet := Dataset;

  try
  with _loader do
    begin

    Load(_dspSKUActualDbl, fldDspSKUActual_Dbl);
    Load(_dspProductCalculatedDbl, fldDspProductCalc_Dbl);
    Load(_dspNotDispensedBol, fldDspNotDispensed_Bol);
    
    Load(_dspProductStr, fldDspProduct_Str);

    Load( _DspProduct_ID, fldDspProduct_ID);

    // Query TblProductPacksize for price update in case of change
    
    if _dspProductStr <> '' then
      begin
      qryProductPacksize.Close;
      qryProductPacksize.Open;
      LookUpData := qryProductPacksize;
      Key := _DspProduct_ID;
      KeyField := 'productPackSize_ID';
      LookUpValue(_dspProductCostDbl, 'Cost_mon');
      end;

    if _dspNotDispensedBol then
      _dspItemCostDbl := 0
      else
      _dspItemCostDbl := _dspProductCalculatedDbl * _dspProductCostDbl;

    // Now update the dataset here.
    {Dispensing Data}
    
    Write(_dspProductCostDbl, fldDspProductCost_Mny);
    Write(_dspItemCostDbl, fldDspItemCost_Mny);
    
    end;
  finally
    Dataset.EnableControls;
  end;

finally
  FCalculatingRXItem := False;
  _loader.Free;
end;

end;


procedure TdmRX.RX_CopyScript;
var
  _loader : TLoader;
  _loaderItemRead : TLoader;
  _loaderItemWrite : TLoader;
  _clinicId: string;
  _currentRXId: string;
  _rXNumber_Str: string;
  _date: TDateTime;
  _patientId: string;
  _patientName: string;
  _folderNumber: string;
  _prescriberId: string;
  _prescriberName: string;
  _prescriberRXLvl: string;
  _prescriberAlert: string;
  _repeatTotal: Integer;
  _repeatNumber: Integer;
  _cost: Double;
  _items: Integer;
  _clinic: string;
  _status: string;
  _referred: Boolean;
  _demanderId: string;
  _demanderName: string;
  _repeatStatus: string;
  _frmFormulation: string;
  _frmAdministration: string;
  _frmSKU: Double;
  _frmAdministrationUnt: string;
  _frmInterval: string;
  _frmDuration: Double;
  _frmRepeat: Double;
  _frmDirections: string;
  _frmDailyDoseCalc: Double;
  _frmDoseCalc: Double;
  _frmSKUTotal: Double;
  _frmICD: string;
  _frmDescription: string;
  _frmProtocolId: string;
  _dspProduct: string;
  _dspProductId: string;
  _dspSKUActual: Double;
  _dspProductCalc: Double;
  _dspDirections: string;
  _dspWarning: string;
  _dspBreakPack: Boolean;
  _dspDescription: string;
  _dspProductCost: Double;
  _dspItemCost: Double;
  _dspItemPreview: string;
  _dspDirectionsAuto: Boolean;
  _newRXId: string;
  _origRXId: string;
  _maxDuration: Integer;
  _inputorder : Integer;

begin


  _loader := TLoader.Create;
  _loaderItemRead := TLoader.Create;
  _loaderItemWrite := TLoader.Create;

  try
    with _loader do
      try

      qryRX_Worker.Open;
      qryRXItem_Worker.Open;

      _loader.DataSet := qryRX;
      Load( _repeatTotal, fldRepeatTotal_Int);
      //Load( _repeatNumber, fldRepeatCurrent_Int);

      //if _repeatNumber <> _repeatTotal then
        //begin

        _rXNumber_Str := RX.GetNextRXNumber(qryNumbering);
        _rXNumber_Str := _rXNumber_Str + '/0';
        //******** SM Updated New Date to include the correct time instead of using 12:00AM
        _date := Now();
        _currentRXId := CreateClassID;
        _origRXId := _currentRXId;

        Load( _clinicId, fldClinic_ID);
        Load( _patientId, fldPatient_ID);
        Load( _patientName, fldPatientName_Str);
        Load( _folderNumber, fldFolderNumber_Str);
        //Load( _prescriberId, fldPrescriber_ID);
        //Load( _prescriberName, fldPrescriberName_Str);
        //Load( _prescriberRXLvl, fldPrescriberRXLevel_Str);
        Load( _prescriberAlert, fldPrescriberAlert_mem);
        Load( _cost, fldPrescriptionCost_Mon);
        Load( _items, fldPrescriptionItemsCount_Int);
        Load( _clinic, fldClinic_str);
        //Load( _status, fldPrescriptionStatus_Str);
        Load( _referred, fldBatchIsBatched_bol);
        //Load( _demanderId, fldDemanderUnique_ID);
        //Load( _demanderName, fldDemanderName_Str);
        //Load( _repeatStatus, fldRepeatStatus_str);
        Load( _maxDuration, fldRepeatDuration_Int);

        //_date := IncDay(_date, _maxDuration);
        _repeatNumber := 0;
        // _referred := true;

        //AdjustRepeatRxNumber(_rXNumber_Str, _repeatNumber);


        DataSet := qryRX_Worker;
        DataSet.Append;
        _newRXId := CreateClassID;
        Write( _clinicId, fldClinic_ID);
        WriteGUID( _newRXId, fldPrescription_ID);
        WriteGUID( _origRXId, fldPrescription_ID_Original);
        Write( _rXNumber_Str, fldPrescriptionNumber_Str);
        WriteDATE( _date, fldDate_Dat);
        WriteGUID( _patientId, fldPatient_ID);
        Write( _patientName, fldPatientName_Str);
        Write( _folderNumber, fldFolderNumber_Str);
        WriteGUID( _prescriberId, fldPrescriber_ID);
        //Write( _prescriberName, fldPrescriberName_Str);
        //Write( _prescriberRXLvl, fldPrescriberRXLevel_Str);
        Write( _prescriberAlert, fldPrescriberAlert_mem);
        Write( _repeatTotal, fldRepeatTotal_Int);
        Write( _repeatNumber, fldRepeatCurrent_Int);
        Write( _cost, fldPrescriptionCost_Mon);
        Write( _items, fldPrescriptionItemsCount_Int);
        Write( _clinic, fldClinic_str);
        Write( _status, fldPrescriptionStatus_Str);
        Write( _referred, fldBatchIsBatched_bol);
        //WriteGUID( _demanderId, fldDemanderUnique_ID);
        //Write( _demanderName, fldDemanderName_Str);
        //Write( _repeatStatus, fldRepeatStatus_str);
        Write( False, fldRXIsCollected_Bol);
        Write( False, fldRXIsPosted_Bol);
        Write( _maxDuration, fldRepeatDuration_Int);

        RX_UpdateInformation(DataSet);
        RX_UpdateTotals(DataSet);
        Post;
        // for parameter info
        Load( _repeatStatus, fldRepeatStatus_str);

        _loaderItemRead.DataSet := qryRXItem;
        _loaderItemWrite.DataSet := qryRXItem_Worker;


        _loaderItemRead.DataSet.First;
        while not _loaderItemRead.DataSet.Eof do
          begin
          //  Formulation Data

          _loaderItemRead.Load( _frmFormulation , fldFrmFormulation_Str );
          _loaderItemRead.Load( _frmAdministration, fldFrmAdministration_Str );
          _loaderItemRead.Load( _frmSKU, fldFrmSKU_Dbl);
          _loaderItemRead.Load( _frmAdministrationUnt, fldFrmAdministrationUnit_Str);
          _loaderItemRead.Load( _frmInterval, fldFrmInterval_Str);
          _loaderItemRead.Load( _frmDuration, fldFrmDuration_Dbl);
          //_loaderItemRead.Load( _frmRepeat, fldFrmRepeat_Dbl);
          _loaderItemRead.Load( _frmDirections, fldFrmDirections_Str);
          _loaderItemRead.Load( _frmDailyDoseCalc, fldFrmDailyDoseCalc_Dbl);
          _loaderItemRead.Load( _frmDoseCalc, fldFrmDoseCalc_Dbl);
          _loaderItemRead.Load( _frmSKUTotal, fldFrmSKUTotal_Dbl);
          _loaderItemRead.Load( _frmICD, fldFrmICDCode_Str);
          _loaderItemRead.Load( _frmDescription, fldFrmDescription_Str);
          _loaderItemRead.Load( _frmProtocolId, fldFrmProtocol_ID);
          //Dispensing Data
          _loaderItemRead.Load( _dspProduct, fldDspProduct_Str);
          _loaderItemRead.Load( _dspProductId, fldDspProduct_ID);
          _loaderItemRead.Load( _dspSKUActual, fldDspSKUActual_Dbl);
          _loaderItemRead.Load( _dspProductCalc, fldDspProductCalc_Dbl);
          _loaderItemRead.Load( _dspDirections, fldDspDirections_Str);
          _loaderItemRead.Load( _dspWarning, fldDspWarning_Str);
          _loaderItemRead.Load( _dspBreakPack, fldDspProductBreakPack_Bol);
          _loaderItemRead.Load( _dspDescription, fldDspDescription_Str);
          _loaderItemRead.Load( _dspProductCost, fldDspProductCost_Mny);
          _loaderItemRead.Load( _dspItemCost, fldDspItemCost_Mny);
          _loaderItemRead.Load( _dspItemPreview, fldItemPreviewStr);
          _loaderItemRead.Load( _dspDirectionsAuto, fldDspDirectionsAuto_Bol);
 //          _loaderItemRead.Load(_inputorder, );

          if _frmRepeat >= _repeatNumber then
            begin
            _loaderItemWrite.DataSet.Append;
            _loaderItemWrite.WriteGUID(CreateClassID, fldRXItemID );
            _loaderItemWrite.WriteGUID(_newRXId, fldRXID );

            _loaderItemWrite.Write( _frmFormulation , fldFrmFormulation_Str );
            _loaderItemWrite.Write( _frmAdministration, fldFrmAdministration_Str );
            _loaderItemWrite.Write( _frmSKU, fldFrmSKU_Dbl);
            _loaderItemWrite.Write( _frmAdministrationUnt, fldFrmAdministrationUnit_Str);
            _loaderItemWrite.Write( _frmInterval, fldFrmInterval_Str);
            _loaderItemWrite.Write( _frmDuration, fldFrmDuration_Dbl);
            _loaderItemWrite.Write( _frmRepeat, fldFrmRepeat_Dbl);
            _loaderItemWrite.Write( _frmDirections, fldFrmDirections_Str);
            _loaderItemWrite.Write( _frmDailyDoseCalc, fldFrmDailyDoseCalc_Dbl);
            _loaderItemWrite.Write( _frmDoseCalc, fldFrmDoseCalc_Dbl);
            _loaderItemWrite.Write( _frmSKUTotal, fldFrmSKUTotal_Dbl);
            _loaderItemWrite.Write( _frmICD, fldFrmICDCode_Str);
            _loaderItemWrite.Write( _frmDescription, fldFrmDescription_Str);
            _loaderItemWrite.WriteGUID( _frmProtocolId, fldFrmProtocol_ID);
            //Dispensing Data
            _loaderItemWrite.Write( _dspProduct, fldDspProduct_Str);
            _loaderItemWrite.WriteGUID( _dspProductId, fldDspProduct_ID);
            _loaderItemWrite.Write( _dspSKUActual, fldDspSKUActual_Dbl);
            _loaderItemWrite.Write( _dspProductCalc, fldDspProductCalc_Dbl);
            _loaderItemWrite.Write( _dspDirections, fldDspDirections_Str);
            _loaderItemWrite.Write( _dspWarning, fldDspWarning_Str);
            _loaderItemWrite.Write( _dspBreakPack, fldDspProductBreakPack_Bol);
            _loaderItemWrite.Write( _dspDescription, fldDspDescription_Str);
            _loaderItemWrite.Write( _dspProductCost, fldDspProductCost_Mny);
            _loaderItemWrite.Write( _dspItemCost, fldDspItemCost_Mny);
            _loaderItemWrite.Write( _dspItemPreview, fldItemPreviewStr);
            _loaderItemWrite.Write( _dspDirectionsAuto, fldDspDirectionsAuto_Bol);
            //end;

            UpdateRowInformation(_loaderItemWrite.DataSet, _date, _repeatNumber);

            // Update the row data first
            _loaderItemWrite.Post;
            end;

          _loaderItemRead.DataSet.Next;
          end;

        //end; //if _repeatNumber <> _repeatTotal then

      except
        on E:Exception do raise Exception.Create('Repeat create Error.' + #13 + E.Message);

      end;
    finally
      qryRXItem_Worker.Close;
      qryRX_Worker.Close;
      _loader.Free;
      _loaderItemRead.Free;
      _loaderItemWrite.Free;
    end;

end;

procedure TdmRX.RX_Delete(id: string; _useTran: Boolean = true);
var
  _qryRXDelete : TADOQuery;
  _qryRXItemDelete : TADOQuery;
  _itemsDel: Integer;
  _rxDel: Integer;

begin

  _qryRXDelete := TADOQuery.Create(nil);
  _qryRXItemDelete := TADOQuery.Create(nil);

  try

    _qryRXDelete.Connection := conRX;
    _qryRXItemDelete.Connection := conRX;

    _qryRXDelete.SQL.Add('DELETE FROM tblPrescription WHERE ((prescription_ID = :@prescription_ID) AND (' + fldRXIsPosted_Bol + ' = 0))' );
    _qryRXDelete.Parameters.ParamByName('@prescription_ID').Value := id;

    _qryRXItemDelete.SQL.Add('DELETE FROM tblRXItem WHERE (RX_ID = :@prescription_ID)');
    _qryRXItemDelete.Parameters.ParamByName('@prescription_ID').Value := id;


    if _useTran then conRX.BeginTrans;
    try
      _rxDel := _qryRXDelete.ExecSQL;
      if _rxDel = 1 then _itemsDel := _qryRXItemDelete.ExecSQL;
      if _rxDel = 0 then ShowMessage('Prescription could not be deleted.' + #13 + 'Posted prescriptions may not be deleted.');
      if _useTran then conRX.CommitTrans;

    except
      on E:Exception do
        begin
        if _useTran then conRX.RollbackTrans;
        ShowMessage('Prescription could not be deleted.' + #13 + E.Message);
        end;
    end;
  finally
    _qryRXItemDelete.Free;
    _qryRXDelete.Free;
  end;

end;

function TdmRX.RX_GetNextRepeatID(id: string): string;
var
  _qryRXRepeat : TADOQuery;

begin

  Result := '';
  _qryRXRepeat := TADOQuery.Create(nil);

  try

    _qryRXRepeat.Connection := conRX;

    _qryRXRepeat.SQL.Add('SELECT ' + fldPrescription_ID + ' FROM tblPrescription WHERE ((' + fldPrescription_ID_Original + ' = :@prescription_ID) AND (' + fldRXIsPosted_Bol +' = 0))');
    _qryRXRepeat.Parameters.ParamByName('@prescription_ID').Value := id;
    _qryRXRepeat.Open;
    if _qryRXRepeat.RecordCount > 0 then
      Result := _qryRXRepeat.FieldByName(fldPrescription_ID).AsString;
    _qryRXRepeat.Close;



  finally
    _qryRXRepeat.Free;
  end;

end;

procedure TdmRX.RX_UpdateInformation(_dataSet: TDataSet);
var
  _loader : TLoader;
  _patientID: string;
  _prescriberID: string;
  _dispenserID: string;
  _patientNameStr: string;
  _prescriberNameStr: string;
  _dispenserNameStr: string;
  _clinicID: string;
  _demanderID: string;
  _clinicNameStr: string;
  _demanderNameStr: string;
  _patientIPNStr: string;
  _date: TDateTime;
  _complexDeptID: string;
  _complexDeptStr: String;
  _prescriptionLastEdited_ID : string;
  _prescriptionLastEdited_Str: string;  

begin

  _loader := TLoader.Create;

  try
  with _loader do
    try
    DataSet := _dataSet;
    Load(_date, fldDate_Dat);
    DataSet.DisableControls;

    Load(_patientID, fldPatient_ID);
    Load(_prescriberID, fldPrescriber_ID);
    Load(_dispenserID, fldDispenser_ID);
    Load(_clinicID, fldClinic_ID);
    Load(_demanderID, fldDemanderUnique_ID);
    Load(FIsPosted, fldRXIsPosted_Bol);
    Load(FIsCollected, fldRXIsCollected_Bol);
    Load(_complexDeptID, fldComplexDept_ID);
//    Load(_prescriptionLastEdited_ID, fldprescriptionLastEdited_ID);


    if _patientID <> '' then
      begin
      LookUpData := qryPatient;
      Key := _patientID;
      KeyField := 'person_id';

      LookUpValue(_patientNameStr, 'personDescription_str');
      LookUpValue(_patientIPNStr, 'personRefNoCurrent_str');
      if(_clinicID = '') then LookUpValue(_clinicID, 'personInstitution_ID');

      FPatientNameStr := _patientNameStr+ ' - ['+_patientIPNStr+']';
      end;

    if _prescriberID <> '' then
      begin
      LookUpData := qryPrescriber;
      Key := _prescriberID;
      KeyField := 'person_id';

      LookUpValue(_prescriberNameStr, 'personDescription_str');
      end;

    if _prescriberID <> '' then
      begin
      LookUpData := qryPrescriberAll;
      Key := _prescriberID;
      KeyField := 'person_id';

      LookUpValue(_prescriberNameStr, 'personDescription_str');
      end;

    if _dispenserID <> '' then
      begin
      LookUpData := qryDispenser;
      Key := _dispenserID;
      KeyField := 'person_id';

      LookUpValue(_dispenserNameStr, 'personDescription_str');
      end;

    if _dispenserID <> '' then
      begin
      LookUpData := qryDispenserAll;
      Key := _dispenserID;
      KeyField := 'person_id';

      LookUpValue(_dispenserNameStr, 'personDescription_str');
      end;

    if _clinicID <> '' then
      begin
      LookUpData := qryClinic;
      Key := _clinicID;
      KeyField := 'clinic_ID';

      LookUpValue(_clinicNameStr, 'clinicName_str');
      end;

    if _demanderID <> '' then
      begin
      LookUpData := qryDemanders;
      Key := _demanderID;
      KeyField := 'DemanderUnique_ID';

      LookUpValue(_demanderNameStr, 'Name_str');
      end;

    if _complexDeptID <> '' then
      begin
      LookUpData := qryComplexDepts;
      Key := _complexDeptID;
      KeyField := 'complexSiteDepartment_ID';

      LookUpValue(_complexDeptStr , 'departmentName_str');
      end;
  
    _prescriptionLastEdited_ID := GetUserUniqueID(FUserID);
    _prescriptionLastEdited_Str := GetUserFullName(FUserID);

    //   ShowMessage('1 -[' + _clinicID + '] -(' + fldClinic_ID + ')' );
    //if fldClinic_ID = '' then                   //SM July 07 DMP apr 2008
    _loader.WriteGUID(_clinicID, fldClinic_ID);
    _loader.Write(_patientIPNStr, fldFolderNumber_Str);
    _loader.Write(_patientNameStr, fldPatientName_Str);
    _loader.Write(_prescriberNameStr, fldPrescriberName_Str);
    _loader.Write(_dispenserNameStr, fldDispenserName_Str);
//    if fldClinic_ID = '' then                   //SM July 07 DMP apr 2008
    _loader.Write(_clinicNameStr, fldClinic_str);
    _loader.Write(_complexDeptStr, fldComplexDept_Str);

    _loader.Write(_demanderNameStr, fldDemanderName_Str);
    _loader.Write(_date, fldDate_Dat);

    _loader.Write(_prescriptionLastEdited_Str, fldPrescriptionLastEdited_str);
    _loader.Write(_prescriptionLastEdited_ID, fldPrescriptionLastEdited_ID);

    except
      on E:Exception do ShowMessage(E.Message);
    end;
  finally
    _loader.DataSet.EnableControls;
    _loader.Free;
  end;
end;

procedure TdmRX.RX_UpdateTotals(_dataSet: TDataSet);
var
  _loader : TLoader;
  _repeats: Double;
  _cost: Double;
  _itemCount: Integer;
  _repeatStatusOfRX: string;
  _repeatNumber: Double;
  _repeatsLeft: Double;
  _isPosted: Boolean;
  _maxDuration: Integer;


begin

  _loader := TLoader.Create;

  try
  with _loader do
    try


    DataSet := _dataSet;

    if _dataSet.Name = 'qryRX' then
      begin
      CountTotals(_repeats, _cost, _itemCount, _maxDuration)
      end
      else
      begin
      Load(_repeats, fldRepeatTotal_Int);
      Load(_cost, fldPrescriptionCost_Mon);
      Load(_itemCount, fldPrescriptionItemsCount_Int);
      Load(_maxDuration, fldRepeatDuration_Int);
      end;
 
      Load(_repeatNumber, fldRepeatCurrent_Int);
      Load(_isPosted, fldRXIsPosted_Bol);


    // Build statusOfRX to include canceled, not collected etc.
    if _repeats > 0 then
      begin
      _repeatsLeft := _repeats - _repeatNumber;
      if _repeatsLeft = 0 then
        _repeatStatusOfRX := 'FINAL REPEAT'
        else
        _repeatStatusOfRX := 'Repeats Left = ' + FloatToStr(_repeatsLeft);
      end else
      _repeatStatusOfRX := 'Repeats = Nil';




    FRepeatCount := _repeats;
    FRepeatNumber := _repeatNumber;

    if FRepeatNumber = 0 then
      WriteGUID( FRXID, fldPrescription_ID_Original);

    Write(_repeats, fldRepeatTotal_Int);
    Write(_cost, fldPrescriptionCost_Mon);
    Write(_itemCount, fldPrescriptionItemsCount_Int);
    Write(_repeatStatusOfRX, fldRepeatStatus_str);
    Write(_maxDuration, fldRepeatDuration_Int);
    if not _isPosted then
      Write(STATUS_ACTIVE, fldPrescriptionStatus_Str);

    except
      on E:Exception do raise Exception.Create('RX Total Update Error.' + #13 + E.Message);

    end;
  finally
  _loader.Free;
  end;

end;

procedure TdmRX.SaveAll;
var
 _date : TDAteTime;
begin

  // Collect all denormalised data for RX here.
   _date := qryRX.FieldByName(fldDate_Dat).AsDateTime;

  if qryRX.Active then
    begin
    if qryRXItem.Active then
      if ItemRowEdited then  // call the method not the variable
        begin
        if qryRXItem.State in [dsInsert, dsEdit] then qryRXItem.Post;
        RX_UpdateInformation(qryRX);
        end else
        begin
        if qryRXItem.State in [dsInsert, dsEdit] then qryRXItem.Cancel;
        end;
    if qryRX.State in [dsEdit, dsInsert] then qryRX.Post;
    end;   

end;

procedure TdmRX.SetDatabaseConString(const Value: WideString);
begin

  try

    conRX.Close;
    conRX.ConnectionString := value;
    conRX.Open;
    conRX.Close;


    LoadSupportData;
    FDatabaseConString := Value;

    LoadSupportDataProperties; // TStrings for grid display.

    LoadPrescription('{0266D5CC-2CCC-4C6F-9E16-E263DF1AADB7}', True, 'username', '');
    ClosePrescription;

  except
    on E:Exception do raise Exception.Create('SetDatabaseConString' + #13 + E.Message);
  end;

end;

procedure TdmRX.SetProductRetrieveQuery(_repeat: string = '');
var
  strNoRep1 : string;
  strNoRep2 : string;
  strRep : string;
begin

  if Assigned(qryProductPacks) then
    if qryProductPacks.Active then
      with qryProductPacks do
        begin
        strRep := 'SELECT * FROM tblProductPackSize WHERE ((GenericName_str = :GenericName_str) and (route_str = :route_str) AND (IsAvailableForDispensing_Bol = 1) AND (InstitutionEDL_bol = 1)) ORDER BY packDescription_Str';
        strNoRep1 := 'SELECT * FROM tblProductPackSize WHERE ((GenericName_str = :GenericName_str) and (route_str = :route_str) AND (IsAvailableForDispensing_Bol = 1) AND (InstitutionEDL_bol = 1)';

//        strNoRep2 := ' AND (DispensingUnit_str =:DispensingUnit_str) AND (StrengthValue_dbl =:StrengthValue_dbl)) ORDER BY packDescription_Str';
        strNoRep2 := ' AND (DispensingUnit_str =:DispensingUnit_str)) ORDER BY packDescription_Str';

        Close;
        SQL.Clear;
        if _repeat = '' then
          begin
          SQL.Add(strNoRep1);
          SQL.Add(strNoRep2);
          end
          else
          SQL.Add(strRep);
        Open;
        end;


  // TODO -cMM: TdmRX.SetProductRetrieveQuery default body inserted
end;

procedure TdmRX.UpdateRowInformation(Dataset: TDataSet; const _date: TDateTime;
    _repeatNum: Integer);
var
  _loader : TLoader;
  _rXLabel: TRXLabel;
  _dspProductStr: string;
  _dspSKUActualDbl: Double;
  _dspDirectionsStr: string;
  _dspWarningStr: string;
  _frmRepeatDbl: Double;
  _dspLabel01Str: string;
  _dspLabel02Str: string;
  _dspLabel03Str: string;
  _dspLabel04Str: string;
  _dspLabel05Str: string;
  _dspLabel06Str: string;
  _dspProductCostDbl: Double;
  _dspItemCostDbl: Double;
  _dspProductCalculatedDbl: Double;
  _dspNotDispensedBol: Boolean;
  _frmAdministrationUnitStr : string;
  _repeatsLeft : double;
  _repeat : string;

begin

try
 
   FCalculatingRXItem := True;

  _loader := TLoader.Create;
  _loader.DataSet := Dataset;


  try
  with _loader do
    begin

    Load(_dspProductStr, fldDspProduct_Str);
    Load(_dspSKUActualDbl, fldDspSKUActual_Dbl);
    Load(_dspDirectionsStr, fldDspDirections_Str);
    Load(_dspWarningStr, fldDspWarning_Str);
    Load(_frmRepeatDbl, fldFrmRepeat_Dbl);
    Load(_dspProductCalculatedDbl, fldDspProductCalc_Dbl);
    Load(_dspNotDispensedBol, fldDspNotDispensed_Bol);
    Load(_frmAdministrationUnitStr, fldFrmAdministrationUnit_Str);

    

    // Product Table values
    if _dspProductStr <> '' then
      begin
      LookUpData := qryProductPacks;
      Key := _dspProductStr;
      KeyField := 'packDescription_Str';

      LookUpValue(_dspProductCostDbl, 'Cost_mon');
      end;

    if _dspNotDispensedBol then
      _dspItemCostDbl := 0
      else
      _dspItemCostDbl := _dspProductCalculatedDbl * _dspProductCostDbl;


          // Build _repeat to include canceled, not collected etc.
    _repeat := 'Repeats = Nil';
    if _frmRepeatDbl > 0 then
      begin
      _repeat := 'FINAL REPEAT';
      _repeatsLeft := _frmRepeatDbl - _repeatNum ;
      if _repeatsLeft > 0 then _repeat := 'Repeats Left = ' + FloatToStr(_repeatsLeft);
      end;


    // Do any calculations here.
    RX.RxItemLabel( _rXLabel,
                    _dspProductStr,
                    _dspSKUActualDbl,
                    _frmAdministrationUnitStr,
                    _dspDirectionsStr,
//                    '', // specialInstruction
                    _dspWarningStr, // warning
                    FPatientNameStr, // patientName
                    FRXNumberStr, // RXNum
//                    _frmRepeatDbl,
//                    0,
                    FHospitalNameStr,  // hospital
                    FHospitalAddressStr,
                    _date,
                    _repeat
                    ); // hospital Address

     _dspLabel01Str := _rXLabel[1];
     _dspLabel02Str := _rXLabel[2];
     _dspLabel03Str := _rXLabel[3];
     _dspLabel04Str := _rXLabel[4];
     _dspLabel05Str := _rXLabel[5];
     _dspLabel06Str := _rXLabel[6];

    // Now update the dataset here.
    {Dispensing Data}
    Write(_dspLabel01Str, fldDspLabel01_Str);
    Write(_dspLabel02Str, fldDspLabel02_Str);
    Write(_dspLabel03Str, fldDspLabel03_Str);
    Write(_dspLabel04Str, fldDspLabel04_Str);
    Write(_dspLabel05Str, fldDspLabel05_Str);
    Write(_dspLabel06Str, fldDspLabel06_Str);
    Write(_dspProductCostDbl, fldDspProductCost_Mny);
    Write(_dspItemCostDbl, fldDspItemCost_Mny);

    end;

  finally

    Dataset.EnableControls;

  end;

finally
  FCalculatingRXItem := False;
  _loader.Free;
end;

end;

procedure TdmRX.UpdateRX(const _rxItemId: string);
var
  _date: TDateTime;
  _repeat: Integer;
begin

  try
    with qryRXItem do
      try

      DisableControls;

      // Added
      if ItemRowEdited then // call method not variable
        begin
        //ShowMessage('Edited');
        if State in [dsInsert, dsEdit] then Post;
        end else
        begin
        //ShowMessage('UnEdited');
        if State in [dsInsert, dsEdit] then Cancel;
        end;

      Close;
      Open;

      _date := qryRX.FieldByName(fldDate_Dat).AsDateTime;
      _repeat := qryRX.FieldByName(fldRepeatCurrent_Int).AsInteger;

      while not EOF do
        begin
        UpdateRowInformation(qryRXItem, _date, _repeat );
        Next;
        end;
      RX_UpdateInformation(qryRX);
      RX_UpdateTotals(qryRX);

      if _rxItemId <> '' then Locate(fldRXItemID, _rxItemId, []);
    except
    end;

  finally
    qryRXItem.EnableControls;
  end;


end;

procedure TdmRX.qryRXItem_WorkerNewRecord(DataSet: TDataSet);
var
 vInputOrderint: integer;
begin

 vInputOrderint := GetMaxInputOrderNumber;

  with DataSet do
    begin
    FieldByName(fldInputOrder_int).AsInteger := vInputOrderint + 1;
    end;
end;

function TdmRX.GetComplexDeptName(complexID: string): String;
begin

 with qryComplexDeptName do
  begin
  Parameters.ParamByName('complexSiteDepartmentID').Value := complexID;
  Active := True;

  if RecordCount > 1 then
   Result := FieldByName('departmentName_str').AsString
  else
   Result := '';

  Active := False;
  end;

end;

procedure TdmRX.qryRXNewRecord(DataSet: TDataSet);
begin                                                                                                                               
 with qryRX do
  begin
  FieldByName('vstNextVisit_dat').AsVariant := NULL;
  end;
end;

function TdmRX.GetPersonAge(): Integer;
var
  Month, Day, Year, CurrentYear, CurrentMonth, CurrentDay: Word;
  Birthday, CurrentDate : TDateTime;

begin

  Birthday := Date();
  
  if qryPatient.FieldByName('personDOB_dat').AsDateTime > (Date - 365 * 160) then
   Birthday := qryPatient.FieldByName('personDOB_dat').AsDateTime;

  CurrentDate := Date();

  DecodeDate(Birthday, Year, Month, Day);
  DecodeDate(CurrentDate, CurrentYear, CurrentMonth, CurrentDay);
  if (Year = CurrentYear) and (Month = CurrentMonth) and (Day = CurrentDay) then 
  begin 
    Result := 0; 
  end 
  else
  begin 
    Result := CurrentYear - Year; 
    if (Month > CurrentMonth) then 
      Dec(Result) 
    else 
    begin 
      if Month = CurrentMonth then 
        if (Day > CurrentDay) then 
          Dec(Result); 
    end; 
  end;
end;

procedure TdmRX.LoadPersonAllergies;
begin

  with qryAllergies do
   begin
   Close;
   Parameters.ParamByName('person_ID').Value := qryRX.FieldByName('patient_ID').AsString;
   Open;
   end;

  with qryAllergiesDisplay do
   begin
   Close;
   Parameters.ParamByName('patient_ID').Value := qryRX.FieldByName('patient_ID').AsString;
   Open;
   end;

end;

procedure TdmRX.LoadProtocolsDisplay;
begin
 //************** SM
 with qryProtocolsDisplay do
  begin
  Close;
  Parameters.ParamByName('RX_ID').Value := qryRX.FieldByName('prescription_ID').Value;
  Open;
  end;

end;

//Function checks whether current patient has any allergies record. Returns true if patient has at least one allergy.
function TdmRX.CheckPatientAllergies: Boolean;
begin
 LoadPersonAllergies;
 with qryAllergies do
   begin
   if (RecordCount > 0) then
    begin
    Result := True;
    end
   else
    Result := False;
   end;
end;

function TdmRX.IsStockAvailableFromDemander(vDemanderID: string; vProductID: string): Boolean;
var
 vDemID, vProdID: integer;
begin

 vDemID := 0;
 vProdID := 0;
 //SM
 if ((not VarIsNull(vDemanderID)) and (not VarIsNull(vProductID)) ) then
  begin
  vDemID := GetDemanderID(vDemanderID);
  vProdID := GetProductID(vProductID);
  end;
// try
 if vDemId > 0 then
  with qryProductStockAvail do
   begin
   Close;
   Parameters.ParamByName('DemanderID').Value := vDemID;
   Parameters.ParamByName('ProductCodeID').Value := vProdID;
   Open;
   //If returns Records then check if there is stock for product in demander
   if RecordCount > 0 then
   begin
   if (FieldByName('QtyOnHand_int').AsInteger > 0) OR (FieldByName('QtyOnHand_int').AsInteger = 0) then
    Result := True
   else
    Result := False;
   end
   else
    Result := False;
   end;      
// except
//  Result := false;
// end;
end;

//Function returns the integer value for a demander given DemnderUnique_ID as a parameter
//SM 01 April 2011
function TdmRX.GetDemanderID(vDemanderID: string): integer;
var
 DemID: integer;
begin

 DemID := -1; 
 with qryDemanderID do
  begin
  Close;
  Parameters.ParamByName('DemanderUniqueID').Value := vDemanderID;
  Open;
  if RecordCount > 0 then
   DemID := FieldByName('Demander_ID').AsInteger;
  Close;
  end;

  Result := DemID;

end;

//Function returns the integer value for a product given ProductUnique_ID as a parameter
//SM 01 April 2011
function TdmRX.GetProductID(vProductCodeID: string): integer;
var
 ProdID: integer;
begin

 ProdID := -1;
 with qryProductID do
  begin
  Close;
  Parameters.ParamByName('ProductPackID').Value := vProductCodeID;
  Open;

  if RecordCount > 0 then
   ProdID := FieldByName('ProductCode_ID').AsInteger;
  Close;
  end;

  Result := ProdID;

end;

//SM 07 April 2011
function TdmRX.CheckDispensingStock: Boolean;
var
  srchQry  :TADOQuery;
  myConn  :TADOConnection;
  bSTR  :string;

begin

  try
    Result := False;
    bSTR   := 'SELECT CheckDispensingStock_bol FROM tblSystem';
    srchQry := TADOQuery.Create(nil);
    with srchQry do
      try
      Connection := conRX;
      srchQry.SQL.Add(bSTR);
      Open;
      if RecordCount > 0 then
        Result := srchQry.FieldByName('CheckDispensingStock_bol').AsBoolean
      else
        Result:= False;
      finally
      srchQry.Free;
      end;
  except
    on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;

end;

procedure TdmRX.ConfigureLabelReport(vReport: TppReport);
begin

 LoadCustomReports;

 try
  with ppRxDesigner do
   begin
   Report := vReport;
   Show;
   end;
 except
  on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;

end;

procedure TdmRX.EditRxLabel(vOption: integer);
begin

 case vOption of
  0: ConfigureLabelReport(ppRXLabel);
  1: ConfigureLabelReport(ppRXAddress);
  2: ConfigureLabelReport(pRxTrailerLabel);
 end; 

end;

function TdmRX.GetDispenserID(userID: string): string;
begin

 with qryUserDetail do
  begin
  Close;
  Parameters.ParamByName('userID').Value := userID;
  Open;

  if RecordCount > 0 then
   Result := FieldByName('dispenser_ID').AsString
  else
   Result := '';
  end;

end;

function TdmRX.GetPrescriberID(userID: string): string;
begin

 with qryUserDetail do
  begin
  Close;
  Parameters.ParamByName('userID').Value := userID;
  Open;

  if RecordCount > 0 then
   Result := FieldByName('prescriber_ID').AsString
  else
   Result := '';
  end;

end;

function TdmRX.GetUserUniqueID(userID: string): string;
begin

 with qryUserDetail do
  begin
  Close;
  Parameters.ParamByName('userID').Value := userID;
  Open;

  if RecordCount > 0 then
   Result := FieldByName('UserID').AsString
  else
   Result := '';
  end;

end;

function TdmRX.GetUserFullName(userID: string): string;
begin

 with qryUserDetail do
  begin
  Close;
  Parameters.ParamByName('userID').Value := userID;
  Open;

  if RecordCount > 0 then
   Result := FieldByName('FullName').AsString
  else
   Result := '';
  end;

end;

function TdmRX.GetUserID(userID: string): Double;
begin

 with qryUserDetail do
  begin
  Close;
  Parameters.ParamByName('userID').Value := userID;
  Open;

  if RecordCount > 0 then
   Result := FieldByName('userNo_int').AsFloat
  else
   Result := -1;
  end;

end;

function TdmRX.PostBeforPrint: Boolean;
begin
 //********** 26 June 2013
 //********** This functions returns True if system has been setup so that users are
 //********** forced to post before printing any reports
 try
 with qrySystemSettings do
  begin
  Close;
  Open;
  if RecordCount > 0 then
   begin
   if FieldByName('postRxBeforePrint_bol').AsBoolean then
    Result := True
   else Result := False;
   end
  else
    Result := False;
  end;
 except
  Result := False;
 end;

end;

function TdmRX.GetPinBeforePost: Boolean;
begin
 //********** 26 June 2013
 //********** This functions returns True if system has been setup so that users are
 //********** forced to enter a pin/password before posting the prescription
 try
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
 except
  Result := False;
 end;

end;

function TdmRX.NonEditableRxDate: Boolean;
var
  srchQry  :TADOQuery;
  myConn  :TADOConnection;
  bSTR  :string;

begin

  try
    Result := False;
    bSTR   := 'SELECT nonEditableRxDate_bol FROM tblSystem';
    srchQry := TADOQuery.Create(nil);
    with srchQry do
      try
      Connection := conRX;
      srchQry.SQL.Add(bSTR);
      Open;
      if RecordCount > 0 then
        Result := srchQry.FieldByName('nonEditableRxDate_bol').AsBoolean
      else
        Result:= False;
      finally
      srchQry.Free;
      end;
  except on E:Exception do
    begin
    MessageDlg(e.Message, mtError, [mbOK], 0);
    Result:= False;
    end;
  end;

end;

//******** 23 Jan 2014 - SM
//******** This function checks whether the Final Repeat of a Script is long over due for collection on the day
//******** IT has to be overdue by 1 month or 28 days
function TdmRX.IsRepeatRxOverDue: Boolean;
var
 _repeatDat: TDateTime;
 _repeatNum: integer;
 _repeatTotal: integer;
 _active : Boolean;
begin

 _active := False;

 with qryRX do
  begin
  _repeatDat    := FieldByName('Date_dat').AsDateTime;
  _repeatNum    := FieldByName('repeatNo_Int').AsInteger;
  _repeatTotal  := FieldByName('repeats_Int').AsInteger;

  if (FieldByName('prescriptionStatus_Str').AsString = 'Active') then
   _active       := True;
  end;

 if ((_active) AND (_repeatTotal > 0)) then
  begin
  if (_repeatDat + 28 < Now()) then
        Result := True;
  end
 else
        Result := False;

end;

procedure TdmRX.LogEditHistory(vdesc: string; vtype: string; vRXID: string; vReason: string);
begin

 //******* SM Sep 2014
 //******* Log Rx Edit History
 try
 with qryRxEditHistory do
  begin
  Close;
  Open;
  Append;
  FieldByName('prescription_ID').AsString       := vRXID;
  FieldByName('Description_str').AsString       := vdesc;
  FieldByName('Type_str').AsString              := vtype;
  FieldByName('user_str').AsString              := GetUserFullName(FUserID);
  FieldByName('user_id').AsString               := GetUserUniqueID(FUserID);
  FieldByName('Reason_str').AsString            := vReason;
  Post;
  end;
 except
 end;

end;

procedure TdmRX.qryRXItemBeforeDelete(DataSet: TDataSet);
var
 vReasonForDelete: string;
 frmDELITemReason: TRXDELETEReason;
begin
 
 vReasonForDelete := '';

 if GetPinBeforePost then
  begin
  frmDELITemReason := TRXDELETEReason.Create;
  vReasonForDelete := frmDELITemReason.Show(true);
  frmDELITemReason.Free;    

 //******* Log Item before Deleting
 if qryProtocolsDisplay.Active then
  if qryProtocolsDisplay.RecordCount > 0 then
   with qryRXItem do
    begin
    LogEditHistory(FieldByName('FrmDescription_Str').AsString, HST_DEL, FieldByName('RX_ID').AsString, vReasonForDelete);
    end;
  end;

end;


//Functions Return the Max Number for field InputOrder_int for items
function TdmRX.GetMaxInputOrderNumber: Integer;
var
 num : integer;
begin

 num := 0;

  with QryInputNumberMax do
   begin
   Close;
   Parameters.ParamByName('RX_ID').Value := qryRX.FieldByName('prescription_ID').Value;
   Open;

   num := FieldByName('ItemsMax').AsInteger;
   end;
 
 Result := num;

end;

function TdmRX.NonEditableScriptDropDowns: Boolean;
begin

 try
 with qrySystemSettings do
  begin
  Close;
  Open;
  if RecordCount > 0 then
   begin
   if FieldByName('nonEditableScriptDropDowns_bol').AsBoolean then
    Result := True
   else Result := False;
   end
  else
    Result := False;
  end;
 except
  Result := False;
 end;


 end;

end.
