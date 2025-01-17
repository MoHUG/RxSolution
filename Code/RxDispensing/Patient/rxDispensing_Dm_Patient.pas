unit rxDispensing_Dm_Patient;

interface

uses
  SysUtils, Classes, ComObj,
  Windows, Messages, Variants, Graphics, Controls, StrUtils, 
  Forms, Dialogs, Person_, SystemConstants,

    // My Objects                                                                                        
  DB, ADODB,  Prescription_TLB, ActnList, ppBands, RxSolutionSecurityClass,
  ppCache, ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  TXRB, ppPrnabl, ppCtrls, Math, ppParameter, TXComp, ppBarCod, ppVar, jpeg,
  ppStrtch, ppRichTx, myChkBox, ppChrt, ppChrtDP, daDataView,
  daQueryDataView, daADO, ppModule, daDataModule, ppMemo, raCodMod,
  ppEndUsr;

const
 HST_ACT = 'Active';
 HST_TMP = 'Temporary';
 HST_CLS = 'Class';
 HST_NAME= 'First Name';
 HST_SURNAME = 'Surname';
 HST = 'Known Name';
 HST_IPN = 'IPN';
 HST_PAS = 'PAS';
 HST_DEC = 'DECEASED';
 HST_CLN = 'Clinic';
 HST_For = 'Foreigner';
 HST_BIO = 'Biometric Enrolment';
 HST_ID  = 'ID/Passport';
 HST_GEN = 'Gender';
 HST_RCE = 'Race';

type
  TdmPatient = class(TDataModule)
    conPatient: TADOConnection;
    qryPersonDetail: TADOQuery;
    dsqryPersonDetail: TDataSource;
    qryPersonComment: TADOQuery;
    qryPersonContact: TADOQuery;
    dsqryPersonComment: TDataSource;
    dsqryPersonContact: TDataSource;
    qryClinic: TADOQuery;
    qryPersonType: TADOQuery;
    dsqryClinic: TDataSource;
    dsqryPersonType: TDataSource;
    qryPersonAllergies: TADOQuery;
    dsqryPersonAllergies: TDataSource;
    qryPersonMedicalAid: TADOQuery;
    qryPersonIdealWeight: TADOQuery;
    dsqryPersonMedicalAid: TDataSource;
    dsqryPersonIdealWeight: TDataSource;
    qryNumbering: TADOQuery;
    tblRace: TADOTable;
    tblLanguage: TADOTable;
    dstblRace: TDataSource;
    dstblLanguage: TDataSource;
    qryAllergyLookup: TADOQuery;
    dsqryAllergyLookup: TDataSource;
    qryPersonPositionTitle: TADOQuery;
    dsqryPersonPositionTitle: TDataSource;
    qryPatientCounseling: TADOQuery;
    dsqryPatientCounseling: TDataSource;
    qryClinicclinic_ID: TGuidField;
    qryClinicclinicName_str: TWideStringField;
    qryClinicclinicClassification_str: TWideStringField;
    qryClinicclinicDistrictPharmacist_str: TWideStringField;
    qryClinicclinicDistrictMunicipality_str: TWideStringField;
    qryClinicclinicHealthSubDistrict_str: TWideStringField;
    qryClinicclinicLocation_str: TWideStringField;
    qryClinicdownRefRoute_ID: TGuidField;
    qryClinicbatchRouteName_str: TWideStringField;
    qryPrescriptionHistory: TADOQuery;
    dsqryPrescriptionHistory: TDataSource;
    qryPatientCounselingcounselPlan_ID: TGuidField;
    qryPatientCounselingcounselBy_Str: TWideStringField;
    qryPatientCounselingcounselVenue_Str: TWideStringField;
    qryPatientCounselingcounselPlanDate_Dte: TDateTimeField;
    qryPatientCounselingcounselPlan_Mem: TMemoField;
    qryPatientCounselingcounselAchieved_Dte: TDateTimeField;
    qryPatientCounselingcounselStatus_Str: TWideStringField;
    qryPatientCounselingperson_ID: TGuidField;
    qryPatientCounselingcounselReportDate_Dte: TDateTimeField;
    qryPatientCounselingprescription_ID: TGuidField;
    qryPatientCounselingpatientName_Str: TWideStringField;
    qryPersonAllergiespersonAllergy_ID: TGuidField;
    qryPersonAllergiesperson_ID: TGuidField;
    qryPersonAllergiesproductCode_ID: TIntegerField;
    qryPersonAllergiespersonAllergyDateEntered_Dat: TDateTimeField;
    qryPersonAllergiespersonAllergyDescription_Str: TWideStringField;
    qryPersonAllergiespersonAllergySource_Str: TWideStringField;
    qryPersonAllergiespersonAllergyConfirmedBy_Str: TWideStringField;
    qryPersonAllergiespersonAllergyStatus_Str: TWideStringField;
    qryPersonAllergiespersonAllergyAuthicatedBy_Str: TWideStringField;
    qryPersonAllergiespersonAllergyConfirmed_bol: TBooleanField;
    qryHealthCareReg: TADOQuery;
    dsqryHealthCareReg: TDataSource;
    dsqryLaboratoryResults: TDataSource;
    qryLaboratoryResults: TADOQuery;
    tlkLabTests: TADOQuery;
    dstlkLabTests: TDataSource;
    qryCD4Results: TADOQuery;
    dsCd4Results: TDataSource;
    dsViralLoad: TDataSource;
    qryViralLoad: TADOQuery;
    qryLaboratoryResultslbResultID: TGuidField;
    qryLaboratoryResultspersonID: TGuidField;
    qryLaboratoryResultstestName_str: TWideStringField;
    qryLaboratoryResultstestCode_str: TWideStringField;
    qryLaboratoryResultstestResult_str: TWideStringField;
    qryLaboratoryResultstestResult_dbl: TFloatField;
    qryLaboratoryResultstestDate_dat: TDateTimeField;
    qryLaboratoryResultstestPlace_str: TWideStringField;
    tlkLabTeststestCode_str: TWideStringField;
    tlkLabTeststestName_str: TWideStringField;
    tlkLabTeststestDescription_str: TWideStringField;
    ActionList1: TActionList;
    atnSetLabTestName: TAction;
    atnSetLabTestCode: TAction;
    patientDuplicateIPN: TADOQuery;
    patientDuplicateIPNperson_ID: TGuidField;
    patientDuplicateIPNPatientName: TWideStringField;
    qryPersonIdealWeightpersonWeight_ID: TGuidField;
    qryPersonIdealWeightperson_ID: TGuidField;
    qryPersonIdealWeightpersonWeightDateRecorded_Dat: TDateTimeField;
    qryPersonIdealWeightpersonWeight_int: TFloatField;
    qryPersonIdealWeightpersonHeight_Int: TFloatField;
    qryPersonIdealWeightpersonIdealWeight_int: TIntegerField;
    qryPersonIdealWeightpersonPregnant_bol: TBooleanField;
    qryPersonIdealWeightpersonRenalFunction_str: TWideStringField;
    qryPersonIdealWeightpersonCrCC: TWideStringField;
    qryPersonIdealWeightpersonIBW_dbl: TFloatField;
    qryPersonIdealWeightpersonBMI_dbl: TFloatField;
    qryPersonIdealWeightpersonABW_dbl: TFloatField;
    qryPersonIdealWeightpersonBSA_dbl: TFloatField;
    qryPersonIdealWeightpersonLBW_dbl: TFloatField;
    qryPersonIdealWeightpersonTBW_dbl: TFloatField;
    qryPersonIdealWeightpersonSrCr_dbl: TFloatField;
    qryPersonIdealWeightpersonCrCl_dbl: TFloatField;
    qryPrescriptionHistoryRxDate_dat: TDateTimeField;
    qryPrescriptionHistoryRxDateRepeat_Dat: TDateTimeField;
    qryPrescriptionHistoryprescriptionNumber_Str: TWideStringField;
    qryPrescriptionHistoryrepeats_Int: TIntegerField;
    qryPrescriptionHistoryprescriptionCost_Mon: TBCDField;
    qryPrescriptionHistorypatient_ID: TGuidField;
    qryPrescriptionHistoryprescription_ID: TGuidField;
    qryPrescriptionHistorypatientName_Str: TWideStringField;
    qryPrescriptionHistoryprescriber_ID: TGuidField;
    qryPrescriptionHistoryprescriberName_Str: TWideStringField;
    qryPrescriptionHistoryprescriberRXLevel_Str: TWideStringField;
    qryPrescriptionHistoryprescriptionStatus_Str: TWideStringField;
    qryPrescriptionHistoryprescriptionActive_bol: TBooleanField;
    qryPrescriptionHistorydispensingPosted_bol: TBooleanField;
    qryPrescriptionHistoryfolderNumber_Str: TWideStringField;
    qryPrescriptionHistorydispenserName_Str: TWideStringField;
    qryPrescriptionHistorydispenserRxLevel_Str: TWideStringField;
    qryPrescriptionHistoryRepeatStatus_Str: TWideStringField;
    qryPrescriptionHistorypersonpregnant_bol: TBooleanField;
    qryPrescriptionHistoryvstTreamentPrescribed_bol: TBooleanField;
    ppDBPipeline1: TppDBPipeline;
    ppPatientDetailLabel: TppReport;
    ppDetailBand9: TppDetailBand;
    ppDBText84: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    atnPrintPatientLabel: TAction;
    patientDuplicatePAS: TADOQuery;
    patientDuplicatePASperson_ID: TGuidField;
    patientDuplicatePASPatientName: TWideStringField;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    ppDBText7: TppDBText;
    ppLabel7: TppLabel;
    qryPatientClass: TADOQuery;
    dsPatientClass: TDataSource;
    qryPatientClassClassification_ID: TAutoIncField;
    qryPatientClassCode_Str: TWideStringField;
    qryPatientClassDescription_str: TWideStringField;
    qryPersonDetailperson_ID: TGuidField;
    qryPersonDetailpersonIDNumber_Str: TWideStringField;
    qryPersonDetailpersonLastName_Str: TWideStringField;
    qryPersonDetailpersonFirstName_Str: TWideStringField;
    qryPersonDetailpersonKnownName_Str: TWideStringField;
    qryPersonDetailpersonInitials_Str: TWideStringField;
    qryPersonDetailpersonDOB_Dat: TDateTimeField;
    qryPersonDetailpersonGender_Str: TWideStringField;
    qryPersonDetailpersonReviewed_Dat: TDateTimeField;
    qryPersonDetailpersonActive_Bol: TBooleanField;
    qryPersonDetailpersonRace_Str: TWideStringField;
    qryPersonDetailpersonLanguageNarrative_Str: TWideStringField;
    qryPersonDetailpersonLanguageWritten_Str: TWideStringField;
    qryPersonDetailpersonAgeYears_int: TIntegerField;
    qryPersonDetailpersonAgeMonths_int: TIntegerField;
    qryPersonDetailpersonDescription_str: TWideStringField;
    qryPersonDetailpersonRefNoCurrent_str: TWideStringField;
    qryPersonDetailpersonTelNoCurrent_str: TWideStringField;
    qryPersonDetailpersonCelNoCurrent_str: TWideStringField;
    qryPersonDetailpersonAddressCurrent_str: TWideStringField;
    qryPersonDetailpersonRegistrationNo_str: TWideStringField;
    qryPersonDetailpersonInstitution_str: TWideStringField;
    qryPersonDetailpersonPatient_bol: TBooleanField;
    qryPersonDetailpersonPrescriber_bol: TBooleanField;
    qryPersonDetailpersonDispenser_bol: TBooleanField;
    qryPersonDetailpersonOther_bol: TBooleanField;
    qryPersonDetailsysLastEdited_dat: TDateTimeField;
    qryPersonDetailsysLastEditedBy_ID: TGuidField;
    qryPersonDetailsysLastEditedBy_str: TWideStringField;
    qryPersonDetailsysDeleted_bol: TBooleanField;
    qryPersonDetailpersonDateDeceased_dat: TDateTimeField;
    qryPersonDetailpersonStatus_Str: TWideStringField;
    qryPersonDetailpersonStatusChangeDate_dat: TDateTimeField;
    qryPersonDetailpersonPead_bol: TBooleanField;
    qryPersonDetailpersonDateJoined_dat: TDateTimeField;
    qryPersonDetailpersonStatusDesc_str: TWideStringField;
    qryPersonDetailpersonPAS_str: TWideStringField;
    qryPersonDetailpersonInstitution_ID: TGuidField;
    qryPersonDetailpersonNaive_Bol: TBooleanField;
    qryPersonDetailpersonNaiveDate_Dat: TDateTimeField;
    qryPersonDetailpersonClintech_ID: TIntegerField;
    qryPersonDetailpersonMaritalStatus_str: TWideStringField;
    qryPersonDetailpersonDeceased_bol: TBooleanField;
    qryPersonDetailpersonDefaulted_bol: TBooleanField;
    qryPersonDetailpersonDefaulted_dat: TDateTimeField;
    qryPersonDetailpersonPAAB_ID: TWideStringField;
    qryPersonDetailpersonRegisteredInSys_bol: TBooleanField;
    qryPersonDetailpersonRegisteredInSys_dat: TDateTimeField;
    qryPersonDetailpersonTransferredIn_bol: TBooleanField;
    qryPersonDetailpersonTransferredInDate_dat: TDateTimeField;
    qryPersonDetailpersonTransferredInFrom_str: TWideStringField;
    qryPersonDetailpersonTransferredOut_bol: TBooleanField;
    qryPersonDetailpersonTransferredOutDate_dat: TDateTimeField;
    qryPersonDetailpersonTransferredOutTo_str: TWideStringField;
    qryPersonDetailvstPregnancyDeliveryDate_dat: TDateTimeField;
    qryPersonDetailvstFunctionalStatus_str: TWideStringField;
    qryPersonDetailvstClinicalStage_str: TWideStringField;
    qryPersonDetailvstRegimenChange_From_str: TWideStringField;
    qryPersonDetailvstRegimenChange_To_str: TWideStringField;
    qryPersonDetailvstRegimenChange_Reason_str: TWideStringField;
    qryPersonDetailvstVisitDate_dat: TDateTimeField;
    qryPersonDetailvstNextVisit_dat: TDateTimeField;
    qryPersonDetailvstScheduledVisit_dat: TDateTimeField;
    qryPersonDetailpersonpregnant_bol: TBooleanField;
    qryPersonDetailvstHeight_dbl: TFloatField;
    qryPersonDetailvstLostToFollowUpDate_dat: TDateTimeField;
    qryPersonDetailvstRegimenStart_str: TWideStringField;
    qryPersonDetailvstRegimenStartDate_dat: TDateTimeField;
    qryPersonDetailvstTreatmentEligibility_str: TWideStringField;
    qryPersonDetailvstTreatmentStopped_date_dat: TDateTimeField;
    qryPersonDetailvstWeight_dbl: TFloatField;
    qryPersonDetailvstCohort_str: TWideStringField;
    qryPersonDetailvstTempPatient_bol: TBooleanField;
    qryPersonDetailReasonForEligibility_Str: TWideStringField;
    qryPersonDetailvstSupporterName_str: TWideStringField;
    qryPersonDetailvstSupporterAddress_str: TWideStringField;
    qryPersonDetailvstUpporterPhone_str: TWideStringField;
    qryPersonDetailvstSupporterRelationship_str: TWideStringField;
    qryPersonDetailClassification_ID: TIntegerField;
    qryPersonDetailvstIsOnSite_bol: TBooleanField;
    qryPersonDetailvstOnSiteDate_dat: TDateTimeField;
    qryPersonDetailDiagnosis_dat: TDateTimeField;
    qryPersonDetailARTStart_dat: TDateTimeField;
    qryPersonDetailEntryPoint_str: TWideStringField;
    tblActiveStatusLog: TADOQuery;
    ExtraOptions1: TExtraOptions;
    ppDBBarCode1: TppDBBarCode;
    qryPersonDetailClassification_str: TWideStringField;
    tblADR: TADOQuery;
    DSADR: TDataSource;
    ADRDetail: TADOQuery;
    DSADRDetail: TDataSource;
    addProducts: TADOQuery;
    addProductsFrmRx: TADOQuery;
    tblADRWorker: TADOQuery;
    dsADRWorker: TDataSource;
    qryPersonDetailAgeYears: TIntegerField;
    atnDeleteSingleADRItem: TAction;
    qryPersonIdealWeightpersonPulse_int: TIntegerField;
    qryPersonIdealWeightpersonTemperature_dbl: TFloatField;
    qryPersonIdealWeightpersonBP_str: TStringField;
    qryPersonIdealWeightpersonMUAC_dbl: TFloatField;
    qryPersonIdealWeightpersonRespiratoryRate_str: TStringField;
    qryPersonIdealWeightpersonWeightforHeight_str: TWideStringField;
    qryPersonIdealWeightnotes_str: TWideStringField;
    atnEditADR: TAction;
    atnAddADR: TAction;
    qryProductFormulation: TADOQuery;
    qryProductPacks: TADOQuery;
    dsqryProductFormulation: TDataSource;
    qryProductFormulationGenericName_str: TWideStringField;
    qryProductFormulationstrengthExtraDescription_str: TWideStringField;
    qryProductFormulationroute_str: TWideStringField;
    qryProductFormulationStrengthValue_dbl: TFloatField;
    qryProductFormulationDispensingValue_dbl: TFloatField;
    qryProductFormulationDispensingUnit_str: TWideStringField;
    qryProductFormulationAdministration_str: TWideStringField;
    qryProductFormulationStrengthUnit_Str: TWideStringField;
    qryRoutes: TADOQuery;
    dsRoutes: TDataSource;
    dsForm: TDataSource;
    qryForms: TADOQuery;
    tblAdherence: TADOQuery;
    tblAdherenceWorker: TADOQuery;
    tblAdherenceMeasures: TADOQuery;
    dsAdherenceWorker: TDataSource;
    dsAdherenceMeasures: TDataSource;
    dsAdherence: TDataSource;
    atnAddAdherence: TAction;
    atnEditAdherence: TAction;
    qrySupportMeasures: TADOQuery;
    dsSupportMeasures: TDataSource;
    tblAdherenceMeasuresPatientSupportMeasure_ID: TAutoIncField;
    tblAdherenceMeasuresAdherence_ID: TIntegerField;
    tblAdherenceMeasuresAdherenceSupport_bol: TBooleanField;
    tblAdherenceMeasuresSupportMeasureCode_str: TWideStringField;
    tblAdherenceMeasuresSupportMeasureDescription_str: TWideStringField;
    tblAdherenceMeasuresNotes_mem: TMemoField;
    qrySupportMeasuresSupportMeasure_ID: TAutoIncField;
    qrySupportMeasuresCode_str: TWideStringField;
    qrySupportMeasuresTreatment_str: TWideStringField;
    ppADRBasicReport: TppReport;
    qryADRPatientReport: TADOQuery;
    dsADRPatientReport: TDataSource;
    ppParameterList2: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText23: TppDBText;
    ppDBText26: TppDBText;
    qryADRPatientReportpersonLastName_str: TWideStringField;
    qryADRPatientReportpersonFirstName_str: TWideStringField;
    qryADRPatientReportpersonRefNoCurrent_str: TWideStringField;
    qryADRPatientReportpersonInstitution_str: TWideStringField;
    qryADRPatientReportpersonPAS_str: TWideStringField;
    qryADRPatientReportpersonDOB_Dat: TDateTimeField;
    qryADRPatientReportpersonGender_str: TWideStringField;
    qryADRPatientReportpersonIDNumber_Str: TWideStringField;
    qryADRPatientReportpersonRace_Str: TWideStringField;
    qryADRPatientReportADR_ID: TAutoIncField;
    qryADRPatientReportPerson_ID: TGuidField;
    qryADRPatientReportAdverseReation_bol: TBooleanField;
    qryADRPatientReportProductReaction_bol: TBooleanField;
    qryADRPatientReportADRDate: TDateTimeField;
    qryADRPatientReportDateOnSetReaction: TDateTimeField;
    qryADRPatientReportDescription_str: TMemoField;
    qryADRPatientReportOutComeDeath_bol: TBooleanField;
    qryADRPatientReportOutComeDisability_bol: TBooleanField;
    qryADRPatientReportOutComeCongenitalAnomaly_bol: TBooleanField;
    qryADRPatientReportOutComeIntervention_bol: TBooleanField;
    qryADRPatientReportOutComeLifeThreatening_bol: TBooleanField;
    qryADRPatientReportOutComeHospitalisation_bol: TBooleanField;
    qryADRPatientReportOutComeOther_bol: TBooleanField;
    qryADRPatientReportOutComeOtherExplain: TWideStringField;
    qryADRPatientReportOutComeRechallengeDone_bol: TBooleanField;
    qryADRPatientReportOutComeEventReappeared_bol: TBooleanField;
    qryADRPatientReportOutComeReactionTreatment: TMemoField;
    qryADRPatientReportOutComeRecovered_bol: TBooleanField;
    qryADRPatientReportOutComeSequelae_bol: TBooleanField;
    qryADRPatientReportOutComeDescribeSequelae: TWideStringField;
    qryADRPatientReportOutComeComments: TMemoField;
    qryADRPatientReportUser_ID: TIntegerField;
    qryADRPatientReportUserName_str: TWideStringField;
    qryADRPatientReportLastUpdated_dat: TDateTimeField;
    qryADRPatientReportPosted_bol: TBooleanField;
    qryADRPatientReportPosted_dat: TDateTimeField;
    qryADRPatientReportADRDetail_ID: TAutoIncField;
    qryADRPatientReportADR_ID_1: TIntegerField;
    qryADRPatientReportProductDescription_str: TWideStringField;
    qryADRPatientReportProdCode_ID: TIntegerField;
    qryADRPatientReportProduct_ID: TGuidField;
    qryADRPatientReportBatchNumber_str: TWideStringField;
    qryADRPatientReportExpiryDate_dat: TDateTimeField;
    qryADRPatientReportDailyDosage_dbl: TFloatField;
    qryADRPatientReportRoute_str: TWideStringField;
    qryADRPatientReportDosageForm_str: TWideStringField;
    qryADRPatientReportStrength_dbl: TFloatField;
    qryADRPatientReportDateStarted_dat: TDateTimeField;
    qryADRPatientReportDateStopped_dat: TDateTimeField;
    qryADRPatientReportReasonForUse_str: TWideStringField;
    qryADRPatientReportPackSize_dbl: TFloatField;
    qryADRPatientReportContainer_str: TWideStringField;
    qryADRPatientReportProductAvailable_bol: TBooleanField;
    qryADRPatientReportpersonDescription_str: TWideStringField;
    ppLabel54: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    atnPrintBasicADR: TAction;
    ppLine2: TppLine;
    ppLine1: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBRichText1: TppDBRichText;
    ppLine4: TppLine;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel16: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDBCalc1: TppDBCalc;
    atnPrintADRReport: TAction;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    myDBCheckBox3: TmyDBCheckBox;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    myDBCheckBox4: TmyDBCheckBox;
    myDBCheckBox5: TmyDBCheckBox;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    myDBCheckBox6: TmyDBCheckBox;
    myDBCheckBox7: TmyDBCheckBox;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    myDBCheckBox8: TmyDBCheckBox;
    myDBCheckBox9: TmyDBCheckBox;
    ppLabel27: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLine5: TppLine;
    myDBCheckBox10: TmyDBCheckBox;
    ppLabel28: TppLabel;
    myDBCheckBox11: TmyDBCheckBox;
    ppLabel29: TppLabel;
    ppDBRichText2: TppDBRichText;
    ppLabel30: TppLabel;
    myDBCheckBox12: TmyDBCheckBox;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    myDBCheckBox13: TmyDBCheckBox;
    ppDBRichText4: TppDBRichText;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBText14: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppDBText20: TppDBText;
    ppDBText15: TppDBText;
    ppLabel41: TppLabel;
    ppImage1: TppImage;
    ppLabel11: TppLabel;
    ppLabel42: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel43: TppLabel;
    ppWeightsReport: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText25: TppDBText;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLine3: TppLine;
    ppLine8: TppLine;
    ppLabel52: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel53: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine9: TppLine;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLine10: TppLine;
    ppImage2: TppImage;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppParameterList3: TppParameterList;
    ppDBPipelineWeights: TppDBPipeline;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBText31: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    atnPrintAnthropometries: TAction;
    ppLabel48: TppLabel;
    ppDBText24: TppDBText;
    ppDBText30: TppDBText;
    ppLabel49: TppLabel;
    daDataModule1: TdaDataModule;
    daADOQueryDataView1: TdaADOQueryDataView;
    ppAllergiesReports: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel60: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel61: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel68: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBCalc3: TppDBCalc;
    ppDBText40: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLine14: TppLine;
    ppImage3: TppImage;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    daDataModule2: TdaDataModule;
    daADOQueryDataView2: TdaADOQueryDataView;
    ppParameterList4: TppParameterList;
    ppDBPipelineAllergies: TppDBPipeline;
    ppLabel67: TppLabel;
    atnPrintAllergies: TAction;
    qryAllergyReport: TADOQuery;
    dsAllergyReport: TDataSource;
    qryAllergyReportpersonAllergy_ID: TGuidField;
    qryAllergyReportperson_ID: TGuidField;
    qryAllergyReportproductCode_ID: TIntegerField;
    qryAllergyReportpersonAllergyDateEntered_Dat: TDateTimeField;
    qryAllergyReportpersonAllergyDescription_Str: TWideStringField;
    qryAllergyReportpersonAllergySource_Str: TWideStringField;
    qryAllergyReportpersonAllergyConfirmedBy_Str: TWideStringField;
    qryAllergyReportpersonAllergyStatus_Str: TWideStringField;
    qryAllergyReportpersonAllergyAuthicatedBy_Str: TWideStringField;
    qryAllergyReportpersonAllergyConfirmed_bol: TBooleanField;
    qryAllergyReportallergyName_Str: TWideStringField;
    qryAllergyReportallergyDescription_Str: TWideStringField;
    qryAllergyReportallergyCode_Str: TWideStringField;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppLine13: TppLine;
    ppLabReports: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppLabel55: TppLabel;
    ppLabel62: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel77: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLine17: TppLine;
    ppDetailBand4: TppDetailBand;
    ppDBCalc4: TppDBCalc;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLine18: TppLine;
    ppImage4: TppImage;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    daDataModule3: TdaDataModule;
    daADOQueryDataView3: TdaADOQueryDataView;
    ppParameterList5: TppParameterList;
    ppDBPipelineLabsResults: TppDBPipeline;
    ppLabel89: TppLabel;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    atnPrintLabResults: TAction;
    atnPostADR: TAction;
    ppAdherenceReport: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppLabel86: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel93: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLine21: TppLine;
    ppDetailBand5: TppDetailBand;
    ppFooterBand5: TppFooterBand;
    ppLine22: TppLine;
    ppImage5: TppImage;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppSystemVariable14: TppSystemVariable;
    ppSystemVariable15: TppSystemVariable;
    daDataModule4: TdaDataModule;
    daADOQueryDataView4: TdaADOQueryDataView;
    ppParameterList6: TppParameterList;
    qryAdherenceReport: TADOQuery;
    dsAdherenceReport: TDataSource;
    ppDBAdherence: TppDBPipeline;
    ppLabel97: TppLabel;
    ppLabel104: TppLabel;
    ppDBText65: TppDBText;
    ppLabel105: TppLabel;
    ppDBText67: TppDBText;
    ppLabel106: TppLabel;
    atnPrintAdherenceReport: TAction;
    ppShape3: TppShape;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc5: TppDBCalc;
    ppDBText61: TppDBText;
    ppDBText63: TppDBText;
    ppDBRichText5: TppDBRichText;
    myDBCheckBox14: TmyDBCheckBox;
    ppDBRichText6: TppDBRichText;
    atnPostAdherence: TAction;
    ppDBMemo1: TppDBMemo;
    tblAdherenceWorkerAdherence_ID: TAutoIncField;
    tblAdherenceWorkerPerson_ID: TGuidField;
    tblAdherenceWorkerObservation_dat: TDateTimeField;
    tblAdherenceWorkerLevelOfAdherence_int: TIntegerField;
    tblAdherenceWorkerLevelOfAdherence_str: TWideStringField;
    tblAdherenceWorkerComments_mem: TMemoField;
    tblAdherenceWorkerImprovementPlan_mem: TMemoField;
    tblAdherenceWorkerCaptured_dat: TDateTimeField;
    tblAdherenceWorkerCapturedBy_str: TWideStringField;
    tblAdherenceWorkerPosted_dat: TDateTimeField;
    tblAdherenceWorkerPosted_bol: TBooleanField;
    atnCopyAdherenceRecord: TAction;
    stp_CopyAdherence: TADOStoredProc;
    qrySqlStatements: TADOTable;
    stp_CustomReport: TADOQuery;
    dsstp_CustomReport: TDataSource;
    qryPrescriptionHistoryRxCancelReasonsAfterPosting_str: TWideStringField;
    tblADRWorkerADR_ID: TAutoIncField;
    tblADRWorkerPerson_ID: TGuidField;
    tblADRWorkerAdverseReation_bol: TBooleanField;
    tblADRWorkerProductReaction_bol: TBooleanField;
    tblADRWorkerADRDate: TDateTimeField;
    tblADRWorkerDateOnSetReaction: TDateTimeField;
    tblADRWorkerDescription_str: TMemoField;
    tblADRWorkerOutComeDeath_bol: TBooleanField;
    tblADRWorkerOutComeDisability_bol: TBooleanField;
    tblADRWorkerOutComeCongenitalAnomaly_bol: TBooleanField;
    tblADRWorkerOutComeIntervention_bol: TBooleanField;
    tblADRWorkerOutComeLifeThreatening_bol: TBooleanField;
    tblADRWorkerOutComeHospitalisation_bol: TBooleanField;
    tblADRWorkerOutComeOther_bol: TBooleanField;
    tblADRWorkerOutComeOtherExplain: TWideStringField;
    tblADRWorkerOutComeRechallengeDone_bol: TBooleanField;
    tblADRWorkerOutComeEventReappeared_bol: TBooleanField;
    tblADRWorkerOutComeReactionTreatment: TMemoField;
    tblADRWorkerOutComeRecovered_bol: TBooleanField;
    tblADRWorkerOutComeSequelae_bol: TBooleanField;
    tblADRWorkerOutComeDescribeSequelae: TWideStringField;
    tblADRWorkerOutComeComments: TMemoField;
    tblADRWorkerUser_ID: TIntegerField;
    tblADRWorkerUserName_str: TWideStringField;
    tblADRWorkerLastUpdated_dat: TDateTimeField;
    tblADRWorkerPosted_bol: TBooleanField;
    tblADRWorkerPosted_dat: TDateTimeField;
    tblADRWorkerReportingWorkerName_str: TWideStringField;
    tblADRWorkerReportingAddress_str: TWideStringField;
    tblADRWorkerReporterQualification_str: TWideStringField;
    tblADRWorkerReporterPhone_str: TWideStringField;
    patientDuplicateID: TADOQuery;
    GuidField1: TGuidField;
    WideStringField1: TWideStringField;
    ppDBText19: TppDBText;
    qryADRPatientReportReportingWorkerName_str: TWideStringField;
    qryADRPatientReportReportingAddress_str: TWideStringField;
    qryADRPatientReportReporterQualification_str: TWideStringField;
    qryADRPatientReportReporterPhone_str: TWideStringField;
    ppDBPipeline2: TppDBPipeline;
    ppDBText60: TppDBText;
    ppDBText62: TppDBText;
    ppDBText64: TppDBText;
    ppLabel100: TppLabel;
    ppLabel103: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppDBRichText3: TppDBRichText;
    ppDBText66: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    stp_CopyADR: TADOStoredProc;
    atnCopyADRRecord: TAction;
    ppContactsReport: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppDBText10: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel113: TppLabel;
    ppSystemVariable16: TppSystemVariable;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLine25: TppLine;
    ppLabel120: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBCalc6: TppDBCalc;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText76: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppLine26: TppLine;
    ppImage6: TppImage;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppSystemVariable17: TppSystemVariable;
    ppSystemVariable18: TppSystemVariable;
    daDataModule5: TdaDataModule;
    daADOQueryDataView5: TdaADOQueryDataView;
    ppParameterList7: TppParameterList;
    ppDBPipelineContacts: TppDBPipeline;
    atnPrintContactsReport: TAction;
    qryPersonIdealWeightpersonHaemoglobin_dbl: TFloatField;
    qryPersonIdealWeightpersonBloodGlucose_dbl: TFloatField;
    qryPersonIdealWeightpersonUrineTest_str: TWideStringField;
    qryPersonDetailNationality_str: TWideStringField;
    qryPersonDetailSouthAfricanID_bol: TBooleanField;
    qryPersonDetailForeigner_bol: TBooleanField;
    ppPatientLabelBarCode: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppDBText75: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBBarCode2: TppDBBarCode;
    ppLabel123: TppLabel;
    ppDBText80: TppDBText;
    ppDetailBand7: TppDetailBand;
    ppFooterBand7: TppFooterBand;
    ppParameterList8: TppParameterList;
    ppPatientLabel: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppDBText83: TppDBText;
    ppDBText85: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppLabel126: TppLabel;
    ppDBText90: TppDBText;
    ppDetailBand8: TppDetailBand;
    ppFooterBand8: TppFooterBand;
    raCodeModule1: TraCodeModule;
    ppParameterList9: TppParameterList;
    atnPrintPatientBarCodeLabel: TAction;
    qryVisitExistsForToday: TADOQuery;
    atnAddTodaysVisit: TAction;
    ppDesigner1: TppDesigner;
    atnEditPatientLabel: TAction;
    atnEditBarcodeLabel: TAction;
    qryPersonDetailpersonGreenBox_ID: TGuidField;
    stp_UpdateGBID: TADOQuery;
    qryPatientByGreenBoxID: TADOQuery;
    qryPatientByGreenBoxIDpersonPAS_str: TWideStringField;
    qryPatientByGreenBoxIDpersonIDNumber_str: TWideStringField;
    qryPatientByGreenBoxIDpersonLastName_str: TWideStringField;
    qryPatientByGreenBoxIDpersonFirstName_str: TWideStringField;
    qryPatientByGreenBoxIDpersonRefNoCurrent_str: TWideStringField;
    qryPersonDetailpersonEmployeeNumber_str: TWideStringField;
    qryPrescriptionHistoryvstVisitDate_dat: TDateTimeField;
    qryPrescriptionHistoryDemanderName_Str: TWideStringField;
    qryPatientLabel: TADOQuery;
    dsPatientLabel: TDataSource;
    ppDBText91: TppDBText;
    qryPatientLabelPatientName: TWideStringField;
    qryPatientLabelpersonIDNUmber_str: TWideStringField;
    qryPatientLabelpersonPAS_str: TWideStringField;
    qryPatientLabelpersonDOB_Dat: TDateTimeField;
    qryPatientLabelpersonRefNoCurrent_str: TWideStringField;
    qryPatientLabelpersonTelNoCurrent_str: TWideStringField;
    qryPatientLabelpersonCelNoCurrent_str: TWideStringField;
    qryPatientLabelpersonAddressCurrent_str: TWideStringField;
    qryPatientLabelpersonStatusDesc_str: TWideStringField;
    qryPatientLabelvstSupporterName_str: TWideStringField;
    qryPatientLabelvstSupporterAddress_str: TWideStringField;
    qryPatientLabelvstUpporterPhone_str: TWideStringField;
    qryPatientLabelvstSupporterRelationship_str: TWideStringField;
    qryPatientLabelMedicalAid: TWideStringField;
    qryPatientLabelEmployerDetail: TWideStringField;
    ppDBPipeline3: TppDBPipeline;
    ppDBText92: TppDBText;
    qryPersonDetailpersonBiometricReview_dat: TDateTimeField;
    dsActiveStatusLog: TDataSource;
    atnShowEditHistory: TAction;
    ppReport1: TppReport;
    ppParameterList10: TppParameterList;
    ppHeaderBand9: TppHeaderBand;
    ppDetailBand10: TppDetailBand;
    ppFooterBand9: TppFooterBand;
    ppDPTeeChart1: TppDPTeeChart;
    qryPersonContactcontact_ID: TGuidField;
    qryPersonContactlinking_ID: TGuidField;
    qryPersonContactcontactType_Str: TWideStringField;
    qryPersonContactcontactDetailOrder_Int: TIntegerField;
    qryPersonContactcontactDetail_Str: TWideStringField;
    qryPersonContactcontactDescription_Str: TWideStringField;
    qryPersonContactcontactDisplay_Str: TWideStringField;
    qryPersonContactcontactLine01_str: TWideStringField;
    qryPersonContactcontactLine02_str: TWideStringField;
    qryPersonContactcontactLine03_str: TWideStringField;
    qryPersonContactcontactLine04_str: TWideStringField;
    qryPersonContactcontactMode_str: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryPersonListNewRecord(DataSet: TDataSet);
    procedure qryPersonCommentNewRecord(DataSet: TDataSet);
    procedure qryPersonContactNewRecord(DataSet: TDataSet);
//    procedure qryPersonPositionNewRecord(DataSet: TDataSet);
    procedure qryPersonContactBeforePost(DataSet: TDataSet);
    procedure qryPersonAllergiesNewRecord(DataSet: TDataSet);
    procedure qryPersonMedicalAidNewRecord(DataSet: TDataSet);
    procedure qryPersonIdealWeightNewRecord(DataSet: TDataSet);
    procedure qryPersonContactAfterScroll(DataSet: TDataSet);
    procedure qryPersonDetailBeforePost(DataSet: TDataSet);
    procedure qryLaboratoryResultsNewRecord(DataSet: TDataSet);
    procedure qryLaboratoryResultsAfterPost(DataSet: TDataSet);
    procedure atnSetLabTestNameExecute(Sender: TObject);
    procedure atnSetLabTestCodeExecute(Sender: TObject);
    procedure qryLaboratoryResultstestCode_strChange(Sender: TField);
    procedure atnPrintPatientLabelExecute(Sender: TObject);
    procedure qryPersonIdealWeightpersonWeight_intChange(Sender: TField);
    procedure qryPersonIdealWeightpersonHeight_IntChange(Sender: TField);
    procedure tblADRAfterScroll(DataSet: TDataSet);
    procedure atnDeleteSingleADRItemExecute(Sender: TObject);
    procedure atnEditADRExecute(Sender: TObject);
    procedure atnAddADRExecute(Sender: TObject);
    procedure tblADRWorkerAfterScroll(DataSet: TDataSet);
    procedure ADRDetailNewRecord(DataSet: TDataSet);
    procedure tblAdherenceAfterScroll(DataSet: TDataSet);
    procedure tblAdherenceMeasuresNewRecord(DataSet: TDataSet);
    procedure atnAddAdherenceExecute(Sender: TObject);
    procedure tblAdherenceBeforePost(DataSet: TDataSet);
    procedure tblAdherenceWorkerBeforePost(DataSet: TDataSet);
    procedure atnEditAdherenceExecute(Sender: TObject);
    procedure tblAdherenceNewRecord(DataSet: TDataSet);
    procedure atnPrintBasicADRExecute(Sender: TObject);
    procedure atnPrintADRReportExecute(Sender: TObject);
    procedure atnPrintAnthropometriesExecute(Sender: TObject);
    procedure atnPrintAllergiesExecute(Sender: TObject);
    procedure atnPrintLabResultsExecute(Sender: TObject);
    procedure atnPostADRExecute(Sender: TObject);
    procedure atnPrintAdherenceReportExecute(Sender: TObject);
    procedure atnPostAdherenceExecute(Sender: TObject);
    procedure tblAdherenceMeasuresBeforePost(DataSet: TDataSet);
    procedure atnCopyAdherenceRecordExecute(Sender: TObject);
    procedure atnCopyADRRecordExecute(Sender: TObject);
    procedure atnPrintContactsReportExecute(Sender: TObject);
    procedure atnPrintPatientBarCodeLabelExecute(Sender: TObject);
    procedure atnAddTodaysVisitExecute(Sender: TObject);
    procedure atnEditPatientLabelExecute(Sender: TObject);
    procedure atnEditBarcodeLabelExecute(Sender: TObject);
    procedure qryPersonCommentAfterPost(DataSet: TDataSet);
    procedure atnShowEditHistoryExecute(Sender: TObject);

  private
    { Private declarations }
    FDatabase: string;
    FPatient: string;
    _newGBID: string;
    FSecurity: TSecurity;
    FUserAccess: Integer;
    FUserName : string;
    FUserID : string;
    FUserUniqueName: string;
    FUserPin: string;
    FUserClinic: string;
    FUserClinicID: string;
    FDemander: string;
    CustomReportPATH: string;   
    function GetCurrentDescription: string;
    function GetCurrentPersonDescription: string;
    function GetCurrentPersonID: string;
    procedure SetDatabase(const Value: string);
    procedure SetPatient(const Value: string);
    function GetPatientNumber: string;
    function GetPatientName: string;
    procedure SetupSQL;
    function _Refresh(_dataset: TDataset; _pk: string; _pkValue: string = ''): Boolean;
    procedure WeightCalcs;
    function GetClinicName: string;
    function IsDead: Boolean;
    function CanPostADR: Boolean;
    function CanPostAdherence: Boolean;
    function CopyAdherence: Boolean;
    function CopyADR: Boolean;
    function LoadSqlStatement(pType : integer): boolean;
    procedure PrintPatientLabel;
    procedure PrintPatientBarCodeLabel;
    function PatientVisitAddedToday(patientID: string; vClinic: string): Boolean;
    function CalculateAge(Birthday, CurrentDate: TDate): Integer;
    procedure LoadCustomReports;
    procedure EditCustomLabels(vReport: TppReport);
    function UpdateGBID(GBID: string): Boolean;
    function VerifyPatient(GBID: string; FName: string; LName: string): Boolean;

  public
    vCurrentADRRecord, vCurrentAdherenceRecord :integer;
    patientBioEnrollemt : Boolean;
    procedure SetDatabaseLinks;
    function Add: string;
    procedure Delete(ID: string; askToDelete : boolean = true);
    procedure DoDefaultChecks;
    procedure LabResultAdd;
    procedure LabResultDelete;
    procedure LabResultRefresh;
    procedure PrescriptionAdd;
    procedure PrescriptionEdit(canEdit: Boolean; canEditLabel: Boolean);
    procedure PrescriptionPrint;
    procedure SaveAll;
    procedure SetDatabaseLinksForUpdate(pPatientID : string);
    procedure SetNewNumber;
    procedure SetupCurrentStatus;
    property Database: string read FDatabase write SetDatabase;
    property Patient: string read FPatient write SetPatient;
    property PatientNumber: string read GetPatientNumber;
    property PatientName: string read GetPatientName;
    property Security: TSecurity read FSecurity write FSecurity;
    procedure LogPatientStatusChange(vType: string; vDescription: string; PTNO: string;
    vActive : Boolean; vTemporary : Boolean; vClinic: string; vClass: string; vReason: string);
    procedure LoadADRs;
    procedure LoadADRDetails;
    procedure AddADR;
    procedure EditADR;
    procedure InsertProductFromRx(RxID: string; ADRID: integer);
    procedure RemoveADRSingleItem;
    procedure LoadFormulations;
    procedure LoadRoutes;
    procedure LoadAdherenceRecords;
    procedure AddAdherence;
    procedure EditAdherence;
    procedure LoadAdherenceSupportMeasures;
    procedure LoadAdherenceMeasuresLookUp;
    procedure PreLoadSupportMeasures;
    procedure PrintADRPatientReport;
    procedure PostADR;
    procedure PostAdherence();
    function FindPatientByGreenBoxID(gbpatientID: string): string;
    procedure EnrolPatientOnBioMetric;
    procedure AddTodaysVisitWithBiometricVerification(_verified: Boolean);
    procedure VerifyBioPatient;
    function IsEnrolledonBiometric: Boolean;
    procedure PrescriptionCopy;

    { Public declarations }
  end;

var
  dmPatient: TdmPatient;

implementation

uses SystemGeneralMethods


, rxDispensing_Unt_Patient, RxSolutionUFrm, DLLInterface, PatientRxUFrm,
  ADRDetailUFRM, AdherencePatientRecordUFrm, MainUDM, patientNotesUFrm, frmPatientEditHistoryU,
  frmPatientActiveReasonUFrm;

{$R *.dfm}

procedure TdmPatient.WeightCalcs;
 var
  weight, height, bmi, bsa : double;
begin
 weight := qryPersonIdealWeightpersonWeight_int.Value;
 height := qryPersonIdealWeightpersonHeight_Int.Value;
 //BMI
 bmi := weight / Sqr(height/100); 
 bmi := SimpleRoundTo(bmi, -3);
 qryPersonIdealWeightpersonBMI_dbl.Value := bmi;
 //BSA
 bsa := Power(weight,0.425)*Power(height,0.725)*0.007184;
 bsa := SimpleRoundTo(bsa, -3);
 qryPersonIdealWeightpersonBSA_dbl.Value := bsa;    
end;

//Calculates the age (integer) given the date of birth and the current date
function TdmPatient.CalculateAge(Birthday, CurrentDate: TDate): Integer;
var
  Month, Day, Year, CurrentYear, CurrentMonth, CurrentDay: Word;
begin
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

function TdmPatient.GetCurrentPersonID: string;
begin
  if qryPersonDetail.Active then
    Result := qryPersonDetail.FieldByName('person_ID').AsString
    else
    Result := '';

end;

procedure TdmPatient.SetDatabase(const Value: string);
begin

  FDatabase := Value;
  conPatient.ConnectionString := FDatabase;
  SetDatabaseLinks;                  

end;

procedure TdmPatient.DataModuleCreate(Sender: TObject);
begin

  FDatabase   := '';
  FPatient    := '';

  LoadCustomReports;

end;

procedure TdmPatient.DataModuleDestroy(Sender: TObject);
begin

  SaveAll;

end;

procedure TdmPatient.qryPersonListNewRecord(DataSet: TDataSet);
begin
  with DataSet do
    begin
    FieldByName('person_ID').AsString := CreateClassID;
    end;
end;

procedure TdmPatient.qryPersonCommentNewRecord(DataSet: TDataSet);
begin

  with DataSet do
    begin
    FieldByName('personComment_ID').AsString := CreateClassID;
    FieldByName('person_ID').AsString := GetCurrentPersonID;
    FieldByName('personCommentDate_Dat').AsDateTime := Now;
    end;

 patientNotesFrm.Show;

end;

procedure TdmPatient.qryPersonContactNewRecord(DataSet: TDataSet);
begin
  with DataSet do
    begin
    FieldByName('contact_ID').AsString := CreateClassID;
    FieldByName('linking_ID').AsString := GetCurrentPersonID;
    //FieldByName('personCommentDate_Dat').AsDateTime := Date;
    FieldByName('contactDetailOrder_Int').AsInteger := 0;

    FieldByName('contactDetail_Str').AsString := ' ';
    FieldByName('contactDescription_Str').AsString := ' ';
    FieldByName('contactDisplay_Str').AsString := ' ';
    FieldByName('contactLine01_str').AsString := ' ';
    FieldByName('contactLine02_str').AsString := ' ';
    FieldByName('contactLine03_str').AsString := ' ';
    FieldByName('contactLine04_str').AsString := ' ';
    FieldByName('contactMode_str').AsString := ' ';
    end;

end;

//procedure TdmPatient.qryPersonPositionNewRecord(DataSet: TDataSet);
//begin
//  with DataSet do
//    begin
//    FieldByName('personPosition_ID').AsString := CreateClassID;
//    FieldByName('person_ID').AsString := GetCurrentPersonID;
//    FieldByName('personType_ID').AsString := GetPersonTypeGUID(AREA_PATIENT);
//    FieldByName('rxLevel_ID').AsString := '{7B921630-1D2D-4822-B792-614C54908258}';
//    FieldByName('personPositionStart_Dat').AsDateTime := Date;
//   FieldByName('personPositionNumberNo_Str').AsString := GetNextNumber(qryNumbering, 1, REC_NUM_PATIENT);
//    FieldByName('personPositionEnd_Dat').AsDateTime := Date + 365;
//    FieldByName('personPositionTitle_ID').AsString := '{5C900495-505F-4E1F-9E01-15C414CA94E4}';
//    FieldByName('personPositionPost_ID').AsString := '{5C900495-505F-4E1F-9E01-15C414CA94E4}';
//    FieldByName('personPositionDescription_Str').AsString := ' ';

//    FieldByName('personPositionBarCode_Str').AsString := '1234567890123';
//    FieldByName('personPositionTitle_Str').AsString := 'Mr.';
//    FieldByName('personPositionNumberNo_Str').AsString := '-';
//    FieldByName('personPositionCurrent_bol').AsBoolean := False;
//    FieldByName('specialisation_ID').AsString := '{7058DBD9-2319-4F38-A766-819CCF3AEC61}';
//    FieldByName('complexSiteDepartment_ID').AsString := '{473007A9-F64F-420F-B42E-8ADFBC06F55F}';
//    FieldByName('clinic_ID').AsString := '{1BCD750D-4737-48E2-9B72-0025C5ADF349}';
//    end;

//end;

procedure TdmPatient.qryPersonContactBeforePost(DataSet: TDataSet);
begin

  with DataSet do
    begin
    {
    // removed on 2005 October 20.  Not providing expected results
    FieldByName('contactLine01_str').AsString :=
      TStringUtil.CamelCase(FieldByName('contactLine01_str').AsString);
    FieldByName('contactLine02_str').AsString :=
      TStringUtil.CamelCase(FieldByName('contactLine02_str').AsString);
    FieldByName('contactLine03_str').AsString :=
      TStringUtil.CamelCase(FieldByName('contactLine03_str').AsString);
    FieldByName('contactLine04_str').AsString :=
      TStringUtil.CamelCase(FieldByName('contactLine04_str').AsString);
    }

    FieldByName('contactDisplay_Str').AsString := GetCurrentPersonDescription;
    FieldByName('contactDetail_Str').AsString := GetCurrentDescription;

    //******* Check and log any changes to contact details
    //******* 19 Feb 2015
    if (VarIsNull(FieldByName('contactDetail_Str').OldValue)) then
     if (FieldByName('contactDetail_Str').OldValue <> FieldByName('contactDetail_Str').NewValue) then
           LogPatientStatusChange('Contact', FieldByName('contactDetail_Str').OldValue + ' TO '+ FieldByName('contactDetail_Str').NewValue, qryPersonDetail.FieldByName('personRefNoCurrent_str').AsString,
           qryPersonDetail.FieldByName('personActive_bol').AsBoolean, qryPersonDetail.FieldByName('vstTempPatient_bol').AsBoolean,
           qryPersonDetail.FieldByName('personInstitution_str').AsString, qryPersonDetail.FieldByName('Classification_str').AsString, '');

    end;
end;

procedure TdmPatient.qryPersonAllergiesNewRecord(DataSet: TDataSet);
begin
  with DataSet do
    begin
    FieldByName('personAllergy_ID').AsString := CreateClassID;
    FieldByName('person_ID').AsString := GetCurrentPersonID;
    FieldByName('personAllergyDateEntered_Dat').AsDateTime := Date;
    end;

end;

procedure TdmPatient.qryPersonMedicalAidNewRecord(DataSet: TDataSet);
begin
  with DataSet do
    begin
    FieldByName('personMedicalAid_ID').AsString := CreateClassID;
    FieldByName('person_ID').AsString := GetCurrentPersonID;
    FieldByName('personMedicalAidDateRecorded_Dat').AsDateTime := Date;
    end;

end;

procedure TdmPatient.qryPersonIdealWeightNewRecord(DataSet: TDataSet);
begin
  with DataSet do
    begin
    FieldByName('personWeight_ID').AsString := CreateClassID;
    FieldByName('person_ID').AsString := GetCurrentPersonID;
    FieldByName('personWeightDateRecorded_Dat').AsDateTime := Date;
    end;

end;

procedure TdmPatient.SetPatient(const Value: string);
begin
  FPatient := Value;
  SetDatabaseLinks;
end;

procedure TdmPatient.SetDatabaseLinks;
begin

  if (FDatabase <> '') and (FPatient <> '') then
    begin
    conPatient.Close;
    SetupSQL;
    qryPersonDetail.Parameters.ParamByName('person_ID').Value := FPatient;
    qryPersonAllergies.Parameters.ParamByName('person_ID').Value := FPatient;
    qryPersonComment.Parameters.ParamByName('person_ID').Value := FPatient;
    qryPersonContact.Parameters.ParamByName('person_ID').Value := FPatient;
//    qryPersonPosition.Parameters.ParamByName('person_ID').Value := FPatient;
    qryPersonMedicalAid.Parameters.ParamByName('person_ID').Value := FPatient;
    qryPersonIdealWeight.Parameters.ParamByName('person_ID').Value := FPatient;
    qryPrescriptionHistory.Parameters.ParamByName('person_ID').Value := FPatient;
    qryLaboratoryResults.Parameters.ParamByName('person_ID').Value := FPatient;
    qryCD4Results.Parameters.ParamByName('person_ID').Value := FPatient;
    qryViralLoad.Parameters.ParamByName('person_ID').Value := FPatient;
    tblADR.Parameters.ParamByName('person_ID').Value := FPatient;
    tblAdherence.Parameters.ParamByName('person_ID').Value := FPatient;

    tlkLabTests.Active := True;
    ConnectDataSource(FDatabase, conPatient);
    DoDefaultChecks;
    end;

end;

function TdmPatient.Add: string;
var
  AddQry  :TADOQuery;
  myConn  :TADOConnection;
  mySQLStr: string;
begin


  with RxSolutionFrm.Security.User do
    begin
    FUserUniqueName     := UserName.Value;
    FUserName           := LastName.Value + ', ' + FirstName.Value;
    FUserPin            := Password.Value;
    FUserClinic         := MainDm.GetUserClinic(UserNumID.Value);
    FUserClinicID       := MainDm.GetUserClinicID(UserNumID.Value);
    end;



  Result := '';
  if FDatabase <> '' then
    begin
    FPatient := CreateClassID;

    mySQLStr := 'insert into tblPerson (person_ID) values (''' + FPatient+ '''  )';

    //******** If user has been assigned to a clinic then default new patient to that clinic
    if FUserClinic <> '' then
     begin
     mySQLStr := 'insert into tblPerson (person_ID, personInstitution_str, personInstitution_ID) values (''' + FPatient+ '''';
     mySQLStr := mySQLStr + ', ' + ''''+FUserClinic+'''';
     mySQLStr := mySQLStr + ', ' + ''''+FUserClinicID+'''';
     mySQLStr := mySQLStr + ' )';
     end;

    myConn := TADOConnection.Create(nil);
    myConn.ConnectionString := FDatabase;
    myConn.LoginPrompt := False;
    AddQry := TADOQuery.Create(nil);
    with AddQry do
      try
      AddQry.Connection := myConn;
      myConn.Open;
      AddQry.SQL.Add( mySQLStr );
      AddQry.ExecSQL;
      myConn.Close;
      finally
      AddQry.Free;
      myConn.Free;
      end;
    SetDatabaseLinks;
    SetupCurrentStatus;
    Result := FPatient;
    end;
end;

procedure TdmPatient.Delete(ID: string; askToDelete : boolean = true);
var
  AddQry :TADOQuery;
  myConn  :TADOConnection;
  doDelete    : Boolean;
  delMsg      : String;

begin

  if FDatabase <> '' then
    begin
    doDelete := False;
    myConn := TADOConnection.Create(nil);
    myConn.ConnectionString := FDatabase;
    myConn.LoginPrompt := False;
    AddQry := TADOQuery.Create(nil);
    with AddQry do
      try
      AddQry.Connection := myConn;
      myConn.Open;

      if askToDelete then
        begin
        AddQry.SQL.Add('select * from tblPerson where person_ID = ID');

        AddQry.Parameters.ParamByName('ID').Value := ID;

        AddQry.Open;

        delMsg := 'Delete ' + ' - [' + AddQry.FieldByName('personLastName_Str').AsString + ']';
        if MessageDlg(delMsg, mtConfirmation, [mbYes, mbNo], 0) = mrYes then doDelete := True;
        end
      else
        doDelete := True;

      if doDelete then
        begin
        myConn.BeginTrans;

        try
        AddQry.Close;
        AddQry.SQL.Add('delete from tblPerson where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
//        AddQry.Close;
        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonPosition where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;

        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonQualification where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;

        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonSignature where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonPhoto where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonMedicalAid where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonLaboratoryResult where personID = ''' + ID + '''');
        AddQry.ExecSQL;

        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonAllergy where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonComment where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonWeight where person_ID = ''' + ID + '''');
        AddQry.ExecSQL;
        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from tblPersonLaboratoryResult where PersonID = ''' + ID + '''');
        AddQry.ExecSQL;

        AddQry.SQL.Clear;
        AddQry.SQL.Add('delete from TblPrescription where patient_ID = ''' + ID + '''');
        AddQry.ExecSQL;
          
          myConn.CommitTrans;

          except
            on E:EDatabaseError do myConn.RollbackTrans;
          end;

        end;
      myConn.Close;
      finally
        AddQry.Free;
        myConn.Free;
      end;
    end;
end;

function TdmPatient.GetPatientNumber: string;
begin
{  if qryPersonDetail.Active then
    Result := GetCurrentPositionNumber(qryPersonPosition, GetPersonTypeGUID(AREA_PATIENT))
    else
 }   Result := 'Nil';
end;

function TdmPatient.GetPatientName: string;
begin
  if qryPersonDetail.Active then
    Result := GetPersonFullName(qryPersonDetail)
  else
    Result := 'Nil';
end;

procedure TdmPatient.SetupSQL;
begin
 {
  if FDatabase <> '' then
    with qryPersonPosition do
      begin
      Close;
      SQL.Clear;
      SQL.Add('select * from tblPersonPosition where ((person_ID= :person_ID) AND (personType_ID = ''' + GetPersonTypeGUID(AREA_PATIENT) + ''')) order by personPositionStart_Dat desc');
      end;
  }
end;

procedure TdmPatient.DoDefaultChecks;
begin

//  MessageDlg('DoDefaultChecks', mtWarning, [mbOK], 0);
  {
  with qryPersonPosition do
    if Active then
      if RecordCount < 1 then
        begin
        Append;
        FieldByName('personPositionCurrent_bol').AsBoolean := True;
        Post;
        end;
  }
end;

function TdmPatient.GetCurrentDescription: string;
var
  dispStr, dbStr :string;

begin

  with qryPersonContact do
    if Active then
      begin

      dispStr := '';
      dispStr := Trim(FieldByName('contactLine01_str').AsString);


      if FieldbyName('contactMode_str').AsString = 'Address' then
        begin

        dbStr   := Trim(FieldByName('contactLine02_str').AsString);
        if dbStr <> '' then
          if dispStr <> '' then dispStr := dispStr + ', ' + dbStr;
        dbStr   := Trim(FieldByName('contactLine03_str').AsString);
        if dbStr <> '' then
          if dispStr <> '' then dispStr := dispStr + ', ' + dbStr;
        dbStr   := Trim(FieldByName('contactLine04_str').AsString);
        if dbStr <> '' then
          if dispStr <> '' then dispStr := dispStr + ', ' + dbStr;
        end;

        Result := dispStr;

      end;
end;

function TdmPatient.GetCurrentPersonDescription: string;
begin

  with qryPersonDetail do
    if Active then
      begin
      Result := FieldByName('personLastName_Str').AsString + ', ' + FieldByName('personFirstName_Str').AsString;
      end;

end;

procedure TdmPatient.LabResultAdd;
begin
  qryLaboratoryResults.Insert;
end;

procedure TdmPatient.LabResultDelete;
begin
    qryLaboratoryResults.Delete;
end;

procedure TdmPatient.LabResultRefresh;
begin
    qryLaboratoryResults.Close;
    qryLaboratoryResults.Open;
    qryCD4Results.Close;//SM
    qryCD4Results.Open; //SM
    qryViralLoad.Close;
    qryViralLoad.Open;

end;

procedure TdmPatient.PrescriptionAdd;
begin


// Add DMP 2006 06 30 - prevents this from being in prescription.
{$ifndef RxPrescription_DLL}

 {
  with qryPersonDetail do
   begin
   if Active then
    begin
    if State in [dsEdit, dsInsert] then
     Post;
    end;
   end;
   }     

  try

  if FPatient <> '' then
    begin
    SetupCurrentStatus;
    RxSolutionFrm.RX.Add(FPatient, RxSolutionFrm.Security.User.UserName.Value, RxSolutionFrm.Security.User.Password.Value);

    _Refresh(qryPrescriptionHistory,'prescription_ID');

    end;

  except
  end;

{$endif}

end;

procedure TdmPatient.PrescriptionEdit(canEdit: Boolean; canEditLabel: Boolean);
var
  ID : String;
begin
// Add DMP 2006 06 30 - prevents this from being in prescription.
{$ifndef RxPrescription_DLL}
  try
  if qryPrescriptionHistory.RecordCount > 0 then
    begin
    SetupCurrentStatus;
    ID := qryPrescriptionHistory.FieldByName('prescription_ID').AsString;
    RxSolutionFrm.RX.Edit(ID, canEdit, RxSolutionFrm.Security.User.UserName.Value, canEditLabel, RxSolutionFrm.Security.User.Password.Value);
    _Refresh(qryPrescriptionHistory,'prescription_ID', ID);
    end;

  except
  end;
{$endif}
end;

procedure TdmPatient.PrescriptionPrint;
//mc
const
  ErrMsg = 'TdmPatient.PrescriptionPrint';
var
  ID : String;
begin
// Add DMP 2006 06 30 - prevents this from being in prescription.
{$ifndef RxPrescription_DLL}
  try
  if qryPrescriptionHistory.RecordCount > 0 then
    begin
    SetupCurrentStatus;
    ID := qryPrescriptionHistory.FieldByName('prescription_ID').AsString;
    TDLLInterface.Print__Rx(FDatabase, ID);
    end;

  except
  //mc 07/09/2010
  on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
  end;
{$endif}
end;


procedure TdmPatient.qryPersonContactAfterScroll(DataSet: TDataSet);
var
  str, addStr   : string;
  i, j, k       : integer;

begin
  with qryPersonContact do
    if Active then
      begin

      if FieldbyName('contactLine01_str').AsString = '' then
        if FieldbyName('contactDetail_Str').AsString <> '' then
          begin
          str := FieldbyName('contactDetail_Str').AsString;
          k := 0;
          for i:=1 to 4 do
            begin
            j := AnsiPos(',', str);

            if (j > 0) then
              begin
              addStr := Trim(LeftStr(str, j -1));
              str := RightStr(str, Length(str) - j);
              end;
            if (j = 0) and (k = 0) then
              begin
              addStr := str;
              k := 1;
              end;

            if not (State in [dsEdit, dsInsert]) then Edit;
            FieldByName('contactLine0' + intToStr(i) + '_str').AsString := Trim(addStr);

            addStr := '';

            end;

          end;

      end;
end;

procedure TdmPatient.SetupCurrentStatus;
var
  activeRec : boolean;
  curNumber, cellNum, homeNum, Addr, clinicName, clinicID : String;

  pCFound, pHFound, pAFound, clinicFound : boolean;

begin

 {
  with qryPersonPosition do
    if Active then
      begin
      First;
      activeRec := True;
      while not EOF do
        begin
        Edit;
        if activeRec then
          begin
          curNumber := FieldByName('personPositionNumberNo_Str').AsString;
         
          try
          if FieldByName('clinic_ID').AsString <> '' then
            begin
            clinicName  := qryClinic.FieldByName('clinicName_str').AsString;
            clinicID    := qryClinic.FieldByName('clinic_ID').AsString;
            end else
            begin
            clinicName  := '';
            clinicID    := '';
            end;           

          except
          end;
          end;
        FieldByName('personPositionCurrent_bol').AsBoolean := activeRec;
        activeRec := False;
        Post;
        Next;
        end;
      end;
      }
      
  pCFound := True;
  pHFound := True;
  pAFound := True;

  with qryPersonContact do
    if Active then
      begin
      First;
      while not EOF do
        begin

        if not (State in [dsEdit, dsInsert]) then Edit;

        if FieldbyName('contactType_str').AsString = 'Address (Physical)' then
          begin
          FieldbyName('contactMode_str').AsString := 'Address';
          FieldbyName('contactType_str').AsString := 'Physical';
          end;

        if FieldbyName('contactType_str').AsString = 'Phone (Home)' then
          begin
          FieldbyName('contactMode_str').AsString := 'Phone';
          FieldbyName('contactType_str').AsString := 'Home';
          end;

        Post;

        if FieldByName('contactMode_str').AsString = 'Cell Phone' then
          begin
          if pCFound then cellNum := FieldByName('contactDetail_str').AsString;
          pCFound    := False;
          end;

        if FieldByName('contactMode_str').AsString = 'Phone' then
          begin
          if pHFound then homeNum := FieldByName('contactDetail_str').AsString;
          pHFound := False;
          end;

        if FieldByName('contactMode_str').AsString = 'Address' then
          begin
          if pAFound then Addr := FieldByName('contactDetail_str').AsString;
          pAFound:= False;
          end;
        Next;
        end;
      end;
   
  with qryPersonDetail do
    if Active then
      begin
      if not (State in [dsEdit, dsInsert]) then Edit;
//      FieldByName('personRefNoCurrent_str').AsString := curNumber;
      FieldByName('personCelNoCurrent_str').AsString := cellNum;
      FieldByName('personTelNoCurrent_str').AsString := homeNum;
      FieldByName('personAddressCurrent_str').AsString := Addr;
      Post;
      end;


end;

procedure TdmPatient.qryPersonDetailBeforePost(DataSet: TDataSet);
var
  prvKnownName: string;
  prvLastName: string;
  prvFirstName: string;
  prvEnrollDate: TDatetime;
  prvRegDate : TDatetime;

  ipn, messErr,  Cohort : string;
  vActive, vtemp : boolean;
  vClinic, vClass, vActiveReasonChange: string;
  vfrmReason: TRXReason;
begin

 vfrmReason := TRXReason.Create;

  with RxSolutionFrm.Security.User do
    begin
    FUserUniqueName     := UserName.Value;
    FUserName           := LastName.Value + ', ' + FirstName.Value;
    FUserPin            := Password.Value;
    FUserClinic         := MainDm.GetUserClinic(UserNumID.Value);
    FUserClinicID       := MainDm.GetUserClinicID(UserNumID.Value);
    FUserID             := MainDm.GetUserUniqueID(UserNumID.Value);
    end;

  with Dataset do
    begin

    vActive := FieldByName('personActive_bol').asBoolean;
    vtemp   := FieldByName('vstTempPatient_bol').asBoolean;
    vClinic := FieldByName('personInstitution_str').AsString;
    vClass  := FieldByName('Classification_str').asString;


    prvFirstName  := FieldByName('personFirstName_Str').AsString;
    prvLastName   := FieldByName('personLastName_Str').AsString;
    prvKnownName  := FieldByName('personKnownName_Str').AsString;
    prvEnrollDate := FieldByName('personDateJoined_dat').AsDateTime;
    prvRegDate    := FieldByName('personRegisteredInSys_dat').AsDateTime;


    FieldByName('personDescription_str').AsString :=
      TPerson.DisplayName_Long(prvFirstName, prvLastName, prvKnownName);
    {
    FieldByName('personFirstName_Str').AsString := prvFirstName;
    FieldByName('personLastName_Str').AsString := prvLastName;
    FieldByName('personKnownName_Str').AsString := prvKnownName;
    }
    FieldByName('personDispenser_bol').AsBoolean := False;
    FieldByName('personPrescriber_bol').AsBoolean := False;
    FieldByName('personPatient_bol').AsBoolean := True;

    FieldByName('sysLastEditedBy_str').AsString := FUserName;
    FieldByName('sysLastEdited_dat').AsDateTime := Now;
//    FieldByName('sysLastEditedBy_ID').AsString := FUserID;

    FieldByName('personStatusDesc_str').AsString := 'Age: '+ IntToStr(CalculateAge(FieldByName('personDOB_Dat').AsDateTime, Now))+' '+
    'Gender: ' + FieldByName('personGender_Str').AsString +' '+
    'Race: '+ FieldByName('personRace_Str').AsString +' '+
    'Marital: '+ FieldByName('personMaritalStatus_str').AsString;

    //******* SM
    
    //FieldByName('personInstitution_str').AsString := qryClinic.FieldByName('ClinicName_str').AsString;
    //If this is blank then don't look for it. 
    if (FieldByName('personInstitution_ID').AsString <> '') then
     FieldByName('personInstitution_str').AsString := MainDm.GetClinicName(FieldByName('personInstitution_ID').AsString);
     
//Check Date of Enrollment. If empty then alert user
{ if FieldByName('personDateJoined_dat').AsDateTime < (Date -360*20) then
  begin
  MEssageDlg('Please enter a valid enrollment date for the patient before you save ', mtWarning, [mbOK], 0);
  Abort;
  end;
}

 //Marked dead but active
 if IsDead and (FieldByName('personActive_bol').AsBoolean) and (FieldByName('personActive_bol').OldValue = FieldByName('personActive_bol').NewValue) then
  begin
  if (MessageDlg('Patient is marked as deceased. Would you like to de-activate the patient record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
   begin
   FieldByName('personActive_bol').AsBoolean     := False;
   FieldByName('vstTempPatient_bol').AsBoolean   := False;
   end;
  end;

 //Marked dead but not active
 if IsDead and (FieldByName('personActive_bol').OldValue <> FieldByName('personActive_bol').NewValue) and (FieldByName('personActive_bol').NewValue)
  and (not FieldByName('personActive_bol').OldValue)  then
  begin
  if (MessageDlg('Patient is marked as deceased. Would you like to re-activate the patient record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
   begin
   FieldByName('personActive_bol').AsBoolean     := True;
   end;
  end;


 // Logging any changes made to Patient Profile
 if (not VarIsNull(FieldByName('vstTempPatient_bol').OldValue)) then
  if FieldByName('vstTempPatient_bol').OldValue <> FieldByName('vstTempPatient_bol').NewValue then
   LogPatientStatusChange( HST_TMP,IfThen(FieldByName('vstTempPatient_bol').OldValue, 'True','False') +' to '+ IFThen(FieldByName('vstTempPatient_bol').NewValue, 'True','False'), FieldByName('personRefNoCurrent_str').AsString, vActive, vtemp, vClinic, vClass, '');

{ if (not VarISNULL(FieldByName('Classification_ID').OldValue)) then
  if FieldByName('Classification_ID').OldValue <> FieldByName('Classification_ID').NewValue then
   LogPatientStatusChange( HST_CLS, FieldByName('Classification_ID').OldValue +' to '+ FieldByName('Classification_ID').NewValue, '',vActive, vtemp, vClinic, vClass);
 }
 if FieldByName('personInstitution_str').OldValue <> FieldByName('personInstitution_str').NewValue then
  LogPatientStatusChange(HST_CLN, FieldByName('personInstitution_str').OldValue +' to '+ FieldByName('personInstitution_str').NewValue, '', vActive, vtemp, vClinic, vClass, '');

 if FieldByName('personActive_bol').OldValue <> FieldByName('personActive_bol').NewValue then
  begin
  vActiveReasonChange := vfrmReason.Show(FieldByName('personActive_bol').OldValue);
  LogPatientStatusChange(HST_ACT, IfThen(FieldByName('personActive_bol').OldValue, 'True','False') +' to '+ IfThen(FieldByName('personActive_bol').NewValue, 'True','False'), FieldByName('personRefNoCurrent_str').AsString, vActive, vtemp, vClinic, vClass, vActiveReasonChange);
  end;

 if FieldByName('Foreigner_bol').OldValue <> FieldByName('Foreigner_bol').NewValue then
  LogPatientStatusChange(HST_FOR, IfThen(FieldByName('Foreigner_bol').OldValue,'True','False') +' to '+ IfThen(FieldByName('Foreigner_bol').NewValue, 'True','False'), FieldByName('personRefNoCurrent_str').AsString, vActive, vtemp, vClinic, vClass, '');

// if (VarISNULL(FieldByName('personDateDeceased_dat').OldValue)) then
   if (not VarISNULL(FieldByName('personDateDeceased_dat').NewValue)) then
    if ((FieldByName('personDateDeceased_dat').OldValue) <> (FieldByName('personDateDeceased_dat').NewValue)) then
     if (FieldByName('personDateDeceased_dat').NewValue) then
      LogPatientStatusChange(HST_DEC, 'Patient deceased', FieldByName('personRefNoCurrent_str').AsString, False, vtemp, vClinic, vClass, '');

 if (not VarIsNULL(FieldByName('personPAS_str').OldValue)) then
  if FieldByName('personPAS_str').OldValue <> FieldByName('personPAS_str').NewValue then
   LogPatientStatusChange(HST_PAS, FieldByName('personPAS_str').OldValue +' to '+ FieldByName('personPAS_str').NewValue, FieldByName('personRefNoCurrent_str').AsString, vActive, vtemp, vClinic, vClass, '');

 if (not VarIsNULL(FieldByName('personRefNoCurrent_str').OldValue)) then
  if FieldByName('personRefNoCurrent_str').OldValue <> FieldByName('personRefNoCurrent_str').NewValue then
   LogPatientStatusChange(HST_IPN, FieldByName('personRefNoCurrent_str').OldValue +' to '+ FieldByName('personRefNoCurrent_str').NewValue, FieldByName('personRefNoCurrent_str').OldValue, vActive, vtemp, vClinic, vClass, '');

 if (not VarIsNULL(FieldByName('personLastName_str').OldValue)) then
  if FieldByName('personLastName_str').OldValue <> FieldByName('personLastName_str').NewValue then
   LogPatientStatusChange(HST_SURNAME, FieldByName('personLastName_str').OldValue +' to '+ FieldByName('personLastName_str').NewValue, FieldByName('personRefNoCurrent_str').AsString, vActive, vtemp, vClinic, vClass, '');

 if (not VarIsNULL(FieldByName('personFirstName_str').OldValue)) then
  if FieldByName('personFirstName_str').OldValue <> FieldByName('personFirstName_str').NewValue then
   LogPatientStatusChange(HST_NAME, FieldByName('personFirstName_str').OldValue +' to '+ FieldByName('personFirstName_str').NewValue, FieldByName('personRefNoCurrent_str').AsString, vActive, vtemp, vClinic, vClass, '');

 if (not VarIsNULL(FieldByName('personKnownName_Str').OldValue)) then
  if FieldByName('personKnownName_Str').OldValue <> FieldByName('personKnownName_Str').NewValue then
   LogPatientStatusChange(HST_NAM, FieldByName('personKnownName_Str').OldValue +' to '+ FieldByName('personKnownName_Str').NewValue, FieldByName('personRefNoCurrent_str').AsString, vActive, vtemp, vClinic, vClass, '');

 if (not VarIsNULL(FieldByName('personIDNumber_Str').OldValue)) then
  if FieldByName('personIDNumber_Str').OldValue <> FieldByName('personIDNumber_Str').NewValue then
   LogPatientStatusChange(HST_ID, FieldByName('personIDNumber_Str').OldValue +' to '+ FieldByName('personIDNumber_Str').NewValue, FieldByName('personRefNoCurrent_str').AsString, vActive, vtemp, vClinic, vClass, '');

 if (not VarIsNULL(FieldByName('personGender_Str').OldValue)) then
  if FieldByName('personGender_Str').OldValue <> FieldByName('personGender_Str').NewValue then
   LogPatientStatusChange(HST_GEN, FieldByName('personGender_Str').OldValue +' to '+ FieldByName('personGender_Str').NewValue, FieldByName('personRefNoCurrent_str').AsString, vActive, vtemp, vClinic, vClass, '');

 if (not VarIsNULL(FieldByName('personRace_Str').OldValue)) then
  if FieldByName('personRace_Str').OldValue <> FieldByName('personRace_Str').NewValue then
   LogPatientStatusChange(HST_RCE, FieldByName('personRace_Str').OldValue +' to '+ FieldByName('personRace_Str').NewValue, FieldByName('personRefNoCurrent_str').AsString, vActive, vtemp, vClinic, vClass, '');

 //Log Biometric enrolment
 if (VarIsNULL(FieldByName('personGreenBox_ID').OldValue)) then
  if (not VarIsNULL(FieldByName('personGreenBox_ID').NewValue)) then
   LogPatientStatusChange(HST_BIO, 'Patient enrolled on biometric system', FieldByName('personRefNoCurrent_str').AsString, vActive, vtemp, vClinic, vClass, '');

 //Update classification str here
 if qryPatientClass.Active then
     if qryPatientClass.RecordCount > 0 then
      FieldByName('Classification_str').AsString := qryPatientClass.FieldByName('Description_str').Asstring;
    end;

 vfrmReason.Free;
end;

procedure TdmPatient.SetDatabaseLinksForUpdate(pPatientID : string);
begin


    qryPrescriptionHistory.Close;
    qryPersonAllergies.Close;
    qryPersonComment.Close;
    qryPersonContact.Close;
//    qryPersonPosition.Close;
    qryPersonMedicalAid.Close;
    qryPersonIdealWeight.Close;
    qryLaboratoryResults.Close;
    qryCD4Results.Close;
    qryViralLoad.Close;
    qryPatientClass.Close;
    tblADR.Close;
    tblAdherence.Close;

    SetupSQL;

    qryPrescriptionHistory.Parameters.ParamByName('person_ID').Value := pPatientID;
    qryPersonAllergies.Parameters.ParamByName('person_ID').Value := pPatientID;
    qryPersonComment.Parameters.ParamByName('person_ID').Value := pPatientID;
    qryPersonContact.Parameters.ParamByName('person_ID').Value := pPatientID;
//    qryPersonPosition.Parameters.ParamByName('person_ID').Value := pPatientID;
    qryPersonMedicalAid.Parameters.ParamByName('person_ID').Value := pPatientID;
    qryPersonIdealWeight.Parameters.ParamByName('person_ID').Value := pPatientID;
    qryLaboratoryResults.Parameters.ParamByName('person_ID').Value := pPatientID;
    qryCD4Results.Parameters.ParamByName('person_ID').Value := pPatientID;
    qryViralLoad.Parameters.ParamByName('person_ID').Value := pPatientID;
    tblADR.Parameters.ParamByName('person_ID').Value := pPatientID;
    tblAdherence.Parameters.ParamByName('person_ID').Value := pPatientID;

    qryPrescriptionHistory.Open;
    qryPersonAllergies.Open;
    qryPersonComment.Open;
    qryPersonContact.Open;
//    qryPersonPosition.Open;
    qryPersonMedicalAid.Open;
    qryPersonIdealWeight.Open;
    qryLaboratoryResults.Open;
    qryCD4Results.Open;
    qryViralLoad.Open;
    qryPatientClass.Open;
    tblADR.Open;
    tblAdherence.Open;
    qryHealthCareReg.Open;

    DoDefaultChecks;
    SetupCurrentStatus;


end;

procedure TdmPatient.SetNewNumber;
var
  pArea   : string;
  pPostID : string;
  pNum    : string;
  pRxID   : string;
  ovr     : boolean;
begin

{  with qryPersonPosition do
    begin

    ovr := True;

    pNum := FieldByName('personPositionNumberNo_Str').AsString;   //current IPN number stored in tblpersonposition, wanna change use tblperson

    if pNum <> '' then
      if MessageDlg('Number exists, Overwrite?', mtWarning, [mbYes, mbNo, mbCancel],0) <> mrYes then
      ovr := False;

    if ovr then
      begin
      if not (state in [dsEdit, dsInsert]) then Edit;
      pArea := 'Patient';
//      pPostID := FieldByName('personPositionPost_ID').AsString;
      FieldByName('personPositionNumberNo_Str').AsString := GetNextPrescriberDispenserNumber(pArea, FDatabase);
//      pRxID := GetDefaultRxLevel(FDatabase, pPostID);
      if pRxID <> '' then FieldByName('rxLevel_ID').AsString := pRxID;
      end;
    end; }


  with qryPersonDetail do
    begin
    ovr := True;
    pNum := FieldByName('personRefNoCurrent_str').AsString;
    if pNum <> '' then
      if MessageDlg('Number exists, Overwrite?', mtWarning, [mbYes, mbNo, mbCancel],0) <> mrYes then
      ovr := False;

    if ovr then
      begin
      if not (state in [dsEdit, dsInsert]) then Edit;
      pArea := 'Patient';
      FieldByName('personRefNoCurrent_str').AsString := GetNextPrescriberDispenserNumber(pArea, FDatabase);
      if FieldByName('personPAS_str').AsString = '' then
        FieldByName('personPAS_str').AsString := FieldByName('personRefNoCurrent_str').AsString;
      end;
    end;

end;

procedure TdmPatient.qryLaboratoryResultsNewRecord(DataSet: TDataSet);
begin
 with DataSet do
  begin
  FieldByName('personID').AsString := qryPersonDetail.FieldByName('person_ID').AsString;
  FieldByName('lbResultID').AsString := CreateClassID;
  FieldByName('testCode_str').AsString := 'CD4';
  FieldByName('testName_str').AsString := 'CD4 Count';
  FieldByName('testResult_str').AsString := '0';
  FieldByName('testResult_dbl').AsFloat := 0;
  FieldByName('testDate_dat').AsDateTime := Date;
  FieldByName('testPlace_str').AsString := '<Not Recorded>';
  end;
end;

procedure TdmPatient.qryLaboratoryResultsAfterPost(DataSet: TDataSet);
begin
if (qryCD4Results.Active) and (qryViralLoad.Active) then
 begin
 qryCD4Results.Active := False;
 qryCD4Results.Active := True;
 qryViralLoad.Active := False;
 qryViralLoad.Active := True;
 end;
end;

procedure TdmPatient.SaveAll;
begin
  SetupCurrentStatus;  // makes sure that one position status is active

  if qryPersonDetail.State in [dsedit, dsinsert] then qryPersonDetail.Post;
  if qryPersonAllergies.State in [dsedit, dsinsert] then qryPersonAllergies.Post;
  if qryPersonComment.State in [dsedit, dsinsert] then qryPersonComment.Post;
  if qryPersonContact.State in [dsedit, dsinsert] then qryPersonContact.Post;
//  if qryPersonPosition.State in [dsedit, dsinsert] then qryPersonPosition.Post;

  if qryPersonMedicalAid.State in [dsedit, dsinsert] then qryPersonMedicalAid.Post;
  if qryPersonIdealWeight.State in [dsedit, dsinsert] then qryPersonIdealWeight.Post;
  if qryClinic.State in [dsedit, dsinsert] then qryClinic.Post;
  if qryPersonType.State in [dsedit, dsinsert] then qryPersonType.Post;
  if qryPrescriptionHistory.State in [dsedit, dsinsert] then qryPrescriptionHistory.Post;
  if qryLaboratoryResults.State in [dsedit, dsinsert] then qryLaboratoryResults.Post;

end;

function TdmPatient._Refresh(_dataset: TDataset; _pk: string; _pkValue: string
    = ''): Boolean;
var
  pkValue : string;
begin

  Result := False;
  if Assigned(_dataset) then
    if _dataset.Active then
      try
      with _dataset do
        try
        DisableControls;
        // Get the cursor position
        if _pk <> '' then
          if _pkValue = '' then
            pkValue := FieldByName(_pk).AsString
            else
            pkValue := _pkValue;
        Close;
        Open;
        if _pk <> '' then
          if pkValue <> '' then Locate(_pk, pkValue, []);
        Result := True;
        except
        end;
      finally
        _dataset.EnableControls;
      end;
end;

procedure TdmPatient.atnSetLabTestNameExecute(Sender: TObject);
begin
 tlkLabTests.Locate('testCode_str',qryLaboratoryResultstestCode_str.Value,[]);
 qryLaboratoryResultstestName_str.Value := tlkLabTeststestName_str.Value;
end;

procedure TdmPatient.atnSetLabTestCodeExecute(Sender: TObject);
begin
 tlkLabTests.Locate('testName_str',qryLaboratoryResultstestName_str.Value,[]);
 qryLaboratoryResultstestCode_str.Value := tlkLabTeststestCode_str.Value;
end;

procedure TdmPatient.qryLaboratoryResultstestCode_strChange(
  Sender: TField);
begin
 atnSetLabTestCode.Enabled := False;
 atnSetLabTestName.Enabled := True;
 atnSetLabTestName.Execute;
end;



procedure TdmPatient.atnPrintPatientLabelExecute(Sender: TObject);
begin

  SaveAll;
  PrintPatientLabel;

end;

procedure TdmPatient.qryPersonIdealWeightpersonWeight_intChange(
  Sender: TField);
begin
if ((qryPersonIdealWeightpersonHeight_Int.Value > 0) AND (qryPersonIdealWeightpersonWeight_int.Value > 0)) then
 WeightCalcs;
end;

procedure TdmPatient.qryPersonIdealWeightpersonHeight_IntChange(
  Sender: TField);
begin
if ((qryPersonIdealWeightpersonHeight_Int.Value > 0) AND (qryPersonIdealWeightpersonWeight_int.Value > 0)) then
 WeightCalcs;
end;

function TdmPatient.GetClinicName : string;
begin
 with qryClinic do
  begin
  if not Active then
   Open;
  First;
  if Locate('clinic_ID', qryPersonDetail.FieldByName('personInstitution_ID').AsString, []) then
   Result := FieldByName('clinicName_str').AsString
  else
   Result := '';
  end;

end;

procedure TdmPatient.LogPatientStatusChange(vType: string; vDescription: string; PTNO: string; vActive : Boolean; vTemporary : Boolean; vClinic: string; vClass: string; vReason: string);
begin
 {
 with tblActiveStatusLog do
  begin
  Close;
  Open;
  Append;
  FieldByName('person_ID').AsString     := qryPersonDetailperson_ID.Value;
  FieldByName('state_bol').AsBoolean    := state_bol;
  FieldByName('type_str').AsString      := type_str;
  FieldByName('userid').AsString         := RxSolutionFrm.Security.User.OID.Value;
  FieldByName('username_str').Value     := RxSolutionFrm.Security.User.LastName.Value+', '+RxSolutionFrm.Security.User.FirstName.Value;
  FieldByName('changeDate_dat').AsDateTime := Now();

  if (type_str = 'Active') or (type_str = 'Temp') then
   begin
    if FieldByName('state_bol').AsBoolean then
     FieldByName('state_str').AsString    := 'True'
    else
     FieldByName('state_str').AsString    := 'False';
    end
  else
   FieldByName('state_str').AsString    := qryPatientClass.FieldByName('Description_str').AsString;
        
  Post;
  Close;
  end;    }

 with tblActiveStatusLog do
  begin
  Open;
  Append;
  FieldByName('person_ID').AsString             := qryPersonDetailperson_ID.Value;
  FieldByName('userid').Value                   := RxSolutionFrm.Security.User.OID.Value;
  FieldByName('username_str').AsString          := RxSolutionFrm.Security.User.LastName.Value+', '+RxSolutionFrm.Security.User.FirstName.Value;
  FieldByName('changeDate_dat').AsDateTime      := Now();
  FieldByName('active_bol').AsBoolean           := vActive;
  FieldByName('temporary_bol').AsBoolean        := vTemporary;
  FieldByName('class_str').AsString             := vClass;
  FieldByName('clinic_str').AsString            := vClinic;
  FieldByName('Description_str').AsString       := vDescription;
  FieldByName('OldPtno_str').AsString           := PTNO;
  FieldByName('Type_str').AsString              := vType;
  FieldByName('Reason_str').AsString            := vReason;
  
  if Length(RxSolutionFrm.FDefaultDemander)>0 then
   FieldByName('station_str').AsString           := MainDm.GetDefaultDemanderName(RxSolutionFrm.FDefaultDemander)
  else
   FieldByName('station_str').AsString := '';

  Post;
  Close;
  end;

end;

function TdmPatient.IsDead: Boolean;
begin

 with qryPersonDetail do
  begin
  if FieldByName('personDateDeceased_dat').AsDateTime > (Date - 360*100) then
   Result := True
  else
   Result := False;
  end;

end;
           
procedure TdmPatient.LoadADRs;
begin
 //
 with tblADR do
  begin
  Close;
  Parameters.ParamByName('person_ID').Value := FPatient;
  Open;
  end;

end;

procedure TdmPatient.LoadADRDetails;
begin
 with ADRDetail do
  begin
  Close;
  Parameters.ParamByName('ADR_ID').Value := vCurrentADRRecord;
  Open;
  end;
 {
 //Load Products Formulations
 LoadFormulations;
 //Load Routes
 LoadRoutes;
 }

end;  

procedure TdmPatient.AddADR;
begin

 with tblADR do
  begin
  Append;
  FieldByName('Person_ID').Value := qryPersonDetail.fieldByname('person_ID').Value;
  FieldByName('AdverseReation_bol').AsBoolean   := False;
  FieldByName('ProductReaction_bol').AsBoolean  := False;
  FieldByName('Posted_bol').AsBoolean           := False;
  FieldByName('DateOnSetReaction').AsDateTime   := Date;
  Post;

  vCurrentADRRecord := FieldByName('ADR_ID').AsInteger;
  end;
  
 EditADR;
end;

procedure TdmPatient.EditADR;
begin
 with tblADRWorker do
  begin
  Close;
  Parameters.ParamByName('@ADR_ID').Value := vCurrentADRRecord;
  Open;
  end;

  LoadADRDetails;

end;

procedure TdmPatient.InsertProductFromRx(RxID: string; ADRID: integer);
begin
 //
 with addProductsFrmRx do
  begin
  Parameters.ParamByName('@ADR_ID').Value:= vCurrentADRRecord;
  Parameters.ParamByName('@RX_ID').Value := RxID;     
  ExecSQL;
  end; 
end;

procedure TdmPatient.tblADRAfterScroll(DataSet: TDataSet);
begin
 with tblADR do
  begin
  vCurrentADRRecord := fieldByName('ADR_ID').AsInteger;
  end;                
end;

procedure TdmPatient.RemoveADRSingleItem;
begin
 with ADRDetail do
  begin
  if Active then
   if RecordCount > 0 then
    if MessageDlg('Are you sure you want to delete this item?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
     Delete;
  end;
end;

procedure TdmPatient.atnDeleteSingleADRItemExecute(Sender: TObject);
begin
 RemoveADRSingleItem;
end;

procedure TdmPatient.atnEditADRExecute(Sender: TObject);
begin
 EditADR;
 ADRDetailForm.ShowADRForm;
 tblADR.Close;
 tblADR.Open;
end;

procedure TdmPatient.atnAddADRExecute(Sender: TObject);
begin
 AddADR;
 ADRDetailForm.ShowADRForm;
 tblADR.Close;
 tblADR.Open;
end;

procedure TdmPatient.tblADRWorkerAfterScroll(DataSet: TDataSet);
begin
 with tblADRWorker do
  begin
  vCurrentADRRecord := FieldByName('ADR_ID').AsInteger;
  end;
end;

procedure TdmPatient.ADRDetailNewRecord(DataSet: TDataSet);
begin
 //
 with tblADRWorker do
  begin
  if State in [dsEdit, dsInsert] then Post;
  end;


 with ADRDetail do
  begin
  fieldByName('ADR_ID').AsInteger := vCurrentADRRecord;
  end;
  
end;

procedure TdmPatient.LoadFormulations;
begin  
 with qryProductFormulation do
  begin
  Close;
  Open;
  end;       
end;

procedure TdmPatient.LoadRoutes;
begin
 with qryRoutes do
  begin
  Close;
  Open;
  end;

end;

procedure TdmPatient.LoadAdherenceRecords;
begin

 with tblAdherence do
  begin
  Close;
  Parameters.ParamByName('person_ID').Value := FPatient;
  Open;
  end;

end;

procedure TdmPatient.AddAdherence;
begin

 with tblAdherence do
  begin
  Close;
  Open;
  Append;
  FieldByName('person_ID').Value := qryPersonDetail.fieldByname('person_ID').Value;
  Post;

  vCurrentAdherenceRecord := FieldByName('Adherence_ID').AsInteger;
  end;

  EditAdherence;     
  PreLoadSupportMeasures;

end;

procedure TdmPatient.EditAdherence;
begin
 //********
 with tblAdherenceWorker do
  begin
  Close;
  Parameters.ParamByName('Adherence_ID').Value := vCurrentAdherenceRecord;
  Open;
  end;

 //********* Load Support Measures
 LoadAdherenceSupportMeasures;
//Load look up table
// LoadAdherenceMeasuresLookUp;

end;

procedure TdmPatient.LoadAdherenceSupportMeasures;
begin

 with tblAdherenceMeasures do
  begin
  Close;
  Parameters.ParamByName('Adherence_ID').Value := vCurrentAdherenceRecord;
  Open;
  end;

end;

procedure TdmPatient.tblAdherenceAfterScroll(DataSet: TDataSet);
begin
 with tblAdherence do
  begin
  vCurrentAdherenceRecord := FieldByName('Adherence_ID').AsInteger;
  end;
end;

procedure TdmPatient.tblAdherenceMeasuresNewRecord(DataSet: TDataSet);
begin
 with tblAdherenceMeasures do
  begin
  FieldByName('Adherence_ID').AsInteger := vCurrentAdherenceRecord;
  end;
end;

procedure TdmPatient.atnAddAdherenceExecute(Sender: TObject);
begin
 AddAdherence;
 AdherencePatientRecordFrm.ShowAdeherenceDetails;
 tblAdherence.Close;
 tblAdherence.Open;
end;

procedure TdmPatient.tblAdherenceBeforePost(DataSet: TDataSet);
begin
 with tblAdherence do
  begin
  FieldByName('CapturedBy_str').asString := RxSolutionFrm.Security.User.LastName.Value+', '+RxSolutionFrm.Security.User.FirstName.Value;
  end;
end;

procedure TdmPatient.tblAdherenceWorkerBeforePost(DataSet: TDataSet);
begin
 with tblAdherenceWorker do
  begin
  FieldByName('CapturedBy_str').asString := RxSolutionFrm.Security.User.LastName.Value+', '+RxSolutionFrm.Security.User.FirstName.Value;
  end;
end;

procedure TdmPatient.atnEditAdherenceExecute(Sender: TObject);
begin

 if tblAdherence.RecordCount > 0 then
  begin
  EditAdherence;
  AdherencePatientRecordFrm.ShowAdeherenceDetails;
  tblAdherence.Close;
  tblAdherence.Open;
  end;  
end;

procedure TdmPatient.LoadAdherenceMeasuresLookUp;
begin

 with qrySupportMeasures do
  begin
  Close;
  Open;
  end;    
end;

procedure  TdmPatient.PreLoadSupportMeasures;
begin

 qrySupportMeasures.First;

 with tblAdherenceMeasures do
  begin
   while not qrySupportMeasures.Eof do
    begin
    Append;
    FieldByName('Adherence_ID').AsInteger := vCurrentAdherenceRecord;
    FieldByName('AdherenceSupport_bol').AsBoolean := False;
    FieldByName('SupportMeasureCode_str').AsString  := qrySupportMeasures.FieldByname('Code_str').AsString;
    FieldByName('SupportMeasureDescription_str').AsString  := qrySupportMeasures.FieldByname('Treatment_str').AsString;
    Post;
    qrySupportMeasures.Next;
    end;
  end;
end;

procedure TdmPatient.tblAdherenceNewRecord(DataSet: TDataSet);
begin
 with tblAdherence do
  begin
  FieldByName('LevelOfAdherence_str').AsString  := 'Low';
  end;
end;

procedure TdmPatient.PrintADRPatientReport;
begin    
//********* Make sure all current data is saved first.
 with tblADRWorker do
  begin
  if State in [dsEdit, dsInsert] then
   Post;
  end;
//********* Load Current ADR data
 with qryADRPatientReport do
  begin
  Close;
  Parameters.ParamByName('Person_ID').Value     := FPatient;
  Parameters.ParamByName('ADR_ID').Value        := vCurrentADRRecord;
  Open;
  end;
 //********* Print ADR Details
 with ppADRBasicReport do
  begin
  {
   if LoadSqlStatement(0) then
    begin
    //Change the datasource of the DB pipe line to point to user defined report query
    DBPipeline2.DataSource := dsstp_CustomReport;
    //Load from file
    Template.FileName := ExtractFilePath(Application.ExeName) + 'tmp\ADR01.rtm';
    Template.LoadFromFile;
    end;
  }
  Print;
  end;
end;

procedure TdmPatient.atnPrintBasicADRExecute(Sender: TObject);
begin
 PrintADRPatientReport;
end;

procedure TdmPatient.atnPrintADRReportExecute(Sender: TObject);
begin
 PrintADRPatientReport;
end;

procedure TdmPatient.atnPrintAnthropometriesExecute(Sender: TObject);
begin

 with qryPersonIdealWeight do
  begin
  if State in [dsEdit, dsInsert] then
   Post;
  end;

 with ppWeightsReport do
  begin
  Print;
  end;

 with ppReport1 do
  begin
  Print;
  end;

end;

procedure TdmPatient.atnPrintAllergiesExecute(Sender: TObject);
begin

 with qryPersonAllergies do
  begin
  if State in [dsEdit, dsInsert] then
   Post;
  end;

 with qryAllergyReport do
  begin
  Close;
  Parameters.ParamByName('Person_ID').Value := FPatient;
  Open;
  end;

 with ppAllergiesReports do
  begin
  Print;
  end;

end;

procedure TdmPatient.atnPrintLabResultsExecute(Sender: TObject);
begin

 with qryLaboratoryResults do
  begin
  if State in [dsEdit, dsInsert] then
   Post;
  end;

 with ppLabReports do
  begin
  Print;
  end;

end;

procedure TdmPatient.atnPostADRExecute(Sender: TObject);
begin

 if CanPostADR then
  begin
  PostADR();
  if ADRDetailForm.Active then
   ADRDetailForm.SortDisplay();
  end;

end;

function TdmPatient.CanPostADR: Boolean;
begin
 Result := True;
end;

procedure TdmPatient.PostADR();
begin

 with tblADRWorker do
  begin
  if (not FieldByName('Posted_bol').AsBoolean) then
   begin
   if not (State in [dsEdit, dsInsert]) then Edit;
   FieldByName('Posted_dat').AsDateTime := Now();
   FieldByName('Posted_bol').AsBoolean  := True;
   Post;
   end;
  end;

end;

procedure TdmPatient.atnPrintAdherenceReportExecute(Sender: TObject);
begin
 //********* Open Report data
 with qryAdherenceReport do
  begin
  Close;
  Parameters.ParamByName('Adherence_ID').Value := vCurrentAdherenceRecord;
  Open;
  end;
 //********* Run/Preview Report
 with ppAdherenceReport do
  begin
  Print;
  end;

end;

function TdmPatient.CanPostAdherence: Boolean;
begin
 Result := True;
end;

procedure TdmPatient.atnPostAdherenceExecute(Sender: TObject);
begin
 if CanPostAdherence then
  begin
  PostAdherence();
  if AdherencePatientRecordFrm.Active then
   AdherencePatientRecordFrm.SortDisplay();
  end;

end;

procedure TdmPatient.PostAdherence();
begin
 with tblAdherenceWorker do
  begin
  if not (State in [dsEdit, dsInsert]) then Edit;
  FieldByName('Posted_dat').AsDateTime := Now();
  FieldByName('Posted_bol').AsBoolean  := True;
  Post;
  end;
end;

procedure TdmPatient.tblAdherenceMeasuresBeforePost(DataSet: TDataSet);
begin

 //********* If User captures a 'Note' for each Suppport Measure then make 'AdherenceSupport_bol' field equal 'true'
 //********* SM - 31/07/2012
 with tblAdherenceMeasures do
  begin
  if (not FieldByName('Notes_mem').IsNull) then
   FieldByName('AdherenceSupport_bol').AsBoolean := True;
  end;

end;

function TdmPatient.CopyAdherence: Boolean;
begin
 //********* Copy Adherence records in the background
 try
 //********* Execute Stored Peocedure 'stp_AdhrenceCopy'
 //********* SM - 31/07/2012
 with stp_CopyAdherence do
  begin
  Parameters.ParamByName('@PatientID').Value    := qryPersonDetail.FieldByName('person_ID').Value;
  Parameters.ParamByName('@AdherenceID').Value  := tblAdherence.FieldByName('Adherence_ID').Value;
  Parameters.ParamByName('@userName').Value     := RxSolutionFrm.Security.User.LastName.Value+', '+RxSolutionFrm.Security.User.FirstName.Value;
  ExecProc;
  end;
  Result := True;
 except
  Result := False;
 end;

end;

function TdmPatient.CopyADR: Boolean;
begin
 //********* Copy ADR records in the background
 try
 //********* Execute Stored Peocedure 'stp_ADRCopy'
 //********* SM - 13/12/2012
 with stp_CopyADR do
  begin
  Parameters.ParamByName('@PatientID').Value    := qryPersonDetail.FieldByName('person_ID').Value;
  Parameters.ParamByName('@ADRID').Value        := tblADR.FieldByName('ADR_ID').Value;
  Parameters.ParamByName('@userName').Value     := RxSolutionFrm.Security.User.LastName.Value+', '+RxSolutionFrm.Security.User.FirstName.Value;
  ExecProc;
  end;
  Result := True;
 except
  Result := False;
 end;

end;

procedure TdmPatient.atnCopyAdherenceRecordExecute(Sender: TObject);
begin 
 //********* SM - 31/07/2012
 if CopyAdherence then
  begin
  MessageDlg('Adherence record copied.', mtInformation, [mbOk], 1);
  //******** Reload/Refresh Adherence Records
  LoadAdherenceRecords;
  end
 else
  MessageDlg('Unable to make a copy of the Adherence record', mtError, [mbOk], 1);

end;

function TdmPatient.LoadSqlStatement(pType : integer): boolean;
var
 sql_str : string;
begin

 try
  with qrySqlStatements do
   begin
   Close;
   Open;
   if recordCount > 0 then
    sql_str := qrySqlStatements.FieldByName('Patient_ADR').AsString
   else
    Result := False;
   end;

  with stp_CustomReport do
   begin
   if (qrySqlStatements.RecordCount > 0) then
    if (not VarISNull(sql_str)) and (FileExists(ExtractFilePath(Application.ExeName) + 'tmp\ADR01.rtm')) then
     begin
     Active := False;
     SQL.Clear;
     SQL.Add(sql_str);
     ParamCheck := True;
     Parameters.ParamByName('@ADRID').Value := vCurrentADRRecord;
     Active := True;
     end;
   end;
   Result := True;
   
 except
  Result := False;
 end;
 
end;

procedure TdmPatient.atnCopyADRRecordExecute(Sender: TObject);
begin
    //********* SM - 13/12/2012
 if CopyADR then
  begin
  MessageDlg('ADR record copied.', mtInformation, [mbOk], 1);
  //******** Reload/Refresh ADR Records
  LoadADRs;
  end
 else
  MessageDlg('Unable to make a copy of the ADR record', mtError, [mbOk], 1);

end;

procedure TdmPatient.atnPrintContactsReportExecute(Sender: TObject);
begin

 with qryPersonContact do
  begin
  Close;
  Open;
  end;

 with ppContactsReport do
  begin
  Print;
  end;

end;

procedure TdmPatient.PrintPatientLabel;
begin

{
 if (not PatientVisitAddedToday('')) then
  begin
  MessageDlg('Please add todays visit for this patient if they are on site.', mtInformation, [mbOk], 0);
  end;
         
  with qryMedicalAid do
   begin
   if State in[dsEdit, dsInsert] then Post;
   end;
}

 with qryPersonDetail do
  begin
  if State in [dsEdit, dsInsert] then
   Post;
  end;

 with qryPatientLabel do
  begin
  Close;
  Open;
  end;

 //******** Check if Custom Label available
 //******** SM 17 Feb 2014
  with ppPatientLabel do
   begin
   Print;
   end;  

end;

procedure TdmPatient.LoadCustomReports;
begin

  CustomReportPATH := Application.GetNamePath(); 
  //Load Path if Label found
  if (FileExists(CustomReportPATH + 'labels\rx_patient_label.rtm')) then
     begin
     ppPatientLabel.Template.FileName := CustomReportPATH + 'labels\rx_patient_label.rtm';
     ppPatientLabel.Template.LoadFromFile;
     end;
     
  //Load Path if Label found
  if (FileExists(CustomReportPATH + 'labels\rx_patientbarcode_label.rtm')) then
     begin
     ppPatientLabelBarCode.Template.FileName := CustomReportPATH + 'labels\rx_patientbarcode_label.rtm';
     ppPatientLabelBarCode.Template.LoadFromFile;
     end;

end;

procedure TdmPatient.EditCustomLabels(vReport: TppReport);
begin
 //******* SM 17 Feb 2014
 LoadCustomReports;
 try
  with ppDesigner1 do
   begin
   Report := vReport;
   Show;
   end;
 except
  on E:Exception do MessageDlg(e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TdmPatient.PrintPatientBarCodeLabel;
begin

 with ppPatientLabelBarCode do
   begin
   Print;
   end;

end;

procedure TdmPatient.atnPrintPatientBarCodeLabelExecute(Sender: TObject);
begin
 SaveAll;
 PrintPatientBarCodeLabel;
end;

function TdmPatient.PatientVisitAddedToday(patientID: string; vClinic: string): Boolean;
begin

// Result := False;

 with qryVisitExistsForToday do
  begin
  Close;
  Parameters.ParamByName('person_id').Value := patientID;
  Parameters.ParamByName('clinic').Value := vClinic;
  Parameters.ParamByName('visitDate').Value := Date;
  Open;
  if FieldByName('Result').AsInteger > 0 then
   begin
   Result := True;
   end
  else
   Result := False;
  end;

end;

procedure TdmPatient.atnAddTodaysVisitExecute(Sender: TObject);
var
 PID: string;
begin

 with RxSolutionFrm do
  FDemander := MainDm.GetDefaultDemanderName(FDefaultDemander);

 with RxSolutionFrm.Security.User do
    begin
    FUserUniqueName     := UserName.Value;
    FUserName           := LastName.Value + ', ' + FirstName.Value;
    FUserPin            := Password.Value;
    FUserClinic         := MainDm.GetUserClinic(UserNumID.Value);
    end;                  

 PID := qryPersonDetail.FieldByName('person_ID').Value;

 if (not PatientVisitAddedToday(PID, FUserClinic)) then
  begin
  with qryHealthCareReg do
   begin
   if (not Active) then Open;

   Append;
   FieldByName('Patient_ID').Value               := PID;
   FieldByName('Date_dat').Value                 := Now;  //Default to today's date
   FieldByName('CompletedBy_str').Value          := FUserName;
   FieldByName('ConsultingRoom_str').Value       := FDemander;     //Demander/Clinic assigned to the PC
   FieldByName('Clinic_str').Value               := FUserClinic;   //Clinic assigned tot he user
   FieldByName('HeadCountUnder5_bol').Value      := (CalculateAge(qryPersonDetail.FieldByName('personDOB_Dat').AsDateTime, Now) < 5);
   FieldByName('HeadCountOver5_bol').Value       := (CalculateAge(qryPersonDetail.FieldByName('personDOB_Dat').AsDateTime, Now) > 5);
   Post;
   end;
  end;


end;

procedure TdmPatient.atnEditPatientLabelExecute(Sender: TObject);
begin
 //****** Edit Patient Label
 EditCustomLabels(ppPatientLabel);
end;

procedure TdmPatient.atnEditBarcodeLabelExecute(Sender: TObject);
begin
 EditCustomLabels(ppPatientLabelBarCode);
end;

procedure TdmPatient.qryPersonCommentAfterPost(DataSet: TDataSet);
begin
 //******** SM 10/03/2014
 if patientNotesFrm.Active then
  patientNotesFrm.Close;

end;

function TdmPatient.FindPatientByGreenBoxID(gbpatientID: string): string;
begin
 Result := '';
 try
 with qryPatientByGreenBoxID do
  begin
  Close;
  Parameters.ParamByName('gbpatientID').Value := gbpatientID;
  Open;

  if (RecordCount > 0) then
   Result := fieldByname('personPAS_str').AsString
  else
   Result := ''; 
  end;
 except
  Result := '';
 end;

end;

function TdmPatient.UpdateGBID(GBID: string): Boolean;
var
 G: TGuidField;
begin

 try
  with stp_UpdateGBID do
   begin
   Parameters.ParamByName('person_ID').Value :=  FPatient;
   Parameters.ParamByName('GBID').Value := '{' + GBID + '}';
   ExecSQL;
   end;
  Result := True;
 except
  Result := False;
 end;

end;

procedure TdmPatient.EnrolPatientOnBioMetric;
var
 str, reEnrolMSG: string;
 _doEnrol, _reEnrol: Boolean;
 _corrID: string;
 _IDNum, _firstName, _surname: string;
begin

 reEnrolMSG := 'Are you sure you want to enrol the patient again?';
 _doEnrol := False;
 _reEnrol := False;

 //Set patient table to Editable
 with qryPersonDetail do
  begin
  _corrID := FieldByName('personGreenBox_ID').AsString;
  _IDNum  := FieldByName('personIDNumber_str').AsString;
  _firstName := FieldByName('personfirstName_str').AsString;
  _surname := FieldByName('personLastName_str').AsString;
                 
  if (State in [dsEdit, dsInsert]) then Post;

  if not (State in [dsEdit, dsInsert]) then
   Edit;        
  end;

 if _corrID <> '' then
  begin
  if MessageDlg(reEnrolMSG, mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin _doEnrol := True; _reEnrol := True end
  else _doEnrol := False;
  end
 else
  _doEnrol := True;

 //******* GreenBox ID Bridge takes Unique Id without the Curley { } brackets
 //******* Therefore we remove '{' and '}' at the beginning and at the thend of the GUID respectively
 if _corrID <> '' then
  begin
  _corrID := StringReplace(_corrID, '{', '',  [rfReplaceAll]);
  _corrID := StringReplace(_corrID, '}', '',  [rfReplaceAll]);
  end;

if _doEnrol then
 begin
  try   //'2B66BDF7-CACF-48A7-80CE-94C5E03163FK';//
  //******** Use GreenBox Interface Bridge to Enrol Patient
   str := RxSolutionFrm.GreenBoxBridge.Enrol(_corrID, _IDNum, _firstName, _surname);
  except
   MessageDlg(RxSolutionFrm.GreenBoxBridge.LastErrorMessage, mtError, [mbOk], 0);
   //Abort;
  end;

// if (not VarIsNull(str)) then
 if (str <> '') then
  if (FindPatientByGreenBoxID(str) <> '') and (str <> _corrID) then  // might need to include the curly brackets here... 
   begin
   MessageDlg('These fingerprints belong to someone else. Patient already enrolled as ' + #13 + #13
     + qryPatientByGreenBoxIDpersonLastName_str.AsString
     + ' ' + qryPatientByGreenBoxIDpersonFirstName_str.AsString + #13
     + ' ID : ' + qryPatientByGreenBoxIDpersonIDNumber_str.AsString + #13
     + ' PAS : ' + qryPatientByGreenBoxIDpersonPAS_str.AsString + #13
     + ' IPN : ' + qryPatientByGreenBoxIDpersonRefNoCurrent_str.AsString, mtWarning, [mbOk], 0);
   //Abort;
   end;

 //******* Must check if returned ID is not Blank
// if (not VarIsNull(str)) then
 if (str <> '') then
  with qryPersonDetail do
   begin
   FieldByName('personGreenBox_ID').AsString := '{'+ str + '}';
   //Date Last updated  SM 08 May 2014
   FieldByName('personBiometricReview_dat').AsDateTime := Now();
   end;
 end;
end; 

function TdmPatient.VerifyPatient(GBID: string; FName: string; LName: string): Boolean;
begin

 try
  Result := RxSolutionFrm.GreenBoxBridge.Verify(GBID, FName, LName, (not RxSolutionFrm.FBioMachineWithScannerOnly));
 except
  MessageDlg(RxSolutionFrm.GreenBoxBridge.LastErrorMessage, mtError, [mbOk], 0);
  Result := False;
 end;

end; 

procedure TdmPatient.VerifyBioPatient;
var
 _ID, _FName, _LName: string;
 _verified : Boolean;
begin

 with qryPersonDetail do
  begin
  _ID := FieldByName('personGreenBox_ID').AsString;
  _FName := FieldByName('personFirstName_str').AsString;
  _LName := FieldByName('personLastName_str').AsString;
  end;

  //******* SM 19 Mar 2014
  //******* GreenBox Service store the GUID as a STRING
  //******* Therefore we remove '{' and '}' at the beginning and at the end of the GUID respectively
  _ID := StringReplace(_ID, '{', '',  [rfReplaceAll]);
  _ID := StringReplace(_ID, '}', '',  [rfReplaceAll]);

 _verified := VerifyPatient(_ID, _FName, _LName);

end;

procedure TdmPatient.AddTodaysVisitWithBiometricVerification(_verified: Boolean);
var
 PID: string;
begin

 with RxSolutionFrm do
  FDemander := MainDm.GetDefaultDemanderName(FDefaultDemander);

 with RxSolutionFrm.Security.User do
    begin
    FUserUniqueName     := UserName.Value;
    FUserName           := LastName.Value + ', ' + FirstName.Value;
    FUserPin            := Password.Value;
    FUserClinic         := MainDm.GetUserClinic(UserNumID.Value);
    end;

 PID := qryPersonDetail.FieldByName('person_ID').Value;

 if (not PatientVisitAddedToday(PID, FUserClinic)) then
  with qryHealthCareReg do
   begin
   if (not Active) then Open;

   Append;
   FieldByName('Patient_ID').Value               := PID;
   FieldByName('Date_dat').Value                 := Now;  //Default to today's date
   FieldByName('CompletedBy_str').Value          := FUserName;
   FieldByName('ConsultingRoom_str').Value       := FDemander;
   FieldByName('Clinic_str').Value               := FUserClinic;
   FieldByName('HeadCountUnder5_bol').Value      := (CalculateAge(qryPersonDetail.FieldByName('personDOB_Dat').AsDateTime, Now) < 5);
   FieldByName('HeadCountOver5_bol').Value       := (CalculateAge(qryPersonDetail.FieldByName('personDOB_Dat').AsDateTime, Now) > 5);
   Post;
   end;
   
end;

function TdmPatient.IsEnrolledonBiometric: Boolean;
begin

 with qryPersonDetail do
  begin
  Result := (FieldByName('personGreenBox_ID').AsString <> '') OR VarISNull(FieldByName('personGreenBox_ID').AsString);
  end;

end;

procedure TdmPatient.atnShowEditHistoryExecute(Sender: TObject);
begin
 //SM Show Patient Edit History
 frmPatientEditHistory.Show;
 
end;

procedure TdmPatient.PrescriptionCopy;
var
  ID : String;
begin

  try
  if qryPrescriptionHistory.RecordCount > 0 then
    begin
    SetupCurrentStatus;
    ID := qryPrescriptionHistory.FieldByName('prescription_ID').AsString;
    RxSolutionFrm.RX.CopyRx(ID, FUserUniqueName, FUserPin);
    _Refresh(qryPrescriptionHistory,'prescription_ID', ID);
    end;

  except
  end;

  
end;

end.
