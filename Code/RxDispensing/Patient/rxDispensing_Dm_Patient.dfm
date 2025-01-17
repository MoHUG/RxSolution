object dmPatient: TdmPatient
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 321
  Top = 178
  Height = 816
  Width = 1385
  object conPatient: TADOConnection
    CommandTimeout = 180
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=rxsolution;Persist Security Info=Tr' +
      'ue;User ID=sa;Initial Catalog=RxBarCoding;Data Source=.\sqlexpre' +
      'ss'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 17
  end
  object qryPersonDetail: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    BeforePost = qryPersonDetailBeforePost
    Parameters = <
      item
        Name = 'person_ID'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT tblPerson.*, view_abstract_V01_Person_.AgeInYears_Int AS ' +
        'AgeYears '
      'FROM tblPerson '
      
        'LEFT OUTER JOIN view_abstract_V01_Person_ ON tblPerson.Person_ID' +
        '=view_abstract_V01_Person_.person_ID'
      'WHERE (tblPerson.person_ID = :person_ID)')
    Left = 103
    Top = 17
    object qryPersonDetailperson_ID: TGuidField
      FieldName = 'person_ID'
      FixedChar = True
      Size = 38
    end
    object qryPersonDetailpersonIDNumber_Str: TWideStringField
      FieldName = 'personIDNumber_Str'
    end
    object qryPersonDetailpersonLastName_Str: TWideStringField
      FieldName = 'personLastName_Str'
      Size = 30
    end
    object qryPersonDetailpersonFirstName_Str: TWideStringField
      FieldName = 'personFirstName_Str'
      Size = 30
    end
    object qryPersonDetailpersonKnownName_Str: TWideStringField
      FieldName = 'personKnownName_Str'
      Size = 50
    end
    object qryPersonDetailpersonInitials_Str: TWideStringField
      FieldName = 'personInitials_Str'
      Size = 10
    end
    object qryPersonDetailpersonDOB_Dat: TDateTimeField
      FieldName = 'personDOB_Dat'
    end
    object qryPersonDetailpersonGender_Str: TWideStringField
      FieldName = 'personGender_Str'
      Size = 1
    end
    object qryPersonDetailpersonReviewed_Dat: TDateTimeField
      FieldName = 'personReviewed_Dat'
    end
    object qryPersonDetailpersonActive_Bol: TBooleanField
      FieldName = 'personActive_Bol'
    end
    object qryPersonDetailpersonRace_Str: TWideStringField
      FieldName = 'personRace_Str'
      Size = 50
    end
    object qryPersonDetailpersonLanguageNarrative_Str: TWideStringField
      FieldName = 'personLanguageNarrative_Str'
      Size = 30
    end
    object qryPersonDetailpersonLanguageWritten_Str: TWideStringField
      FieldName = 'personLanguageWritten_Str'
      Size = 30
    end
    object qryPersonDetailpersonAgeYears_int: TIntegerField
      FieldName = 'personAgeYears_int'
    end
    object qryPersonDetailpersonAgeMonths_int: TIntegerField
      FieldName = 'personAgeMonths_int'
    end
    object qryPersonDetailpersonDescription_str: TWideStringField
      FieldName = 'personDescription_str'
      Size = 150
    end
    object qryPersonDetailpersonRefNoCurrent_str: TWideStringField
      FieldName = 'personRefNoCurrent_str'
    end
    object qryPersonDetailpersonTelNoCurrent_str: TWideStringField
      FieldName = 'personTelNoCurrent_str'
    end
    object qryPersonDetailpersonCelNoCurrent_str: TWideStringField
      FieldName = 'personCelNoCurrent_str'
    end
    object qryPersonDetailpersonAddressCurrent_str: TWideStringField
      FieldName = 'personAddressCurrent_str'
      Size = 255
    end
    object qryPersonDetailpersonRegistrationNo_str: TWideStringField
      FieldName = 'personRegistrationNo_str'
    end
    object qryPersonDetailpersonInstitution_str: TWideStringField
      FieldName = 'personInstitution_str'
      Size = 200
    end
    object qryPersonDetailpersonPatient_bol: TBooleanField
      FieldName = 'personPatient_bol'
    end
    object qryPersonDetailpersonPrescriber_bol: TBooleanField
      FieldName = 'personPrescriber_bol'
    end
    object qryPersonDetailpersonDispenser_bol: TBooleanField
      FieldName = 'personDispenser_bol'
    end
    object qryPersonDetailpersonOther_bol: TBooleanField
      FieldName = 'personOther_bol'
    end
    object qryPersonDetailsysLastEdited_dat: TDateTimeField
      FieldName = 'sysLastEdited_dat'
    end
    object qryPersonDetailsysLastEditedBy_ID: TGuidField
      FieldName = 'sysLastEditedBy_ID'
      FixedChar = True
      Size = 38
    end
    object qryPersonDetailsysLastEditedBy_str: TWideStringField
      FieldName = 'sysLastEditedBy_str'
      Size = 30
    end
    object qryPersonDetailsysDeleted_bol: TBooleanField
      FieldName = 'sysDeleted_bol'
    end
    object qryPersonDetailpersonDateDeceased_dat: TDateTimeField
      FieldName = 'personDateDeceased_dat'
    end
    object qryPersonDetailpersonStatus_Str: TWideStringField
      FieldName = 'personStatus_Str'
      Size = 50
    end
    object qryPersonDetailpersonStatusChangeDate_dat: TDateTimeField
      FieldName = 'personStatusChangeDate_dat'
    end
    object qryPersonDetailpersonPead_bol: TBooleanField
      FieldName = 'personPead_bol'
    end
    object qryPersonDetailpersonDateJoined_dat: TDateTimeField
      FieldName = 'personDateJoined_dat'
    end
    object qryPersonDetailpersonStatusDesc_str: TWideStringField
      FieldName = 'personStatusDesc_str'
      Size = 150
    end
    object qryPersonDetailpersonPAS_str: TWideStringField
      FieldName = 'personPAS_str'
    end
    object qryPersonDetailpersonInstitution_ID: TGuidField
      FieldName = 'personInstitution_ID'
      FixedChar = True
      Size = 38
    end
    object qryPersonDetailpersonNaive_Bol: TBooleanField
      FieldName = 'personNaive_Bol'
    end
    object qryPersonDetailpersonNaiveDate_Dat: TDateTimeField
      FieldName = 'personNaiveDate_Dat'
    end
    object qryPersonDetailpersonClintech_ID: TIntegerField
      FieldName = 'personClintech_ID'
    end
    object qryPersonDetailpersonMaritalStatus_str: TWideStringField
      FieldName = 'personMaritalStatus_str'
      Size = 10
    end
    object qryPersonDetailpersonDeceased_bol: TBooleanField
      FieldName = 'personDeceased_bol'
    end
    object qryPersonDetailpersonDefaulted_bol: TBooleanField
      FieldName = 'personDefaulted_bol'
    end
    object qryPersonDetailpersonDefaulted_dat: TDateTimeField
      FieldName = 'personDefaulted_dat'
    end
    object qryPersonDetailpersonPAAB_ID: TWideStringField
      FieldName = 'personPAAB_ID'
      Size = 25
    end
    object qryPersonDetailpersonRegisteredInSys_bol: TBooleanField
      FieldName = 'personRegisteredInSys_bol'
    end
    object qryPersonDetailpersonRegisteredInSys_dat: TDateTimeField
      FieldName = 'personRegisteredInSys_dat'
    end
    object qryPersonDetailpersonTransferredIn_bol: TBooleanField
      FieldName = 'personTransferredIn_bol'
    end
    object qryPersonDetailpersonTransferredInDate_dat: TDateTimeField
      FieldName = 'personTransferredInDate_dat'
    end
    object qryPersonDetailpersonTransferredInFrom_str: TWideStringField
      FieldName = 'personTransferredInFrom_str'
      Size = 50
    end
    object qryPersonDetailpersonTransferredOut_bol: TBooleanField
      FieldName = 'personTransferredOut_bol'
    end
    object qryPersonDetailpersonTransferredOutDate_dat: TDateTimeField
      FieldName = 'personTransferredOutDate_dat'
    end
    object qryPersonDetailpersonTransferredOutTo_str: TWideStringField
      FieldName = 'personTransferredOutTo_str'
      Size = 50
    end
    object qryPersonDetailvstPregnancyDeliveryDate_dat: TDateTimeField
      FieldName = 'vstPregnancyDeliveryDate_dat'
    end
    object qryPersonDetailvstFunctionalStatus_str: TWideStringField
      FieldName = 'vstFunctionalStatus_str'
      FixedChar = True
      Size = 10
    end
    object qryPersonDetailvstClinicalStage_str: TWideStringField
      FieldName = 'vstClinicalStage_str'
      FixedChar = True
      Size = 10
    end
    object qryPersonDetailvstRegimenChange_From_str: TWideStringField
      FieldName = 'vstRegimenChange_From_str'
      Size = 50
    end
    object qryPersonDetailvstRegimenChange_To_str: TWideStringField
      FieldName = 'vstRegimenChange_To_str'
      Size = 50
    end
    object qryPersonDetailvstRegimenChange_Reason_str: TWideStringField
      FieldName = 'vstRegimenChange_Reason_str'
      Size = 50
    end
    object qryPersonDetailvstVisitDate_dat: TDateTimeField
      FieldName = 'vstVisitDate_dat'
    end
    object qryPersonDetailvstNextVisit_dat: TDateTimeField
      FieldName = 'vstNextVisit_dat'
    end
    object qryPersonDetailvstScheduledVisit_dat: TDateTimeField
      FieldName = 'vstScheduledVisit_dat'
    end
    object qryPersonDetailpersonpregnant_bol: TBooleanField
      FieldName = 'personpregnant_bol'
    end
    object qryPersonDetailvstHeight_dbl: TFloatField
      FieldName = 'vstHeight_dbl'
    end
    object qryPersonDetailvstLostToFollowUpDate_dat: TDateTimeField
      FieldName = 'vstLostToFollowUpDate_dat'
    end
    object qryPersonDetailvstRegimenStart_str: TWideStringField
      FieldName = 'vstRegimenStart_str'
      Size = 50
    end
    object qryPersonDetailvstRegimenStartDate_dat: TDateTimeField
      FieldName = 'vstRegimenStartDate_dat'
    end
    object qryPersonDetailvstTreatmentEligibility_str: TWideStringField
      FieldName = 'vstTreatmentEligibility_str'
      Size = 50
    end
    object qryPersonDetailvstTreatmentStopped_date_dat: TDateTimeField
      FieldName = 'vstTreatmentStopped_date_dat'
    end
    object qryPersonDetailvstWeight_dbl: TFloatField
      FieldName = 'vstWeight_dbl'
    end
    object qryPersonDetailvstCohort_str: TWideStringField
      FieldName = 'vstCohort_str'
      FixedChar = True
      Size = 10
    end
    object qryPersonDetailvstTempPatient_bol: TBooleanField
      FieldName = 'vstTempPatient_bol'
    end
    object qryPersonDetailReasonForEligibility_Str: TWideStringField
      FieldName = 'ReasonForEligibility_Str'
      Size = 50
    end
    object qryPersonDetailvstSupporterName_str: TWideStringField
      FieldName = 'vstSupporterName_str'
      Size = 30
    end
    object qryPersonDetailvstSupporterAddress_str: TWideStringField
      FieldName = 'vstSupporterAddress_str'
      Size = 50
    end
    object qryPersonDetailvstUpporterPhone_str: TWideStringField
      FieldName = 'vstUpporterPhone_str'
      Size = 50
    end
    object qryPersonDetailvstSupporterRelationship_str: TWideStringField
      FieldName = 'vstSupporterRelationship_str'
    end
    object qryPersonDetailClassification_ID: TIntegerField
      FieldName = 'Classification_ID'
    end
    object qryPersonDetailvstIsOnSite_bol: TBooleanField
      FieldName = 'vstIsOnSite_bol'
    end
    object qryPersonDetailvstOnSiteDate_dat: TDateTimeField
      FieldName = 'vstOnSiteDate_dat'
    end
    object qryPersonDetailDiagnosis_dat: TDateTimeField
      FieldName = 'Diagnosis_dat'
    end
    object qryPersonDetailARTStart_dat: TDateTimeField
      FieldName = 'ARTStart_dat'
    end
    object qryPersonDetailEntryPoint_str: TWideStringField
      FieldName = 'EntryPoint_str'
    end
    object qryPersonDetailClassification_str: TWideStringField
      FieldName = 'Classification_str'
    end
    object qryPersonDetailAgeYears: TIntegerField
      FieldName = 'AgeYears'
    end
    object qryPersonDetailNationality_str: TWideStringField
      FieldName = 'Nationality_str'
      Size = 50
    end
    object qryPersonDetailSouthAfricanID_bol: TBooleanField
      FieldName = 'SouthAfricanID_bol'
    end
    object qryPersonDetailForeigner_bol: TBooleanField
      FieldName = 'Foreigner_bol'
    end
    object qryPersonDetailpersonGreenBox_ID: TGuidField
      FieldName = 'personGreenBox_ID'
      FixedChar = True
      Size = 38
    end
    object qryPersonDetailpersonEmployeeNumber_str: TWideStringField
      FieldName = 'personEmployeeNumber_str'
      Size = 15
    end
    object qryPersonDetailpersonBiometricReview_dat: TDateTimeField
      FieldName = 'personBiometricReview_dat'
    end
  end
  object dsqryPersonDetail: TDataSource
    DataSet = qryPersonDetail
    Left = 220
    Top = 19
  end
  object qryPersonComment: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    AfterPost = qryPersonCommentAfterPost
    OnNewRecord = qryPersonCommentNewRecord
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = Null
      end>
    SQL.Strings = (
      'select * from tblPersonComment where (person_ID = :person_ID)')
    Left = 104
    Top = 74
  end
  object qryPersonContact: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    BeforePost = qryPersonContactBeforePost
    AfterScroll = qryPersonContactAfterScroll
    OnNewRecord = qryPersonContactNewRecord
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = Null
      end>
    SQL.Strings = (
      'select * from tblContact where (linking_ID = :person_ID)')
    Left = 104
    Top = 122
    object qryPersonContactcontact_ID: TGuidField
      FieldName = 'contact_ID'
      FixedChar = True
      Size = 38
    end
    object qryPersonContactlinking_ID: TGuidField
      FieldName = 'linking_ID'
      FixedChar = True
      Size = 38
    end
    object qryPersonContactcontactType_Str: TWideStringField
      FieldName = 'contactType_Str'
      Size = 25
    end
    object qryPersonContactcontactDetailOrder_Int: TIntegerField
      FieldName = 'contactDetailOrder_Int'
    end
    object qryPersonContactcontactDetail_Str: TWideStringField
      FieldName = 'contactDetail_Str'
      Size = 150
    end
    object qryPersonContactcontactDescription_Str: TWideStringField
      FieldName = 'contactDescription_Str'
      Size = 255
    end
    object qryPersonContactcontactDisplay_Str: TWideStringField
      FieldName = 'contactDisplay_Str'
      Size = 250
    end
    object qryPersonContactcontactLine01_str: TWideStringField
      FieldName = 'contactLine01_str'
      Size = 75
    end
    object qryPersonContactcontactLine02_str: TWideStringField
      FieldName = 'contactLine02_str'
      Size = 75
    end
    object qryPersonContactcontactLine03_str: TWideStringField
      FieldName = 'contactLine03_str'
      Size = 75
    end
    object qryPersonContactcontactLine04_str: TWideStringField
      FieldName = 'contactLine04_str'
      Size = 75
    end
    object qryPersonContactcontactMode_str: TWideStringField
      FieldName = 'contactMode_str'
      Size = 25
    end
  end
  object dsqryPersonComment: TDataSource
    DataSet = qryPersonComment
    Left = 224
    Top = 74
  end
  object dsqryPersonContact: TDataSource
    DataSet = qryPersonContact
    Left = 224
    Top = 122
  end
  object qryClinic: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblClinic order by clinicName_str')
    Left = 456
    Top = 17
    object qryClinicclinic_ID: TGuidField
      FieldName = 'clinic_ID'
      FixedChar = True
      Size = 38
    end
    object qryClinicclinicName_str: TWideStringField
      FieldName = 'clinicName_str'
      Size = 50
    end
    object qryClinicclinicClassification_str: TWideStringField
      FieldName = 'clinicClassification_str'
      Size = 25
    end
    object qryClinicclinicDistrictPharmacist_str: TWideStringField
      FieldName = 'clinicDistrictPharmacist_str'
      Size = 50
    end
    object qryClinicclinicDistrictMunicipality_str: TWideStringField
      FieldName = 'clinicDistrictMunicipality_str'
      Size = 50
    end
    object qryClinicclinicHealthSubDistrict_str: TWideStringField
      FieldName = 'clinicHealthSubDistrict_str'
      Size = 50
    end
    object qryClinicclinicLocation_str: TWideStringField
      FieldName = 'clinicLocation_str'
      Size = 50
    end
    object qryClinicdownRefRoute_ID: TGuidField
      FieldName = 'downRefRoute_ID'
      FixedChar = True
      Size = 38
    end
    object qryClinicbatchRouteName_str: TWideStringField
      FieldName = 'batchRouteName_str'
      Size = 100
    end
  end
  object qryPersonType: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblPersonType')
    Left = 456
    Top = 73
  end
  object dsqryClinic: TDataSource
    DataSet = qryClinic
    Left = 560
    Top = 17
  end
  object dsqryPersonType: TDataSource
    DataSet = qryPersonType
    Left = 560
    Top = 65
  end
  object qryPersonAllergies: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    OnNewRecord = qryPersonAllergiesNewRecord
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select * from tblPersonAllergy where (person_ID = :person_ID)')
    Left = 104
    Top = 218
    object qryPersonAllergiespersonAllergy_ID: TGuidField
      FieldName = 'personAllergy_ID'
      FixedChar = True
      Size = 38
    end
    object qryPersonAllergiesperson_ID: TGuidField
      FieldName = 'person_ID'
      FixedChar = True
      Size = 38
    end
    object qryPersonAllergiesproductCode_ID: TIntegerField
      FieldName = 'productCode_ID'
    end
    object qryPersonAllergiespersonAllergyDateEntered_Dat: TDateTimeField
      FieldName = 'personAllergyDateEntered_Dat'
      DisplayFormat = 'dd/mm/yy'
    end
    object qryPersonAllergiespersonAllergyDescription_Str: TWideStringField
      FieldName = 'personAllergyDescription_Str'
      Size = 100
    end
    object qryPersonAllergiespersonAllergySource_Str: TWideStringField
      FieldName = 'personAllergySource_Str'
      Size = 50
    end
    object qryPersonAllergiespersonAllergyConfirmedBy_Str: TWideStringField
      FieldName = 'personAllergyConfirmedBy_Str'
      Size = 50
    end
    object qryPersonAllergiespersonAllergyStatus_Str: TWideStringField
      FieldName = 'personAllergyStatus_Str'
      Size = 50
    end
    object qryPersonAllergiespersonAllergyAuthicatedBy_Str: TWideStringField
      FieldName = 'personAllergyAuthicatedBy_Str'
      Size = 50
    end
    object qryPersonAllergiespersonAllergyConfirmed_bol: TBooleanField
      FieldName = 'personAllergyConfirmed_bol'
    end
  end
  object dsqryPersonAllergies: TDataSource
    DataSet = qryPersonAllergies
    Left = 224
    Top = 218
  end
  object qryPersonMedicalAid: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    OnNewRecord = qryPersonMedicalAidNewRecord
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select * from tblPersonMedicalAid where (person_ID = :person_ID)')
    Left = 104
    Top = 266
  end
  object qryPersonIdealWeight: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    OnNewRecord = qryPersonIdealWeightNewRecord
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = '{292846c1-b8ec-4cd9-ba67-35104ce82e20}'
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblPersonWeight '
      'WHERE (person_ID = :person_ID) '
      'ORDER BY personWeightDateRecorded_Dat Desc')
    Left = 104
    Top = 314
    object qryPersonIdealWeightpersonWeight_ID: TGuidField
      FieldName = 'personWeight_ID'
      FixedChar = True
      Size = 38
    end
    object qryPersonIdealWeightperson_ID: TGuidField
      FieldName = 'person_ID'
      FixedChar = True
      Size = 38
    end
    object qryPersonIdealWeightpersonWeightDateRecorded_Dat: TDateTimeField
      FieldName = 'personWeightDateRecorded_Dat'
    end
    object qryPersonIdealWeightpersonWeight_int: TFloatField
      FieldName = 'personWeight_int'
      OnChange = qryPersonIdealWeightpersonWeight_intChange
    end
    object qryPersonIdealWeightpersonHeight_Int: TFloatField
      FieldName = 'personHeight_Int'
      OnChange = qryPersonIdealWeightpersonHeight_IntChange
    end
    object qryPersonIdealWeightpersonIdealWeight_int: TIntegerField
      FieldName = 'personIdealWeight_int'
    end
    object qryPersonIdealWeightpersonPregnant_bol: TBooleanField
      FieldName = 'personPregnant_bol'
    end
    object qryPersonIdealWeightpersonRenalFunction_str: TWideStringField
      FieldName = 'personRenalFunction_str'
      Size = 50
    end
    object qryPersonIdealWeightpersonCrCC: TWideStringField
      FieldName = 'personCrCC'
      Size = 50
    end
    object qryPersonIdealWeightpersonIBW_dbl: TFloatField
      FieldName = 'personIBW_dbl'
    end
    object qryPersonIdealWeightpersonBMI_dbl: TFloatField
      FieldName = 'personBMI_dbl'
    end
    object qryPersonIdealWeightpersonABW_dbl: TFloatField
      FieldName = 'personABW_dbl'
    end
    object qryPersonIdealWeightpersonBSA_dbl: TFloatField
      FieldName = 'personBSA_dbl'
    end
    object qryPersonIdealWeightpersonLBW_dbl: TFloatField
      FieldName = 'personLBW_dbl'
    end
    object qryPersonIdealWeightpersonTBW_dbl: TFloatField
      FieldName = 'personTBW_dbl'
    end
    object qryPersonIdealWeightpersonSrCr_dbl: TFloatField
      FieldName = 'personSrCr_dbl'
    end
    object qryPersonIdealWeightpersonCrCl_dbl: TFloatField
      FieldName = 'personCrCl_dbl'
    end
    object qryPersonIdealWeightpersonPulse_int: TIntegerField
      FieldName = 'personPulse_int'
    end
    object qryPersonIdealWeightpersonTemperature_dbl: TFloatField
      FieldName = 'personTemperature_dbl'
    end
    object qryPersonIdealWeightpersonBP_str: TStringField
      FieldName = 'personBP_str'
      FixedChar = True
      Size = 7
    end
    object qryPersonIdealWeightpersonMUAC_dbl: TFloatField
      FieldName = 'personMUAC_dbl'
    end
    object qryPersonIdealWeightpersonRespiratoryRate_str: TStringField
      FieldName = 'personRespiratoryRate_str'
      FixedChar = True
      Size = 7
    end
    object qryPersonIdealWeightpersonWeightforHeight_str: TWideStringField
      FieldName = 'personWeightforHeight_str'
      Size = 10
    end
    object qryPersonIdealWeightnotes_str: TWideStringField
      FieldName = 'notes_str'
      Size = 200
    end
    object qryPersonIdealWeightpersonHaemoglobin_dbl: TFloatField
      FieldName = 'personHaemoglobin_dbl'
    end
    object qryPersonIdealWeightpersonBloodGlucose_dbl: TFloatField
      FieldName = 'personBloodGlucose_dbl'
    end
    object qryPersonIdealWeightpersonUrineTest_str: TWideStringField
      FieldName = 'personUrineTest_str'
      Size = 15
    end
  end
  object dsqryPersonMedicalAid: TDataSource
    DataSet = qryPersonMedicalAid
    Left = 224
    Top = 266
  end
  object dsqryPersonIdealWeight: TDataSource
    DataSet = qryPersonIdealWeight
    Left = 224
    Top = 314
  end
  object qryNumbering: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblSystemRecordNumbering')
    Left = 456
    Top = 129
  end
  object tblRace: TADOTable
    Connection = conPatient
    CursorType = ctStatic
    TableName = 'tlkSystemRace'
    Left = 456
    Top = 185
  end
  object tblLanguage: TADOTable
    Connection = conPatient
    CursorType = ctStatic
    TableName = 'tlkSystemLanguage'
    Left = 456
    Top = 241
  end
  object dstblRace: TDataSource
    DataSet = tblRace
    Left = 560
    Top = 185
  end
  object dstblLanguage: TDataSource
    DataSet = tblLanguage
    Left = 560
    Top = 241
  end
  object qryAllergyLookup: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    OnNewRecord = qryPersonAllergiesNewRecord
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select * from tblAllergy')
    Left = 104
    Top = 362
  end
  object dsqryAllergyLookup: TDataSource
    DataSet = qryAllergyLookup
    Left = 224
    Top = 362
  end
  object qryPersonPositionTitle: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tblPersonPositionTitle ')
    Left = 456
    Top = 289
  end
  object dsqryPersonPositionTitle: TDataSource
    DataSet = qryPersonPositionTitle
    Left = 560
    Top = 289
  end
  object qryPatientCounseling: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    DataSource = dsqryPersonDetail
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from TblCounselingPlan where (person_ID = :person_ID) o' +
        'rder by counselPlanDate_Dte')
    Left = 104
    Top = 410
    object qryPatientCounselingcounselPlan_ID: TGuidField
      FieldName = 'counselPlan_ID'
      FixedChar = True
      Size = 38
    end
    object qryPatientCounselingcounselBy_Str: TWideStringField
      FieldName = 'counselBy_Str'
      Size = 250
    end
    object qryPatientCounselingcounselVenue_Str: TWideStringField
      FieldName = 'counselVenue_Str'
      Size = 150
    end
    object qryPatientCounselingcounselPlanDate_Dte: TDateTimeField
      FieldName = 'counselPlanDate_Dte'
      DisplayFormat = 'yy/mm/dd'
    end
    object qryPatientCounselingcounselPlan_Mem: TMemoField
      FieldName = 'counselPlan_Mem'
      BlobType = ftMemo
    end
    object qryPatientCounselingcounselAchieved_Dte: TDateTimeField
      FieldName = 'counselAchieved_Dte'
      DisplayFormat = 'yy/mm/dd'
    end
    object qryPatientCounselingcounselStatus_Str: TWideStringField
      FieldName = 'counselStatus_Str'
      Size = 100
    end
    object qryPatientCounselingperson_ID: TGuidField
      FieldName = 'person_ID'
      FixedChar = True
      Size = 38
    end
    object qryPatientCounselingcounselReportDate_Dte: TDateTimeField
      FieldName = 'counselReportDate_Dte'
    end
    object qryPatientCounselingprescription_ID: TGuidField
      FieldName = 'prescription_ID'
      FixedChar = True
      Size = 38
    end
    object qryPatientCounselingpatientName_Str: TWideStringField
      FieldName = 'patientName_Str'
      Size = 250
    end
  end
  object dsqryPatientCounseling: TDataSource
    DataSet = qryPatientCounseling
    Left = 224
    Top = 410
  end
  object qryPrescriptionHistory: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = '{A7B590F1-5B8A-418E-ABF5-0013D185A9C2}'
      end>
    SQL.Strings = (
      'SELECT     * '
      'FROM         view_v01_Prescription_List'
      
        'WHERE   (patient_ID = :person_ID) AND (vstTreamentPrescribed_bol' +
        '=1)')
    Left = 104
    Top = 466
    object qryPrescriptionHistoryRxDate_dat: TDateTimeField
      FieldName = 'RxDate_dat'
      ReadOnly = True
    end
    object qryPrescriptionHistoryRxDateRepeat_Dat: TDateTimeField
      FieldName = 'RxDateRepeat_Dat'
      ReadOnly = True
    end
    object qryPrescriptionHistoryprescriptionNumber_Str: TWideStringField
      FieldName = 'prescriptionNumber_Str'
      Size = 50
    end
    object qryPrescriptionHistoryrepeats_Int: TIntegerField
      FieldName = 'repeats_Int'
    end
    object qryPrescriptionHistoryprescriptionCost_Mon: TBCDField
      FieldName = 'prescriptionCost_Mon'
      Precision = 19
    end
    object qryPrescriptionHistorypatient_ID: TGuidField
      FieldName = 'patient_ID'
      FixedChar = True
      Size = 38
    end
    object qryPrescriptionHistoryprescription_ID: TGuidField
      FieldName = 'prescription_ID'
      FixedChar = True
      Size = 38
    end
    object qryPrescriptionHistorypatientName_Str: TWideStringField
      FieldName = 'patientName_Str'
      Size = 50
    end
    object qryPrescriptionHistoryprescriber_ID: TGuidField
      FieldName = 'prescriber_ID'
      FixedChar = True
      Size = 38
    end
    object qryPrescriptionHistoryprescriberName_Str: TWideStringField
      FieldName = 'prescriberName_Str'
      Size = 50
    end
    object qryPrescriptionHistoryprescriberRXLevel_Str: TWideStringField
      FieldName = 'prescriberRXLevel_Str'
      Size = 50
    end
    object qryPrescriptionHistoryprescriptionStatus_Str: TWideStringField
      FieldName = 'prescriptionStatus_Str'
      Size = 100
    end
    object qryPrescriptionHistoryprescriptionActive_bol: TBooleanField
      FieldName = 'prescriptionActive_bol'
    end
    object qryPrescriptionHistorydispensingPosted_bol: TBooleanField
      FieldName = 'dispensingPosted_bol'
    end
    object qryPrescriptionHistoryfolderNumber_Str: TWideStringField
      FieldName = 'folderNumber_Str'
      Size = 50
    end
    object qryPrescriptionHistorydispenserName_Str: TWideStringField
      FieldName = 'dispenserName_Str'
      Size = 50
    end
    object qryPrescriptionHistorydispenserRxLevel_Str: TWideStringField
      FieldName = 'dispenserRxLevel_Str'
      Size = 50
    end
    object qryPrescriptionHistoryRepeatStatus_Str: TWideStringField
      FieldName = 'RepeatStatus_Str'
      Size = 250
    end
    object qryPrescriptionHistorypersonpregnant_bol: TBooleanField
      FieldName = 'personpregnant_bol'
    end
    object qryPrescriptionHistoryvstTreamentPrescribed_bol: TBooleanField
      FieldName = 'vstTreamentPrescribed_bol'
    end
    object qryPrescriptionHistoryRxCancelReasonsAfterPosting_str: TWideStringField
      FieldName = 'RxCancelReasonsAfterPosting_str'
      Size = 50
    end
    object qryPrescriptionHistoryvstVisitDate_dat: TDateTimeField
      FieldName = 'vstVisitDate_dat'
    end
    object qryPrescriptionHistoryDemanderName_Str: TWideStringField
      FieldName = 'DemanderName_Str'
      Size = 50
    end
  end
  object dsqryPrescriptionHistory: TDataSource
    DataSet = qryPrescriptionHistory
    Left = 224
    Top = 466
  end
  object qryHealthCareReg: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    DataSource = dsqryPersonDetail
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM tblHealthCareRegister '
      'WHERE (Patient_ID = :person_ID) '
      'ORDER BY Date_dat DESC')
    Left = 104
    Top = 521
  end
  object dsqryHealthCareReg: TDataSource
    DataSet = qryHealthCareReg
    Left = 224
    Top = 521
  end
  object dsqryLaboratoryResults: TDataSource
    DataSet = qryLaboratoryResults
    Left = 568
    Top = 354
  end
  object qryLaboratoryResults: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    AfterPost = qryLaboratoryResultsAfterPost
    OnNewRecord = qryLaboratoryResultsNewRecord
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from tblPersonLaboratoryResult where personID = :person' +
        '_ID'
      'Order By TestDate_dat DESC')
    Left = 456
    Top = 353
    object qryLaboratoryResultslbResultID: TGuidField
      FieldName = 'lbResultID'
      FixedChar = True
      Size = 38
    end
    object qryLaboratoryResultspersonID: TGuidField
      FieldName = 'personID'
      FixedChar = True
      Size = 38
    end
    object qryLaboratoryResultstestName_str: TWideStringField
      FieldName = 'testName_str'
      Size = 300
    end
    object qryLaboratoryResultstestCode_str: TWideStringField
      FieldName = 'testCode_str'
      OnChange = qryLaboratoryResultstestCode_strChange
      Size = 30
    end
    object qryLaboratoryResultstestResult_str: TWideStringField
      FieldName = 'testResult_str'
      Size = 500
    end
    object qryLaboratoryResultstestResult_dbl: TFloatField
      FieldName = 'testResult_dbl'
    end
    object qryLaboratoryResultstestDate_dat: TDateTimeField
      FieldName = 'testDate_dat'
    end
    object qryLaboratoryResultstestPlace_str: TWideStringField
      FieldName = 'testPlace_str'
      Size = 100
    end
  end
  object tlkLabTests: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tlkLabTests')
    Left = 456
    Top = 409
    object tlkLabTeststestCode_str: TWideStringField
      FieldName = 'testCode_str'
      Size = 50
    end
    object tlkLabTeststestName_str: TWideStringField
      FieldName = 'testName_str'
      Size = 50
    end
    object tlkLabTeststestDescription_str: TWideStringField
      FieldName = 'testDescription_str'
      Size = 100
    end
  end
  object dstlkLabTests: TDataSource
    DataSet = tlkLabTests
    Left = 568
    Top = 410
  end
  object qryCD4Results: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'person_ID'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from tblPersonLaboratoryResult where personID =:person_' +
        'ID and testCode_Str = '#39'CD4'#39)
    Left = 456
    Top = 465
  end
  object dsCd4Results: TDataSource
    DataSet = qryCD4Results
    Left = 568
    Top = 466
  end
  object dsViralLoad: TDataSource
    DataSet = qryViralLoad
    Left = 568
    Top = 514
  end
  object qryViralLoad: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'Select * from tblPersonLaboratoryResult where personID =:person_' +
        'ID and testCode_Str = '#39'VL'#39)
    Left = 456
    Top = 513
  end
  object ActionList1: TActionList
    Left = 16
    Top = 97
    object atnSetLabTestName: TAction
      Caption = 'atnSetLabTestName'
      OnExecute = atnSetLabTestNameExecute
    end
    object atnSetLabTestCode: TAction
      Caption = 'atnSetLabTestCode'
      OnExecute = atnSetLabTestCodeExecute
    end
    object atnPrintPatientLabel: TAction
      Caption = 'Print Patient Label'
      OnExecute = atnPrintPatientLabelExecute
    end
    object atnDeleteSingleADRItem: TAction
      Caption = 'atnDeleteSingleADRItem'
      OnExecute = atnDeleteSingleADRItemExecute
    end
    object atnEditADR: TAction
      Caption = 'Edit ADR'
      OnExecute = atnEditADRExecute
    end
    object atnAddADR: TAction
      Caption = 'Add ADR'
      OnExecute = atnADDADRExecute
    end
    object atnAddAdherence: TAction
      Caption = 'atnAddAdherence'
      OnExecute = atnAddAdherenceExecute
    end
    object atnEditAdherence: TAction
      Caption = 'atnEditAdherence'
      OnExecute = atnEditAdherenceExecute
    end
    object atnPrintBasicADR: TAction
      Caption = 'Print ADR Report'
      OnExecute = atnPrintBasicADRExecute
    end
    object atnPrintADRReport: TAction
      OnExecute = atnPrintADRReportExecute
    end
    object atnPrintAnthropometries: TAction
      OnExecute = atnPrintAnthropometriesExecute
    end
    object atnPrintAllergies: TAction
      OnExecute = atnPrintAllergiesExecute
    end
    object atnPrintLabResults: TAction
      OnExecute = atnPrintLabResultsExecute
    end
    object atnPostADR: TAction
      Caption = 'Post'
      OnExecute = atnPostADRExecute
    end
    object atnPrintAdherenceReport: TAction
      OnExecute = atnPrintAdherenceReportExecute
    end
    object atnPostAdherence: TAction
      Caption = 'Post Adherence'
      OnExecute = atnPostAdherenceExecute
    end
    object atnCopyAdherenceRecord: TAction
      Caption = 'Copy Adherence'
      OnExecute = atnCopyAdherenceRecordExecute
    end
    object atnCopyADRRecord: TAction
      Caption = 'Copy ADR'
      OnExecute = atnCopyADRRecordExecute
    end
    object atnPrintContactsReport: TAction
      OnExecute = atnPrintContactsReportExecute
    end
    object atnPrintPatientBarCodeLabel: TAction
      Caption = 'Print barcode Label'
      OnExecute = atnPrintPatientBarCodeLabelExecute
    end
    object atnAddTodaysVisit: TAction
      Caption = 'Add Todays Visit'
      OnExecute = atnAddTodaysVisitExecute
    end
    object atnEditPatientLabel: TAction
      Caption = 'Edit Patient Label'
      OnExecute = atnEditPatientLabelExecute
    end
    object atnEditBarcodeLabel: TAction
      Caption = 'Edit Patient Bar code label'
      OnExecute = atnEditBarcodeLabelExecute
    end
    object atnShowEditHistory: TAction
      Caption = 'Show Patient Edit History'
      OnExecute = atnShowEditHistoryExecute
    end
  end
  object patientDuplicateIPN: TADOQuery
    Tag = 1
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'personRefNoCurrentstr'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'personID'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'Select person_ID, (personLastName_Str+'#39', '#39'+personFirstName_str) ' +
        'AS PatientName '
      'from tblperson'
      'Where tblperson.personRefNoCurrent_str = :personRefNoCurrentstr '
      'AND tblperson.person_ID <>:personID'
      'AND tblperson.personPatient_bol = 1')
    Left = 96
    Top = 577
    object patientDuplicateIPNperson_ID: TGuidField
      FieldName = 'person_ID'
      FixedChar = True
      Size = 38
    end
    object patientDuplicateIPNPatientName: TWideStringField
      FieldName = 'PatientName'
      ReadOnly = True
      Size = 62
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsqryPersonDetail
    UserName = 'ppPatientDetail'
    Left = 568
    Top = 577
  end
  object ppPatientDetailLabel: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 3000
    PrinterSetup.mmMarginLeft = 3000
    PrinterSetup.mmMarginRight = 3000
    PrinterSetup.mmMarginTop = 1000
    PrinterSetup.mmPaperHeight = 50000
    PrinterSetup.mmPaperWidth = 90000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 681
    Top = 577
    Version = '11.03'
    mmColumnWidth = 69000
    DataPipelineName = 'ppDBPipeline1'
    object ppDetailBand9: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 38100
      mmPrintPosition = 0
      object ppDBText84: TppDBText
        UserName = 'DBText84'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personPAS_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6625
        mmLeft = 794
        mmTop = 794
        mmWidth = 40534
        BandType = 4
      end
      object ppDBText86: TppDBText
        UserName = 'DBText86'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDOB_Dat'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4001
        mmLeft = 28046
        mmTop = 12965
        mmWidth = 25781
        BandType = 4
      end
      object ppDBText87: TppDBText
        UserName = 'DBText87'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDescription_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 794
        mmTop = 8202
        mmWidth = 57415
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personAddressCurrent_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 10319
        mmLeft = 794
        mmTop = 26458
        mmWidth = 82286
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personTelNoCurrent_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4001
        mmLeft = 6879
        mmTop = 21431
        mmWidth = 37783
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personGender_Str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 13758
        mmTop = 12965
        mmWidth = 4498
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Gender:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 794
        mmTop = 12965
        mmWidth = 12700
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DOB:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 19050
        mmTop = 12965
        mmWidth = 8594
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Tel:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 794
        mmTop = 21431
        mmWidth = 5884
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Race:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 794
        mmTop = 17198
        mmWidth = 9260
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personRace_Str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4022
        mmLeft = 10319
        mmTop = 17198
        mmWidth = 17463
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Marital:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 28840
        mmTop = 17198
        mmWidth = 11472
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personMaritalStatus_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4001
        mmLeft = 40746
        mmTop = 17198
        mmWidth = 37042
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personCelNoCurrent_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3979
        mmLeft = 47096
        mmTop = 21431
        mmWidth = 38100
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cell:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 39688
        mmTop = 21431
        mmWidth = 6985
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personRefNoCurrent_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3979
        mmLeft = 61648
        mmTop = 12965
        mmWidth = 16404
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IPN:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 54504
        mmTop = 12965
        mmWidth = 6816
        BandType = 4
      end
      object ppDBBarCode1: TppDBBarCode
        UserName = 'DBBarCode1'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personRefNoCurrent_str'
        DataPipeline = ppDBPipeline1
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 43656
        mmTop = 794
        mmWidth = 39423
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object patientDuplicatePAS: TADOQuery
    Tag = 1
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'personPASstr'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'personID'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'Select person_ID, personLastName_Str+'#39', '#39'+personFirstName_str AS' +
        ' PatientName '
      'from tblperson'
      'Where tblperson.personPAS_str = :personPASstr '
      'AND tblperson.person_ID <>:personID'
      'AND tblperson.personPatient_bol = 1')
    Left = 224
    Top = 577
    object patientDuplicatePASperson_ID: TGuidField
      FieldName = 'person_ID'
      FixedChar = True
      Size = 38
    end
    object patientDuplicatePASPatientName: TWideStringField
      FieldName = 'PatientName'
      ReadOnly = True
      Size = 62
    end
  end
  object qryPatientClass: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tlkPatientclassification'
      'ORDER BY Description_str')
    Left = 568
    Top = 121
    object qryPatientClassClassification_ID: TAutoIncField
      FieldName = 'Classification_ID'
      ReadOnly = True
    end
    object qryPatientClassCode_Str: TWideStringField
      FieldName = 'Code_Str'
      Size = 10
    end
    object qryPatientClassDescription_str: TWideStringField
      FieldName = 'Description_str'
      Size = 100
    end
  end
  object dsPatientClass: TDataSource
    DataSet = qryPatientClass
    Left = 672
    Top = 121
  end
  object tblActiveStatusLog: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    DataSource = dsqryPersonDetail
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblPersonStatusHistory'
      'WHERE person_ID=:person_ID'
      'ORDER BY changeDate_dat DESC')
    Left = 672
    Top = 37
  end
  object ExtraOptions1: TExtraOptions
    About = 'TExtraDevices 3.00'
    HTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    HTML.BackLink = '&lt&lt'
    HTML.ForwardLink = '&gt&gt'
    HTML.ShowLinks = True
    HTML.UseTextFileName = False
    HTML.ZoomableImages = False
    HTML.Visible = True
    HTML.PixelFormat = pf8bit
    HTML.SingleFileOutput = False
    XHTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    XHTML.BackLink = '&lt&lt'
    XHTML.ForwardLink = '&gt&gt'
    XHTML.ShowLinks = True
    XHTML.UseTextFileName = False
    XHTML.ZoomableImages = False
    XHTML.Visible = True
    XHTML.PixelFormat = pf8bit
    XHTML.SingleFileOutput = False
    RTF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    RTF.Visible = True
    RTF.RichTextAsImage = False
    RTF.UseTextBox = True
    RTF.PixelFormat = pf8bit
    RTF.PixelsPerInch = 96
    Lotus.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Lotus.Visible = True
    Lotus.ColSpacing = 16934
    Quattro.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Quattro.Visible = True
    Quattro.ColSpacing = 16934
    Excel.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Excel.Visible = True
    Excel.ColSpacing = 16934
    Excel.RowSizing = False
    Excel.AutoConvertToNumber = True
    Graphic.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Graphic.PixelFormat = pf8bit
    Graphic.UseTextFileName = False
    Graphic.Visible = True
    Graphic.PixelsPerInch = 96
    Graphic.GrayScale = False
    PDF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    PDF.FastCompression = False
    PDF.CompressImages = True
    PDF.ScaleImages = True
    PDF.Visible = True
    PDF.RichTextAsImage = False
    PDF.RichEditPixelFormat = pf1bit
    PDF.PixelFormat = pf24bit
    PDF.PixelsPerInch = 96
    PDF.Permissions = [ppPrint, ppModify, ppCopy, ppModifyAnnot]
    PDF.ViewerPreferences = []
    PDF.AutoEmbedFonts = True
    PDF.ImageFormat = riBitmap
    DotMatrix.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    DotMatrix.Visible = True
    DotMatrix.CharsPerInch = cs10CPI
    DotMatrix.LinesPerInch = ls6LPI
    DotMatrix.Port = 'LPT1'
    DotMatrix.ContinousPaper = False
    DotMatrix.PrinterType = ptEpson
    Left = 696
    Top = 505
  end
  object tblADR: TADOQuery
    Tag = 1
    Connection = conPatient
    CursorType = ctStatic
    AfterScroll = tblADRAfterScroll
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblADR'
      'WHERE person_ID=:person_ID')
    Left = 728
    Top = 209
  end
  object DSADR: TDataSource
    DataSet = tblADR
    Left = 808
    Top = 209
  end
  object ADRDetail: TADOQuery
    Tag = 1
    Connection = conPatient
    CursorType = ctStatic
    OnNewRecord = ADRDetailNewRecord
    Parameters = <
      item
        Name = 'ADR_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblADRDetail'
      'WHERE ADR_ID=:ADR_ID')
    Left = 728
    Top = 337
  end
  object DSADRDetail: TDataSource
    DataSet = ADRDetail
    Left = 808
    Top = 337
  end
  object addProducts: TADOQuery
    Tag = 1
    Connection = conPatient
    Parameters = <
      item
        Name = '@ADR_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = '@ProdCode_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = '@DailyDosage_dbl'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = '@DateStarted_dat'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO TblADRDetail'
      '           (ADR_ID'
      '           ,ProductDescription_str'
      '           ,ProdCode_ID'
      '           ,BatchNumber_str'
      '           ,ExpiryDate_dat'
      '           ,DailyDosage_dbl'
      '           ,Route_str'
      '           ,DosageForm_str'
      '           ,Strength_dbl'
      '           ,DateStarted_dat'
      '           ,DateStopped_dat'
      '           ,ReasonForUse_str'
      '           ,PackSize_dbl'
      '           ,Container_str'
      '           ,ProductAvailable_bol)'
      '     VALUES'
      '           (:@ADR_ID'
      '           ,:@ProductDescription_str'
      '           ,:@ProdCode_ID'
      '           ,:@BatchNumber_str'
      '           ,:@ExpiryDate_dat'
      '           ,:@DailyDosage_dbl'
      '           ,:@Route_str'
      '           ,:@DosageForm_str'
      '           ,:@Strength_dbl'
      '           ,:@DateStarted_dat'
      '           ,:@DateStopped_dat'
      '           ,:@ReasonForUse_str'
      '           ,:@PackSize_dbl'
      '           ,:@Container_str'
      '           ,:@ProductAvailable_bol)')
    Left = 928
    Top = 209
  end
  object addProductsFrmRx: TADOQuery
    Tag = 1
    Connection = conPatient
    Parameters = <
      item
        Name = '@ADR_ID'
        Size = -1
        Value = Null
      end
      item
        Name = '@RX_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO TblADRDetail'
      '           (ADR_ID'
      '            ,ProductDescription_str'
      '           ,Product_ID'
      '           ,DailyDosage_dbl'
      '           ,Route_str'
      '           ,DosageForm_str'
      '           ,Strength_dbl'
      '           ,DateStarted_dat'
      '           ,PackSize_dbl'
      '           ,Container_str'
      '           )'
      '          ('
      '          SELECT :@ADR_ID'
      #9',tblRxItem.FrmFormulation_Str'
      '                ,tblRxItem.DspProduct_ID'
      '                ,tblRxItem.FrmDailyDoseCalc_Dbl'
      '                ,ISNULL(tblProductPackSize.Route_str, '#39'PO'#39')'
      
        '                ,ISNULL(tblRxItem.FrmAdministrationUnit_Str, tbl' +
        'ProductPackSize.Form_str)'
      
        '                ,ISNULL(tblRxItem.FrmDoseCalc_Dbl, tblProductPac' +
        'kSize.StrengthValue_dbl)'
      '                ,GETDate()'
      '                ,tblRxItem.DspSKUActual_Dbl'
      '                ,tblProductPackSize.PackContainer_str'
      
        '  FROM TblRXItem LEFT OUTER JOIN tblProductPackSize ON TblRXItem' +
        '.DspProduct_ID=tblProductPackSize.productPackSize_ID'
      '  WHERE DspNotDispensed_Bol = 0'
      '  AND RX_ID=:@RX_ID'
      '  AND DspProduct_ID IS NOT NULL'
      '  )')
    Left = 928
    Top = 273
  end
  object tblADRWorker: TADOQuery
    Tag = 1
    Connection = conPatient
    CursorType = ctStatic
    AfterScroll = tblADRWorkerAfterScroll
    DataSource = DSADR
    Parameters = <
      item
        Name = '@ADR_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from tblADR'
      'WHERE ADR_ID=:@ADR_ID')
    Left = 728
    Top = 273
    object tblADRWorkerADR_ID: TAutoIncField
      FieldName = 'ADR_ID'
      ReadOnly = True
    end
    object tblADRWorkerPerson_ID: TGuidField
      FieldName = 'Person_ID'
      FixedChar = True
      Size = 38
    end
    object tblADRWorkerAdverseReation_bol: TBooleanField
      FieldName = 'AdverseReation_bol'
    end
    object tblADRWorkerProductReaction_bol: TBooleanField
      FieldName = 'ProductReaction_bol'
    end
    object tblADRWorkerADRDate: TDateTimeField
      FieldName = 'ADRDate'
    end
    object tblADRWorkerDateOnSetReaction: TDateTimeField
      FieldName = 'DateOnSetReaction'
    end
    object tblADRWorkerDescription_str: TMemoField
      FieldName = 'Description_str'
      BlobType = ftMemo
    end
    object tblADRWorkerOutComeDeath_bol: TBooleanField
      FieldName = 'OutComeDeath_bol'
    end
    object tblADRWorkerOutComeDisability_bol: TBooleanField
      FieldName = 'OutComeDisability_bol'
    end
    object tblADRWorkerOutComeCongenitalAnomaly_bol: TBooleanField
      FieldName = 'OutComeCongenitalAnomaly_bol'
    end
    object tblADRWorkerOutComeIntervention_bol: TBooleanField
      FieldName = 'OutComeIntervention_bol'
    end
    object tblADRWorkerOutComeLifeThreatening_bol: TBooleanField
      FieldName = 'OutComeLifeThreatening_bol'
    end
    object tblADRWorkerOutComeHospitalisation_bol: TBooleanField
      FieldName = 'OutComeHospitalisation_bol'
    end
    object tblADRWorkerOutComeOther_bol: TBooleanField
      FieldName = 'OutComeOther_bol'
    end
    object tblADRWorkerOutComeOtherExplain: TWideStringField
      DisplayWidth = 150
      FieldName = 'OutComeOtherExplain'
      Size = 150
    end
    object tblADRWorkerOutComeRechallengeDone_bol: TBooleanField
      FieldName = 'OutComeRechallengeDone_bol'
    end
    object tblADRWorkerOutComeEventReappeared_bol: TBooleanField
      FieldName = 'OutComeEventReappeared_bol'
    end
    object tblADRWorkerOutComeReactionTreatment: TMemoField
      FieldName = 'OutComeReactionTreatment'
      BlobType = ftMemo
    end
    object tblADRWorkerOutComeRecovered_bol: TBooleanField
      FieldName = 'OutComeRecovered_bol'
    end
    object tblADRWorkerOutComeSequelae_bol: TBooleanField
      FieldName = 'OutComeSequelae_bol'
    end
    object tblADRWorkerOutComeDescribeSequelae: TWideStringField
      DisplayWidth = 150
      FieldName = 'OutComeDescribeSequelae'
      Size = 150
    end
    object tblADRWorkerOutComeComments: TMemoField
      FieldName = 'OutComeComments'
      BlobType = ftMemo
    end
    object tblADRWorkerUser_ID: TIntegerField
      FieldName = 'User_ID'
    end
    object tblADRWorkerUserName_str: TWideStringField
      FieldName = 'UserName_str'
    end
    object tblADRWorkerLastUpdated_dat: TDateTimeField
      FieldName = 'LastUpdated_dat'
    end
    object tblADRWorkerPosted_bol: TBooleanField
      FieldName = 'Posted_bol'
    end
    object tblADRWorkerPosted_dat: TDateTimeField
      FieldName = 'Posted_dat'
    end
    object tblADRWorkerReportingWorkerName_str: TWideStringField
      FieldName = 'ReportingWorkerName_str'
      Size = 30
    end
    object tblADRWorkerReportingAddress_str: TWideStringField
      FieldName = 'ReportingAddress_str'
      Size = 50
    end
    object tblADRWorkerReporterQualification_str: TWideStringField
      FieldName = 'ReporterQualification_str'
    end
    object tblADRWorkerReporterPhone_str: TWideStringField
      FieldName = 'ReporterPhone_str'
      Size = 13
    end
  end
  object dsADRWorker: TDataSource
    DataSet = tblADRWorker
    Left = 808
    Top = 273
  end
  object qryProductFormulation: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCT GenericName_str, strengthExtraDescription_str, r' +
        'oute_str, StrengthValue_dbl, DispensingValue_dbl, DispensingUnit' +
        '_str, Administration_str, StrengthUnit_Str'
      'FROM  tblProductPackSize '
      'WHERE ((InstitutionEDL_bol = 1))'
      'ORDER BY strengthExtraDescription_str')
    Left = 736
    Top = 393
    object qryProductFormulationGenericName_str: TWideStringField
      FieldName = 'GenericName_str'
      Size = 255
    end
    object qryProductFormulationstrengthExtraDescription_str: TWideStringField
      FieldName = 'strengthExtraDescription_str'
      Size = 250
    end
    object qryProductFormulationroute_str: TWideStringField
      FieldName = 'route_str'
      Size = 10
    end
    object qryProductFormulationStrengthValue_dbl: TFloatField
      FieldName = 'StrengthValue_dbl'
    end
    object qryProductFormulationDispensingValue_dbl: TFloatField
      FieldName = 'DispensingValue_dbl'
    end
    object qryProductFormulationDispensingUnit_str: TWideStringField
      FieldName = 'DispensingUnit_str'
      Size = 50
    end
    object qryProductFormulationAdministration_str: TWideStringField
      FieldName = 'Administration_str'
      Size = 25
    end
    object qryProductFormulationStrengthUnit_Str: TWideStringField
      FieldName = 'StrengthUnit_Str'
      Size = 50
    end
  end
  object qryProductPacks: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    DataSource = dsqryProductFormulation
    Parameters = <
      item
        Name = 'GenericName_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = 'Albendazole'
      end
      item
        Name = 'route_str'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = 'PO'
      end
      item
        Name = 'DispensingUnit_str'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = 'tablet'
      end
      item
        Name = 'StrengthValue_dbl'
        DataType = ftFloat
        Size = 50
        Value = 100
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblProductPackSize '
      
        'WHERE ((GenericName_str = :GenericName_str) and (route_str = :ro' +
        'ute_str) AND (IsAvailableForDispensing_Bol = 1) AND (DispensingU' +
        'nit_str =:DispensingUnit_str) AND (StrengthValue_dbl =:StrengthV' +
        'alue_dbl)) '
      'ORDER BY packDescription_Str')
    Left = 736
    Top = 449
  end
  object dsqryProductFormulation: TDataSource
    DataSet = qryProductFormulation
    Left = 856
    Top = 401
  end
  object qryRoutes: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Code_str '
      'FROM tlkRoute'
      'ORDER BY Code_str')
    Left = 856
    Top = 457
  end
  object dsRoutes: TDataSource
    DataSet = qryRoutes
    Left = 936
    Top = 457
  end
  object dsForm: TDataSource
    Left = 944
    Top = 521
  end
  object qryForms: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Description_str '
      'FROM TblFormRange'
      'ORDER BY Description_str')
    Left = 856
    Top = 529
  end
  object tblAdherence: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    BeforePost = tblAdherenceBeforePost
    AfterScroll = tblAdherenceAfterScroll
    OnNewRecord = tblAdherenceNewRecord
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblPatientAdherence'
      'WHERE person_ID=:person_ID')
    Left = 912
    Top = 17
  end
  object tblAdherenceWorker: TADOQuery
    Tag = 1
    Connection = conPatient
    CursorType = ctStatic
    BeforePost = tblAdherenceWorkerBeforePost
    Parameters = <
      item
        Name = 'Adherence_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblPatientAdherence'
      'WHERE Adherence_ID=:Adherence_ID')
    Left = 912
    Top = 73
    object tblAdherenceWorkerAdherence_ID: TAutoIncField
      FieldName = 'Adherence_ID'
      ReadOnly = True
    end
    object tblAdherenceWorkerPerson_ID: TGuidField
      FieldName = 'Person_ID'
      FixedChar = True
      Size = 38
    end
    object tblAdherenceWorkerObservation_dat: TDateTimeField
      FieldName = 'Observation_dat'
    end
    object tblAdherenceWorkerLevelOfAdherence_int: TIntegerField
      FieldName = 'LevelOfAdherence_int'
    end
    object tblAdherenceWorkerLevelOfAdherence_str: TWideStringField
      FieldName = 'LevelOfAdherence_str'
      Size = 10
    end
    object tblAdherenceWorkerComments_mem: TMemoField
      FieldName = 'Comments_mem'
      BlobType = ftMemo
    end
    object tblAdherenceWorkerImprovementPlan_mem: TMemoField
      FieldName = 'ImprovementPlan_mem'
      BlobType = ftMemo
    end
    object tblAdherenceWorkerCaptured_dat: TDateTimeField
      FieldName = 'Captured_dat'
    end
    object tblAdherenceWorkerCapturedBy_str: TWideStringField
      FieldName = 'CapturedBy_str'
      Size = 50
    end
    object tblAdherenceWorkerPosted_dat: TDateTimeField
      FieldName = 'Posted_dat'
    end
    object tblAdherenceWorkerPosted_bol: TBooleanField
      FieldName = 'Posted_bol'
    end
  end
  object tblAdherenceMeasures: TADOQuery
    Tag = 1
    Connection = conPatient
    CursorType = ctStatic
    BeforePost = tblAdherenceMeasuresBeforePost
    OnNewRecord = tblAdherenceMeasuresNewRecord
    Parameters = <
      item
        Name = 'Adherence_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM tblPatientAdherenceSupportMeasures'
      'WHERE Adherence_ID=:Adherence_ID')
    Left = 912
    Top = 129
    object tblAdherenceMeasuresPatientSupportMeasure_ID: TAutoIncField
      FieldName = 'PatientSupportMeasure_ID'
      ReadOnly = True
    end
    object tblAdherenceMeasuresAdherence_ID: TIntegerField
      FieldName = 'Adherence_ID'
    end
    object tblAdherenceMeasuresAdherenceSupport_bol: TBooleanField
      FieldName = 'AdherenceSupport_bol'
    end
    object tblAdherenceMeasuresSupportMeasureCode_str: TWideStringField
      FieldName = 'SupportMeasureCode_str'
      Size = 10
    end
    object tblAdherenceMeasuresSupportMeasureDescription_str: TWideStringField
      FieldName = 'SupportMeasureDescription_str'
      Size = 50
    end
    object tblAdherenceMeasuresNotes_mem: TMemoField
      FieldName = 'Notes_mem'
      BlobType = ftMemo
    end
  end
  object dsAdherenceWorker: TDataSource
    DataSet = tblAdherenceWorker
    Left = 1024
    Top = 73
  end
  object dsAdherenceMeasures: TDataSource
    DataSet = tblAdherenceMeasures
    Left = 1032
    Top = 129
  end
  object dsAdherence: TDataSource
    DataSet = tblAdherence
    Left = 1024
    Top = 17
  end
  object qrySupportMeasures: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM tlkAdherenceSupportMeasures'
      'ORDER BY Code_str')
    Left = 1064
    Top = 273
    object qrySupportMeasuresSupportMeasure_ID: TAutoIncField
      FieldName = 'SupportMeasure_ID'
      ReadOnly = True
    end
    object qrySupportMeasuresCode_str: TWideStringField
      FieldName = 'Code_str'
      Size = 10
    end
    object qrySupportMeasuresTreatment_str: TWideStringField
      FieldName = 'Treatment_str'
      Size = 50
    end
  end
  object dsSupportMeasures: TDataSource
    DataSet = qrySupportMeasures
    Left = 1176
    Top = 273
  end
  object ppADRBasicReport: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
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
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 680
    Top = 649
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 46038
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDescription_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 14817
        mmTop = 9260
        mmWidth = 157957
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDOB_Dat'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4106
        mmLeft = 55298
        mmTop = 15610
        mmWidth = 28046
        BandType = 0
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clAppWorkSpace
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DateOnSetReaction'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 25929
        mmWidth = 36513
        BandType = 0
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = clSilver
        DataField = 'personInstitution_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 15610
        mmWidth = 86784
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        SaveOrder = 15
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DOB:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 15610
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        SaveOrder = 18
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Gender:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 19844
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        SaveOrder = 19
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IPN:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4149
        mmLeft = 6879
        mmTop = 15610
        mmWidth = 7620
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PAS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 19844
        mmWidth = 7673
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personGender_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 55298
        mmTop = 19844
        mmWidth = 13758
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personRefNoCurrent_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4106
        mmLeft = 14817
        mmTop = 15610
        mmWidth = 29633
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personPAS_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 14817
        mmTop = 19844
        mmWidth = 29633
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6879
        mmTop = 24342
        mmWidth = 270140
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date on set reaction:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4149
        mmLeft = 6879
        mmTop = 25929
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Description:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 152929
        mmTop = 25929
        mmWidth = 14817
        BandType = 0
      end
      object ppDBRichText1: TppDBRichText
        UserName = 'DBRichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsItalic]
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Color = clGray
        Border.Style = psSolid
        Border.Visible = True
        DataField = 'Description_str'
        DataPipeline = ppDBPipeline2
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 15081
        mmLeft = 167746
        mmTop = 25929
        mmWidth = 109802
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6879
        mmTop = 25135
        mmWidth = 270140
        BandType = 0
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'AdverseReation_bol'
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 28575
        mmTop = 30956
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        SaveOrder = 10
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Adverse Reation'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4149
        mmLeft = 6879
        mmTop = 30427
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        SaveOrder = 11
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'and/or Product Quality Problem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4149
        mmLeft = 32015
        mmTop = 30427
        mmWidth = 39688
        BandType = 0
      end
      object myDBCheckBox2: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'ProductReaction_bol'
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 71967
        mmTop = 30956
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        SaveOrder = 12
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 229923
        mmTop = 2910
        mmWidth = 15875
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        SaveOrder = 20
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'mmmm d, yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 246063
        mmTop = 3175
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        SaveOrder = 13
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Adverse Drug Reaction and Product Quality Problem Report '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 14
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 5556
        mmLeft = 6879
        mmTop = 2117
        mmWidth = 132027
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        SaveOrder = 14
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Medicines/Vaccines/Devices'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 6615
        mmTop = 40746
        mmWidth = 39158
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        SaveOrder = 16
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 11377
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        SaveOrder = 17
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Clinic:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101600
        mmTop = 15610
        mmWidth = 7673
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6615
        mmTop = 44715
        mmWidth = 270140
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 6615
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DateStarted_dat'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 74083
        mmTop = 3704
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DateStopped_dat'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 94986
        mmTop = 3704
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ReasonForUse_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 116417
        mmTop = 3704
        mmWidth = 794
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BatchNumber_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 32015
        mmTop = 3704
        mmWidth = 794
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ExpiryDate_dat'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 53711
        mmTop = 3704
        mmWidth = 794
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DailyDosage_dbl'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 10583
        mmTop = 3704
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText66: TppDBText
        UserName = 'DBText66'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ProductDescription_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 10583
        mmTop = 0
        mmWidth = 224103
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 65352
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6879
        mmTop = 0
        mmWidth = 270140
        BandType = 8
      end
      object myDBCheckBox3: TmyDBCheckBox
        UserName = 'DBCheckBox3'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'OutComeDeath_bol'
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 6615
        mmTop = 4763
        mmWidth = 3969
        BandType = 8
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Adverse Reaction Outcome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 6615
        mmTop = 0
        mmWidth = 37804
        BandType = 8
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Comments:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4022
        mmLeft = 6615
        mmTop = 28575
        mmWidth = 15981
        BandType = 8
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Death'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 4763
        mmWidth = 12171
        BandType = 8
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'dissability'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 8996
        mmWidth = 15081
        BandType = 8
      end
      object myDBCheckBox4: TmyDBCheckBox
        UserName = 'DBCheckBox4'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'OutComeDisability_bol'
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 6615
        mmTop = 8731
        mmWidth = 3969
        BandType = 8
      end
      object myDBCheckBox5: TmyDBCheckBox
        UserName = 'DBCheckBox5'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'OutComeCongenitalAnomaly_bol'
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 6615
        mmTop = 12965
        mmWidth = 3969
        BandType = 8
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'congenital anomaly'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 12965
        mmWidth = 24871
        BandType = 8
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        CharWrap = True
        HyperlinkColor = clBlue
        SaveOrder = 10
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'required intervention to prevent permanent impairment/damage'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 10054
        mmLeft = 10054
        mmTop = 17198
        mmWidth = 54504
        BandType = 8
      end
      object myDBCheckBox6: TmyDBCheckBox
        UserName = 'DBCheckBox6'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'OutComeIntervention_bol'
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 6615
        mmTop = 16933
        mmWidth = 3969
        BandType = 8
      end
      object myDBCheckBox7: TmyDBCheckBox
        UserName = 'DBCheckBox7'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'OutComeLifeThreatening_bol'
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 64823
        mmTop = 4763
        mmWidth = 3969
        BandType = 8
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        SaveOrder = 11
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'life-threatening '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 68263
        mmTop = 4763
        mmWidth = 31750
        BandType = 8
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        SaveOrder = 12
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'hospitalisation'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 68263
        mmTop = 8996
        mmWidth = 24871
        BandType = 8
      end
      object myDBCheckBox8: TmyDBCheckBox
        UserName = 'DBCheckBox8'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'OutComeHospitalisation_bol'
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 64823
        mmTop = 8731
        mmWidth = 3969
        BandType = 8
      end
      object myDBCheckBox9: TmyDBCheckBox
        UserName = 'DBCheckBox9'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'OutComeOther_bol'
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 64823
        mmTop = 12965
        mmWidth = 3969
        BandType = 8
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        SaveOrder = 13
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'other...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 68263
        mmTop = 12965
        mmWidth = 8467
        BandType = 8
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Pen.Color = clSilver
        mmHeight = 23813
        mmLeft = 114829
        mmTop = 1588
        mmWidth = 265
        BandType = 8
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Pen.Color = clSilver
        mmHeight = 23813
        mmLeft = 192088
        mmTop = 1588
        mmWidth = 265
        BandType = 8
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6615
        mmTop = 28310
        mmWidth = 270140
        BandType = 8
      end
      object myDBCheckBox10: TmyDBCheckBox
        UserName = 'DBCheckBox10'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'OutComeEventReappeared_bol'
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 157957
        mmTop = 4763
        mmWidth = 3969
        BandType = 8
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        SaveOrder = 14
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Event reappered on rechallenge:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115888
        mmTop = 4763
        mmWidth = 41540
        BandType = 8
      end
      object myDBCheckBox11: TmyDBCheckBox
        UserName = 'DBCheckBox101'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'OutComeRechallengeDone_bol'
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 157957
        mmTop = 8996
        mmWidth = 3969
        BandType = 8
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        SaveOrder = 15
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rechallenge not done:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115888
        mmTop = 8996
        mmWidth = 41540
        BandType = 8
      end
      object ppDBRichText2: TppDBRichText
        UserName = 'DBRichText2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsItalic]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = clSilver
        DataField = 'OutComeReactionTreatment'
        DataPipeline = ppDBPipeline2
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 12700
        mmLeft = 134673
        mmTop = 13229
        mmWidth = 55298
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        CharWrap = True
        HyperlinkColor = clBlue
        SaveOrder = 16
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Treatment (of reaction):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 10848
        mmLeft = 115888
        mmTop = 13229
        mmWidth = 18521
        BandType = 8
      end
      object myDBCheckBox12: TmyDBCheckBox
        UserName = 'DBCheckBox12'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'OutComeRecovered_bol'
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 209021
        mmTop = 5027
        mmWidth = 3969
        BandType = 8
      end
      object ppLabel31: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sequelae:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 193146
        mmTop = 8996
        mmWidth = 12171
        BandType = 8
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        SaveOrder = 17
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Recovered:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 193146
        mmTop = 4763
        mmWidth = 15081
        BandType = 8
      end
      object myDBCheckBox13: TmyDBCheckBox
        UserName = 'DBCheckBox13'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'OutComeSequelae_bol'
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 209021
        mmTop = 8996
        mmWidth = 3969
        BandType = 8
      end
      object ppDBRichText4: TppDBRichText
        UserName = 'DBRichText4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsItalic]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = clSilver
        DataField = 'OutComeDescribeSequelae'
        DataPipeline = ppDBPipeline2
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 12700
        mmLeft = 193146
        mmTop = 13229
        mmWidth = 84402
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        SaveOrder = 18
        Save = True
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sequelae descrption:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 218017
        mmTop = 8996
        mmWidth = 27781
        BandType = 8
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          0A544A504547496D616765FD130000FFD8FFE000104A46494600010101006000
          600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC0001108002C012E03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F76B
          EBE834FB57B8B87DA8BE9D4F19C0FC01FC013D057233EB3AB6B134D6F6714901
          0A4C58247CC1BA1C609523F8810B861D71CCBAEC779AA6AB6F1C5E70B5F30A07
          4F9412A7180739077AE491C8550477239EF1D6A7AC787359D3AC745BD92CADE7
          B591E4985B075328236EE211B0319000181C0E056F4E1769753394BEE379FC2F
          A93B48DF680721FCBF32342EA487DA4907E6C6E5E0F07CB1EA6A3373AD787990
          4FBE48B2C4B16DC0AF1B46DE98037124107DB009AE365F19EAEF1CAF0F893538
          C98CF929269A18EF0EC72D88700155000E082F93D39B5A778A358D4BC65A369A
          BA85E5E6997323ADD2CD6A002A220CA49F294A1DFBC704FDD078CD69ECE7D6C4
          7347A1E9FA46B36FAC5B0961CAB6D0C5483D0F423201C7D403EDCD68B3AA2967
          60AA3A92702B8C1A55D68FAECD2E9F0CB31765959536852BB482CD92396DAAA4
          2F52031E830CF8AB24771F0AF56910868DE38994FA8322115872272496CCD399
          A8B6FA1DAA48920CA3AB0E99539A1E44880323AA02719638AF2CF80802F82AFF
          00000FF898BF4FFAE71D33E3F007C1DA6E403FF1325EBFF5CA4ABF63FBDF6771
          7B4F739CF56575750C8C194F420E45426FACD6E3C86BA804DD3CB320DDF975AF
          14BDD6B50D0FF679D11B4D91E07B994DBC92C7C32216909C11D09DA067DEB1BC
          0BF0EBC2BE30D05659BC412C7AD3337996C85018F938F9586581183907BE3B55
          AC3A49CA4F44EDB13ED5DD248FA329AF2C71E37BAAE7A6E38AE6FC0DE1BBEF0A
          682FA5DEEA46FF0064ECD04A777111036AE0938C60F0091CD79AFC43B99FC5DE
          3FB7D06C4249F65CC1183D3CC2374849F6000FF809AE59DA2F4D4F47038578AA
          9CADF2A4AEDF63DBD595D432B0607B839A47912319760A3A649C5794FC1DD759
          56EFC39739568B33C0ADC15E70EBF81C1C7B9AD3F8CC03783ED0100FFA7A75FF
          00AE7254F3697359601C718B0D27BBDFCBB9E85E6C7B37EF5D9FDECF1F9D37ED
          307FCF68FF00EFB15E53081FF0CF520C0C6D6E3FEDE6B0BC0DF0EEC3C5BA35C5
          EDC5E4F6F24770610B1AA90405539E47BD1CC6D1CBA9A84E752A59464E3B5FF5
          3DDC104641C8F5A5AF08D56C75EF855AB5B4961A919ECAE725558108FB719574
          CE01E7822BDA746D521D6B45B3D4A01B63B989640A4E4A93D41F70723F0A69DC
          E6C560BD8C235612E684B67B7E05EA28A64CE6382470A58AA921477C0E94CE21
          F4579E783D2CBC71E1F7D4754BBB89B52791C4A915CBC7F64E4ED5455236F183
          9C64F7CD53F1DDB6A3A3783B4899B55BD1A8C57115A4B710DD48BE727CDCB004
          02C700938CE7BD6AA97BDC97D4C1D67C9CF6D0F4FA2B83F1AC13F853427D7B47
          D42F629AD644DD04F74F34532960A54AB938EBD460D1637F0F8A3C69ABE99AAB
          C890D9C509B4B2F35A30E19773B90082E465473C007DE92A775CCB61BAB6972B
          5AFF005FE47794564689A4CBA3ADE5B0B8965B369B7DA8966691E242AB94CB73
          80C188E4F06BCBFC4FE29F14E83E23BCD3935790C51B831168A3CEC61919F97D
          0E3F0AE7AD563495DEA8E8A507534D8F60BCBB82C2CE6BBB9904704285DDCF60
          2BCC7C09A4EA1AAF8A26F15F9EF1D8B4F300B2312F30390011D368C8FC57A571
          5A9F8B35DD66CCDA5FEA2F35B960C5362A82474CE00CD753F0E355D6EFF59B6D
          296FD934DB589A47892341951D06719E59867BF5AE3FAC46AD48AB69FA9D3ECA
          508367AB6A1FF1EC9FF5DE1FFD18B56253B6273F370A4FCBD7F0F7AAFA87FC7B
          27FD7787FF00462D56D72F26B28AD1E2765125D471BED8F792A739C0C1E6BD04
          AEEC71C9D95CE674E9EF6D26B08526436E2E21492FE189BFD250C52E04AA7EEC
          8182EE39E4BAF4E95661D735865B5123C0BF6A926092B40EA8A5240AB19C64E5
          977376F6A9ECF5BD4EDAF026A70332BC76C1826D5F28CB34A8AC475C9023C804
          E0E71569BC511EE748ECA69245B88EDC2ABA7CC5D490739C7620FA56CEF7D8C1
          5ADB996DE23D52087CE91E378D924638B760630972B1E472724A31201E32B9E9
          9AAB73A95E6A1697AB35E473C6D68A6358A2CAF9827607FE06004C8EC4D69EA7
          AEC3756B710CFA5DCC9144D2BE526546DD6EE092083907A11F4C1C55A4D7AC34
          F9DACD6191576094485C319199D17079C862644EBEBD86326DD05BFDAD0AB06B
          BA949776B68FE52969A5433B44C165D936DC0001C131FCDD4039CF406AAA6B3A
          85C69A8F762098C9F6693CB36C405CDC6D6E33D800DED8CF4AD5BAF138B44B96
          7D3AE5FEC88C6E0C782B1B08FCCC16E9F771DFAB01F4964D765FEDA8F4F8ACCB
          7FA4BC123B48063112C8081DF21C7E4697C8AFFB78CE9B5DD42DE491CC914B11
          8AE1B02020C7E5CCAA0E72724A331C1C676F619AD9D0AF5EFF004DF3A5B88677
          F31D4B4430000C4004766C6323D4D6741AAC1AD68E034134F02C4925C48D22C6
          F1B6D1229E081B87CA72080323DF0BA36A1E7EAB1C502BC76ED04CD246E77132
          A4A10B16EA7383F862935A6C38BD7723D0EE6DAE6FA18A396579624F36747724
          248638FEE8CF0086271EA49EF5A5AC6A3FD9ED1B996E40C126382CDA72DFF7C8
          245732D71FD87E2E01D59629588E0E43718030178C215E4B7242A81C53BC6FE2
          FD5BC3D7B669A7C16925ACD0F98F2CCBBB1FBC45247EF1780AF9EF9381C669CA
          176AC690BBD12BB217F19463CDBA83539258E30C5E3960F2768ED827FC0F6EFD
          7A1D23577BC16E279E512CA33B1AC5E2078F53FCEBCC8F8CB5A6D405C4DA1690
          2F16461237D9F255918F987FD772523DAFF8E3B66B7FC39E3CF116ADAED959DD
          59592C3332090C71E0A86491F83E6B7F0AA11C7218F4C723A4D755F797CB3FE5
          7F733B1D7A68A09ED0CCD7411814FF0045DDE6677C64636F246460E3B135CFF8
          EADA5BCF849ABC5021631C4CC140FE08E5C9FF00C7569FE2CB9FED3D4A0D3618
          A3B8890E6E14F20A8604A9E47560800E72558608071D7DBDB2C3A7A5B4DB5C08
          F6C991C371CFE7CD09F272B32F8AE8F22F80FAEE9F1E8F7FA34B7091DEFDA4DC
          223B01E621551F2FAE0AF3F514CF8F3AEE9F3699A768D0DC24B78B73F6991118
          1F2D02328DDE8496E07B1ABDAD7C07D12F6769B4AD4A6D3909C985D04C8BF4C9
          047E24D2E8BF01B45B2B812EABA8CFA8A0E7C944F211BFDEC12C7F022BAB9E8F
          B4F6B7F958CB96A72F258D3F0DC1A3DB7C1CD16C3C50D145637D108CF9C4AAE6
          46674F9BF87B1078C1C579FF008DBE0EFF006069773AE691AA24FA7DBA79AD1D
          C9C48AB918DAE3863CF1D3F135ED5E25F0B697E29D08E8B7BBE3B7055A3F2182
          18CA8E303A703B118AF363F0110BAC27C5573F64072B01B7E47D3E7C67DF1534
          6B24DC9CAD77B5AE39C1B56B5CBBF0BBC6F792F80356B8D5E47B8FEC6FF572B1
          F9A44DB95427B9C8C67DC5719E10F1445A17886E75ABFB29AF6E6557C18C81B5
          DDB2EDCFF9E4D7ABCBF0DEC21F070F0D69575258DB3CA25B894AF98F3B0C7DEC
          91DC29E38E318ADAF0B787ADBC2DA247A6412F9A4333C92B0DA5D89EB8EDC607
          E15C959A9D4728E88F6F0389A386C24A335CD2968D6AB4F53C226F12243E3DFF
          008492C6DA5B68CDC89CC2FD7040120E3AE72DF9D7A57C5E9E3B9F03E9F710B8
          78A5BD8DD18742A6390835D1F8CBC216BE2EB1B7826B936D2C12EE8E6550C704
          60AE091D78FC8566DE7C3E6BEF065978767D62465B49C4B1CFE40CED01804C67
          B6EEBEC2B2E57AA3B1E3B0D52746ABF75C346B57A74D6C7390FF00C9BDC9FEEB
          7FE94D6A7C19FF009152F7FEBF9BFF00404ADA4F05469E013E14FB7B6C6047DA
          3CB19FF59BFEEE7F0EB5CAAFC17800C2F8866009E820033FF8F51669DC9FAC61
          AAD2AB4E73E5E69B6B46F42AFC63D6ECAE7EC1A5DBCF1CB341234B3EC607CBE3
          001F739271EDEF5DEF80EC67D3BC0FA4DB5C2949443BD94F55DEC5803EF86AC7
          D07E15681A45C25CCED2EA13C6C193CE202291DF68EBF8E6BBA04119041A693B
          DD9CB8BC4D1F610C351BB5177BBEAFFA62D45737115A5ACD733B88E1851A491C
          F4550324FE552D4771047756D2DBCABBA3950A38F50460D51E63F238AF117C3B
          B5D46E5F59D02E9F4AD64E5D6681CAC7293CFCC07AFA8FC41AE4BC41AF5DF893
          E146977B7CA16ED754486475500332EE1B80E9FD339AF40B2F0C6A5A7D9A69F6
          FE25BC1608A1230F046D3468380AB263D3B9526ABEADF0FEC752D22CF4786F2E
          6CB4CB421E2B78021F9C67E62CC0B13F31EF5D30A8935CCEF639274A4D3E556B
          A27BAF09CFABDD40DAEEACF7B696F20963B38E058A3761D0C9C92F8F4E07B547
          E20F09687E368D6E59DA3BBB766892F2D8ED91195882A7D70C0F07F0C66BA3B2
          827B7B611DC5DBDD483ACAE8AA4FE0A00FD2B10786AEACB52BCBBD27599AD12F
          25334F6F2C2B347E61C6597382A4E39E48F6AC94DDF7B58D65056DAF7DCCCF02
          5EEAF06A1ACF86B58BAFB6CDA4B45E5DDF24BA48A5806279CE31FA8C9C5723F1
          674E9A1F10DBEA1E59FB3CF008F78E9BD49E0FE047EBE95EA7A568D06942E245
          9249EEAE9C4973732E37CAC06067000000000000000FA9AA7E28F0E7FC24FA7C
          764F7D25B421F7B8440C5C8E9D7A62B9F170F6B17CA6F856E95AE7CF35EA1F08
          74E995F51D49E32B0BAAC31B11F78824B63D871567FE14F597FD062E7FEFD2D7
          6DE1FD21F42D222D39AF1EE921C88DDD02955FEEF1D71CD7161F0D38CF9A48EB
          AD5A328DA25AD43FE3D93FEBBC3FFA3169F73676F77E5F9F187F29C4899FE161
          D0FD692F2279A1554192258DBAF60E09FD0558AF416E71BD8A93E976573334D3
          5BA3C8DE5EE639C9D84B27E44923DCD64EA56DA26830DBCA6C2DE2125CA2A393
          E5C68E0314666FE11D5471D580AE86AADFDA3DE422259846A721D5A30EB22904
          1520F6E73F87A641B4FB9328E9A2D4CBDBA015904D1C08FBE48E64624ED79143
          48A7DC823EB91EB5188FC32D25D036D6FF00EA479CCD19C32B81C7B93B178EB9
          03BD243E19807DAADC46F1DBFD9E1B44F34AC82454032C47B80AA4F07E5C8C70
          69D2F855248624FB7CE4C42228D2AAC877A06196DD9DD9572307EB9CF35575DC
          CED2EC86492F84D2672CD625DA2303E3E6DE813254FF0078EC627B9C13DB356E
          D2CB4179916D23B76941170AD19C9CEC0A1B7773B4AF7E847B522F87D52E44EB
          74E08BA3741760C06F23C9C71DB6F3F5F6E2974AF0FC7A55C452A5CC8E63B64B
          6C60287550A016C7DE236F07A8DCDDB0026D5B71A4EFAA25FF008477480001A7
          C00793E47DDEB1F3F29F503271E9938AB16BA558D9CE66B7B58E394861B9473F
          31DCDF9919AB9454DD9A72AEC636BFA147AC5B8C71329520E704ED3B8608E410
          7A11EA47426B91B89E38AC1F4BF10DB0BCB2D9BA43E59428C304F0BF3292C376
          1463078E14D7A3D4171676F7254CB182CBF75C12ACBF461C8AA52D2CF60578CB
          9A2ECCF396D03C397B7ED7D04D742202EA7BA8A396390309A2019836EF940520
          FF00C0854F6B71A769A9343E1FD39D643E5C17133B316FDDA2AAA96E8A7691C0
          E4FCD8E41C75E3C35A5A4C258ADC447695210001811820F1C8C71CD5BB5D2AC6
          CD83416C8ACA0052792A00C6067A71E947B89DEC6B3C4D7A91E594B431F41D04
          DBDCC97F70851E4398E263928067683ECA18851818C9E01AD1D7B4B3ACE946C8
          3AA06962662CA1BE559158F04104E01EA08F5AD3A29393BDCCB955AC71707832
          E2DAEEE662D6B750DC5CF9F25B4ABB51C0794AA9DABF371283C8386403A636B2
          5F02BDC417A1A7584CD16C860824611201248EA8C31CAA97523007208FBA707B
          7A2ABDA489E44737ABF861350D4E5BE856DA19DE144137963CC561206DD920F3
          B4639FE54DB0F0DDCDA7895B539AE16E54AED123AA799D5CF388F8FBE07CA57A
          739AE9A8A9E776B0F955EE71C3C1F7B25DB3CFA88114D786F9CC39592197648B
          F21390701A31C80311F23935524F00CD225C5B89E08A194C411C22C8C888A063
          E7425BA77623DB3CD7794557B590B911C9C1E1AB84BC4B9BBB6B0BD1B0288667
          62B0B0080BA96539276F53CF0BCF5A8EDFC27A92CACF36A8BBE4BAFB77991295
          30CE51D4ED0490CB8651838042918E6BB0A297B490F911C97FC22325DC3A52EA
          13C7BACD66693C81D647911C6D2C0950369E410DEFD6AA43E0BB98F4D8ED9D6C
          A4916CC5BC723E01B590124CB1ED45193907A03945CB1EA3B8A28F6920E44723
          61E129F4BD45AFA19229659FED0B3EE60800924DCA46D5E4804E49E4F1CE00AD
          8F0D695268BA0DAE9F2F97BE140AC630A0138EBF2AAFF2CFA935AD452736F705
          14828A28A92828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
          8A0028A28A0028A28A00FFD9}
        mmHeight = 13758
        mmLeft = 3440
        mmTop = 50536
        mmWidth = 90223
        BandType = 8
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 207169
        mmTop = 55298
        mmWidth = 69850
        BandType = 8
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 250296
        mmTop = 59796
        mmWidth = 13229
        BandType = 8
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 263790
        mmTop = 50536
        mmWidth = 12965
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 263790
        mmTop = 59796
        mmWidth = 13229
        BandType = 8
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = True
        DataField = 'OutComeOtherExplain'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 14817
        mmLeft = 76729
        mmTop = 12965
        mmWidth = 37571
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ReportingWorkerName_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4043
        mmLeft = 196586
        mmTop = 28575
        mmWidth = 783
        BandType = 8
      end
      object ppDBText60: TppDBText
        UserName = 'DBText60'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ReporterQualification_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 196586
        mmTop = 33867
        mmWidth = 56886
        BandType = 8
      end
      object ppDBText62: TppDBText
        UserName = 'DBText62'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ReportingAddress_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 196586
        mmTop = 39158
        mmWidth = 56886
        BandType = 8
      end
      object ppDBText64: TppDBText
        UserName = 'DBText601'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ReporterPhone_str'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 196586
        mmTop = 44186
        mmWidth = 56886
        BandType = 8
      end
      object ppLabel100: TppLabel
        UserName = 'Label202'
        HyperlinkColor = clBlue
        SaveOrder = 19
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reporting doctor/pharmacist:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 150548
        mmTop = 28575
        mmWidth = 45244
        BandType = 8
      end
      object ppLabel103: TppLabel
        UserName = 'Label103'
        HyperlinkColor = clBlue
        SaveOrder = 20
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qualification:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 175684
        mmTop = 33867
        mmWidth = 20108
        BandType = 8
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        HyperlinkColor = clBlue
        SaveOrder = 21
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 183092
        mmTop = 39158
        mmWidth = 12573
        BandType = 8
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        HyperlinkColor = clBlue
        SaveOrder = 22
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Telephone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 180298
        mmTop = 44186
        mmWidth = 15494
        BandType = 8
      end
      object ppDBRichText3: TppDBRichText
        UserName = 'DBRichText3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsItalic]
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Color = clGray
        Border.Style = psSolid
        Border.Visible = True
        DataField = 'OutComeComments'
        DataPipeline = ppDBPipeline2
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 15081
        mmLeft = 6615
        mmTop = 33867
        mmWidth = 134144
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Product_ID'
      DataPipeline = ppDBPipeline2
      KeepTogether = True
      OutlineSettings.CreateNode = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppLabel36: TppLabel
          UserName = 'Label36'
          HyperlinkColor = clBlue
          SaveOrder = 0
          Save = True
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Daily Dosage'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 10054
          mmTop = 265
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppLabel37: TppLabel
          UserName = 'Label37'
          HyperlinkColor = clBlue
          SaveOrder = 1
          Save = True
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Batch'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 31485
          mmTop = 265
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppLabel38: TppLabel
          UserName = 'Label38'
          HyperlinkColor = clBlue
          SaveOrder = 2
          Save = True
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Started'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 73554
          mmTop = 265
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppLabel39: TppLabel
          UserName = 'Label39'
          HyperlinkColor = clBlue
          SaveOrder = 3
          Save = True
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Stopped'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 94456
          mmTop = 265
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppLabel40: TppLabel
          UserName = 'Label40'
          HyperlinkColor = clBlue
          SaveOrder = 4
          Save = True
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Reason for use'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 115888
          mmTop = 265
          mmWidth = 22490
          BandType = 3
          GroupNo = 0
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Pen.Color = clSilver
          Weight = 0.75
          mmHeight = 265
          mmLeft = 10583
          mmTop = 4498
          mmWidth = 266171
          BandType = 3
          GroupNo = 0
        end
        object ppLabel41: TppLabel
          UserName = 'Label41'
          HyperlinkColor = clBlue
          SaveOrder = 5
          Save = True
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Expiry Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 53181
          mmTop = 265
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppLabel43: TppLabel
          UserName = 'Label43'
          HyperlinkColor = clBlue
          SaveOrder = 6
          Save = True
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = '#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Name = 'Arial Narrow'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 6615
          mmTop = 265
          mmWidth = 4233
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object qryADRPatientReport: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Person_ID'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'ADR_ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT tblPerson.personLastName_str, tblPerson.personFirstName_s' +
        'tr, tblPerson.personRefNoCurrent_str,'
      
        'tblPerson.personInstitution_str, tblPerson.personPAS_str, tblPer' +
        'son.personDOB_Dat, '
      
        'tblPerson.personGender_str, tblPerson.personIDNumber_Str, tblPer' +
        'son.personRace_Str,'
      'tblPerson.personDescription_str,'
      'tblADR.*, tblADRDetail.*'
      'FROM tblPerson'
      
        'LEFT OUTER JOIN tblADR ON tblPerson.Person_ID=tblPerson.Person_I' +
        'D  '
      
        'LEFT OUTER JOIN tblADRDetail ON tblADR.ADR_ID = tblADRDetail.ADR' +
        '_ID'
      
        'WHERE (tblPerson.Person_ID=:Person_ID) AND (tblADR.ADR_ID=:ADR_I' +
        'D)')
    Left = 352
    Top = 649
    object qryADRPatientReportpersonLastName_str: TWideStringField
      FieldName = 'personLastName_str'
      Size = 30
    end
    object qryADRPatientReportpersonFirstName_str: TWideStringField
      FieldName = 'personFirstName_str'
      Size = 30
    end
    object qryADRPatientReportpersonRefNoCurrent_str: TWideStringField
      FieldName = 'personRefNoCurrent_str'
    end
    object qryADRPatientReportpersonInstitution_str: TWideStringField
      FieldName = 'personInstitution_str'
      Size = 200
    end
    object qryADRPatientReportpersonPAS_str: TWideStringField
      FieldName = 'personPAS_str'
    end
    object qryADRPatientReportpersonDOB_Dat: TDateTimeField
      FieldName = 'personDOB_Dat'
    end
    object qryADRPatientReportpersonGender_str: TWideStringField
      FieldName = 'personGender_str'
      Size = 1
    end
    object qryADRPatientReportpersonIDNumber_Str: TWideStringField
      FieldName = 'personIDNumber_Str'
    end
    object qryADRPatientReportpersonRace_Str: TWideStringField
      FieldName = 'personRace_Str'
      Size = 50
    end
    object qryADRPatientReportADR_ID: TAutoIncField
      FieldName = 'ADR_ID'
      ReadOnly = True
    end
    object qryADRPatientReportPerson_ID: TGuidField
      FieldName = 'Person_ID'
      FixedChar = True
      Size = 38
    end
    object qryADRPatientReportAdverseReation_bol: TBooleanField
      FieldName = 'AdverseReation_bol'
    end
    object qryADRPatientReportProductReaction_bol: TBooleanField
      FieldName = 'ProductReaction_bol'
    end
    object qryADRPatientReportADRDate: TDateTimeField
      FieldName = 'ADRDate'
    end
    object qryADRPatientReportDateOnSetReaction: TDateTimeField
      FieldName = 'DateOnSetReaction'
    end
    object qryADRPatientReportDescription_str: TMemoField
      FieldName = 'Description_str'
      BlobType = ftMemo
    end
    object qryADRPatientReportOutComeDeath_bol: TBooleanField
      FieldName = 'OutComeDeath_bol'
    end
    object qryADRPatientReportOutComeDisability_bol: TBooleanField
      FieldName = 'OutComeDisability_bol'
    end
    object qryADRPatientReportOutComeCongenitalAnomaly_bol: TBooleanField
      FieldName = 'OutComeCongenitalAnomaly_bol'
    end
    object qryADRPatientReportOutComeIntervention_bol: TBooleanField
      FieldName = 'OutComeIntervention_bol'
    end
    object qryADRPatientReportOutComeLifeThreatening_bol: TBooleanField
      FieldName = 'OutComeLifeThreatening_bol'
    end
    object qryADRPatientReportOutComeHospitalisation_bol: TBooleanField
      FieldName = 'OutComeHospitalisation_bol'
    end
    object qryADRPatientReportOutComeOther_bol: TBooleanField
      FieldName = 'OutComeOther_bol'
    end
    object qryADRPatientReportOutComeOtherExplain: TWideStringField
      FieldName = 'OutComeOtherExplain'
    end
    object qryADRPatientReportOutComeRechallengeDone_bol: TBooleanField
      FieldName = 'OutComeRechallengeDone_bol'
    end
    object qryADRPatientReportOutComeEventReappeared_bol: TBooleanField
      FieldName = 'OutComeEventReappeared_bol'
    end
    object qryADRPatientReportOutComeReactionTreatment: TMemoField
      FieldName = 'OutComeReactionTreatment'
      BlobType = ftMemo
    end
    object qryADRPatientReportOutComeRecovered_bol: TBooleanField
      FieldName = 'OutComeRecovered_bol'
    end
    object qryADRPatientReportOutComeSequelae_bol: TBooleanField
      FieldName = 'OutComeSequelae_bol'
    end
    object qryADRPatientReportOutComeDescribeSequelae: TWideStringField
      FieldName = 'OutComeDescribeSequelae'
    end
    object qryADRPatientReportOutComeComments: TMemoField
      FieldName = 'OutComeComments'
      BlobType = ftMemo
    end
    object qryADRPatientReportUser_ID: TIntegerField
      FieldName = 'User_ID'
    end
    object qryADRPatientReportUserName_str: TWideStringField
      FieldName = 'UserName_str'
    end
    object qryADRPatientReportLastUpdated_dat: TDateTimeField
      FieldName = 'LastUpdated_dat'
    end
    object qryADRPatientReportPosted_bol: TBooleanField
      FieldName = 'Posted_bol'
    end
    object qryADRPatientReportPosted_dat: TDateTimeField
      FieldName = 'Posted_dat'
    end
    object qryADRPatientReportADRDetail_ID: TAutoIncField
      FieldName = 'ADRDetail_ID'
      ReadOnly = True
    end
    object qryADRPatientReportADR_ID_1: TIntegerField
      FieldName = 'ADR_ID_1'
    end
    object qryADRPatientReportProductDescription_str: TWideStringField
      FieldName = 'ProductDescription_str'
      Size = 250
    end
    object qryADRPatientReportProdCode_ID: TIntegerField
      FieldName = 'ProdCode_ID'
    end
    object qryADRPatientReportProduct_ID: TGuidField
      FieldName = 'Product_ID'
      FixedChar = True
      Size = 38
    end
    object qryADRPatientReportBatchNumber_str: TWideStringField
      FieldName = 'BatchNumber_str'
    end
    object qryADRPatientReportExpiryDate_dat: TDateTimeField
      FieldName = 'ExpiryDate_dat'
    end
    object qryADRPatientReportDailyDosage_dbl: TFloatField
      FieldName = 'DailyDosage_dbl'
    end
    object qryADRPatientReportRoute_str: TWideStringField
      FieldName = 'Route_str'
    end
    object qryADRPatientReportDosageForm_str: TWideStringField
      FieldName = 'DosageForm_str'
    end
    object qryADRPatientReportStrength_dbl: TFloatField
      FieldName = 'Strength_dbl'
    end
    object qryADRPatientReportDateStarted_dat: TDateTimeField
      FieldName = 'DateStarted_dat'
    end
    object qryADRPatientReportDateStopped_dat: TDateTimeField
      FieldName = 'DateStopped_dat'
    end
    object qryADRPatientReportReasonForUse_str: TWideStringField
      FieldName = 'ReasonForUse_str'
      Size = 50
    end
    object qryADRPatientReportPackSize_dbl: TFloatField
      FieldName = 'PackSize_dbl'
    end
    object qryADRPatientReportContainer_str: TWideStringField
      FieldName = 'Container_str'
      Size = 15
    end
    object qryADRPatientReportProductAvailable_bol: TBooleanField
      FieldName = 'ProductAvailable_bol'
    end
    object qryADRPatientReportpersonDescription_str: TWideStringField
      FieldName = 'personDescription_str'
      Size = 150
    end
    object qryADRPatientReportReportingWorkerName_str: TWideStringField
      FieldName = 'ReportingWorkerName_str'
      Size = 30
    end
    object qryADRPatientReportReportingAddress_str: TWideStringField
      FieldName = 'ReportingAddress_str'
      Size = 50
    end
    object qryADRPatientReportReporterQualification_str: TWideStringField
      FieldName = 'ReporterQualification_str'
    end
    object qryADRPatientReportReporterPhone_str: TWideStringField
      FieldName = 'ReporterPhone_str'
      Size = 13
    end
  end
  object dsADRPatientReport: TDataSource
    DataSet = qryADRPatientReport
    Left = 464
    Top = 649
  end
  object ppWeightsReport: TppReport
    AutoStop = False
    DataPipeline = ppDBPipelineWeights
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 1168
    Top = 545
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipelineWeights'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30956
      mmPrintPosition = 0
      object ppDBText21: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDescription_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 14817
        mmTop = 9260
        mmWidth = 157957
        BandType = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDOB_Dat'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4106
        mmLeft = 55298
        mmTop = 15875
        mmWidth = 28046
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = clSilver
        DataField = 'personInstitution_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 15875
        mmWidth = 86784
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DOB:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 15875
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Gender:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 20108
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IPN:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4149
        mmLeft = 6879
        mmTop = 15875
        mmWidth = 7620
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PAS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 20108
        mmWidth = 7673
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personGender_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 55298
        mmTop = 20108
        mmWidth = 13758
        BandType = 0
      end
      object ppDBText28: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personRefNoCurrent_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4106
        mmLeft = 14817
        mmTop = 15875
        mmWidth = 29633
        BandType = 0
      end
      object ppDBText29: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personPAS_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 14817
        mmTop = 20108
        mmWidth = 29633
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6879
        mmTop = 24606
        mmWidth = 189971
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6879
        mmTop = 25400
        mmWidth = 189971
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 148432
        mmTop = 2117
        mmWidth = 15875
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'mmmm d, yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 164571
        mmTop = 2117
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Patient Anthropometries'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4911
        mmLeft = 6879
        mmTop = 2117
        mmWidth = 40555
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 11377
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Clinic:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101600
        mmTop = 15875
        mmWidth = 7673
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6615
        mmTop = 30691
        mmWidth = 189971
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 26194
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Weight(kg)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 26194
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Height(cm)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 54769
        mmTop = 26194
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 26194
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'BMI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 76729
        mmTop = 26194
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'BSA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 97631
        mmTop = 26194
        mmWidth = 19050
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personWeightDateRecorded_Dat'
        DataPipeline = ppDBPipelineWeights
        DisplayFormat = '#.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipelineWeights'
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personWeightDateRecorded_Dat'
        DataPipeline = ppDBPipelineWeights
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppDBPipelineWeights'
        mmHeight = 3969
        mmLeft = 10848
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText202'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personWeight_int'
        DataPipeline = ppDBPipelineWeights
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppDBPipelineWeights'
        mmHeight = 4064
        mmLeft = 33073
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personHeight_Int'
        DataPipeline = ppDBPipelineWeights
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppDBPipelineWeights'
        mmHeight = 4064
        mmLeft = 54769
        mmTop = 0
        mmWidth = 26712
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personBMI_dbl'
        DataPipeline = ppDBPipelineWeights
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppDBPipelineWeights'
        mmHeight = 4064
        mmLeft = 76729
        mmTop = 0
        mmWidth = 23537
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personBSA_dbl'
        DataPipeline = ppDBPipelineWeights
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppDBPipelineWeights'
        mmHeight = 4064
        mmLeft = 97631
        mmTop = 265
        mmWidth = 24342
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object ppLine10: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6615
        mmTop = 0
        mmWidth = 189971
        BandType = 8
      end
      object ppImage2: TppImage
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          0A544A504547496D616765FD130000FFD8FFE000104A46494600010101006000
          600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC0001108002C012E03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F76B
          EBE834FB57B8B87DA8BE9D4F19C0FC01FC013D057233EB3AB6B134D6F6714901
          0A4C58247CC1BA1C609523F8810B861D71CCBAEC779AA6AB6F1C5E70B5F30A07
          4F9412A7180739077AE491C8550477239EF1D6A7AC787359D3AC745BD92CADE7
          B591E4985B075328236EE211B0319000181C0E056F4E1769753394BEE379FC2F
          A93B48DF680721FCBF32342EA487DA4907E6C6E5E0F07CB1EA6A3373AD787990
          4FBE48B2C4B16DC0AF1B46DE98037124107DB009AE365F19EAEF1CAF0F893538
          C98CF929269A18EF0EC72D88700155000E082F93D39B5A778A358D4BC65A369A
          BA85E5E6997323ADD2CD6A002A220CA49F294A1DFBC704FDD078CD69ECE7D6C4
          7347A1E9FA46B36FAC5B0961CAB6D0C5483D0F423201C7D403EDCD68B3AA2967
          60AA3A92702B8C1A55D68FAECD2E9F0CB31765959536852BB482CD92396DAAA4
          2F52031E830CF8AB24771F0AF56910868DE38994FA8322115872272496CCD399
          A8B6FA1DAA48920CA3AB0E99539A1E44880323AA02719638AF2CF80802F82AFF
          00000FF898BF4FFAE71D33E3F007C1DA6E403FF1325EBFF5CA4ABF63FBDF6771
          7B4F739CF56575750C8C194F420E45426FACD6E3C86BA804DD3CB320DDF975AF
          14BDD6B50D0FF679D11B4D91E07B994DBC92C7C32216909C11D09DA067DEB1BC
          0BF0EBC2BE30D05659BC412C7AD3337996C85018F938F9586581183907BE3B55
          AC3A49CA4F44EDB13ED5DD248FA329AF2C71E37BAAE7A6E38AE6FC0DE1BBEF0A
          682FA5DEEA46FF0064ECD04A777111036AE0938C60F0091CD79AFC43B99FC5DE
          3FB7D06C4249F65CC1183D3CC2374849F6000FF809AE59DA2F4D4F47038578AA
          9CADF2A4AEDF63DBD595D432B0607B839A47912319760A3A649C5794FC1DD759
          56EFC39739568B33C0ADC15E70EBF81C1C7B9AD3F8CC03783ED0100FFA7A75FF
          00AE7254F3697359601C718B0D27BBDFCBB9E85E6C7B37EF5D9FDECF1F9D37ED
          307FCF68FF00EFB15E53081FF0CF520C0C6D6E3FEDE6B0BC0DF0EEC3C5BA35C5
          EDC5E4F6F24770610B1AA90405539E47BD1CC6D1CBA9A84E752A59464E3B5FF5
          3DDC104641C8F5A5AF08D56C75EF855AB5B4961A919ECAE725558108FB719574
          CE01E7822BDA746D521D6B45B3D4A01B63B989640A4E4A93D41F70723F0A69DC
          E6C560BD8C235612E684B67B7E05EA28A64CE6382470A58AA921477C0E94CE21
          F4579E783D2CBC71E1F7D4754BBB89B52791C4A915CBC7F64E4ED5455236F183
          9C64F7CD53F1DDB6A3A3783B4899B55BD1A8C57115A4B710DD48BE727CDCB004
          02C700938CE7BD6AA97BDC97D4C1D67C9CF6D0F4FA2B83F1AC13F853427D7B47
          D42F629AD644DD04F74F34532960A54AB938EBD460D1637F0F8A3C69ABE99AAB
          C890D9C509B4B2F35A30E19773B90082E465473C007DE92A775CCB61BAB6972B
          5AFF005FE47794564689A4CBA3ADE5B0B8965B369B7DA8966691E242AB94CB73
          80C188E4F06BCBFC4FE29F14E83E23BCD3935790C51B831168A3CEC61919F97D
          0E3F0AE7AD563495DEA8E8A507534D8F60BCBB82C2CE6BBB9904704285DDCF60
          2BCC7C09A4EA1AAF8A26F15F9EF1D8B4F300B2312F30390011D368C8FC57A571
          5A9F8B35DD66CCDA5FEA2F35B960C5362A82474CE00CD753F0E355D6EFF59B6D
          296FD934DB589A47892341951D06719E59867BF5AE3FAC46AD48AB69FA9D3ECA
          508367AB6A1FF1EC9FF5DE1FFD18B56253B6273F370A4FCBD7F0F7AAFA87FC7B
          27FD7787FF00462D56D72F26B28AD1E2765125D471BED8F792A739C0C1E6BD04
          AEEC71C9D95CE674E9EF6D26B08526436E2E21492FE189BFD250C52E04AA7EEC
          8182EE39E4BAF4E95661D735865B5123C0BF6A926092B40EA8A5240AB19C64E5
          977376F6A9ECF5BD4EDAF026A70332BC76C1826D5F28CB34A8AC475C9023C804
          E0E71569BC511EE748ECA69245B88EDC2ABA7CC5D490739C7620FA56CEF7D8C1
          5ADB996DE23D52087CE91E378D924638B760630972B1E472724A31201E32B9E9
          9AAB73A95E6A1697AB35E473C6D68A6358A2CAF9827607FE06004C8EC4D69EA7
          AEC3756B710CFA5DCC9144D2BE526546DD6EE092083907A11F4C1C55A4D7AC34
          F9DACD6191576094485C319199D17079C862644EBEBD86326DD05BFDAD0AB06B
          BA949776B68FE52969A5433B44C165D936DC0001C131FCDD4039CF406AAA6B3A
          85C69A8F762098C9F6693CB36C405CDC6D6E33D800DED8CF4AD5BAF138B44B96
          7D3AE5FEC88C6E0C782B1B08FCCC16E9F771DFAB01F4964D765FEDA8F4F8ACCB
          7FA4BC123B48063112C8081DF21C7E4697C8AFFB78CE9B5DD42DE491CC914B11
          8AE1B02020C7E5CCAA0E72724A331C1C676F619AD9D0AF5EFF004DF3A5B88677
          F31D4B4430000C4004766C6323D4D6741AAC1AD68E034134F02C4925C48D22C6
          F1B6D1229E081B87CA72080323DF0BA36A1E7EAB1C502BC76ED04CD246E77132
          A4A10B16EA7383F862935A6C38BD7723D0EE6DAE6FA18A396579624F36747724
          248638FEE8CF0086271EA49EF5A5AC6A3FD9ED1B996E40C126382CDA72DFF7C8
          245732D71FD87E2E01D59629588E0E43718030178C215E4B7242A81C53BC6FE2
          FD5BC3D7B669A7C16925ACD0F98F2CCBBB1FBC45247EF1780AF9EF9381C669CA
          176AC690BBD12BB217F19463CDBA83539258E30C5E3960F2768ED827FC0F6EFD
          7A1D23577BC16E279E512CA33B1AC5E2078F53FCEBCC8F8CB5A6D405C4DA1690
          2F16461237D9F255918F987FD772523DAFF8E3B66B7FC39E3CF116ADAED959DD
          59592C3332090C71E0A86491F83E6B7F0AA11C7218F4C723A4D755F797CB3FE5
          7F733B1D7A68A09ED0CCD7411814FF0045DDE6677C64636F246460E3B135CFF8
          EADA5BCF849ABC5021631C4CC140FE08E5C9FF00C7569FE2CB9FED3D4A0D3618
          A3B8890E6E14F20A8604A9E47560800E72558608071D7DBDB2C3A7A5B4DB5C08
          F6C991C371CFE7CD09F272B32F8AE8F22F80FAEE9F1E8F7FA34B7091DEFDA4DC
          223B01E621551F2FAE0AF3F514CF8F3AEE9F3699A768D0DC24B78B73F6991118
          1F2D02328DDE8496E07B1ABDAD7C07D12F6769B4AD4A6D3909C985D04C8BF4C9
          047E24D2E8BF01B45B2B812EABA8CFA8A0E7C944F211BFDEC12C7F022BAB9E8F
          B4F6B7F958CB96A72F258D3F0DC1A3DB7C1CD16C3C50D145637D108CF9C4AAE6
          46674F9BF87B1078C1C579FF008DBE0EFF006069773AE691AA24FA7DBA79AD1D
          C9C48AB918DAE3863CF1D3F135ED5E25F0B697E29D08E8B7BBE3B7055A3F2182
          18CA8E303A703B118AF363F0110BAC27C5573F64072B01B7E47D3E7C67DF1534
          6B24DC9CAD77B5AE39C1B56B5CBBF0BBC6F792F80356B8D5E47B8FEC6FF572B1
          F9A44DB95427B9C8C67DC5719E10F1445A17886E75ABFB29AF6E6557C18C81B5
          DDB2EDCFF9E4D7ABCBF0DEC21F070F0D69575258DB3CA25B894AF98F3B0C7DEC
          91DC29E38E318ADAF0B787ADBC2DA247A6412F9A4333C92B0DA5D89EB8EDC607
          E15C959A9D4728E88F6F0389A386C24A335CD2968D6AB4F53C226F12243E3DFF
          008492C6DA5B68CDC89CC2FD7040120E3AE72DF9D7A57C5E9E3B9F03E9F710B8
          78A5BD8DD18742A6390835D1F8CBC216BE2EB1B7826B936D2C12EE8E6550C704
          60AE091D78FC8566DE7C3E6BEF065978767D62465B49C4B1CFE40CED01804C67
          B6EEBEC2B2E57AA3B1E3B0D52746ABF75C346B57A74D6C7390FF00C9BDC9FEEB
          7FE94D6A7C19FF009152F7FEBF9BFF00404ADA4F05469E013E14FB7B6C6047DA
          3CB19FF59BFEEE7F0EB5CAAFC17800C2F8866009E820033FF8F51669DC9FAC61
          AAD2AB4E73E5E69B6B46F42AFC63D6ECAE7EC1A5DBCF1CB341234B3EC607CBE3
          001F739271EDEF5DEF80EC67D3BC0FA4DB5C2949443BD94F55DEC5803EF86AC7
          D07E15681A45C25CCED2EA13C6C193CE202291DF68EBF8E6BBA04119041A693B
          DD9CB8BC4D1F610C351BB5177BBEAFFA62D45737115A5ACD733B88E1851A491C
          F4550324FE552D4771047756D2DBCABBA3950A38F50460D51E63F238AF117C3B
          B5D46E5F59D02E9F4AD64E5D6681CAC7293CFCC07AFA8FC41AE4BC41AF5DF893
          E146977B7CA16ED754486475500332EE1B80E9FD339AF40B2F0C6A5A7D9A69F6
          FE25BC1608A1230F046D3468380AB263D3B9526ABEADF0FEC752D22CF4786F2E
          6CB4CB421E2B78021F9C67E62CC0B13F31EF5D30A8935CCEF639274A4D3E556B
          A27BAF09CFABDD40DAEEACF7B696F20963B38E058A3761D0C9C92F8F4E07B547
          E20F09687E368D6E59DA3BBB766892F2D8ED91195882A7D70C0F07F0C66BA3B2
          827B7B611DC5DBDD483ACAE8AA4FE0A00FD2B10786AEACB52BCBBD27599AD12F
          25334F6F2C2B347E61C6597382A4E39E48F6AC94DDF7B58D65056DAF7DCCCF02
          5EEAF06A1ACF86B58BAFB6CDA4B45E5DDF24BA48A5806279CE31FA8C9C5723F1
          674E9A1F10DBEA1E59FB3CF008F78E9BD49E0FE047EBE95EA7A568D06942E245
          9249EEAE9C4973732E37CAC06067000000000000000FA9AA7E28F0E7FC24FA7C
          764F7D25B421F7B8440C5C8E9D7A62B9F170F6B17CA6F856E95AE7CF35EA1F08
          74E995F51D49E32B0BAAC31B11F78824B63D871567FE14F597FD062E7FEFD2D7
          6DE1FD21F42D222D39AF1EE921C88DDD02955FEEF1D71CD7161F0D38CF9A48EB
          AD5A328DA25AD43FE3D93FEBBC3FFA3169F73676F77E5F9F187F29C4899FE161
          D0FD692F2279A1554192258DBAF60E09FD0558AF416E71BD8A93E976573334D3
          5BA3C8DE5EE639C9D84B27E44923DCD64EA56DA26830DBCA6C2DE2125CA2A393
          E5C68E0314666FE11D5471D580AE86AADFDA3DE422259846A721D5A30EB22904
          1520F6E73F87A641B4FB9328E9A2D4CBDBA015904D1C08FBE48E64624ED79143
          48A7DC823EB91EB5188FC32D25D036D6FF00EA479CCD19C32B81C7B93B178EB9
          03BD243E19807DAADC46F1DBFD9E1B44F34AC82454032C47B80AA4F07E5C8C70
          69D2F855248624FB7CE4C42228D2AAC877A06196DD9DD9572307EB9CF35575DC
          CED2EC86492F84D2672CD625DA2303E3E6DE813254FF0078EC627B9C13DB356E
          D2CB4179916D23B76941170AD19C9CEC0A1B7773B4AF7E847B522F87D52E44EB
          74E08BA3741760C06F23C9C71DB6F3F5F6E2974AF0FC7A55C452A5CC8E63B64B
          6C60287550A016C7DE236F07A8DCDDB0026D5B71A4EFAA25FF008477480001A7
          C00793E47DDEB1F3F29F503271E9938AB16BA558D9CE66B7B58E394861B9473F
          31DCDF9919AB9454DD9A72AEC636BFA147AC5B8C71329520E704ED3B8608E410
          7A11EA47426B91B89E38AC1F4BF10DB0BCB2D9BA43E59428C304F0BF3292C376
          1463078E14D7A3D4171676F7254CB182CBF75C12ACBF461C8AA52D2CF60578CB
          9A2ECCF396D03C397B7ED7D04D742202EA7BA8A396390309A2019836EF940520
          FF00C0854F6B71A769A9343E1FD39D643E5C17133B316FDDA2AAA96E8A7691C0
          E4FCD8E41C75E3C35A5A4C258ADC447695210001811820F1C8C71CD5BB5D2AC6
          CD83416C8ACA0052792A00C6067A71E947B89DEC6B3C4D7A91E594B431F41D04
          DBDCC97F70851E4398E263928067683ECA18851818C9E01AD1D7B4B3ACE946C8
          3AA06962662CA1BE559158F04104E01EA08F5AD3A29393BDCCB955AC71707832
          E2DAEEE662D6B750DC5CF9F25B4ABB51C0794AA9DABF371283C8386403A636B2
          5F02BDC417A1A7584CD16C860824611201248EA8C31CAA97523007208FBA707B
          7A2ABDA489E44737ABF861350D4E5BE856DA19DE144137963CC561206DD920F3
          B4639FE54DB0F0DDCDA7895B539AE16E54AED123AA799D5CF388F8FBE07CA57A
          739AE9A8A9E776B0F955EE71C3C1F7B25DB3CFA88114D786F9CC39592197648B
          F21390701A31C80311F23935524F00CD225C5B89E08A194C411C22C8C888A063
          E7425BA77623DB3CD7794557B590B911C9C1E1AB84BC4B9BBB6B0BD1B0288667
          62B0B0080BA96539276F53CF0BCF5A8EDFC27A92CACF36A8BBE4BAFB77991295
          30CE51D4ED0490CB8651838042918E6BB0A297B490F911C97FC22325DC3A52EA
          13C7BACD66693C81D647911C6D2C0950369E410DEFD6AA43E0BB98F4D8ED9D6C
          A4916CC5BC723E01B590124CB1ED45193907A03945CB1EA3B8A28F6920E44723
          61E129F4BD45AFA19229659FED0B3EE60800924DCA46D5E4804E49E4F1CE00AD
          8F0D695268BA0DAE9F2F97BE140AC630A0138EBF2AAFF2CFA935AD452736F705
          14828A28A92828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
          8A0028A28A0028A28A00FFD9}
        mmHeight = 13758
        mmLeft = 4763
        mmTop = 1323
        mmWidth = 90223
        BandType = 8
      end
      object ppLabel73: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 126736
        mmTop = 5292
        mmWidth = 69850
        BandType = 8
      end
      object ppLabel74: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 169863
        mmTop = 529
        mmWidth = 13229
        BandType = 8
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 183357
        mmTop = 529
        mmWidth = 12965
        BandType = 8
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 183357
        mmTop = 9525
        mmWidth = 13229
        BandType = 8
      end
    end
    object daDataModule1: TdaDataModule
      object daADOQueryDataView1: TdaADOQueryDataView
        UserName = 'Query_tblPersonWeight'
        Height = 0
        Left = 0
        NameColumnWidth = 105
        SizeColumnWidth = 35
        SortMode = 0
        Top = 0
        TypeColumnWidth = 52
        Width = 0
        AutoSearchTabOrder = 0
        object tblPersonWeight: TppChildDBPipeline
          AutoCreateFields = False
          UserName = 'tblPersonWeight'
          object ppField1: TppField
            FieldAlias = 'notes_str'
            FieldName = 'notes_str'
            FieldLength = 200
            DisplayWidth = 200
            Position = 0
            TableName = 'tblPersonWeight'
          end
          object ppField2: TppField
            FieldAlias = 'person_ID'
            FieldName = 'person_ID'
            FieldLength = 38
            DataType = dtGUID
            DisplayWidth = 38
            Position = 1
            TableName = 'tblPersonWeight'
          end
          object ppField3: TppField
            FieldAlias = 'personABW_dbl'
            FieldName = 'personABW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 2
            TableName = 'tblPersonWeight'
          end
          object ppField4: TppField
            FieldAlias = 'personBMI_dbl'
            FieldName = 'personBMI_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 3
            TableName = 'tblPersonWeight'
          end
          object ppField5: TppField
            FieldAlias = 'personBP_str'
            FieldName = 'personBP_str'
            FieldLength = 7
            DisplayWidth = 7
            Position = 4
            TableName = 'tblPersonWeight'
          end
          object ppField6: TppField
            FieldAlias = 'personBSA_dbl'
            FieldName = 'personBSA_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 5
            TableName = 'tblPersonWeight'
          end
          object ppField7: TppField
            FieldAlias = 'personCrCC'
            FieldName = 'personCrCC'
            FieldLength = 50
            DisplayWidth = 50
            Position = 6
            TableName = 'tblPersonWeight'
          end
          object ppField8: TppField
            FieldAlias = 'personCrCl_dbl'
            FieldName = 'personCrCl_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 7
            TableName = 'tblPersonWeight'
          end
          object ppField9: TppField
            FieldAlias = 'personHeight_Int'
            FieldName = 'personHeight_Int'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 8
            TableName = 'tblPersonWeight'
          end
          object ppField10: TppField
            FieldAlias = 'personIBW_dbl'
            FieldName = 'personIBW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 9
            TableName = 'tblPersonWeight'
          end
          object ppField11: TppField
            FieldAlias = 'personIdealWeight_int'
            FieldName = 'personIdealWeight_int'
            FieldLength = 0
            DataType = dtInteger
            DisplayWidth = 10
            Position = 10
            TableName = 'tblPersonWeight'
          end
          object ppField12: TppField
            FieldAlias = 'personLBW_dbl'
            FieldName = 'personLBW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 11
            TableName = 'tblPersonWeight'
          end
          object ppField13: TppField
            FieldAlias = 'personMUAC_dbl'
            FieldName = 'personMUAC_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 12
            TableName = 'tblPersonWeight'
          end
          object ppField14: TppField
            FieldAlias = 'personPregnant_bol'
            FieldName = 'personPregnant_bol'
            FieldLength = 0
            DataType = dtBoolean
            DisplayWidth = 5
            Position = 13
            TableName = 'tblPersonWeight'
          end
          object ppField15: TppField
            FieldAlias = 'personPulse_int'
            FieldName = 'personPulse_int'
            FieldLength = 0
            DataType = dtInteger
            DisplayWidth = 10
            Position = 14
            TableName = 'tblPersonWeight'
          end
          object ppField16: TppField
            FieldAlias = 'personRenalFunction_str'
            FieldName = 'personRenalFunction_str'
            FieldLength = 50
            DisplayWidth = 50
            Position = 15
            TableName = 'tblPersonWeight'
          end
          object ppField17: TppField
            FieldAlias = 'personRespiratoryRate_str'
            FieldName = 'personRespiratoryRate_str'
            FieldLength = 7
            DisplayWidth = 7
            Position = 16
            TableName = 'tblPersonWeight'
          end
          object ppField18: TppField
            FieldAlias = 'personSrCr_dbl'
            FieldName = 'personSrCr_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 17
            TableName = 'tblPersonWeight'
          end
          object ppField19: TppField
            FieldAlias = 'personTBW_dbl'
            FieldName = 'personTBW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 18
            TableName = 'tblPersonWeight'
          end
          object ppField20: TppField
            FieldAlias = 'personTemperature_dbl'
            FieldName = 'personTemperature_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 19
            TableName = 'tblPersonWeight'
          end
          object ppField21: TppField
            FieldAlias = 'personWeight_ID'
            FieldName = 'personWeight_ID'
            FieldLength = 38
            DataType = dtGUID
            DisplayWidth = 38
            Position = 20
            TableName = 'tblPersonWeight'
          end
          object ppField22: TppField
            FieldAlias = 'personWeight_int'
            FieldName = 'personWeight_int'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 21
            TableName = 'tblPersonWeight'
          end
          object ppField23: TppField
            FieldAlias = 'personWeightDateRecorded_Dat'
            FieldName = 'personWeightDateRecorded'
            FieldLength = 0
            DataType = dtDateTime
            DisplayWidth = 18
            Position = 22
            TableName = 'tblPersonWeight'
          end
          object ppField24: TppField
            FieldAlias = 'personWeightforHeight_str'
            FieldName = 'personWeightforHeight_str'
            FieldLength = 10
            DisplayWidth = 10
            Position = 23
            TableName = 'tblPersonWeight'
          end
        end
        object daSQL1: TdaSQL
          GuidCollationType = gcMSSQLServer
          DatabaseName = 'conPatient'
          DatabaseType = dtMSSQLServer
          DataPipelineName = 'tblPersonWeight'
          LinkColor = clMaroon
          LinkType = ltMagicSQL
          MaxSQLFieldAliasLength = 25
          SQLText.Strings = (
            'SELECT tblPersonWeight.notes_str, '
            '       tblPersonWeight.person_ID, '
            '       tblPersonWeight.personABW_dbl, '
            '       tblPersonWeight.personBMI_dbl, '
            '       tblPersonWeight.personBP_str, '
            '       tblPersonWeight.personBSA_dbl, '
            '       tblPersonWeight.personCrCC, '
            '       tblPersonWeight.personCrCl_dbl, '
            '       tblPersonWeight.personHeight_Int, '
            '       tblPersonWeight.personIBW_dbl, '
            '       tblPersonWeight.personIdealWeight_int, '
            '       tblPersonWeight.personLBW_dbl, '
            '       tblPersonWeight.personMUAC_dbl, '
            '       tblPersonWeight.personPregnant_bol, '
            '       tblPersonWeight.personPulse_int, '
            '       tblPersonWeight.personRenalFunction_str, '
            '       tblPersonWeight.personRespiratoryRate_str, '
            '       tblPersonWeight.personSrCr_dbl, '
            '       tblPersonWeight.personTBW_dbl, '
            '       tblPersonWeight.personTemperature_dbl, '
            '       tblPersonWeight.personWeight_ID, '
            '       tblPersonWeight.personWeight_int, '
            
              '       tblPersonWeight.personWeightDateRecorded_Dat personWeight' +
              'DateRecorded, '
            '       tblPersonWeight.personWeightforHeight_str'
            'FROM dbo.tblPersonWeight tblPersonWeight'
            'WHERE ('#39'c'#39' <> '#39'c'#39' )')
          SQLType = sqSQL2
          object daField1: TdaField
            Alias = 'notes_str'
            DisplayWidth = 200
            FieldAlias = 'notes_str'
            FieldLength = 200
            FieldName = 'notes_str'
            SQLFieldName = 'notes_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField2: TdaField
            Alias = 'person_ID'
            DataType = dtGUID
            DisplayWidth = 38
            FieldAlias = 'person_ID'
            FieldLength = 38
            FieldName = 'person_ID'
            SQLFieldName = 'person_ID'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField3: TdaField
            Alias = 'personABW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personABW_dbl'
            FieldLength = 0
            FieldName = 'personABW_dbl'
            SQLFieldName = 'personABW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField4: TdaField
            Alias = 'personBMI_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personBMI_dbl'
            FieldLength = 0
            FieldName = 'personBMI_dbl'
            SQLFieldName = 'personBMI_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField5: TdaField
            Alias = 'personBP_str'
            DisplayWidth = 7
            FieldAlias = 'personBP_str'
            FieldLength = 7
            FieldName = 'personBP_str'
            SQLFieldName = 'personBP_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField6: TdaField
            Alias = 'personBSA_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personBSA_dbl'
            FieldLength = 0
            FieldName = 'personBSA_dbl'
            SQLFieldName = 'personBSA_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField7: TdaField
            Alias = 'personCrCC'
            DisplayWidth = 50
            FieldAlias = 'personCrCC'
            FieldLength = 50
            FieldName = 'personCrCC'
            SQLFieldName = 'personCrCC'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField8: TdaField
            Alias = 'personCrCl_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personCrCl_dbl'
            FieldLength = 0
            FieldName = 'personCrCl_dbl'
            SQLFieldName = 'personCrCl_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField9: TdaField
            Alias = 'personHeight_Int'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personHeight_Int'
            FieldLength = 0
            FieldName = 'personHeight_Int'
            SQLFieldName = 'personHeight_Int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField10: TdaField
            Alias = 'personIBW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personIBW_dbl'
            FieldLength = 0
            FieldName = 'personIBW_dbl'
            SQLFieldName = 'personIBW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField11: TdaField
            Alias = 'personIdealWeight_int'
            DataType = dtInteger
            DisplayWidth = 10
            FieldAlias = 'personIdealWeight_int'
            FieldLength = 0
            FieldName = 'personIdealWeight_int'
            SQLFieldName = 'personIdealWeight_int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField12: TdaField
            Alias = 'personLBW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personLBW_dbl'
            FieldLength = 0
            FieldName = 'personLBW_dbl'
            SQLFieldName = 'personLBW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField13: TdaField
            Alias = 'personMUAC_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personMUAC_dbl'
            FieldLength = 0
            FieldName = 'personMUAC_dbl'
            SQLFieldName = 'personMUAC_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField14: TdaField
            Alias = 'personPregnant_bol'
            DataType = dtBoolean
            DisplayWidth = 5
            FieldAlias = 'personPregnant_bol'
            FieldLength = 0
            FieldName = 'personPregnant_bol'
            SQLFieldName = 'personPregnant_bol'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField15: TdaField
            Alias = 'personPulse_int'
            DataType = dtInteger
            DisplayWidth = 10
            FieldAlias = 'personPulse_int'
            FieldLength = 0
            FieldName = 'personPulse_int'
            SQLFieldName = 'personPulse_int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField16: TdaField
            Alias = 'personRenalFunction_str'
            DisplayWidth = 50
            FieldAlias = 'personRenalFunction_str'
            FieldLength = 50
            FieldName = 'personRenalFunction_str'
            SQLFieldName = 'personRenalFunction_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField17: TdaField
            Alias = 'personRespiratoryRate_str'
            DisplayWidth = 7
            FieldAlias = 'personRespiratoryRate_str'
            FieldLength = 7
            FieldName = 'personRespiratoryRate_str'
            SQLFieldName = 'personRespiratoryRate_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField18: TdaField
            Alias = 'personSrCr_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personSrCr_dbl'
            FieldLength = 0
            FieldName = 'personSrCr_dbl'
            SQLFieldName = 'personSrCr_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField19: TdaField
            Alias = 'personTBW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personTBW_dbl'
            FieldLength = 0
            FieldName = 'personTBW_dbl'
            SQLFieldName = 'personTBW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField20: TdaField
            Alias = 'personTemperature_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personTemperature_dbl'
            FieldLength = 0
            FieldName = 'personTemperature_dbl'
            SQLFieldName = 'personTemperature_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField21: TdaField
            Alias = 'personWeight_ID'
            DataType = dtGUID
            DisplayWidth = 38
            FieldAlias = 'personWeight_ID'
            FieldLength = 38
            FieldName = 'personWeight_ID'
            SQLFieldName = 'personWeight_ID'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField22: TdaField
            Alias = 'personWeight_int'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personWeight_int'
            FieldLength = 0
            FieldName = 'personWeight_int'
            SQLFieldName = 'personWeight_int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField23: TdaField
            Alias = 'personWeightDateRecorded_Dat'
            DataType = dtDateTime
            DisplayWidth = 18
            FieldAlias = 'personWeightDateRecorded_Dat'
            FieldLength = 0
            FieldName = 'personWeightDateRecorded_Dat'
            SQLFieldName = 'personWeightDateRecorded'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField24: TdaField
            Alias = 'personWeightforHeight_str'
            DisplayWidth = 10
            FieldAlias = 'personWeightforHeight_str'
            FieldLength = 10
            FieldName = 'personWeightforHeight_str'
            SQLFieldName = 'personWeightforHeight_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daTable1: TdaTable
            ChildType = 5
            Alias = 'tblPersonWeight'
            JoinType = dajtNone
            OwnerName = 'dbo'
            SQLAlias = 'tblPersonWeight'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
          end
        end
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppDBPipelineWeights: TppDBPipeline
    DataSource = dsqryPersonIdealWeight
    UserName = 'DBPipelineWeights'
    Left = 1064
    Top = 545
  end
  object ppAllergiesReports: TppReport
    AutoStop = False
    DataPipeline = ppDBPipelineAllergies
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 1168
    Top = 601
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipelineAllergies'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 31221
      mmPrintPosition = 0
      object ppDBText32: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDescription_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 14817
        mmTop = 9260
        mmWidth = 157957
        BandType = 0
      end
      object ppDBText33: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDOB_Dat'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4106
        mmLeft = 55298
        mmTop = 16140
        mmWidth = 28046
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = clSilver
        DataField = 'personInstitution_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 16140
        mmWidth = 86784
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DOB:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 16140
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Gender:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 20373
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IPN:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4149
        mmLeft = 6879
        mmTop = 16140
        mmWidth = 7620
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PAS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 20373
        mmWidth = 7673
        BandType = 0
      end
      object ppDBText37: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personGender_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 55298
        mmTop = 20373
        mmWidth = 13758
        BandType = 0
      end
      object ppDBText38: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personRefNoCurrent_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4106
        mmLeft = 14817
        mmTop = 16140
        mmWidth = 29633
        BandType = 0
      end
      object ppDBText39: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personPAS_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 14817
        mmTop = 20373
        mmWidth = 29633
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6615
        mmTop = 25929
        mmWidth = 189971
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6615
        mmTop = 25135
        mmWidth = 189971
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 148432
        mmTop = 2117
        mmWidth = 15875
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'mmmm d, yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 164571
        mmTop = 2117
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Patient Allergies'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4911
        mmLeft = 6879
        mmTop = 2117
        mmWidth = 27305
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 11377
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Clinic:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101600
        mmTop = 16140
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 26458
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 26458
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 26458
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Source'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 162454
        mmTop = 26458
        mmWidth = 19050
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6879
        mmTop = 30956
        mmWidth = 189971
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personAllergy_ID'
        DataPipeline = ppDBPipelineAllergies
        DisplayFormat = '#.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipelineAllergies'
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personAllergyDateEntered_Dat'
        DataPipeline = ppDBPipelineAllergies
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineAllergies'
        mmHeight = 4064
        mmLeft = 10848
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'allergyName_Str'
        DataPipeline = ppDBPipelineAllergies
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppDBPipelineAllergies'
        mmHeight = 4064
        mmLeft = 33073
        mmTop = 0
        mmWidth = 126471
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personAllergySource_Str'
        DataPipeline = ppDBPipelineAllergies
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppDBPipelineAllergies'
        mmHeight = 3969
        mmLeft = 162454
        mmTop = 0
        mmWidth = 34131
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object ppLine14: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6615
        mmTop = 265
        mmWidth = 189971
        BandType = 8
      end
      object ppImage3: TppImage
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          0A544A504547496D616765FD130000FFD8FFE000104A46494600010101006000
          600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC0001108002C012E03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F76B
          EBE834FB57B8B87DA8BE9D4F19C0FC01FC013D057233EB3AB6B134D6F6714901
          0A4C58247CC1BA1C609523F8810B861D71CCBAEC779AA6AB6F1C5E70B5F30A07
          4F9412A7180739077AE491C8550477239EF1D6A7AC787359D3AC745BD92CADE7
          B591E4985B075328236EE211B0319000181C0E056F4E1769753394BEE379FC2F
          A93B48DF680721FCBF32342EA487DA4907E6C6E5E0F07CB1EA6A3373AD787990
          4FBE48B2C4B16DC0AF1B46DE98037124107DB009AE365F19EAEF1CAF0F893538
          C98CF929269A18EF0EC72D88700155000E082F93D39B5A778A358D4BC65A369A
          BA85E5E6997323ADD2CD6A002A220CA49F294A1DFBC704FDD078CD69ECE7D6C4
          7347A1E9FA46B36FAC5B0961CAB6D0C5483D0F423201C7D403EDCD68B3AA2967
          60AA3A92702B8C1A55D68FAECD2E9F0CB31765959536852BB482CD92396DAAA4
          2F52031E830CF8AB24771F0AF56910868DE38994FA8322115872272496CCD399
          A8B6FA1DAA48920CA3AB0E99539A1E44880323AA02719638AF2CF80802F82AFF
          00000FF898BF4FFAE71D33E3F007C1DA6E403FF1325EBFF5CA4ABF63FBDF6771
          7B4F739CF56575750C8C194F420E45426FACD6E3C86BA804DD3CB320DDF975AF
          14BDD6B50D0FF679D11B4D91E07B994DBC92C7C32216909C11D09DA067DEB1BC
          0BF0EBC2BE30D05659BC412C7AD3337996C85018F938F9586581183907BE3B55
          AC3A49CA4F44EDB13ED5DD248FA329AF2C71E37BAAE7A6E38AE6FC0DE1BBEF0A
          682FA5DEEA46FF0064ECD04A777111036AE0938C60F0091CD79AFC43B99FC5DE
          3FB7D06C4249F65CC1183D3CC2374849F6000FF809AE59DA2F4D4F47038578AA
          9CADF2A4AEDF63DBD595D432B0607B839A47912319760A3A649C5794FC1DD759
          56EFC39739568B33C0ADC15E70EBF81C1C7B9AD3F8CC03783ED0100FFA7A75FF
          00AE7254F3697359601C718B0D27BBDFCBB9E85E6C7B37EF5D9FDECF1F9D37ED
          307FCF68FF00EFB15E53081FF0CF520C0C6D6E3FEDE6B0BC0DF0EEC3C5BA35C5
          EDC5E4F6F24770610B1AA90405539E47BD1CC6D1CBA9A84E752A59464E3B5FF5
          3DDC104641C8F5A5AF08D56C75EF855AB5B4961A919ECAE725558108FB719574
          CE01E7822BDA746D521D6B45B3D4A01B63B989640A4E4A93D41F70723F0A69DC
          E6C560BD8C235612E684B67B7E05EA28A64CE6382470A58AA921477C0E94CE21
          F4579E783D2CBC71E1F7D4754BBB89B52791C4A915CBC7F64E4ED5455236F183
          9C64F7CD53F1DDB6A3A3783B4899B55BD1A8C57115A4B710DD48BE727CDCB004
          02C700938CE7BD6AA97BDC97D4C1D67C9CF6D0F4FA2B83F1AC13F853427D7B47
          D42F629AD644DD04F74F34532960A54AB938EBD460D1637F0F8A3C69ABE99AAB
          C890D9C509B4B2F35A30E19773B90082E465473C007DE92A775CCB61BAB6972B
          5AFF005FE47794564689A4CBA3ADE5B0B8965B369B7DA8966691E242AB94CB73
          80C188E4F06BCBFC4FE29F14E83E23BCD3935790C51B831168A3CEC61919F97D
          0E3F0AE7AD563495DEA8E8A507534D8F60BCBB82C2CE6BBB9904704285DDCF60
          2BCC7C09A4EA1AAF8A26F15F9EF1D8B4F300B2312F30390011D368C8FC57A571
          5A9F8B35DD66CCDA5FEA2F35B960C5362A82474CE00CD753F0E355D6EFF59B6D
          296FD934DB589A47892341951D06719E59867BF5AE3FAC46AD48AB69FA9D3ECA
          508367AB6A1FF1EC9FF5DE1FFD18B56253B6273F370A4FCBD7F0F7AAFA87FC7B
          27FD7787FF00462D56D72F26B28AD1E2765125D471BED8F792A739C0C1E6BD04
          AEEC71C9D95CE674E9EF6D26B08526436E2E21492FE189BFD250C52E04AA7EEC
          8182EE39E4BAF4E95661D735865B5123C0BF6A926092B40EA8A5240AB19C64E5
          977376F6A9ECF5BD4EDAF026A70332BC76C1826D5F28CB34A8AC475C9023C804
          E0E71569BC511EE748ECA69245B88EDC2ABA7CC5D490739C7620FA56CEF7D8C1
          5ADB996DE23D52087CE91E378D924638B760630972B1E472724A31201E32B9E9
          9AAB73A95E6A1697AB35E473C6D68A6358A2CAF9827607FE06004C8EC4D69EA7
          AEC3756B710CFA5DCC9144D2BE526546DD6EE092083907A11F4C1C55A4D7AC34
          F9DACD6191576094485C319199D17079C862644EBEBD86326DD05BFDAD0AB06B
          BA949776B68FE52969A5433B44C165D936DC0001C131FCDD4039CF406AAA6B3A
          85C69A8F762098C9F6693CB36C405CDC6D6E33D800DED8CF4AD5BAF138B44B96
          7D3AE5FEC88C6E0C782B1B08FCCC16E9F771DFAB01F4964D765FEDA8F4F8ACCB
          7FA4BC123B48063112C8081DF21C7E4697C8AFFB78CE9B5DD42DE491CC914B11
          8AE1B02020C7E5CCAA0E72724A331C1C676F619AD9D0AF5EFF004DF3A5B88677
          F31D4B4430000C4004766C6323D4D6741AAC1AD68E034134F02C4925C48D22C6
          F1B6D1229E081B87CA72080323DF0BA36A1E7EAB1C502BC76ED04CD246E77132
          A4A10B16EA7383F862935A6C38BD7723D0EE6DAE6FA18A396579624F36747724
          248638FEE8CF0086271EA49EF5A5AC6A3FD9ED1B996E40C126382CDA72DFF7C8
          245732D71FD87E2E01D59629588E0E43718030178C215E4B7242A81C53BC6FE2
          FD5BC3D7B669A7C16925ACD0F98F2CCBBB1FBC45247EF1780AF9EF9381C669CA
          176AC690BBD12BB217F19463CDBA83539258E30C5E3960F2768ED827FC0F6EFD
          7A1D23577BC16E279E512CA33B1AC5E2078F53FCEBCC8F8CB5A6D405C4DA1690
          2F16461237D9F255918F987FD772523DAFF8E3B66B7FC39E3CF116ADAED959DD
          59592C3332090C71E0A86491F83E6B7F0AA11C7218F4C723A4D755F797CB3FE5
          7F733B1D7A68A09ED0CCD7411814FF0045DDE6677C64636F246460E3B135CFF8
          EADA5BCF849ABC5021631C4CC140FE08E5C9FF00C7569FE2CB9FED3D4A0D3618
          A3B8890E6E14F20A8604A9E47560800E72558608071D7DBDB2C3A7A5B4DB5C08
          F6C991C371CFE7CD09F272B32F8AE8F22F80FAEE9F1E8F7FA34B7091DEFDA4DC
          223B01E621551F2FAE0AF3F514CF8F3AEE9F3699A768D0DC24B78B73F6991118
          1F2D02328DDE8496E07B1ABDAD7C07D12F6769B4AD4A6D3909C985D04C8BF4C9
          047E24D2E8BF01B45B2B812EABA8CFA8A0E7C944F211BFDEC12C7F022BAB9E8F
          B4F6B7F958CB96A72F258D3F0DC1A3DB7C1CD16C3C50D145637D108CF9C4AAE6
          46674F9BF87B1078C1C579FF008DBE0EFF006069773AE691AA24FA7DBA79AD1D
          C9C48AB918DAE3863CF1D3F135ED5E25F0B697E29D08E8B7BBE3B7055A3F2182
          18CA8E303A703B118AF363F0110BAC27C5573F64072B01B7E47D3E7C67DF1534
          6B24DC9CAD77B5AE39C1B56B5CBBF0BBC6F792F80356B8D5E47B8FEC6FF572B1
          F9A44DB95427B9C8C67DC5719E10F1445A17886E75ABFB29AF6E6557C18C81B5
          DDB2EDCFF9E4D7ABCBF0DEC21F070F0D69575258DB3CA25B894AF98F3B0C7DEC
          91DC29E38E318ADAF0B787ADBC2DA247A6412F9A4333C92B0DA5D89EB8EDC607
          E15C959A9D4728E88F6F0389A386C24A335CD2968D6AB4F53C226F12243E3DFF
          008492C6DA5B68CDC89CC2FD7040120E3AE72DF9D7A57C5E9E3B9F03E9F710B8
          78A5BD8DD18742A6390835D1F8CBC216BE2EB1B7826B936D2C12EE8E6550C704
          60AE091D78FC8566DE7C3E6BEF065978767D62465B49C4B1CFE40CED01804C67
          B6EEBEC2B2E57AA3B1E3B0D52746ABF75C346B57A74D6C7390FF00C9BDC9FEEB
          7FE94D6A7C19FF009152F7FEBF9BFF00404ADA4F05469E013E14FB7B6C6047DA
          3CB19FF59BFEEE7F0EB5CAAFC17800C2F8866009E820033FF8F51669DC9FAC61
          AAD2AB4E73E5E69B6B46F42AFC63D6ECAE7EC1A5DBCF1CB341234B3EC607CBE3
          001F739271EDEF5DEF80EC67D3BC0FA4DB5C2949443BD94F55DEC5803EF86AC7
          D07E15681A45C25CCED2EA13C6C193CE202291DF68EBF8E6BBA04119041A693B
          DD9CB8BC4D1F610C351BB5177BBEAFFA62D45737115A5ACD733B88E1851A491C
          F4550324FE552D4771047756D2DBCABBA3950A38F50460D51E63F238AF117C3B
          B5D46E5F59D02E9F4AD64E5D6681CAC7293CFCC07AFA8FC41AE4BC41AF5DF893
          E146977B7CA16ED754486475500332EE1B80E9FD339AF40B2F0C6A5A7D9A69F6
          FE25BC1608A1230F046D3468380AB263D3B9526ABEADF0FEC752D22CF4786F2E
          6CB4CB421E2B78021F9C67E62CC0B13F31EF5D30A8935CCEF639274A4D3E556B
          A27BAF09CFABDD40DAEEACF7B696F20963B38E058A3761D0C9C92F8F4E07B547
          E20F09687E368D6E59DA3BBB766892F2D8ED91195882A7D70C0F07F0C66BA3B2
          827B7B611DC5DBDD483ACAE8AA4FE0A00FD2B10786AEACB52BCBBD27599AD12F
          25334F6F2C2B347E61C6597382A4E39E48F6AC94DDF7B58D65056DAF7DCCCF02
          5EEAF06A1ACF86B58BAFB6CDA4B45E5DDF24BA48A5806279CE31FA8C9C5723F1
          674E9A1F10DBEA1E59FB3CF008F78E9BD49E0FE047EBE95EA7A568D06942E245
          9249EEAE9C4973732E37CAC06067000000000000000FA9AA7E28F0E7FC24FA7C
          764F7D25B421F7B8440C5C8E9D7A62B9F170F6B17CA6F856E95AE7CF35EA1F08
          74E995F51D49E32B0BAAC31B11F78824B63D871567FE14F597FD062E7FEFD2D7
          6DE1FD21F42D222D39AF1EE921C88DDD02955FEEF1D71CD7161F0D38CF9A48EB
          AD5A328DA25AD43FE3D93FEBBC3FFA3169F73676F77E5F9F187F29C4899FE161
          D0FD692F2279A1554192258DBAF60E09FD0558AF416E71BD8A93E976573334D3
          5BA3C8DE5EE639C9D84B27E44923DCD64EA56DA26830DBCA6C2DE2125CA2A393
          E5C68E0314666FE11D5471D580AE86AADFDA3DE422259846A721D5A30EB22904
          1520F6E73F87A641B4FB9328E9A2D4CBDBA015904D1C08FBE48E64624ED79143
          48A7DC823EB91EB5188FC32D25D036D6FF00EA479CCD19C32B81C7B93B178EB9
          03BD243E19807DAADC46F1DBFD9E1B44F34AC82454032C47B80AA4F07E5C8C70
          69D2F855248624FB7CE4C42228D2AAC877A06196DD9DD9572307EB9CF35575DC
          CED2EC86492F84D2672CD625DA2303E3E6DE813254FF0078EC627B9C13DB356E
          D2CB4179916D23B76941170AD19C9CEC0A1B7773B4AF7E847B522F87D52E44EB
          74E08BA3741760C06F23C9C71DB6F3F5F6E2974AF0FC7A55C452A5CC8E63B64B
          6C60287550A016C7DE236F07A8DCDDB0026D5B71A4EFAA25FF008477480001A7
          C00793E47DDEB1F3F29F503271E9938AB16BA558D9CE66B7B58E394861B9473F
          31DCDF9919AB9454DD9A72AEC636BFA147AC5B8C71329520E704ED3B8608E410
          7A11EA47426B91B89E38AC1F4BF10DB0BCB2D9BA43E59428C304F0BF3292C376
          1463078E14D7A3D4171676F7254CB182CBF75C12ACBF461C8AA52D2CF60578CB
          9A2ECCF396D03C397B7ED7D04D742202EA7BA8A396390309A2019836EF940520
          FF00C0854F6B71A769A9343E1FD39D643E5C17133B316FDDA2AAA96E8A7691C0
          E4FCD8E41C75E3C35A5A4C258ADC447695210001811820F1C8C71CD5BB5D2AC6
          CD83416C8ACA0052792A00C6067A71E947B89DEC6B3C4D7A91E594B431F41D04
          DBDCC97F70851E4398E263928067683ECA18851818C9E01AD1D7B4B3ACE946C8
          3AA06962662CA1BE559158F04104E01EA08F5AD3A29393BDCCB955AC71707832
          E2DAEEE662D6B750DC5CF9F25B4ABB51C0794AA9DABF371283C8386403A636B2
          5F02BDC417A1A7584CD16C860824611201248EA8C31CAA97523007208FBA707B
          7A2ABDA489E44737ABF861350D4E5BE856DA19DE144137963CC561206DD920F3
          B4639FE54DB0F0DDCDA7895B539AE16E54AED123AA799D5CF388F8FBE07CA57A
          739AE9A8A9E776B0F955EE71C3C1F7B25DB3CFA88114D786F9CC39592197648B
          F21390701A31C80311F23935524F00CD225C5B89E08A194C411C22C8C888A063
          E7425BA77623DB3CD7794557B590B911C9C1E1AB84BC4B9BBB6B0BD1B0288667
          62B0B0080BA96539276F53CF0BCF5A8EDFC27A92CACF36A8BBE4BAFB77991295
          30CE51D4ED0490CB8651838042918E6BB0A297B490F911C97FC22325DC3A52EA
          13C7BACD66693C81D647911C6D2C0950369E410DEFD6AA43E0BB98F4D8ED9D6C
          A4916CC5BC723E01B590124CB1ED45193907A03945CB1EA3B8A28F6920E44723
          61E129F4BD45AFA19229659FED0B3EE60800924DCA46D5E4804E49E4F1CE00AD
          8F0D695268BA0DAE9F2F97BE140AC630A0138EBF2AAFF2CFA935AD452736F705
          14828A28A92828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
          8A0028A28A0028A28A00FFD9}
        mmHeight = 13758
        mmLeft = 4763
        mmTop = 1323
        mmWidth = 90223
        BandType = 8
      end
      object ppLabel71: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 126736
        mmTop = 5292
        mmWidth = 69850
        BandType = 8
      end
      object ppLabel72: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 169863
        mmTop = 529
        mmWidth = 13229
        BandType = 8
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 183357
        mmTop = 529
        mmWidth = 12965
        BandType = 8
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 183357
        mmTop = 9525
        mmWidth = 13229
        BandType = 8
      end
    end
    object daDataModule2: TdaDataModule
      object daADOQueryDataView2: TdaADOQueryDataView
        UserName = 'Query_tblPersonWeight1'
        Height = 0
        Left = 0
        NameColumnWidth = 105
        SizeColumnWidth = 35
        SortMode = 0
        Top = 0
        TypeColumnWidth = 52
        Width = 0
        AutoSearchTabOrder = 0
        object tblPersonWeight: TppChildDBPipeline
          AutoCreateFields = False
          UserName = 'tblPersonWeight'
          object ppField1: TppField
            FieldAlias = 'notes_str'
            FieldName = 'notes_str'
            FieldLength = 200
            DisplayWidth = 200
            Position = 0
            TableName = 'tblPersonWeight'
          end
          object ppField2: TppField
            FieldAlias = 'person_ID'
            FieldName = 'person_ID'
            FieldLength = 38
            DataType = dtGUID
            DisplayWidth = 38
            Position = 1
            TableName = 'tblPersonWeight'
          end
          object ppField3: TppField
            FieldAlias = 'personABW_dbl'
            FieldName = 'personABW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 2
            TableName = 'tblPersonWeight'
          end
          object ppField4: TppField
            FieldAlias = 'personBMI_dbl'
            FieldName = 'personBMI_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 3
            TableName = 'tblPersonWeight'
          end
          object ppField5: TppField
            FieldAlias = 'personBP_str'
            FieldName = 'personBP_str'
            FieldLength = 7
            DisplayWidth = 7
            Position = 4
            TableName = 'tblPersonWeight'
          end
          object ppField6: TppField
            FieldAlias = 'personBSA_dbl'
            FieldName = 'personBSA_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 5
            TableName = 'tblPersonWeight'
          end
          object ppField7: TppField
            FieldAlias = 'personCrCC'
            FieldName = 'personCrCC'
            FieldLength = 50
            DisplayWidth = 50
            Position = 6
            TableName = 'tblPersonWeight'
          end
          object ppField8: TppField
            FieldAlias = 'personCrCl_dbl'
            FieldName = 'personCrCl_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 7
            TableName = 'tblPersonWeight'
          end
          object ppField9: TppField
            FieldAlias = 'personHeight_Int'
            FieldName = 'personHeight_Int'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 8
            TableName = 'tblPersonWeight'
          end
          object ppField10: TppField
            FieldAlias = 'personIBW_dbl'
            FieldName = 'personIBW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 9
            TableName = 'tblPersonWeight'
          end
          object ppField11: TppField
            FieldAlias = 'personIdealWeight_int'
            FieldName = 'personIdealWeight_int'
            FieldLength = 0
            DataType = dtInteger
            DisplayWidth = 10
            Position = 10
            TableName = 'tblPersonWeight'
          end
          object ppField12: TppField
            FieldAlias = 'personLBW_dbl'
            FieldName = 'personLBW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 11
            TableName = 'tblPersonWeight'
          end
          object ppField13: TppField
            FieldAlias = 'personMUAC_dbl'
            FieldName = 'personMUAC_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 12
            TableName = 'tblPersonWeight'
          end
          object ppField14: TppField
            FieldAlias = 'personPregnant_bol'
            FieldName = 'personPregnant_bol'
            FieldLength = 0
            DataType = dtBoolean
            DisplayWidth = 5
            Position = 13
            TableName = 'tblPersonWeight'
          end
          object ppField15: TppField
            FieldAlias = 'personPulse_int'
            FieldName = 'personPulse_int'
            FieldLength = 0
            DataType = dtInteger
            DisplayWidth = 10
            Position = 14
            TableName = 'tblPersonWeight'
          end
          object ppField16: TppField
            FieldAlias = 'personRenalFunction_str'
            FieldName = 'personRenalFunction_str'
            FieldLength = 50
            DisplayWidth = 50
            Position = 15
            TableName = 'tblPersonWeight'
          end
          object ppField17: TppField
            FieldAlias = 'personRespiratoryRate_str'
            FieldName = 'personRespiratoryRate_str'
            FieldLength = 7
            DisplayWidth = 7
            Position = 16
            TableName = 'tblPersonWeight'
          end
          object ppField18: TppField
            FieldAlias = 'personSrCr_dbl'
            FieldName = 'personSrCr_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 17
            TableName = 'tblPersonWeight'
          end
          object ppField19: TppField
            FieldAlias = 'personTBW_dbl'
            FieldName = 'personTBW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 18
            TableName = 'tblPersonWeight'
          end
          object ppField20: TppField
            FieldAlias = 'personTemperature_dbl'
            FieldName = 'personTemperature_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 19
            TableName = 'tblPersonWeight'
          end
          object ppField21: TppField
            FieldAlias = 'personWeight_ID'
            FieldName = 'personWeight_ID'
            FieldLength = 38
            DataType = dtGUID
            DisplayWidth = 38
            Position = 20
            TableName = 'tblPersonWeight'
          end
          object ppField22: TppField
            FieldAlias = 'personWeight_int'
            FieldName = 'personWeight_int'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 21
            TableName = 'tblPersonWeight'
          end
          object ppField23: TppField
            FieldAlias = 'personWeightDateRecorded_Dat'
            FieldName = 'personWeightDateRecorded'
            FieldLength = 0
            DataType = dtDateTime
            DisplayWidth = 18
            Position = 22
            TableName = 'tblPersonWeight'
          end
          object ppField24: TppField
            FieldAlias = 'personWeightforHeight_str'
            FieldName = 'personWeightforHeight_str'
            FieldLength = 10
            DisplayWidth = 10
            Position = 23
            TableName = 'tblPersonWeight'
          end
        end
        object daSQL1: TdaSQL
          GuidCollationType = gcMSSQLServer
          DatabaseName = 'conPatient'
          DatabaseType = dtMSSQLServer
          DataPipelineName = 'tblPersonWeight'
          LinkColor = clMaroon
          LinkType = ltMagicSQL
          MaxSQLFieldAliasLength = 25
          SQLText.Strings = (
            'SELECT tblPersonWeight.notes_str, '
            '       tblPersonWeight.person_ID, '
            '       tblPersonWeight.personABW_dbl, '
            '       tblPersonWeight.personBMI_dbl, '
            '       tblPersonWeight.personBP_str, '
            '       tblPersonWeight.personBSA_dbl, '
            '       tblPersonWeight.personCrCC, '
            '       tblPersonWeight.personCrCl_dbl, '
            '       tblPersonWeight.personHeight_Int, '
            '       tblPersonWeight.personIBW_dbl, '
            '       tblPersonWeight.personIdealWeight_int, '
            '       tblPersonWeight.personLBW_dbl, '
            '       tblPersonWeight.personMUAC_dbl, '
            '       tblPersonWeight.personPregnant_bol, '
            '       tblPersonWeight.personPulse_int, '
            '       tblPersonWeight.personRenalFunction_str, '
            '       tblPersonWeight.personRespiratoryRate_str, '
            '       tblPersonWeight.personSrCr_dbl, '
            '       tblPersonWeight.personTBW_dbl, '
            '       tblPersonWeight.personTemperature_dbl, '
            '       tblPersonWeight.personWeight_ID, '
            '       tblPersonWeight.personWeight_int, '
            
              '       tblPersonWeight.personWeightDateRecorded_Dat personWeight' +
              'DateRecorded, '
            '       tblPersonWeight.personWeightforHeight_str'
            'FROM dbo.tblPersonWeight tblPersonWeight'
            'WHERE ('#39'c'#39' <> '#39'c'#39' )')
          SQLType = sqSQL2
          object daField1: TdaField
            Alias = 'notes_str'
            DisplayWidth = 200
            FieldAlias = 'notes_str'
            FieldLength = 200
            FieldName = 'notes_str'
            SQLFieldName = 'notes_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField2: TdaField
            Alias = 'person_ID'
            DataType = dtGUID
            DisplayWidth = 38
            FieldAlias = 'person_ID'
            FieldLength = 38
            FieldName = 'person_ID'
            SQLFieldName = 'person_ID'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField3: TdaField
            Alias = 'personABW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personABW_dbl'
            FieldLength = 0
            FieldName = 'personABW_dbl'
            SQLFieldName = 'personABW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField4: TdaField
            Alias = 'personBMI_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personBMI_dbl'
            FieldLength = 0
            FieldName = 'personBMI_dbl'
            SQLFieldName = 'personBMI_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField5: TdaField
            Alias = 'personBP_str'
            DisplayWidth = 7
            FieldAlias = 'personBP_str'
            FieldLength = 7
            FieldName = 'personBP_str'
            SQLFieldName = 'personBP_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField6: TdaField
            Alias = 'personBSA_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personBSA_dbl'
            FieldLength = 0
            FieldName = 'personBSA_dbl'
            SQLFieldName = 'personBSA_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField7: TdaField
            Alias = 'personCrCC'
            DisplayWidth = 50
            FieldAlias = 'personCrCC'
            FieldLength = 50
            FieldName = 'personCrCC'
            SQLFieldName = 'personCrCC'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField8: TdaField
            Alias = 'personCrCl_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personCrCl_dbl'
            FieldLength = 0
            FieldName = 'personCrCl_dbl'
            SQLFieldName = 'personCrCl_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField9: TdaField
            Alias = 'personHeight_Int'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personHeight_Int'
            FieldLength = 0
            FieldName = 'personHeight_Int'
            SQLFieldName = 'personHeight_Int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField10: TdaField
            Alias = 'personIBW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personIBW_dbl'
            FieldLength = 0
            FieldName = 'personIBW_dbl'
            SQLFieldName = 'personIBW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField11: TdaField
            Alias = 'personIdealWeight_int'
            DataType = dtInteger
            DisplayWidth = 10
            FieldAlias = 'personIdealWeight_int'
            FieldLength = 0
            FieldName = 'personIdealWeight_int'
            SQLFieldName = 'personIdealWeight_int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField12: TdaField
            Alias = 'personLBW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personLBW_dbl'
            FieldLength = 0
            FieldName = 'personLBW_dbl'
            SQLFieldName = 'personLBW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField13: TdaField
            Alias = 'personMUAC_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personMUAC_dbl'
            FieldLength = 0
            FieldName = 'personMUAC_dbl'
            SQLFieldName = 'personMUAC_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField14: TdaField
            Alias = 'personPregnant_bol'
            DataType = dtBoolean
            DisplayWidth = 5
            FieldAlias = 'personPregnant_bol'
            FieldLength = 0
            FieldName = 'personPregnant_bol'
            SQLFieldName = 'personPregnant_bol'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField15: TdaField
            Alias = 'personPulse_int'
            DataType = dtInteger
            DisplayWidth = 10
            FieldAlias = 'personPulse_int'
            FieldLength = 0
            FieldName = 'personPulse_int'
            SQLFieldName = 'personPulse_int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField16: TdaField
            Alias = 'personRenalFunction_str'
            DisplayWidth = 50
            FieldAlias = 'personRenalFunction_str'
            FieldLength = 50
            FieldName = 'personRenalFunction_str'
            SQLFieldName = 'personRenalFunction_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField17: TdaField
            Alias = 'personRespiratoryRate_str'
            DisplayWidth = 7
            FieldAlias = 'personRespiratoryRate_str'
            FieldLength = 7
            FieldName = 'personRespiratoryRate_str'
            SQLFieldName = 'personRespiratoryRate_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField18: TdaField
            Alias = 'personSrCr_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personSrCr_dbl'
            FieldLength = 0
            FieldName = 'personSrCr_dbl'
            SQLFieldName = 'personSrCr_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField19: TdaField
            Alias = 'personTBW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personTBW_dbl'
            FieldLength = 0
            FieldName = 'personTBW_dbl'
            SQLFieldName = 'personTBW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField20: TdaField
            Alias = 'personTemperature_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personTemperature_dbl'
            FieldLength = 0
            FieldName = 'personTemperature_dbl'
            SQLFieldName = 'personTemperature_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField21: TdaField
            Alias = 'personWeight_ID'
            DataType = dtGUID
            DisplayWidth = 38
            FieldAlias = 'personWeight_ID'
            FieldLength = 38
            FieldName = 'personWeight_ID'
            SQLFieldName = 'personWeight_ID'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField22: TdaField
            Alias = 'personWeight_int'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personWeight_int'
            FieldLength = 0
            FieldName = 'personWeight_int'
            SQLFieldName = 'personWeight_int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField23: TdaField
            Alias = 'personWeightDateRecorded_Dat'
            DataType = dtDateTime
            DisplayWidth = 18
            FieldAlias = 'personWeightDateRecorded_Dat'
            FieldLength = 0
            FieldName = 'personWeightDateRecorded_Dat'
            SQLFieldName = 'personWeightDateRecorded'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField24: TdaField
            Alias = 'personWeightforHeight_str'
            DisplayWidth = 10
            FieldAlias = 'personWeightforHeight_str'
            FieldLength = 10
            FieldName = 'personWeightforHeight_str'
            SQLFieldName = 'personWeightforHeight_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daTable1: TdaTable
            ChildType = 5
            Alias = 'tblPersonWeight'
            JoinType = dajtNone
            OwnerName = 'dbo'
            SQLAlias = 'tblPersonWeight'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
          end
        end
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppDBPipelineAllergies: TppDBPipeline
    DataSource = dsAllergyReport
    UserName = 'DBPipelineAllergies'
    Left = 1064
    Top = 601
  end
  object qryAllergyReport: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'person_ID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT tblPersonAllergy.*, tblAllergy.* '
      
        'FROM tblPersonAllergy LEFT OUTER JOIN tblAllergy ON tblPersonAll' +
        'ergy.personAllergyDescription_Str = tblAllergy.allergyCode_Str'
      'WHERE (tblPersonAllergy.person_ID = :person_ID)'
      'ORDER BY tblPersonAllergy.personAllergyDateEntered_Dat DESC')
    Left = 864
    Top = 601
    object qryAllergyReportpersonAllergy_ID: TGuidField
      FieldName = 'personAllergy_ID'
      FixedChar = True
      Size = 38
    end
    object qryAllergyReportperson_ID: TGuidField
      FieldName = 'person_ID'
      FixedChar = True
      Size = 38
    end
    object qryAllergyReportproductCode_ID: TIntegerField
      FieldName = 'productCode_ID'
    end
    object qryAllergyReportpersonAllergyDateEntered_Dat: TDateTimeField
      FieldName = 'personAllergyDateEntered_Dat'
    end
    object qryAllergyReportpersonAllergyDescription_Str: TWideStringField
      FieldName = 'personAllergyDescription_Str'
      Size = 100
    end
    object qryAllergyReportpersonAllergySource_Str: TWideStringField
      FieldName = 'personAllergySource_Str'
      Size = 50
    end
    object qryAllergyReportpersonAllergyConfirmedBy_Str: TWideStringField
      FieldName = 'personAllergyConfirmedBy_Str'
      Size = 50
    end
    object qryAllergyReportpersonAllergyStatus_Str: TWideStringField
      FieldName = 'personAllergyStatus_Str'
      Size = 50
    end
    object qryAllergyReportpersonAllergyAuthicatedBy_Str: TWideStringField
      FieldName = 'personAllergyAuthicatedBy_Str'
      Size = 50
    end
    object qryAllergyReportpersonAllergyConfirmed_bol: TBooleanField
      FieldName = 'personAllergyConfirmed_bol'
    end
    object qryAllergyReportallergyName_Str: TWideStringField
      FieldName = 'allergyName_Str'
      Size = 100
    end
    object qryAllergyReportallergyDescription_Str: TWideStringField
      FieldName = 'allergyDescription_Str'
      Size = 150
    end
    object qryAllergyReportallergyCode_Str: TWideStringField
      FieldName = 'allergyCode_Str'
      Size = 10
    end
  end
  object dsAllergyReport: TDataSource
    DataSet = qryAllergyReport
    Left = 960
    Top = 601
  end
  object ppLabReports: TppReport
    AutoStop = False
    DataPipeline = ppDBPipelineLabsResults
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
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 1168
    Top = 657
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipelineLabsResults'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 31221
      mmPrintPosition = 0
      object ppDBText43: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDescription_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 14817
        mmTop = 9260
        mmWidth = 157957
        BandType = 0
      end
      object ppDBText44: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDOB_Dat'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4106
        mmLeft = 55298
        mmTop = 16140
        mmWidth = 28046
        BandType = 0
      end
      object ppDBText45: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = clSilver
        DataField = 'personInstitution_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 16140
        mmWidth = 86784
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DOB:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 16140
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Gender:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 20373
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IPN:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4149
        mmLeft = 6879
        mmTop = 16140
        mmWidth = 7620
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PAS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 20373
        mmWidth = 7673
        BandType = 0
      end
      object ppDBText46: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personGender_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 55298
        mmTop = 20373
        mmWidth = 13758
        BandType = 0
      end
      object ppDBText47: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personRefNoCurrent_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4106
        mmLeft = 14817
        mmTop = 16140
        mmWidth = 29633
        BandType = 0
      end
      object ppDBText48: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personPAS_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 14817
        mmTop = 20373
        mmWidth = 29633
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6615
        mmTop = 25929
        mmWidth = 276861
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6615
        mmTop = 25135
        mmWidth = 276861
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 234686
        mmTop = 2117
        mmWidth = 15875
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'mmmm d, yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 250825
        mmTop = 2117
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Patient Lab Results'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4911
        mmLeft = 6879
        mmTop = 2117
        mmWidth = 32300
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 11377
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Clinic:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101600
        mmTop = 16140
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 26458
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 26458
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 26458
        mmWidth = 4233
        BandType = 0
      end
      object ppLine17: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6879
        mmTop = 30956
        mmWidth = 276490
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Result'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 148432
        mmTop = 26458
        mmWidth = 19050
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'lbResultID'
        DataPipeline = ppDBPipelineLabsResults
        DisplayFormat = '#.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipelineLabsResults'
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'testDate_dat'
        DataPipeline = ppDBPipelineLabsResults
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineLabsResults'
        mmHeight = 4064
        mmLeft = 10848
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'testName_str'
        DataPipeline = ppDBPipelineLabsResults
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineLabsResults'
        mmHeight = 3969
        mmLeft = 33073
        mmTop = 0
        mmWidth = 75142
        BandType = 4
      end
      object ppDBText51: TppDBText
        UserName = 'DBText42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'testPlace_str'
        DataPipeline = ppDBPipelineLabsResults
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineLabsResults'
        mmHeight = 3302
        mmLeft = 10848
        mmTop = 4233
        mmWidth = 110861
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'testResult_dbl'
        DataPipeline = ppDBPipelineLabsResults
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineLabsResults'
        mmHeight = 3969
        mmLeft = 148432
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'testResult_str'
        DataPipeline = ppDBPipelineLabsResults
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineLabsResults'
        mmHeight = 3969
        mmLeft = 169863
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object ppLine18: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 6615
        mmTop = 265
        mmWidth = 276755
        BandType = 8
      end
      object ppImage4: TppImage
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          0A544A504547496D616765FD130000FFD8FFE000104A46494600010101006000
          600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC0001108002C012E03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F76B
          EBE834FB57B8B87DA8BE9D4F19C0FC01FC013D057233EB3AB6B134D6F6714901
          0A4C58247CC1BA1C609523F8810B861D71CCBAEC779AA6AB6F1C5E70B5F30A07
          4F9412A7180739077AE491C8550477239EF1D6A7AC787359D3AC745BD92CADE7
          B591E4985B075328236EE211B0319000181C0E056F4E1769753394BEE379FC2F
          A93B48DF680721FCBF32342EA487DA4907E6C6E5E0F07CB1EA6A3373AD787990
          4FBE48B2C4B16DC0AF1B46DE98037124107DB009AE365F19EAEF1CAF0F893538
          C98CF929269A18EF0EC72D88700155000E082F93D39B5A778A358D4BC65A369A
          BA85E5E6997323ADD2CD6A002A220CA49F294A1DFBC704FDD078CD69ECE7D6C4
          7347A1E9FA46B36FAC5B0961CAB6D0C5483D0F423201C7D403EDCD68B3AA2967
          60AA3A92702B8C1A55D68FAECD2E9F0CB31765959536852BB482CD92396DAAA4
          2F52031E830CF8AB24771F0AF56910868DE38994FA8322115872272496CCD399
          A8B6FA1DAA48920CA3AB0E99539A1E44880323AA02719638AF2CF80802F82AFF
          00000FF898BF4FFAE71D33E3F007C1DA6E403FF1325EBFF5CA4ABF63FBDF6771
          7B4F739CF56575750C8C194F420E45426FACD6E3C86BA804DD3CB320DDF975AF
          14BDD6B50D0FF679D11B4D91E07B994DBC92C7C32216909C11D09DA067DEB1BC
          0BF0EBC2BE30D05659BC412C7AD3337996C85018F938F9586581183907BE3B55
          AC3A49CA4F44EDB13ED5DD248FA329AF2C71E37BAAE7A6E38AE6FC0DE1BBEF0A
          682FA5DEEA46FF0064ECD04A777111036AE0938C60F0091CD79AFC43B99FC5DE
          3FB7D06C4249F65CC1183D3CC2374849F6000FF809AE59DA2F4D4F47038578AA
          9CADF2A4AEDF63DBD595D432B0607B839A47912319760A3A649C5794FC1DD759
          56EFC39739568B33C0ADC15E70EBF81C1C7B9AD3F8CC03783ED0100FFA7A75FF
          00AE7254F3697359601C718B0D27BBDFCBB9E85E6C7B37EF5D9FDECF1F9D37ED
          307FCF68FF00EFB15E53081FF0CF520C0C6D6E3FEDE6B0BC0DF0EEC3C5BA35C5
          EDC5E4F6F24770610B1AA90405539E47BD1CC6D1CBA9A84E752A59464E3B5FF5
          3DDC104641C8F5A5AF08D56C75EF855AB5B4961A919ECAE725558108FB719574
          CE01E7822BDA746D521D6B45B3D4A01B63B989640A4E4A93D41F70723F0A69DC
          E6C560BD8C235612E684B67B7E05EA28A64CE6382470A58AA921477C0E94CE21
          F4579E783D2CBC71E1F7D4754BBB89B52791C4A915CBC7F64E4ED5455236F183
          9C64F7CD53F1DDB6A3A3783B4899B55BD1A8C57115A4B710DD48BE727CDCB004
          02C700938CE7BD6AA97BDC97D4C1D67C9CF6D0F4FA2B83F1AC13F853427D7B47
          D42F629AD644DD04F74F34532960A54AB938EBD460D1637F0F8A3C69ABE99AAB
          C890D9C509B4B2F35A30E19773B90082E465473C007DE92A775CCB61BAB6972B
          5AFF005FE47794564689A4CBA3ADE5B0B8965B369B7DA8966691E242AB94CB73
          80C188E4F06BCBFC4FE29F14E83E23BCD3935790C51B831168A3CEC61919F97D
          0E3F0AE7AD563495DEA8E8A507534D8F60BCBB82C2CE6BBB9904704285DDCF60
          2BCC7C09A4EA1AAF8A26F15F9EF1D8B4F300B2312F30390011D368C8FC57A571
          5A9F8B35DD66CCDA5FEA2F35B960C5362A82474CE00CD753F0E355D6EFF59B6D
          296FD934DB589A47892341951D06719E59867BF5AE3FAC46AD48AB69FA9D3ECA
          508367AB6A1FF1EC9FF5DE1FFD18B56253B6273F370A4FCBD7F0F7AAFA87FC7B
          27FD7787FF00462D56D72F26B28AD1E2765125D471BED8F792A739C0C1E6BD04
          AEEC71C9D95CE674E9EF6D26B08526436E2E21492FE189BFD250C52E04AA7EEC
          8182EE39E4BAF4E95661D735865B5123C0BF6A926092B40EA8A5240AB19C64E5
          977376F6A9ECF5BD4EDAF026A70332BC76C1826D5F28CB34A8AC475C9023C804
          E0E71569BC511EE748ECA69245B88EDC2ABA7CC5D490739C7620FA56CEF7D8C1
          5ADB996DE23D52087CE91E378D924638B760630972B1E472724A31201E32B9E9
          9AAB73A95E6A1697AB35E473C6D68A6358A2CAF9827607FE06004C8EC4D69EA7
          AEC3756B710CFA5DCC9144D2BE526546DD6EE092083907A11F4C1C55A4D7AC34
          F9DACD6191576094485C319199D17079C862644EBEBD86326DD05BFDAD0AB06B
          BA949776B68FE52969A5433B44C165D936DC0001C131FCDD4039CF406AAA6B3A
          85C69A8F762098C9F6693CB36C405CDC6D6E33D800DED8CF4AD5BAF138B44B96
          7D3AE5FEC88C6E0C782B1B08FCCC16E9F771DFAB01F4964D765FEDA8F4F8ACCB
          7FA4BC123B48063112C8081DF21C7E4697C8AFFB78CE9B5DD42DE491CC914B11
          8AE1B02020C7E5CCAA0E72724A331C1C676F619AD9D0AF5EFF004DF3A5B88677
          F31D4B4430000C4004766C6323D4D6741AAC1AD68E034134F02C4925C48D22C6
          F1B6D1229E081B87CA72080323DF0BA36A1E7EAB1C502BC76ED04CD246E77132
          A4A10B16EA7383F862935A6C38BD7723D0EE6DAE6FA18A396579624F36747724
          248638FEE8CF0086271EA49EF5A5AC6A3FD9ED1B996E40C126382CDA72DFF7C8
          245732D71FD87E2E01D59629588E0E43718030178C215E4B7242A81C53BC6FE2
          FD5BC3D7B669A7C16925ACD0F98F2CCBBB1FBC45247EF1780AF9EF9381C669CA
          176AC690BBD12BB217F19463CDBA83539258E30C5E3960F2768ED827FC0F6EFD
          7A1D23577BC16E279E512CA33B1AC5E2078F53FCEBCC8F8CB5A6D405C4DA1690
          2F16461237D9F255918F987FD772523DAFF8E3B66B7FC39E3CF116ADAED959DD
          59592C3332090C71E0A86491F83E6B7F0AA11C7218F4C723A4D755F797CB3FE5
          7F733B1D7A68A09ED0CCD7411814FF0045DDE6677C64636F246460E3B135CFF8
          EADA5BCF849ABC5021631C4CC140FE08E5C9FF00C7569FE2CB9FED3D4A0D3618
          A3B8890E6E14F20A8604A9E47560800E72558608071D7DBDB2C3A7A5B4DB5C08
          F6C991C371CFE7CD09F272B32F8AE8F22F80FAEE9F1E8F7FA34B7091DEFDA4DC
          223B01E621551F2FAE0AF3F514CF8F3AEE9F3699A768D0DC24B78B73F6991118
          1F2D02328DDE8496E07B1ABDAD7C07D12F6769B4AD4A6D3909C985D04C8BF4C9
          047E24D2E8BF01B45B2B812EABA8CFA8A0E7C944F211BFDEC12C7F022BAB9E8F
          B4F6B7F958CB96A72F258D3F0DC1A3DB7C1CD16C3C50D145637D108CF9C4AAE6
          46674F9BF87B1078C1C579FF008DBE0EFF006069773AE691AA24FA7DBA79AD1D
          C9C48AB918DAE3863CF1D3F135ED5E25F0B697E29D08E8B7BBE3B7055A3F2182
          18CA8E303A703B118AF363F0110BAC27C5573F64072B01B7E47D3E7C67DF1534
          6B24DC9CAD77B5AE39C1B56B5CBBF0BBC6F792F80356B8D5E47B8FEC6FF572B1
          F9A44DB95427B9C8C67DC5719E10F1445A17886E75ABFB29AF6E6557C18C81B5
          DDB2EDCFF9E4D7ABCBF0DEC21F070F0D69575258DB3CA25B894AF98F3B0C7DEC
          91DC29E38E318ADAF0B787ADBC2DA247A6412F9A4333C92B0DA5D89EB8EDC607
          E15C959A9D4728E88F6F0389A386C24A335CD2968D6AB4F53C226F12243E3DFF
          008492C6DA5B68CDC89CC2FD7040120E3AE72DF9D7A57C5E9E3B9F03E9F710B8
          78A5BD8DD18742A6390835D1F8CBC216BE2EB1B7826B936D2C12EE8E6550C704
          60AE091D78FC8566DE7C3E6BEF065978767D62465B49C4B1CFE40CED01804C67
          B6EEBEC2B2E57AA3B1E3B0D52746ABF75C346B57A74D6C7390FF00C9BDC9FEEB
          7FE94D6A7C19FF009152F7FEBF9BFF00404ADA4F05469E013E14FB7B6C6047DA
          3CB19FF59BFEEE7F0EB5CAAFC17800C2F8866009E820033FF8F51669DC9FAC61
          AAD2AB4E73E5E69B6B46F42AFC63D6ECAE7EC1A5DBCF1CB341234B3EC607CBE3
          001F739271EDEF5DEF80EC67D3BC0FA4DB5C2949443BD94F55DEC5803EF86AC7
          D07E15681A45C25CCED2EA13C6C193CE202291DF68EBF8E6BBA04119041A693B
          DD9CB8BC4D1F610C351BB5177BBEAFFA62D45737115A5ACD733B88E1851A491C
          F4550324FE552D4771047756D2DBCABBA3950A38F50460D51E63F238AF117C3B
          B5D46E5F59D02E9F4AD64E5D6681CAC7293CFCC07AFA8FC41AE4BC41AF5DF893
          E146977B7CA16ED754486475500332EE1B80E9FD339AF40B2F0C6A5A7D9A69F6
          FE25BC1608A1230F046D3468380AB263D3B9526ABEADF0FEC752D22CF4786F2E
          6CB4CB421E2B78021F9C67E62CC0B13F31EF5D30A8935CCEF639274A4D3E556B
          A27BAF09CFABDD40DAEEACF7B696F20963B38E058A3761D0C9C92F8F4E07B547
          E20F09687E368D6E59DA3BBB766892F2D8ED91195882A7D70C0F07F0C66BA3B2
          827B7B611DC5DBDD483ACAE8AA4FE0A00FD2B10786AEACB52BCBBD27599AD12F
          25334F6F2C2B347E61C6597382A4E39E48F6AC94DDF7B58D65056DAF7DCCCF02
          5EEAF06A1ACF86B58BAFB6CDA4B45E5DDF24BA48A5806279CE31FA8C9C5723F1
          674E9A1F10DBEA1E59FB3CF008F78E9BD49E0FE047EBE95EA7A568D06942E245
          9249EEAE9C4973732E37CAC06067000000000000000FA9AA7E28F0E7FC24FA7C
          764F7D25B421F7B8440C5C8E9D7A62B9F170F6B17CA6F856E95AE7CF35EA1F08
          74E995F51D49E32B0BAAC31B11F78824B63D871567FE14F597FD062E7FEFD2D7
          6DE1FD21F42D222D39AF1EE921C88DDD02955FEEF1D71CD7161F0D38CF9A48EB
          AD5A328DA25AD43FE3D93FEBBC3FFA3169F73676F77E5F9F187F29C4899FE161
          D0FD692F2279A1554192258DBAF60E09FD0558AF416E71BD8A93E976573334D3
          5BA3C8DE5EE639C9D84B27E44923DCD64EA56DA26830DBCA6C2DE2125CA2A393
          E5C68E0314666FE11D5471D580AE86AADFDA3DE422259846A721D5A30EB22904
          1520F6E73F87A641B4FB9328E9A2D4CBDBA015904D1C08FBE48E64624ED79143
          48A7DC823EB91EB5188FC32D25D036D6FF00EA479CCD19C32B81C7B93B178EB9
          03BD243E19807DAADC46F1DBFD9E1B44F34AC82454032C47B80AA4F07E5C8C70
          69D2F855248624FB7CE4C42228D2AAC877A06196DD9DD9572307EB9CF35575DC
          CED2EC86492F84D2672CD625DA2303E3E6DE813254FF0078EC627B9C13DB356E
          D2CB4179916D23B76941170AD19C9CEC0A1B7773B4AF7E847B522F87D52E44EB
          74E08BA3741760C06F23C9C71DB6F3F5F6E2974AF0FC7A55C452A5CC8E63B64B
          6C60287550A016C7DE236F07A8DCDDB0026D5B71A4EFAA25FF008477480001A7
          C00793E47DDEB1F3F29F503271E9938AB16BA558D9CE66B7B58E394861B9473F
          31DCDF9919AB9454DD9A72AEC636BFA147AC5B8C71329520E704ED3B8608E410
          7A11EA47426B91B89E38AC1F4BF10DB0BCB2D9BA43E59428C304F0BF3292C376
          1463078E14D7A3D4171676F7254CB182CBF75C12ACBF461C8AA52D2CF60578CB
          9A2ECCF396D03C397B7ED7D04D742202EA7BA8A396390309A2019836EF940520
          FF00C0854F6B71A769A9343E1FD39D643E5C17133B316FDDA2AAA96E8A7691C0
          E4FCD8E41C75E3C35A5A4C258ADC447695210001811820F1C8C71CD5BB5D2AC6
          CD83416C8ACA0052792A00C6067A71E947B89DEC6B3C4D7A91E594B431F41D04
          DBDCC97F70851E4398E263928067683ECA18851818C9E01AD1D7B4B3ACE946C8
          3AA06962662CA1BE559158F04104E01EA08F5AD3A29393BDCCB955AC71707832
          E2DAEEE662D6B750DC5CF9F25B4ABB51C0794AA9DABF371283C8386403A636B2
          5F02BDC417A1A7584CD16C860824611201248EA8C31CAA97523007208FBA707B
          7A2ABDA489E44737ABF861350D4E5BE856DA19DE144137963CC561206DD920F3
          B4639FE54DB0F0DDCDA7895B539AE16E54AED123AA799D5CF388F8FBE07CA57A
          739AE9A8A9E776B0F955EE71C3C1F7B25DB3CFA88114D786F9CC39592197648B
          F21390701A31C80311F23935524F00CD225C5B89E08A194C411C22C8C888A063
          E7425BA77623DB3CD7794557B590B911C9C1E1AB84BC4B9BBB6B0BD1B0288667
          62B0B0080BA96539276F53CF0BCF5A8EDFC27A92CACF36A8BBE4BAFB77991295
          30CE51D4ED0490CB8651838042918E6BB0A297B490F911C97FC22325DC3A52EA
          13C7BACD66693C81D647911C6D2C0950369E410DEFD6AA43E0BB98F4D8ED9D6C
          A4916CC5BC723E01B590124CB1ED45193907A03945CB1EA3B8A28F6920E44723
          61E129F4BD45AFA19229659FED0B3EE60800924DCA46D5E4804E49E4F1CE00AD
          8F0D695268BA0DAE9F2F97BE140AC630A0138EBF2AAFF2CFA935AD452736F705
          14828A28A92828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
          8A0028A28A0028A28A00FFD9}
        mmHeight = 13758
        mmLeft = 4763
        mmTop = 1323
        mmWidth = 90223
        BandType = 8
      end
      object ppLabel87: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 213784
        mmTop = 6085
        mmWidth = 69850
        BandType = 8
      end
      object ppLabel88: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 256911
        mmTop = 1323
        mmWidth = 13229
        BandType = 8
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 270405
        mmTop = 1323
        mmWidth = 12965
        BandType = 8
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 270405
        mmTop = 10319
        mmWidth = 13229
        BandType = 8
      end
    end
    object daDataModule3: TdaDataModule
      object daADOQueryDataView3: TdaADOQueryDataView
        UserName = 'Query_TdaADOQueryDataView'
        Height = 0
        Left = 0
        NameColumnWidth = 105
        SizeColumnWidth = 35
        SortMode = 0
        Top = 0
        TypeColumnWidth = 52
        Width = 0
        AutoSearchTabOrder = 0
        object tblPersonWeight: TppChildDBPipeline
          AutoCreateFields = False
          UserName = 'tblPersonWeight'
          object ppField1: TppField
            FieldAlias = 'notes_str'
            FieldName = 'notes_str'
            FieldLength = 200
            DisplayWidth = 200
            Position = 0
            TableName = 'tblPersonWeight'
          end
          object ppField2: TppField
            FieldAlias = 'person_ID'
            FieldName = 'person_ID'
            FieldLength = 38
            DataType = dtGUID
            DisplayWidth = 38
            Position = 1
            TableName = 'tblPersonWeight'
          end
          object ppField3: TppField
            FieldAlias = 'personABW_dbl'
            FieldName = 'personABW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 2
            TableName = 'tblPersonWeight'
          end
          object ppField4: TppField
            FieldAlias = 'personBMI_dbl'
            FieldName = 'personBMI_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 3
            TableName = 'tblPersonWeight'
          end
          object ppField5: TppField
            FieldAlias = 'personBP_str'
            FieldName = 'personBP_str'
            FieldLength = 7
            DisplayWidth = 7
            Position = 4
            TableName = 'tblPersonWeight'
          end
          object ppField6: TppField
            FieldAlias = 'personBSA_dbl'
            FieldName = 'personBSA_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 5
            TableName = 'tblPersonWeight'
          end
          object ppField7: TppField
            FieldAlias = 'personCrCC'
            FieldName = 'personCrCC'
            FieldLength = 50
            DisplayWidth = 50
            Position = 6
            TableName = 'tblPersonWeight'
          end
          object ppField8: TppField
            FieldAlias = 'personCrCl_dbl'
            FieldName = 'personCrCl_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 7
            TableName = 'tblPersonWeight'
          end
          object ppField9: TppField
            FieldAlias = 'personHeight_Int'
            FieldName = 'personHeight_Int'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 8
            TableName = 'tblPersonWeight'
          end
          object ppField10: TppField
            FieldAlias = 'personIBW_dbl'
            FieldName = 'personIBW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 9
            TableName = 'tblPersonWeight'
          end
          object ppField11: TppField
            FieldAlias = 'personIdealWeight_int'
            FieldName = 'personIdealWeight_int'
            FieldLength = 0
            DataType = dtInteger
            DisplayWidth = 10
            Position = 10
            TableName = 'tblPersonWeight'
          end
          object ppField12: TppField
            FieldAlias = 'personLBW_dbl'
            FieldName = 'personLBW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 11
            TableName = 'tblPersonWeight'
          end
          object ppField13: TppField
            FieldAlias = 'personMUAC_dbl'
            FieldName = 'personMUAC_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 12
            TableName = 'tblPersonWeight'
          end
          object ppField14: TppField
            FieldAlias = 'personPregnant_bol'
            FieldName = 'personPregnant_bol'
            FieldLength = 0
            DataType = dtBoolean
            DisplayWidth = 5
            Position = 13
            TableName = 'tblPersonWeight'
          end
          object ppField15: TppField
            FieldAlias = 'personPulse_int'
            FieldName = 'personPulse_int'
            FieldLength = 0
            DataType = dtInteger
            DisplayWidth = 10
            Position = 14
            TableName = 'tblPersonWeight'
          end
          object ppField16: TppField
            FieldAlias = 'personRenalFunction_str'
            FieldName = 'personRenalFunction_str'
            FieldLength = 50
            DisplayWidth = 50
            Position = 15
            TableName = 'tblPersonWeight'
          end
          object ppField17: TppField
            FieldAlias = 'personRespiratoryRate_str'
            FieldName = 'personRespiratoryRate_str'
            FieldLength = 7
            DisplayWidth = 7
            Position = 16
            TableName = 'tblPersonWeight'
          end
          object ppField18: TppField
            FieldAlias = 'personSrCr_dbl'
            FieldName = 'personSrCr_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 17
            TableName = 'tblPersonWeight'
          end
          object ppField19: TppField
            FieldAlias = 'personTBW_dbl'
            FieldName = 'personTBW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 18
            TableName = 'tblPersonWeight'
          end
          object ppField20: TppField
            FieldAlias = 'personTemperature_dbl'
            FieldName = 'personTemperature_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 19
            TableName = 'tblPersonWeight'
          end
          object ppField21: TppField
            FieldAlias = 'personWeight_ID'
            FieldName = 'personWeight_ID'
            FieldLength = 38
            DataType = dtGUID
            DisplayWidth = 38
            Position = 20
            TableName = 'tblPersonWeight'
          end
          object ppField22: TppField
            FieldAlias = 'personWeight_int'
            FieldName = 'personWeight_int'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 21
            TableName = 'tblPersonWeight'
          end
          object ppField23: TppField
            FieldAlias = 'personWeightDateRecorded_Dat'
            FieldName = 'personWeightDateRecorded'
            FieldLength = 0
            DataType = dtDateTime
            DisplayWidth = 18
            Position = 22
            TableName = 'tblPersonWeight'
          end
          object ppField24: TppField
            FieldAlias = 'personWeightforHeight_str'
            FieldName = 'personWeightforHeight_str'
            FieldLength = 10
            DisplayWidth = 10
            Position = 23
            TableName = 'tblPersonWeight'
          end
        end
        object daSQL1: TdaSQL
          GuidCollationType = gcMSSQLServer
          DatabaseName = 'conPatient'
          DatabaseType = dtMSSQLServer
          DataPipelineName = 'tblPersonWeight'
          LinkColor = clMaroon
          LinkType = ltMagicSQL
          MaxSQLFieldAliasLength = 25
          SQLText.Strings = (
            'SELECT tblPersonWeight.notes_str, '
            '       tblPersonWeight.person_ID, '
            '       tblPersonWeight.personABW_dbl, '
            '       tblPersonWeight.personBMI_dbl, '
            '       tblPersonWeight.personBP_str, '
            '       tblPersonWeight.personBSA_dbl, '
            '       tblPersonWeight.personCrCC, '
            '       tblPersonWeight.personCrCl_dbl, '
            '       tblPersonWeight.personHeight_Int, '
            '       tblPersonWeight.personIBW_dbl, '
            '       tblPersonWeight.personIdealWeight_int, '
            '       tblPersonWeight.personLBW_dbl, '
            '       tblPersonWeight.personMUAC_dbl, '
            '       tblPersonWeight.personPregnant_bol, '
            '       tblPersonWeight.personPulse_int, '
            '       tblPersonWeight.personRenalFunction_str, '
            '       tblPersonWeight.personRespiratoryRate_str, '
            '       tblPersonWeight.personSrCr_dbl, '
            '       tblPersonWeight.personTBW_dbl, '
            '       tblPersonWeight.personTemperature_dbl, '
            '       tblPersonWeight.personWeight_ID, '
            '       tblPersonWeight.personWeight_int, '
            
              '       tblPersonWeight.personWeightDateRecorded_Dat personWeight' +
              'DateRecorded, '
            '       tblPersonWeight.personWeightforHeight_str'
            'FROM dbo.tblPersonWeight tblPersonWeight'
            'WHERE ('#39'c'#39' <> '#39'c'#39' )')
          SQLType = sqSQL2
          object daField1: TdaField
            Alias = 'notes_str'
            DisplayWidth = 200
            FieldAlias = 'notes_str'
            FieldLength = 200
            FieldName = 'notes_str'
            SQLFieldName = 'notes_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField2: TdaField
            Alias = 'person_ID'
            DataType = dtGUID
            DisplayWidth = 38
            FieldAlias = 'person_ID'
            FieldLength = 38
            FieldName = 'person_ID'
            SQLFieldName = 'person_ID'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField3: TdaField
            Alias = 'personABW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personABW_dbl'
            FieldLength = 0
            FieldName = 'personABW_dbl'
            SQLFieldName = 'personABW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField4: TdaField
            Alias = 'personBMI_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personBMI_dbl'
            FieldLength = 0
            FieldName = 'personBMI_dbl'
            SQLFieldName = 'personBMI_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField5: TdaField
            Alias = 'personBP_str'
            DisplayWidth = 7
            FieldAlias = 'personBP_str'
            FieldLength = 7
            FieldName = 'personBP_str'
            SQLFieldName = 'personBP_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField6: TdaField
            Alias = 'personBSA_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personBSA_dbl'
            FieldLength = 0
            FieldName = 'personBSA_dbl'
            SQLFieldName = 'personBSA_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField7: TdaField
            Alias = 'personCrCC'
            DisplayWidth = 50
            FieldAlias = 'personCrCC'
            FieldLength = 50
            FieldName = 'personCrCC'
            SQLFieldName = 'personCrCC'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField8: TdaField
            Alias = 'personCrCl_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personCrCl_dbl'
            FieldLength = 0
            FieldName = 'personCrCl_dbl'
            SQLFieldName = 'personCrCl_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField9: TdaField
            Alias = 'personHeight_Int'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personHeight_Int'
            FieldLength = 0
            FieldName = 'personHeight_Int'
            SQLFieldName = 'personHeight_Int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField10: TdaField
            Alias = 'personIBW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personIBW_dbl'
            FieldLength = 0
            FieldName = 'personIBW_dbl'
            SQLFieldName = 'personIBW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField11: TdaField
            Alias = 'personIdealWeight_int'
            DataType = dtInteger
            DisplayWidth = 10
            FieldAlias = 'personIdealWeight_int'
            FieldLength = 0
            FieldName = 'personIdealWeight_int'
            SQLFieldName = 'personIdealWeight_int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField12: TdaField
            Alias = 'personLBW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personLBW_dbl'
            FieldLength = 0
            FieldName = 'personLBW_dbl'
            SQLFieldName = 'personLBW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField13: TdaField
            Alias = 'personMUAC_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personMUAC_dbl'
            FieldLength = 0
            FieldName = 'personMUAC_dbl'
            SQLFieldName = 'personMUAC_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField14: TdaField
            Alias = 'personPregnant_bol'
            DataType = dtBoolean
            DisplayWidth = 5
            FieldAlias = 'personPregnant_bol'
            FieldLength = 0
            FieldName = 'personPregnant_bol'
            SQLFieldName = 'personPregnant_bol'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField15: TdaField
            Alias = 'personPulse_int'
            DataType = dtInteger
            DisplayWidth = 10
            FieldAlias = 'personPulse_int'
            FieldLength = 0
            FieldName = 'personPulse_int'
            SQLFieldName = 'personPulse_int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField16: TdaField
            Alias = 'personRenalFunction_str'
            DisplayWidth = 50
            FieldAlias = 'personRenalFunction_str'
            FieldLength = 50
            FieldName = 'personRenalFunction_str'
            SQLFieldName = 'personRenalFunction_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField17: TdaField
            Alias = 'personRespiratoryRate_str'
            DisplayWidth = 7
            FieldAlias = 'personRespiratoryRate_str'
            FieldLength = 7
            FieldName = 'personRespiratoryRate_str'
            SQLFieldName = 'personRespiratoryRate_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField18: TdaField
            Alias = 'personSrCr_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personSrCr_dbl'
            FieldLength = 0
            FieldName = 'personSrCr_dbl'
            SQLFieldName = 'personSrCr_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField19: TdaField
            Alias = 'personTBW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personTBW_dbl'
            FieldLength = 0
            FieldName = 'personTBW_dbl'
            SQLFieldName = 'personTBW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField20: TdaField
            Alias = 'personTemperature_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personTemperature_dbl'
            FieldLength = 0
            FieldName = 'personTemperature_dbl'
            SQLFieldName = 'personTemperature_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField21: TdaField
            Alias = 'personWeight_ID'
            DataType = dtGUID
            DisplayWidth = 38
            FieldAlias = 'personWeight_ID'
            FieldLength = 38
            FieldName = 'personWeight_ID'
            SQLFieldName = 'personWeight_ID'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField22: TdaField
            Alias = 'personWeight_int'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personWeight_int'
            FieldLength = 0
            FieldName = 'personWeight_int'
            SQLFieldName = 'personWeight_int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField23: TdaField
            Alias = 'personWeightDateRecorded_Dat'
            DataType = dtDateTime
            DisplayWidth = 18
            FieldAlias = 'personWeightDateRecorded_Dat'
            FieldLength = 0
            FieldName = 'personWeightDateRecorded_Dat'
            SQLFieldName = 'personWeightDateRecorded'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField24: TdaField
            Alias = 'personWeightforHeight_str'
            DisplayWidth = 10
            FieldAlias = 'personWeightforHeight_str'
            FieldLength = 10
            FieldName = 'personWeightforHeight_str'
            SQLFieldName = 'personWeightforHeight_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daTable1: TdaTable
            ChildType = 5
            Alias = 'tblPersonWeight'
            JoinType = dajtNone
            OwnerName = 'dbo'
            SQLAlias = 'tblPersonWeight'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
          end
        end
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object ppDBPipelineLabsResults: TppDBPipeline
    DataSource = dsqryLaboratoryResults
    UserName = 'DBPipelineLabsResults'
    Left = 1064
    Top = 657
  end
  object ppAdherenceReport: TppReport
    AutoStop = False
    DataPipeline = ppDBAdherence
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
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 680
    Top = 713
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBAdherence'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 43656
      mmPrintPosition = 0
      object ppDBText54: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDescription_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5630
        mmLeft = 14817
        mmTop = 9260
        mmWidth = 157957
        BandType = 0
      end
      object ppDBText55: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDOB_Dat'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4106
        mmLeft = 55298
        mmTop = 16140
        mmWidth = 28046
        BandType = 0
      end
      object ppDBText56: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = clSilver
        DataField = 'personInstitution_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 16140
        mmWidth = 86784
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DOB:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 16140
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Gender:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 20373
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IPN:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4149
        mmLeft = 6879
        mmTop = 16140
        mmWidth = 7620
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PAS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 20373
        mmWidth = 7673
        BandType = 0
      end
      object ppDBText57: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personGender_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 55298
        mmTop = 20373
        mmWidth = 13758
        BandType = 0
      end
      object ppDBText58: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personRefNoCurrent_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4106
        mmLeft = 14817
        mmTop = 16140
        mmWidth = 29633
        BandType = 0
      end
      object ppDBText59: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personPAS_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 14817
        mmTop = 20373
        mmWidth = 29633
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6615
        mmTop = 25929
        mmWidth = 276861
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6615
        mmTop = 25135
        mmWidth = 276861
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 234686
        mmTop = 2117
        mmWidth = 15875
        BandType = 0
      end
      object ppSystemVariable13: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'mmmm d, yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 250825
        mmTop = 2117
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Patient Adherence Report'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 14
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 5556
        mmLeft = 6879
        mmTop = 2117
        mmWidth = 58738
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 9260
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Clinic:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101600
        mmTop = 16140
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Support Measures'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 11906
        mmTop = 38365
        mmWidth = 40217
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 38365
        mmWidth = 4233
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6879
        mmTop = 42863
        mmWidth = 276490
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Observation date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 31750
        mmWidth = 24606
        BandType = 0
      end
      object ppDBText65: TppDBText
        UserName = 'DBText65'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Observation_dat'
        DataPipeline = ppDBAdherence
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBAdherence'
        mmHeight = 4106
        mmLeft = 34925
        mmTop = 31750
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Level of Adherence:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 26988
        mmWidth = 27781
        BandType = 0
      end
      object ppDBText67: TppDBText
        UserName = 'DBText67'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LevelOfAdherence_str'
        DataPipeline = ppDBAdherence
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBAdherence'
        mmHeight = 4106
        mmLeft = 34925
        mmTop = 26988
        mmWidth = 28046
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PatientSupportMeasure_ID'
        DataPipeline = ppDBAdherence
        DisplayFormat = '#.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBAdherence'
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 265
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SupportMeasureDescription_str'
        DataPipeline = ppDBAdherence
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBAdherence'
        mmHeight = 3969
        mmLeft = 37571
        mmTop = 265
        mmWidth = 232834
        BandType = 4
      end
      object ppDBText63: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SupportMeasureCode_str'
        DataPipeline = ppDBAdherence
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBAdherence'
        mmHeight = 3969
        mmLeft = 17198
        mmTop = 265
        mmWidth = 19050
        BandType = 4
      end
      object myDBCheckBox14: TmyDBCheckBox
        UserName = 'DBCheckBox14'
        CheckBoxColor = clWindowText
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBAdherence
        DataField = 'AdherenceSupport_bol'
        DataPipelineName = 'ppDBAdherence'
        mmHeight = 3969
        mmLeft = 12700
        mmTop = 265
        mmWidth = 2910
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 55298
      mmPrintPosition = 0
      object ppLine22: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 6615
        mmTop = 38629
        mmWidth = 276755
        BandType = 8
      end
      object ppImage5: TppImage
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          0A544A504547496D616765FD130000FFD8FFE000104A46494600010101006000
          600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC0001108002C012E03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F76B
          EBE834FB57B8B87DA8BE9D4F19C0FC01FC013D057233EB3AB6B134D6F6714901
          0A4C58247CC1BA1C609523F8810B861D71CCBAEC779AA6AB6F1C5E70B5F30A07
          4F9412A7180739077AE491C8550477239EF1D6A7AC787359D3AC745BD92CADE7
          B591E4985B075328236EE211B0319000181C0E056F4E1769753394BEE379FC2F
          A93B48DF680721FCBF32342EA487DA4907E6C6E5E0F07CB1EA6A3373AD787990
          4FBE48B2C4B16DC0AF1B46DE98037124107DB009AE365F19EAEF1CAF0F893538
          C98CF929269A18EF0EC72D88700155000E082F93D39B5A778A358D4BC65A369A
          BA85E5E6997323ADD2CD6A002A220CA49F294A1DFBC704FDD078CD69ECE7D6C4
          7347A1E9FA46B36FAC5B0961CAB6D0C5483D0F423201C7D403EDCD68B3AA2967
          60AA3A92702B8C1A55D68FAECD2E9F0CB31765959536852BB482CD92396DAAA4
          2F52031E830CF8AB24771F0AF56910868DE38994FA8322115872272496CCD399
          A8B6FA1DAA48920CA3AB0E99539A1E44880323AA02719638AF2CF80802F82AFF
          00000FF898BF4FFAE71D33E3F007C1DA6E403FF1325EBFF5CA4ABF63FBDF6771
          7B4F739CF56575750C8C194F420E45426FACD6E3C86BA804DD3CB320DDF975AF
          14BDD6B50D0FF679D11B4D91E07B994DBC92C7C32216909C11D09DA067DEB1BC
          0BF0EBC2BE30D05659BC412C7AD3337996C85018F938F9586581183907BE3B55
          AC3A49CA4F44EDB13ED5DD248FA329AF2C71E37BAAE7A6E38AE6FC0DE1BBEF0A
          682FA5DEEA46FF0064ECD04A777111036AE0938C60F0091CD79AFC43B99FC5DE
          3FB7D06C4249F65CC1183D3CC2374849F6000FF809AE59DA2F4D4F47038578AA
          9CADF2A4AEDF63DBD595D432B0607B839A47912319760A3A649C5794FC1DD759
          56EFC39739568B33C0ADC15E70EBF81C1C7B9AD3F8CC03783ED0100FFA7A75FF
          00AE7254F3697359601C718B0D27BBDFCBB9E85E6C7B37EF5D9FDECF1F9D37ED
          307FCF68FF00EFB15E53081FF0CF520C0C6D6E3FEDE6B0BC0DF0EEC3C5BA35C5
          EDC5E4F6F24770610B1AA90405539E47BD1CC6D1CBA9A84E752A59464E3B5FF5
          3DDC104641C8F5A5AF08D56C75EF855AB5B4961A919ECAE725558108FB719574
          CE01E7822BDA746D521D6B45B3D4A01B63B989640A4E4A93D41F70723F0A69DC
          E6C560BD8C235612E684B67B7E05EA28A64CE6382470A58AA921477C0E94CE21
          F4579E783D2CBC71E1F7D4754BBB89B52791C4A915CBC7F64E4ED5455236F183
          9C64F7CD53F1DDB6A3A3783B4899B55BD1A8C57115A4B710DD48BE727CDCB004
          02C700938CE7BD6AA97BDC97D4C1D67C9CF6D0F4FA2B83F1AC13F853427D7B47
          D42F629AD644DD04F74F34532960A54AB938EBD460D1637F0F8A3C69ABE99AAB
          C890D9C509B4B2F35A30E19773B90082E465473C007DE92A775CCB61BAB6972B
          5AFF005FE47794564689A4CBA3ADE5B0B8965B369B7DA8966691E242AB94CB73
          80C188E4F06BCBFC4FE29F14E83E23BCD3935790C51B831168A3CEC61919F97D
          0E3F0AE7AD563495DEA8E8A507534D8F60BCBB82C2CE6BBB9904704285DDCF60
          2BCC7C09A4EA1AAF8A26F15F9EF1D8B4F300B2312F30390011D368C8FC57A571
          5A9F8B35DD66CCDA5FEA2F35B960C5362A82474CE00CD753F0E355D6EFF59B6D
          296FD934DB589A47892341951D06719E59867BF5AE3FAC46AD48AB69FA9D3ECA
          508367AB6A1FF1EC9FF5DE1FFD18B56253B6273F370A4FCBD7F0F7AAFA87FC7B
          27FD7787FF00462D56D72F26B28AD1E2765125D471BED8F792A739C0C1E6BD04
          AEEC71C9D95CE674E9EF6D26B08526436E2E21492FE189BFD250C52E04AA7EEC
          8182EE39E4BAF4E95661D735865B5123C0BF6A926092B40EA8A5240AB19C64E5
          977376F6A9ECF5BD4EDAF026A70332BC76C1826D5F28CB34A8AC475C9023C804
          E0E71569BC511EE748ECA69245B88EDC2ABA7CC5D490739C7620FA56CEF7D8C1
          5ADB996DE23D52087CE91E378D924638B760630972B1E472724A31201E32B9E9
          9AAB73A95E6A1697AB35E473C6D68A6358A2CAF9827607FE06004C8EC4D69EA7
          AEC3756B710CFA5DCC9144D2BE526546DD6EE092083907A11F4C1C55A4D7AC34
          F9DACD6191576094485C319199D17079C862644EBEBD86326DD05BFDAD0AB06B
          BA949776B68FE52969A5433B44C165D936DC0001C131FCDD4039CF406AAA6B3A
          85C69A8F762098C9F6693CB36C405CDC6D6E33D800DED8CF4AD5BAF138B44B96
          7D3AE5FEC88C6E0C782B1B08FCCC16E9F771DFAB01F4964D765FEDA8F4F8ACCB
          7FA4BC123B48063112C8081DF21C7E4697C8AFFB78CE9B5DD42DE491CC914B11
          8AE1B02020C7E5CCAA0E72724A331C1C676F619AD9D0AF5EFF004DF3A5B88677
          F31D4B4430000C4004766C6323D4D6741AAC1AD68E034134F02C4925C48D22C6
          F1B6D1229E081B87CA72080323DF0BA36A1E7EAB1C502BC76ED04CD246E77132
          A4A10B16EA7383F862935A6C38BD7723D0EE6DAE6FA18A396579624F36747724
          248638FEE8CF0086271EA49EF5A5AC6A3FD9ED1B996E40C126382CDA72DFF7C8
          245732D71FD87E2E01D59629588E0E43718030178C215E4B7242A81C53BC6FE2
          FD5BC3D7B669A7C16925ACD0F98F2CCBBB1FBC45247EF1780AF9EF9381C669CA
          176AC690BBD12BB217F19463CDBA83539258E30C5E3960F2768ED827FC0F6EFD
          7A1D23577BC16E279E512CA33B1AC5E2078F53FCEBCC8F8CB5A6D405C4DA1690
          2F16461237D9F255918F987FD772523DAFF8E3B66B7FC39E3CF116ADAED959DD
          59592C3332090C71E0A86491F83E6B7F0AA11C7218F4C723A4D755F797CB3FE5
          7F733B1D7A68A09ED0CCD7411814FF0045DDE6677C64636F246460E3B135CFF8
          EADA5BCF849ABC5021631C4CC140FE08E5C9FF00C7569FE2CB9FED3D4A0D3618
          A3B8890E6E14F20A8604A9E47560800E72558608071D7DBDB2C3A7A5B4DB5C08
          F6C991C371CFE7CD09F272B32F8AE8F22F80FAEE9F1E8F7FA34B7091DEFDA4DC
          223B01E621551F2FAE0AF3F514CF8F3AEE9F3699A768D0DC24B78B73F6991118
          1F2D02328DDE8496E07B1ABDAD7C07D12F6769B4AD4A6D3909C985D04C8BF4C9
          047E24D2E8BF01B45B2B812EABA8CFA8A0E7C944F211BFDEC12C7F022BAB9E8F
          B4F6B7F958CB96A72F258D3F0DC1A3DB7C1CD16C3C50D145637D108CF9C4AAE6
          46674F9BF87B1078C1C579FF008DBE0EFF006069773AE691AA24FA7DBA79AD1D
          C9C48AB918DAE3863CF1D3F135ED5E25F0B697E29D08E8B7BBE3B7055A3F2182
          18CA8E303A703B118AF363F0110BAC27C5573F64072B01B7E47D3E7C67DF1534
          6B24DC9CAD77B5AE39C1B56B5CBBF0BBC6F792F80356B8D5E47B8FEC6FF572B1
          F9A44DB95427B9C8C67DC5719E10F1445A17886E75ABFB29AF6E6557C18C81B5
          DDB2EDCFF9E4D7ABCBF0DEC21F070F0D69575258DB3CA25B894AF98F3B0C7DEC
          91DC29E38E318ADAF0B787ADBC2DA247A6412F9A4333C92B0DA5D89EB8EDC607
          E15C959A9D4728E88F6F0389A386C24A335CD2968D6AB4F53C226F12243E3DFF
          008492C6DA5B68CDC89CC2FD7040120E3AE72DF9D7A57C5E9E3B9F03E9F710B8
          78A5BD8DD18742A6390835D1F8CBC216BE2EB1B7826B936D2C12EE8E6550C704
          60AE091D78FC8566DE7C3E6BEF065978767D62465B49C4B1CFE40CED01804C67
          B6EEBEC2B2E57AA3B1E3B0D52746ABF75C346B57A74D6C7390FF00C9BDC9FEEB
          7FE94D6A7C19FF009152F7FEBF9BFF00404ADA4F05469E013E14FB7B6C6047DA
          3CB19FF59BFEEE7F0EB5CAAFC17800C2F8866009E820033FF8F51669DC9FAC61
          AAD2AB4E73E5E69B6B46F42AFC63D6ECAE7EC1A5DBCF1CB341234B3EC607CBE3
          001F739271EDEF5DEF80EC67D3BC0FA4DB5C2949443BD94F55DEC5803EF86AC7
          D07E15681A45C25CCED2EA13C6C193CE202291DF68EBF8E6BBA04119041A693B
          DD9CB8BC4D1F610C351BB5177BBEAFFA62D45737115A5ACD733B88E1851A491C
          F4550324FE552D4771047756D2DBCABBA3950A38F50460D51E63F238AF117C3B
          B5D46E5F59D02E9F4AD64E5D6681CAC7293CFCC07AFA8FC41AE4BC41AF5DF893
          E146977B7CA16ED754486475500332EE1B80E9FD339AF40B2F0C6A5A7D9A69F6
          FE25BC1608A1230F046D3468380AB263D3B9526ABEADF0FEC752D22CF4786F2E
          6CB4CB421E2B78021F9C67E62CC0B13F31EF5D30A8935CCEF639274A4D3E556B
          A27BAF09CFABDD40DAEEACF7B696F20963B38E058A3761D0C9C92F8F4E07B547
          E20F09687E368D6E59DA3BBB766892F2D8ED91195882A7D70C0F07F0C66BA3B2
          827B7B611DC5DBDD483ACAE8AA4FE0A00FD2B10786AEACB52BCBBD27599AD12F
          25334F6F2C2B347E61C6597382A4E39E48F6AC94DDF7B58D65056DAF7DCCCF02
          5EEAF06A1ACF86B58BAFB6CDA4B45E5DDF24BA48A5806279CE31FA8C9C5723F1
          674E9A1F10DBEA1E59FB3CF008F78E9BD49E0FE047EBE95EA7A568D06942E245
          9249EEAE9C4973732E37CAC06067000000000000000FA9AA7E28F0E7FC24FA7C
          764F7D25B421F7B8440C5C8E9D7A62B9F170F6B17CA6F856E95AE7CF35EA1F08
          74E995F51D49E32B0BAAC31B11F78824B63D871567FE14F597FD062E7FEFD2D7
          6DE1FD21F42D222D39AF1EE921C88DDD02955FEEF1D71CD7161F0D38CF9A48EB
          AD5A328DA25AD43FE3D93FEBBC3FFA3169F73676F77E5F9F187F29C4899FE161
          D0FD692F2279A1554192258DBAF60E09FD0558AF416E71BD8A93E976573334D3
          5BA3C8DE5EE639C9D84B27E44923DCD64EA56DA26830DBCA6C2DE2125CA2A393
          E5C68E0314666FE11D5471D580AE86AADFDA3DE422259846A721D5A30EB22904
          1520F6E73F87A641B4FB9328E9A2D4CBDBA015904D1C08FBE48E64624ED79143
          48A7DC823EB91EB5188FC32D25D036D6FF00EA479CCD19C32B81C7B93B178EB9
          03BD243E19807DAADC46F1DBFD9E1B44F34AC82454032C47B80AA4F07E5C8C70
          69D2F855248624FB7CE4C42228D2AAC877A06196DD9DD9572307EB9CF35575DC
          CED2EC86492F84D2672CD625DA2303E3E6DE813254FF0078EC627B9C13DB356E
          D2CB4179916D23B76941170AD19C9CEC0A1B7773B4AF7E847B522F87D52E44EB
          74E08BA3741760C06F23C9C71DB6F3F5F6E2974AF0FC7A55C452A5CC8E63B64B
          6C60287550A016C7DE236F07A8DCDDB0026D5B71A4EFAA25FF008477480001A7
          C00793E47DDEB1F3F29F503271E9938AB16BA558D9CE66B7B58E394861B9473F
          31DCDF9919AB9454DD9A72AEC636BFA147AC5B8C71329520E704ED3B8608E410
          7A11EA47426B91B89E38AC1F4BF10DB0BCB2D9BA43E59428C304F0BF3292C376
          1463078E14D7A3D4171676F7254CB182CBF75C12ACBF461C8AA52D2CF60578CB
          9A2ECCF396D03C397B7ED7D04D742202EA7BA8A396390309A2019836EF940520
          FF00C0854F6B71A769A9343E1FD39D643E5C17133B316FDDA2AAA96E8A7691C0
          E4FCD8E41C75E3C35A5A4C258ADC447695210001811820F1C8C71CD5BB5D2AC6
          CD83416C8ACA0052792A00C6067A71E947B89DEC6B3C4D7A91E594B431F41D04
          DBDCC97F70851E4398E263928067683ECA18851818C9E01AD1D7B4B3ACE946C8
          3AA06962662CA1BE559158F04104E01EA08F5AD3A29393BDCCB955AC71707832
          E2DAEEE662D6B750DC5CF9F25B4ABB51C0794AA9DABF371283C8386403A636B2
          5F02BDC417A1A7584CD16C860824611201248EA8C31CAA97523007208FBA707B
          7A2ABDA489E44737ABF861350D4E5BE856DA19DE144137963CC561206DD920F3
          B4639FE54DB0F0DDCDA7895B539AE16E54AED123AA799D5CF388F8FBE07CA57A
          739AE9A8A9E776B0F955EE71C3C1F7B25DB3CFA88114D786F9CC39592197648B
          F21390701A31C80311F23935524F00CD225C5B89E08A194C411C22C8C888A063
          E7425BA77623DB3CD7794557B590B911C9C1E1AB84BC4B9BBB6B0BD1B0288667
          62B0B0080BA96539276F53CF0BCF5A8EDFC27A92CACF36A8BBE4BAFB77991295
          30CE51D4ED0490CB8651838042918E6BB0A297B490F911C97FC22325DC3A52EA
          13C7BACD66693C81D647911C6D2C0950369E410DEFD6AA43E0BB98F4D8ED9D6C
          A4916CC5BC723E01B590124CB1ED45193907A03945CB1EA3B8A28F6920E44723
          61E129F4BD45AFA19229659FED0B3EE60800924DCA46D5E4804E49E4F1CE00AD
          8F0D695268BA0DAE9F2F97BE140AC630A0138EBF2AAFF2CFA935AD452736F705
          14828A28A92828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
          8A0028A28A0028A28A00FFD9}
        mmHeight = 13758
        mmLeft = 4763
        mmTop = 39688
        mmWidth = 90223
        BandType = 8
      end
      object ppLabel101: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 213784
        mmTop = 44450
        mmWidth = 69850
        BandType = 8
      end
      object ppLabel102: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 256911
        mmTop = 39688
        mmWidth = 13229
        BandType = 8
      end
      object ppSystemVariable14: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 270405
        mmTop = 39688
        mmWidth = 12965
        BandType = 8
      end
      object ppSystemVariable15: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 270405
        mmTop = 48683
        mmWidth = 13229
        BandType = 8
      end
      object ppLabel97: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Comments:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 6879
        mmTop = 265
        mmWidth = 15960
        BandType = 8
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Improvement Plan:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 140759
        mmTop = 265
        mmWidth = 26194
        BandType = 8
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Pen.Color = clSilver
        mmHeight = 26458
        mmLeft = 139436
        mmTop = 1323
        mmWidth = 265
        BandType = 8
      end
      object ppDBRichText5: TppDBRichText
        UserName = 'DBRichText5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsItalic]
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Color = clGray
        Border.Style = psSolid
        Border.Visible = True
        DataField = 'Comments_mem'
        DataPipeline = ppDBAdherence
        Transparent = True
        DataPipelineName = 'ppDBAdherence'
        mmHeight = 21696
        mmLeft = 6879
        mmTop = 5292
        mmWidth = 131234
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppDBRichText6: TppDBRichText
        UserName = 'DBRichText6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsItalic]
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Color = clGray
        Border.Style = psSolid
        Border.Visible = True
        DataField = 'ImprovementPlan_mem'
        DataPipeline = ppDBAdherence
        Transparent = True
        DataPipelineName = 'ppDBAdherence'
        mmHeight = 21431
        mmLeft = 140759
        mmTop = 5556
        mmWidth = 141552
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'PatientSupportMeasure_ID'
      DataPipeline = ppDBAdherence
      KeepTogether = True
      OutlineSettings.CreateNode = True
      NewFile = False
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBAdherence'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object daDataModule4: TdaDataModule
      object daADOQueryDataView4: TdaADOQueryDataView
        UserName = 'Query_TdaADOQueryDataView1'
        Height = 0
        Left = 0
        NameColumnWidth = 105
        SizeColumnWidth = 35
        SortMode = 0
        Top = 0
        TypeColumnWidth = 52
        Width = 0
        AutoSearchTabOrder = 0
        object tblPersonWeight: TppChildDBPipeline
          AutoCreateFields = False
          UserName = 'tblPersonWeight'
          object ppField1: TppField
            FieldAlias = 'notes_str'
            FieldName = 'notes_str'
            FieldLength = 200
            DisplayWidth = 200
            Position = 0
            TableName = 'tblPersonWeight'
          end
          object ppField2: TppField
            FieldAlias = 'person_ID'
            FieldName = 'person_ID'
            FieldLength = 38
            DataType = dtGUID
            DisplayWidth = 38
            Position = 1
            TableName = 'tblPersonWeight'
          end
          object ppField3: TppField
            FieldAlias = 'personABW_dbl'
            FieldName = 'personABW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 2
            TableName = 'tblPersonWeight'
          end
          object ppField4: TppField
            FieldAlias = 'personBMI_dbl'
            FieldName = 'personBMI_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 3
            TableName = 'tblPersonWeight'
          end
          object ppField5: TppField
            FieldAlias = 'personBP_str'
            FieldName = 'personBP_str'
            FieldLength = 7
            DisplayWidth = 7
            Position = 4
            TableName = 'tblPersonWeight'
          end
          object ppField6: TppField
            FieldAlias = 'personBSA_dbl'
            FieldName = 'personBSA_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 5
            TableName = 'tblPersonWeight'
          end
          object ppField7: TppField
            FieldAlias = 'personCrCC'
            FieldName = 'personCrCC'
            FieldLength = 50
            DisplayWidth = 50
            Position = 6
            TableName = 'tblPersonWeight'
          end
          object ppField8: TppField
            FieldAlias = 'personCrCl_dbl'
            FieldName = 'personCrCl_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 7
            TableName = 'tblPersonWeight'
          end
          object ppField9: TppField
            FieldAlias = 'personHeight_Int'
            FieldName = 'personHeight_Int'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 8
            TableName = 'tblPersonWeight'
          end
          object ppField10: TppField
            FieldAlias = 'personIBW_dbl'
            FieldName = 'personIBW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 9
            TableName = 'tblPersonWeight'
          end
          object ppField11: TppField
            FieldAlias = 'personIdealWeight_int'
            FieldName = 'personIdealWeight_int'
            FieldLength = 0
            DataType = dtInteger
            DisplayWidth = 10
            Position = 10
            TableName = 'tblPersonWeight'
          end
          object ppField12: TppField
            FieldAlias = 'personLBW_dbl'
            FieldName = 'personLBW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 11
            TableName = 'tblPersonWeight'
          end
          object ppField13: TppField
            FieldAlias = 'personMUAC_dbl'
            FieldName = 'personMUAC_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 12
            TableName = 'tblPersonWeight'
          end
          object ppField14: TppField
            FieldAlias = 'personPregnant_bol'
            FieldName = 'personPregnant_bol'
            FieldLength = 0
            DataType = dtBoolean
            DisplayWidth = 5
            Position = 13
            TableName = 'tblPersonWeight'
          end
          object ppField15: TppField
            FieldAlias = 'personPulse_int'
            FieldName = 'personPulse_int'
            FieldLength = 0
            DataType = dtInteger
            DisplayWidth = 10
            Position = 14
            TableName = 'tblPersonWeight'
          end
          object ppField16: TppField
            FieldAlias = 'personRenalFunction_str'
            FieldName = 'personRenalFunction_str'
            FieldLength = 50
            DisplayWidth = 50
            Position = 15
            TableName = 'tblPersonWeight'
          end
          object ppField17: TppField
            FieldAlias = 'personRespiratoryRate_str'
            FieldName = 'personRespiratoryRate_str'
            FieldLength = 7
            DisplayWidth = 7
            Position = 16
            TableName = 'tblPersonWeight'
          end
          object ppField18: TppField
            FieldAlias = 'personSrCr_dbl'
            FieldName = 'personSrCr_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 17
            TableName = 'tblPersonWeight'
          end
          object ppField19: TppField
            FieldAlias = 'personTBW_dbl'
            FieldName = 'personTBW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 18
            TableName = 'tblPersonWeight'
          end
          object ppField20: TppField
            FieldAlias = 'personTemperature_dbl'
            FieldName = 'personTemperature_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 19
            TableName = 'tblPersonWeight'
          end
          object ppField21: TppField
            FieldAlias = 'personWeight_ID'
            FieldName = 'personWeight_ID'
            FieldLength = 38
            DataType = dtGUID
            DisplayWidth = 38
            Position = 20
            TableName = 'tblPersonWeight'
          end
          object ppField22: TppField
            FieldAlias = 'personWeight_int'
            FieldName = 'personWeight_int'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 21
            TableName = 'tblPersonWeight'
          end
          object ppField23: TppField
            FieldAlias = 'personWeightDateRecorded_Dat'
            FieldName = 'personWeightDateRecorded'
            FieldLength = 0
            DataType = dtDateTime
            DisplayWidth = 18
            Position = 22
            TableName = 'tblPersonWeight'
          end
          object ppField24: TppField
            FieldAlias = 'personWeightforHeight_str'
            FieldName = 'personWeightforHeight_str'
            FieldLength = 10
            DisplayWidth = 10
            Position = 23
            TableName = 'tblPersonWeight'
          end
        end
        object daSQL1: TdaSQL
          GuidCollationType = gcMSSQLServer
          DatabaseName = 'conPatient'
          DatabaseType = dtMSSQLServer
          DataPipelineName = 'tblPersonWeight'
          LinkColor = clMaroon
          LinkType = ltMagicSQL
          MaxSQLFieldAliasLength = 25
          SQLText.Strings = (
            'SELECT tblPersonWeight.notes_str, '
            '       tblPersonWeight.person_ID, '
            '       tblPersonWeight.personABW_dbl, '
            '       tblPersonWeight.personBMI_dbl, '
            '       tblPersonWeight.personBP_str, '
            '       tblPersonWeight.personBSA_dbl, '
            '       tblPersonWeight.personCrCC, '
            '       tblPersonWeight.personCrCl_dbl, '
            '       tblPersonWeight.personHeight_Int, '
            '       tblPersonWeight.personIBW_dbl, '
            '       tblPersonWeight.personIdealWeight_int, '
            '       tblPersonWeight.personLBW_dbl, '
            '       tblPersonWeight.personMUAC_dbl, '
            '       tblPersonWeight.personPregnant_bol, '
            '       tblPersonWeight.personPulse_int, '
            '       tblPersonWeight.personRenalFunction_str, '
            '       tblPersonWeight.personRespiratoryRate_str, '
            '       tblPersonWeight.personSrCr_dbl, '
            '       tblPersonWeight.personTBW_dbl, '
            '       tblPersonWeight.personTemperature_dbl, '
            '       tblPersonWeight.personWeight_ID, '
            '       tblPersonWeight.personWeight_int, '
            
              '       tblPersonWeight.personWeightDateRecorded_Dat personWeight' +
              'DateRecorded, '
            '       tblPersonWeight.personWeightforHeight_str'
            'FROM dbo.tblPersonWeight tblPersonWeight'
            'WHERE ('#39'c'#39' <> '#39'c'#39' )')
          SQLType = sqSQL2
          object daField1: TdaField
            Alias = 'notes_str'
            DisplayWidth = 200
            FieldAlias = 'notes_str'
            FieldLength = 200
            FieldName = 'notes_str'
            SQLFieldName = 'notes_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField2: TdaField
            Alias = 'person_ID'
            DataType = dtGUID
            DisplayWidth = 38
            FieldAlias = 'person_ID'
            FieldLength = 38
            FieldName = 'person_ID'
            SQLFieldName = 'person_ID'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField3: TdaField
            Alias = 'personABW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personABW_dbl'
            FieldLength = 0
            FieldName = 'personABW_dbl'
            SQLFieldName = 'personABW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField4: TdaField
            Alias = 'personBMI_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personBMI_dbl'
            FieldLength = 0
            FieldName = 'personBMI_dbl'
            SQLFieldName = 'personBMI_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField5: TdaField
            Alias = 'personBP_str'
            DisplayWidth = 7
            FieldAlias = 'personBP_str'
            FieldLength = 7
            FieldName = 'personBP_str'
            SQLFieldName = 'personBP_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField6: TdaField
            Alias = 'personBSA_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personBSA_dbl'
            FieldLength = 0
            FieldName = 'personBSA_dbl'
            SQLFieldName = 'personBSA_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField7: TdaField
            Alias = 'personCrCC'
            DisplayWidth = 50
            FieldAlias = 'personCrCC'
            FieldLength = 50
            FieldName = 'personCrCC'
            SQLFieldName = 'personCrCC'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField8: TdaField
            Alias = 'personCrCl_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personCrCl_dbl'
            FieldLength = 0
            FieldName = 'personCrCl_dbl'
            SQLFieldName = 'personCrCl_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField9: TdaField
            Alias = 'personHeight_Int'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personHeight_Int'
            FieldLength = 0
            FieldName = 'personHeight_Int'
            SQLFieldName = 'personHeight_Int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField10: TdaField
            Alias = 'personIBW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personIBW_dbl'
            FieldLength = 0
            FieldName = 'personIBW_dbl'
            SQLFieldName = 'personIBW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField11: TdaField
            Alias = 'personIdealWeight_int'
            DataType = dtInteger
            DisplayWidth = 10
            FieldAlias = 'personIdealWeight_int'
            FieldLength = 0
            FieldName = 'personIdealWeight_int'
            SQLFieldName = 'personIdealWeight_int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField12: TdaField
            Alias = 'personLBW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personLBW_dbl'
            FieldLength = 0
            FieldName = 'personLBW_dbl'
            SQLFieldName = 'personLBW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField13: TdaField
            Alias = 'personMUAC_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personMUAC_dbl'
            FieldLength = 0
            FieldName = 'personMUAC_dbl'
            SQLFieldName = 'personMUAC_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField14: TdaField
            Alias = 'personPregnant_bol'
            DataType = dtBoolean
            DisplayWidth = 5
            FieldAlias = 'personPregnant_bol'
            FieldLength = 0
            FieldName = 'personPregnant_bol'
            SQLFieldName = 'personPregnant_bol'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField15: TdaField
            Alias = 'personPulse_int'
            DataType = dtInteger
            DisplayWidth = 10
            FieldAlias = 'personPulse_int'
            FieldLength = 0
            FieldName = 'personPulse_int'
            SQLFieldName = 'personPulse_int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField16: TdaField
            Alias = 'personRenalFunction_str'
            DisplayWidth = 50
            FieldAlias = 'personRenalFunction_str'
            FieldLength = 50
            FieldName = 'personRenalFunction_str'
            SQLFieldName = 'personRenalFunction_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField17: TdaField
            Alias = 'personRespiratoryRate_str'
            DisplayWidth = 7
            FieldAlias = 'personRespiratoryRate_str'
            FieldLength = 7
            FieldName = 'personRespiratoryRate_str'
            SQLFieldName = 'personRespiratoryRate_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField18: TdaField
            Alias = 'personSrCr_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personSrCr_dbl'
            FieldLength = 0
            FieldName = 'personSrCr_dbl'
            SQLFieldName = 'personSrCr_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField19: TdaField
            Alias = 'personTBW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personTBW_dbl'
            FieldLength = 0
            FieldName = 'personTBW_dbl'
            SQLFieldName = 'personTBW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField20: TdaField
            Alias = 'personTemperature_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personTemperature_dbl'
            FieldLength = 0
            FieldName = 'personTemperature_dbl'
            SQLFieldName = 'personTemperature_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField21: TdaField
            Alias = 'personWeight_ID'
            DataType = dtGUID
            DisplayWidth = 38
            FieldAlias = 'personWeight_ID'
            FieldLength = 38
            FieldName = 'personWeight_ID'
            SQLFieldName = 'personWeight_ID'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField22: TdaField
            Alias = 'personWeight_int'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personWeight_int'
            FieldLength = 0
            FieldName = 'personWeight_int'
            SQLFieldName = 'personWeight_int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField23: TdaField
            Alias = 'personWeightDateRecorded_Dat'
            DataType = dtDateTime
            DisplayWidth = 18
            FieldAlias = 'personWeightDateRecorded_Dat'
            FieldLength = 0
            FieldName = 'personWeightDateRecorded_Dat'
            SQLFieldName = 'personWeightDateRecorded'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField24: TdaField
            Alias = 'personWeightforHeight_str'
            DisplayWidth = 10
            FieldAlias = 'personWeightforHeight_str'
            FieldLength = 10
            FieldName = 'personWeightforHeight_str'
            SQLFieldName = 'personWeightforHeight_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daTable1: TdaTable
            ChildType = 5
            Alias = 'tblPersonWeight'
            JoinType = dajtNone
            OwnerName = 'dbo'
            SQLAlias = 'tblPersonWeight'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
          end
        end
      end
    end
    object ppParameterList6: TppParameterList
    end
  end
  object qryAdherenceReport: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Adherence_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT tblPatientAdherence.*, tblPatientAdherenceSupportMeasures' +
        '.*'
      
        'FROM tblPatientAdherence LEFT OUTER JOIN tblPatientAdherenceSupp' +
        'ortMeasures'
      
        ' ON tblPatientAdherence.Adherence_ID = tblPatientAdherenceSuppor' +
        'tMeasures.Adherence_ID'
      'WHERE tblPatientAdherence.Adherence_ID=:Adherence_ID')
    Left = 352
    Top = 705
  end
  object dsAdherenceReport: TDataSource
    DataSet = qryAdherenceReport
    Left = 472
    Top = 705
  end
  object ppDBAdherence: TppDBPipeline
    DataSource = dsAdherenceReport
    UserName = 'DBAdherence'
    Left = 568
    Top = 713
  end
  object stp_CopyAdherence: TADOStoredProc
    Tag = 1
    Connection = conPatient
    ProcedureName = 'stp_AdhrenceCopy;1'
    Parameters = <
      item
        Name = '@PatientID'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@AdherenceID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@userName'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 255
        Value = Null
      end>
    Left = 96
    Top = 689
  end
  object qrySqlStatements: TADOTable
    Tag = 1
    Connection = conPatient
    CursorType = ctStatic
    TableName = 'tblReport_Queries'
    Left = 1160
    Top = 17
  end
  object stp_CustomReport: TADOQuery
    Tag = 1
    Connection = conPatient
    Parameters = <>
    Left = 1152
    Top = 81
  end
  object dsstp_CustomReport: TDataSource
    DataSet = stp_CustomReport
    Left = 1240
    Top = 81
  end
  object patientDuplicateID: TADOQuery
    Tag = 1
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'personIDNo'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'personID'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT person_ID, (personLastName_Str+'#39', '#39'+personFirstName_str +' +
        ' '#39' '#39' +personRefNoCurrent_str) AS PatientName '
      'FROM tblperson'
      'WHERE tblperson.personIDNumber_str = :personIDNo '
      'AND tblperson.person_ID <>:personID'
      'AND tblperson.personPatient_bol = 1')
    Left = 96
    Top = 633
    object GuidField1: TGuidField
      FieldName = 'person_ID'
      FixedChar = True
      Size = 38
    end
    object WideStringField1: TWideStringField
      FieldName = 'PatientName'
      ReadOnly = True
      Size = 62
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = dsADRPatientReport
    UserName = 'DBPipeline2'
    Left = 568
    Top = 657
  end
  object stp_CopyADR: TADOStoredProc
    Tag = 1
    Connection = conPatient
    ProcedureName = 'stp_ADRCopy;1'
    Parameters = <
      item
        Name = '@PatientID'
        Attributes = [paNullable]
        DataType = ftGuid
        Value = Null
      end
      item
        Name = '@ADRID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@userName'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 255
        Value = Null
      end>
    Left = 216
    Top = 689
  end
  object ppContactsReport: TppReport
    AutoStop = False
    DataPipeline = ppDBPipelineContacts
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
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 1168
    Top = 473
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipelineContacts'
    object ppHeaderBand6: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 31221
      mmPrintPosition = 0
      object ppDBText10: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDescription_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 14817
        mmTop = 9260
        mmWidth = 157957
        BandType = 0
      end
      object ppDBText68: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDOB_Dat'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4106
        mmLeft = 55298
        mmTop = 16140
        mmWidth = 28046
        BandType = 0
      end
      object ppDBText69: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Color = clSilver
        DataField = 'personInstitution_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 16140
        mmWidth = 86784
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DOB:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 16140
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Gender:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 20373
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IPN:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4149
        mmLeft = 6879
        mmTop = 16140
        mmWidth = 7620
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PAS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 20373
        mmWidth = 7673
        BandType = 0
      end
      object ppDBText70: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personGender_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 55298
        mmTop = 20373
        mmWidth = 13758
        BandType = 0
      end
      object ppDBText71: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personRefNoCurrent_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4106
        mmLeft = 14817
        mmTop = 16140
        mmWidth = 29633
        BandType = 0
      end
      object ppDBText72: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personPAS_str'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 14817
        mmTop = 20373
        mmWidth = 29633
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6615
        mmTop = 25929
        mmWidth = 276861
        BandType = 0
      end
      object ppLine24: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6615
        mmTop = 25135
        mmWidth = 276861
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 234686
        mmTop = 2117
        mmWidth = 15875
        BandType = 0
      end
      object ppSystemVariable16: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        DisplayFormat = 'mmmm d, yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 250825
        mmTop = 2117
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel114: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Patient Contact Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4784
        mmLeft = 6879
        mmTop = 2117
        mmWidth = 37825
        BandType = 0
      end
      object ppLabel115: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 11377
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel116: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Clinic:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101600
        mmTop = 16140
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel117: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 26458
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 26458
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel119: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 26458
        mmWidth = 4233
        BandType = 0
      end
      object ppLine25: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 265
        mmLeft = 6879
        mmTop = 30956
        mmWidth = 276490
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label89'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Detail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 72231
        mmTop = 26458
        mmWidth = 19050
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'lbResultID'
        DataPipeline = ppDBPipelineLabsResults
        DisplayFormat = '#.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipelineLabsResults'
        mmHeight = 3969
        mmLeft = 6879
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppDBText73: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'contactType_Str'
        DataPipeline = ppDBPipelineContacts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineContacts'
        mmHeight = 4064
        mmLeft = 10848
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText74: TppDBText
        UserName = 'DBText41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'contactMode_str'
        DataPipeline = ppDBPipelineContacts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineContacts'
        mmHeight = 3969
        mmLeft = 33073
        mmTop = 0
        mmWidth = 35983
        BandType = 4
      end
      object ppDBText76: TppDBText
        UserName = 'DBText52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'contactDetail_Str'
        DataPipeline = ppDBPipelineContacts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipelineContacts'
        mmHeight = 3969
        mmLeft = 72231
        mmTop = 0
        mmWidth = 154252
        BandType = 4
      end
    end
    object ppFooterBand6: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object ppLine26: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.75
        mmHeight = 1058
        mmLeft = 6615
        mmTop = 265
        mmWidth = 276755
        BandType = 8
      end
      object ppImage6: TppImage
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          0A544A504547496D616765FD130000FFD8FFE000104A46494600010101006000
          600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC0001108002C012E03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F76B
          EBE834FB57B8B87DA8BE9D4F19C0FC01FC013D057233EB3AB6B134D6F6714901
          0A4C58247CC1BA1C609523F8810B861D71CCBAEC779AA6AB6F1C5E70B5F30A07
          4F9412A7180739077AE491C8550477239EF1D6A7AC787359D3AC745BD92CADE7
          B591E4985B075328236EE211B0319000181C0E056F4E1769753394BEE379FC2F
          A93B48DF680721FCBF32342EA487DA4907E6C6E5E0F07CB1EA6A3373AD787990
          4FBE48B2C4B16DC0AF1B46DE98037124107DB009AE365F19EAEF1CAF0F893538
          C98CF929269A18EF0EC72D88700155000E082F93D39B5A778A358D4BC65A369A
          BA85E5E6997323ADD2CD6A002A220CA49F294A1DFBC704FDD078CD69ECE7D6C4
          7347A1E9FA46B36FAC5B0961CAB6D0C5483D0F423201C7D403EDCD68B3AA2967
          60AA3A92702B8C1A55D68FAECD2E9F0CB31765959536852BB482CD92396DAAA4
          2F52031E830CF8AB24771F0AF56910868DE38994FA8322115872272496CCD399
          A8B6FA1DAA48920CA3AB0E99539A1E44880323AA02719638AF2CF80802F82AFF
          00000FF898BF4FFAE71D33E3F007C1DA6E403FF1325EBFF5CA4ABF63FBDF6771
          7B4F739CF56575750C8C194F420E45426FACD6E3C86BA804DD3CB320DDF975AF
          14BDD6B50D0FF679D11B4D91E07B994DBC92C7C32216909C11D09DA067DEB1BC
          0BF0EBC2BE30D05659BC412C7AD3337996C85018F938F9586581183907BE3B55
          AC3A49CA4F44EDB13ED5DD248FA329AF2C71E37BAAE7A6E38AE6FC0DE1BBEF0A
          682FA5DEEA46FF0064ECD04A777111036AE0938C60F0091CD79AFC43B99FC5DE
          3FB7D06C4249F65CC1183D3CC2374849F6000FF809AE59DA2F4D4F47038578AA
          9CADF2A4AEDF63DBD595D432B0607B839A47912319760A3A649C5794FC1DD759
          56EFC39739568B33C0ADC15E70EBF81C1C7B9AD3F8CC03783ED0100FFA7A75FF
          00AE7254F3697359601C718B0D27BBDFCBB9E85E6C7B37EF5D9FDECF1F9D37ED
          307FCF68FF00EFB15E53081FF0CF520C0C6D6E3FEDE6B0BC0DF0EEC3C5BA35C5
          EDC5E4F6F24770610B1AA90405539E47BD1CC6D1CBA9A84E752A59464E3B5FF5
          3DDC104641C8F5A5AF08D56C75EF855AB5B4961A919ECAE725558108FB719574
          CE01E7822BDA746D521D6B45B3D4A01B63B989640A4E4A93D41F70723F0A69DC
          E6C560BD8C235612E684B67B7E05EA28A64CE6382470A58AA921477C0E94CE21
          F4579E783D2CBC71E1F7D4754BBB89B52791C4A915CBC7F64E4ED5455236F183
          9C64F7CD53F1DDB6A3A3783B4899B55BD1A8C57115A4B710DD48BE727CDCB004
          02C700938CE7BD6AA97BDC97D4C1D67C9CF6D0F4FA2B83F1AC13F853427D7B47
          D42F629AD644DD04F74F34532960A54AB938EBD460D1637F0F8A3C69ABE99AAB
          C890D9C509B4B2F35A30E19773B90082E465473C007DE92A775CCB61BAB6972B
          5AFF005FE47794564689A4CBA3ADE5B0B8965B369B7DA8966691E242AB94CB73
          80C188E4F06BCBFC4FE29F14E83E23BCD3935790C51B831168A3CEC61919F97D
          0E3F0AE7AD563495DEA8E8A507534D8F60BCBB82C2CE6BBB9904704285DDCF60
          2BCC7C09A4EA1AAF8A26F15F9EF1D8B4F300B2312F30390011D368C8FC57A571
          5A9F8B35DD66CCDA5FEA2F35B960C5362A82474CE00CD753F0E355D6EFF59B6D
          296FD934DB589A47892341951D06719E59867BF5AE3FAC46AD48AB69FA9D3ECA
          508367AB6A1FF1EC9FF5DE1FFD18B56253B6273F370A4FCBD7F0F7AAFA87FC7B
          27FD7787FF00462D56D72F26B28AD1E2765125D471BED8F792A739C0C1E6BD04
          AEEC71C9D95CE674E9EF6D26B08526436E2E21492FE189BFD250C52E04AA7EEC
          8182EE39E4BAF4E95661D735865B5123C0BF6A926092B40EA8A5240AB19C64E5
          977376F6A9ECF5BD4EDAF026A70332BC76C1826D5F28CB34A8AC475C9023C804
          E0E71569BC511EE748ECA69245B88EDC2ABA7CC5D490739C7620FA56CEF7D8C1
          5ADB996DE23D52087CE91E378D924638B760630972B1E472724A31201E32B9E9
          9AAB73A95E6A1697AB35E473C6D68A6358A2CAF9827607FE06004C8EC4D69EA7
          AEC3756B710CFA5DCC9144D2BE526546DD6EE092083907A11F4C1C55A4D7AC34
          F9DACD6191576094485C319199D17079C862644EBEBD86326DD05BFDAD0AB06B
          BA949776B68FE52969A5433B44C165D936DC0001C131FCDD4039CF406AAA6B3A
          85C69A8F762098C9F6693CB36C405CDC6D6E33D800DED8CF4AD5BAF138B44B96
          7D3AE5FEC88C6E0C782B1B08FCCC16E9F771DFAB01F4964D765FEDA8F4F8ACCB
          7FA4BC123B48063112C8081DF21C7E4697C8AFFB78CE9B5DD42DE491CC914B11
          8AE1B02020C7E5CCAA0E72724A331C1C676F619AD9D0AF5EFF004DF3A5B88677
          F31D4B4430000C4004766C6323D4D6741AAC1AD68E034134F02C4925C48D22C6
          F1B6D1229E081B87CA72080323DF0BA36A1E7EAB1C502BC76ED04CD246E77132
          A4A10B16EA7383F862935A6C38BD7723D0EE6DAE6FA18A396579624F36747724
          248638FEE8CF0086271EA49EF5A5AC6A3FD9ED1B996E40C126382CDA72DFF7C8
          245732D71FD87E2E01D59629588E0E43718030178C215E4B7242A81C53BC6FE2
          FD5BC3D7B669A7C16925ACD0F98F2CCBBB1FBC45247EF1780AF9EF9381C669CA
          176AC690BBD12BB217F19463CDBA83539258E30C5E3960F2768ED827FC0F6EFD
          7A1D23577BC16E279E512CA33B1AC5E2078F53FCEBCC8F8CB5A6D405C4DA1690
          2F16461237D9F255918F987FD772523DAFF8E3B66B7FC39E3CF116ADAED959DD
          59592C3332090C71E0A86491F83E6B7F0AA11C7218F4C723A4D755F797CB3FE5
          7F733B1D7A68A09ED0CCD7411814FF0045DDE6677C64636F246460E3B135CFF8
          EADA5BCF849ABC5021631C4CC140FE08E5C9FF00C7569FE2CB9FED3D4A0D3618
          A3B8890E6E14F20A8604A9E47560800E72558608071D7DBDB2C3A7A5B4DB5C08
          F6C991C371CFE7CD09F272B32F8AE8F22F80FAEE9F1E8F7FA34B7091DEFDA4DC
          223B01E621551F2FAE0AF3F514CF8F3AEE9F3699A768D0DC24B78B73F6991118
          1F2D02328DDE8496E07B1ABDAD7C07D12F6769B4AD4A6D3909C985D04C8BF4C9
          047E24D2E8BF01B45B2B812EABA8CFA8A0E7C944F211BFDEC12C7F022BAB9E8F
          B4F6B7F958CB96A72F258D3F0DC1A3DB7C1CD16C3C50D145637D108CF9C4AAE6
          46674F9BF87B1078C1C579FF008DBE0EFF006069773AE691AA24FA7DBA79AD1D
          C9C48AB918DAE3863CF1D3F135ED5E25F0B697E29D08E8B7BBE3B7055A3F2182
          18CA8E303A703B118AF363F0110BAC27C5573F64072B01B7E47D3E7C67DF1534
          6B24DC9CAD77B5AE39C1B56B5CBBF0BBC6F792F80356B8D5E47B8FEC6FF572B1
          F9A44DB95427B9C8C67DC5719E10F1445A17886E75ABFB29AF6E6557C18C81B5
          DDB2EDCFF9E4D7ABCBF0DEC21F070F0D69575258DB3CA25B894AF98F3B0C7DEC
          91DC29E38E318ADAF0B787ADBC2DA247A6412F9A4333C92B0DA5D89EB8EDC607
          E15C959A9D4728E88F6F0389A386C24A335CD2968D6AB4F53C226F12243E3DFF
          008492C6DA5B68CDC89CC2FD7040120E3AE72DF9D7A57C5E9E3B9F03E9F710B8
          78A5BD8DD18742A6390835D1F8CBC216BE2EB1B7826B936D2C12EE8E6550C704
          60AE091D78FC8566DE7C3E6BEF065978767D62465B49C4B1CFE40CED01804C67
          B6EEBEC2B2E57AA3B1E3B0D52746ABF75C346B57A74D6C7390FF00C9BDC9FEEB
          7FE94D6A7C19FF009152F7FEBF9BFF00404ADA4F05469E013E14FB7B6C6047DA
          3CB19FF59BFEEE7F0EB5CAAFC17800C2F8866009E820033FF8F51669DC9FAC61
          AAD2AB4E73E5E69B6B46F42AFC63D6ECAE7EC1A5DBCF1CB341234B3EC607CBE3
          001F739271EDEF5DEF80EC67D3BC0FA4DB5C2949443BD94F55DEC5803EF86AC7
          D07E15681A45C25CCED2EA13C6C193CE202291DF68EBF8E6BBA04119041A693B
          DD9CB8BC4D1F610C351BB5177BBEAFFA62D45737115A5ACD733B88E1851A491C
          F4550324FE552D4771047756D2DBCABBA3950A38F50460D51E63F238AF117C3B
          B5D46E5F59D02E9F4AD64E5D6681CAC7293CFCC07AFA8FC41AE4BC41AF5DF893
          E146977B7CA16ED754486475500332EE1B80E9FD339AF40B2F0C6A5A7D9A69F6
          FE25BC1608A1230F046D3468380AB263D3B9526ABEADF0FEC752D22CF4786F2E
          6CB4CB421E2B78021F9C67E62CC0B13F31EF5D30A8935CCEF639274A4D3E556B
          A27BAF09CFABDD40DAEEACF7B696F20963B38E058A3761D0C9C92F8F4E07B547
          E20F09687E368D6E59DA3BBB766892F2D8ED91195882A7D70C0F07F0C66BA3B2
          827B7B611DC5DBDD483ACAE8AA4FE0A00FD2B10786AEACB52BCBBD27599AD12F
          25334F6F2C2B347E61C6597382A4E39E48F6AC94DDF7B58D65056DAF7DCCCF02
          5EEAF06A1ACF86B58BAFB6CDA4B45E5DDF24BA48A5806279CE31FA8C9C5723F1
          674E9A1F10DBEA1E59FB3CF008F78E9BD49E0FE047EBE95EA7A568D06942E245
          9249EEAE9C4973732E37CAC06067000000000000000FA9AA7E28F0E7FC24FA7C
          764F7D25B421F7B8440C5C8E9D7A62B9F170F6B17CA6F856E95AE7CF35EA1F08
          74E995F51D49E32B0BAAC31B11F78824B63D871567FE14F597FD062E7FEFD2D7
          6DE1FD21F42D222D39AF1EE921C88DDD02955FEEF1D71CD7161F0D38CF9A48EB
          AD5A328DA25AD43FE3D93FEBBC3FFA3169F73676F77E5F9F187F29C4899FE161
          D0FD692F2279A1554192258DBAF60E09FD0558AF416E71BD8A93E976573334D3
          5BA3C8DE5EE639C9D84B27E44923DCD64EA56DA26830DBCA6C2DE2125CA2A393
          E5C68E0314666FE11D5471D580AE86AADFDA3DE422259846A721D5A30EB22904
          1520F6E73F87A641B4FB9328E9A2D4CBDBA015904D1C08FBE48E64624ED79143
          48A7DC823EB91EB5188FC32D25D036D6FF00EA479CCD19C32B81C7B93B178EB9
          03BD243E19807DAADC46F1DBFD9E1B44F34AC82454032C47B80AA4F07E5C8C70
          69D2F855248624FB7CE4C42228D2AAC877A06196DD9DD9572307EB9CF35575DC
          CED2EC86492F84D2672CD625DA2303E3E6DE813254FF0078EC627B9C13DB356E
          D2CB4179916D23B76941170AD19C9CEC0A1B7773B4AF7E847B522F87D52E44EB
          74E08BA3741760C06F23C9C71DB6F3F5F6E2974AF0FC7A55C452A5CC8E63B64B
          6C60287550A016C7DE236F07A8DCDDB0026D5B71A4EFAA25FF008477480001A7
          C00793E47DDEB1F3F29F503271E9938AB16BA558D9CE66B7B58E394861B9473F
          31DCDF9919AB9454DD9A72AEC636BFA147AC5B8C71329520E704ED3B8608E410
          7A11EA47426B91B89E38AC1F4BF10DB0BCB2D9BA43E59428C304F0BF3292C376
          1463078E14D7A3D4171676F7254CB182CBF75C12ACBF461C8AA52D2CF60578CB
          9A2ECCF396D03C397B7ED7D04D742202EA7BA8A396390309A2019836EF940520
          FF00C0854F6B71A769A9343E1FD39D643E5C17133B316FDDA2AAA96E8A7691C0
          E4FCD8E41C75E3C35A5A4C258ADC447695210001811820F1C8C71CD5BB5D2AC6
          CD83416C8ACA0052792A00C6067A71E947B89DEC6B3C4D7A91E594B431F41D04
          DBDCC97F70851E4398E263928067683ECA18851818C9E01AD1D7B4B3ACE946C8
          3AA06962662CA1BE559158F04104E01EA08F5AD3A29393BDCCB955AC71707832
          E2DAEEE662D6B750DC5CF9F25B4ABB51C0794AA9DABF371283C8386403A636B2
          5F02BDC417A1A7584CD16C860824611201248EA8C31CAA97523007208FBA707B
          7A2ABDA489E44737ABF861350D4E5BE856DA19DE144137963CC561206DD920F3
          B4639FE54DB0F0DDCDA7895B539AE16E54AED123AA799D5CF388F8FBE07CA57A
          739AE9A8A9E776B0F955EE71C3C1F7B25DB3CFA88114D786F9CC39592197648B
          F21390701A31C80311F23935524F00CD225C5B89E08A194C411C22C8C888A063
          E7425BA77623DB3CD7794557B590B911C9C1E1AB84BC4B9BBB6B0BD1B0288667
          62B0B0080BA96539276F53CF0BCF5A8EDFC27A92CACF36A8BBE4BAFB77991295
          30CE51D4ED0490CB8651838042918E6BB0A297B490F911C97FC22325DC3A52EA
          13C7BACD66693C81D647911C6D2C0950369E410DEFD6AA43E0BB98F4D8ED9D6C
          A4916CC5BC723E01B590124CB1ED45193907A03945CB1EA3B8A28F6920E44723
          61E129F4BD45AFA19229659FED0B3EE60800924DCA46D5E4804E49E4F1CE00AD
          8F0D695268BA0DAE9F2F97BE140AC630A0138EBF2AAFF2CFA935AD452736F705
          14828A28A92828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
          8A0028A28A0028A28A00FFD9}
        mmHeight = 13758
        mmLeft = 4763
        mmTop = 1323
        mmWidth = 90223
        BandType = 8
      end
      object ppLabel121: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(c) Management Sciences for Health, Inc. All rights reserved.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 213784
        mmTop = 6085
        mmWidth = 69850
        BandType = 8
      end
      object ppLabel122: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 256911
        mmTop = 1323
        mmWidth = 13229
        BandType = 8
      end
      object ppSystemVariable17: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 270405
        mmTop = 1323
        mmWidth = 12965
        BandType = 8
      end
      object ppSystemVariable18: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 270405
        mmTop = 10319
        mmWidth = 13229
        BandType = 8
      end
    end
    object daDataModule5: TdaDataModule
      object daADOQueryDataView5: TdaADOQueryDataView
        UserName = 'Query_TdaADOQueryDataView2'
        Height = 0
        Left = 0
        NameColumnWidth = 105
        SizeColumnWidth = 35
        SortMode = 0
        Top = 0
        TypeColumnWidth = 52
        Width = 0
        AutoSearchTabOrder = 0
        object tblPersonWeight: TppChildDBPipeline
          AutoCreateFields = False
          UserName = 'tblPersonWeight'
          object ppField1: TppField
            FieldAlias = 'notes_str'
            FieldName = 'notes_str'
            FieldLength = 200
            DisplayWidth = 200
            Position = 0
            TableName = 'tblPersonWeight'
          end
          object ppField2: TppField
            FieldAlias = 'person_ID'
            FieldName = 'person_ID'
            FieldLength = 38
            DataType = dtGUID
            DisplayWidth = 38
            Position = 1
            TableName = 'tblPersonWeight'
          end
          object ppField3: TppField
            FieldAlias = 'personABW_dbl'
            FieldName = 'personABW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 2
            TableName = 'tblPersonWeight'
          end
          object ppField4: TppField
            FieldAlias = 'personBMI_dbl'
            FieldName = 'personBMI_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 3
            TableName = 'tblPersonWeight'
          end
          object ppField5: TppField
            FieldAlias = 'personBP_str'
            FieldName = 'personBP_str'
            FieldLength = 7
            DisplayWidth = 7
            Position = 4
            TableName = 'tblPersonWeight'
          end
          object ppField6: TppField
            FieldAlias = 'personBSA_dbl'
            FieldName = 'personBSA_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 5
            TableName = 'tblPersonWeight'
          end
          object ppField7: TppField
            FieldAlias = 'personCrCC'
            FieldName = 'personCrCC'
            FieldLength = 50
            DisplayWidth = 50
            Position = 6
            TableName = 'tblPersonWeight'
          end
          object ppField8: TppField
            FieldAlias = 'personCrCl_dbl'
            FieldName = 'personCrCl_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 7
            TableName = 'tblPersonWeight'
          end
          object ppField9: TppField
            FieldAlias = 'personHeight_Int'
            FieldName = 'personHeight_Int'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 8
            TableName = 'tblPersonWeight'
          end
          object ppField10: TppField
            FieldAlias = 'personIBW_dbl'
            FieldName = 'personIBW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 9
            TableName = 'tblPersonWeight'
          end
          object ppField11: TppField
            FieldAlias = 'personIdealWeight_int'
            FieldName = 'personIdealWeight_int'
            FieldLength = 0
            DataType = dtInteger
            DisplayWidth = 10
            Position = 10
            TableName = 'tblPersonWeight'
          end
          object ppField12: TppField
            FieldAlias = 'personLBW_dbl'
            FieldName = 'personLBW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 11
            TableName = 'tblPersonWeight'
          end
          object ppField13: TppField
            FieldAlias = 'personMUAC_dbl'
            FieldName = 'personMUAC_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 12
            TableName = 'tblPersonWeight'
          end
          object ppField14: TppField
            FieldAlias = 'personPregnant_bol'
            FieldName = 'personPregnant_bol'
            FieldLength = 0
            DataType = dtBoolean
            DisplayWidth = 5
            Position = 13
            TableName = 'tblPersonWeight'
          end
          object ppField15: TppField
            FieldAlias = 'personPulse_int'
            FieldName = 'personPulse_int'
            FieldLength = 0
            DataType = dtInteger
            DisplayWidth = 10
            Position = 14
            TableName = 'tblPersonWeight'
          end
          object ppField16: TppField
            FieldAlias = 'personRenalFunction_str'
            FieldName = 'personRenalFunction_str'
            FieldLength = 50
            DisplayWidth = 50
            Position = 15
            TableName = 'tblPersonWeight'
          end
          object ppField17: TppField
            FieldAlias = 'personRespiratoryRate_str'
            FieldName = 'personRespiratoryRate_str'
            FieldLength = 7
            DisplayWidth = 7
            Position = 16
            TableName = 'tblPersonWeight'
          end
          object ppField18: TppField
            FieldAlias = 'personSrCr_dbl'
            FieldName = 'personSrCr_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 17
            TableName = 'tblPersonWeight'
          end
          object ppField19: TppField
            FieldAlias = 'personTBW_dbl'
            FieldName = 'personTBW_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 18
            TableName = 'tblPersonWeight'
          end
          object ppField20: TppField
            FieldAlias = 'personTemperature_dbl'
            FieldName = 'personTemperature_dbl'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 19
            TableName = 'tblPersonWeight'
          end
          object ppField21: TppField
            FieldAlias = 'personWeight_ID'
            FieldName = 'personWeight_ID'
            FieldLength = 38
            DataType = dtGUID
            DisplayWidth = 38
            Position = 20
            TableName = 'tblPersonWeight'
          end
          object ppField22: TppField
            FieldAlias = 'personWeight_int'
            FieldName = 'personWeight_int'
            FieldLength = 0
            DataType = dtDouble
            DisplayWidth = 10
            Position = 21
            TableName = 'tblPersonWeight'
          end
          object ppField23: TppField
            FieldAlias = 'personWeightDateRecorded_Dat'
            FieldName = 'personWeightDateRecorded'
            FieldLength = 0
            DataType = dtDateTime
            DisplayWidth = 18
            Position = 22
            TableName = 'tblPersonWeight'
          end
          object ppField24: TppField
            FieldAlias = 'personWeightforHeight_str'
            FieldName = 'personWeightforHeight_str'
            FieldLength = 10
            DisplayWidth = 10
            Position = 23
            TableName = 'tblPersonWeight'
          end
        end
        object daSQL1: TdaSQL
          GuidCollationType = gcMSSQLServer
          DatabaseName = 'conPatient'
          DatabaseType = dtMSSQLServer
          DataPipelineName = 'tblPersonWeight'
          LinkColor = clMaroon
          LinkType = ltMagicSQL
          MaxSQLFieldAliasLength = 25
          SQLText.Strings = (
            'SELECT tblPersonWeight.notes_str, '
            '       tblPersonWeight.person_ID, '
            '       tblPersonWeight.personABW_dbl, '
            '       tblPersonWeight.personBMI_dbl, '
            '       tblPersonWeight.personBP_str, '
            '       tblPersonWeight.personBSA_dbl, '
            '       tblPersonWeight.personCrCC, '
            '       tblPersonWeight.personCrCl_dbl, '
            '       tblPersonWeight.personHeight_Int, '
            '       tblPersonWeight.personIBW_dbl, '
            '       tblPersonWeight.personIdealWeight_int, '
            '       tblPersonWeight.personLBW_dbl, '
            '       tblPersonWeight.personMUAC_dbl, '
            '       tblPersonWeight.personPregnant_bol, '
            '       tblPersonWeight.personPulse_int, '
            '       tblPersonWeight.personRenalFunction_str, '
            '       tblPersonWeight.personRespiratoryRate_str, '
            '       tblPersonWeight.personSrCr_dbl, '
            '       tblPersonWeight.personTBW_dbl, '
            '       tblPersonWeight.personTemperature_dbl, '
            '       tblPersonWeight.personWeight_ID, '
            '       tblPersonWeight.personWeight_int, '
            
              '       tblPersonWeight.personWeightDateRecorded_Dat personWeight' +
              'DateRecorded, '
            '       tblPersonWeight.personWeightforHeight_str'
            'FROM dbo.tblPersonWeight tblPersonWeight'
            'WHERE ('#39'c'#39' <> '#39'c'#39' )')
          SQLType = sqSQL2
          object daField1: TdaField
            Alias = 'notes_str'
            DisplayWidth = 200
            FieldAlias = 'notes_str'
            FieldLength = 200
            FieldName = 'notes_str'
            SQLFieldName = 'notes_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField2: TdaField
            Alias = 'person_ID'
            DataType = dtGUID
            DisplayWidth = 38
            FieldAlias = 'person_ID'
            FieldLength = 38
            FieldName = 'person_ID'
            SQLFieldName = 'person_ID'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField3: TdaField
            Alias = 'personABW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personABW_dbl'
            FieldLength = 0
            FieldName = 'personABW_dbl'
            SQLFieldName = 'personABW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField4: TdaField
            Alias = 'personBMI_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personBMI_dbl'
            FieldLength = 0
            FieldName = 'personBMI_dbl'
            SQLFieldName = 'personBMI_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField5: TdaField
            Alias = 'personBP_str'
            DisplayWidth = 7
            FieldAlias = 'personBP_str'
            FieldLength = 7
            FieldName = 'personBP_str'
            SQLFieldName = 'personBP_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField6: TdaField
            Alias = 'personBSA_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personBSA_dbl'
            FieldLength = 0
            FieldName = 'personBSA_dbl'
            SQLFieldName = 'personBSA_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField7: TdaField
            Alias = 'personCrCC'
            DisplayWidth = 50
            FieldAlias = 'personCrCC'
            FieldLength = 50
            FieldName = 'personCrCC'
            SQLFieldName = 'personCrCC'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField8: TdaField
            Alias = 'personCrCl_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personCrCl_dbl'
            FieldLength = 0
            FieldName = 'personCrCl_dbl'
            SQLFieldName = 'personCrCl_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField9: TdaField
            Alias = 'personHeight_Int'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personHeight_Int'
            FieldLength = 0
            FieldName = 'personHeight_Int'
            SQLFieldName = 'personHeight_Int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField10: TdaField
            Alias = 'personIBW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personIBW_dbl'
            FieldLength = 0
            FieldName = 'personIBW_dbl'
            SQLFieldName = 'personIBW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField11: TdaField
            Alias = 'personIdealWeight_int'
            DataType = dtInteger
            DisplayWidth = 10
            FieldAlias = 'personIdealWeight_int'
            FieldLength = 0
            FieldName = 'personIdealWeight_int'
            SQLFieldName = 'personIdealWeight_int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField12: TdaField
            Alias = 'personLBW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personLBW_dbl'
            FieldLength = 0
            FieldName = 'personLBW_dbl'
            SQLFieldName = 'personLBW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField13: TdaField
            Alias = 'personMUAC_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personMUAC_dbl'
            FieldLength = 0
            FieldName = 'personMUAC_dbl'
            SQLFieldName = 'personMUAC_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField14: TdaField
            Alias = 'personPregnant_bol'
            DataType = dtBoolean
            DisplayWidth = 5
            FieldAlias = 'personPregnant_bol'
            FieldLength = 0
            FieldName = 'personPregnant_bol'
            SQLFieldName = 'personPregnant_bol'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField15: TdaField
            Alias = 'personPulse_int'
            DataType = dtInteger
            DisplayWidth = 10
            FieldAlias = 'personPulse_int'
            FieldLength = 0
            FieldName = 'personPulse_int'
            SQLFieldName = 'personPulse_int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField16: TdaField
            Alias = 'personRenalFunction_str'
            DisplayWidth = 50
            FieldAlias = 'personRenalFunction_str'
            FieldLength = 50
            FieldName = 'personRenalFunction_str'
            SQLFieldName = 'personRenalFunction_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField17: TdaField
            Alias = 'personRespiratoryRate_str'
            DisplayWidth = 7
            FieldAlias = 'personRespiratoryRate_str'
            FieldLength = 7
            FieldName = 'personRespiratoryRate_str'
            SQLFieldName = 'personRespiratoryRate_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField18: TdaField
            Alias = 'personSrCr_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personSrCr_dbl'
            FieldLength = 0
            FieldName = 'personSrCr_dbl'
            SQLFieldName = 'personSrCr_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField19: TdaField
            Alias = 'personTBW_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personTBW_dbl'
            FieldLength = 0
            FieldName = 'personTBW_dbl'
            SQLFieldName = 'personTBW_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField20: TdaField
            Alias = 'personTemperature_dbl'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personTemperature_dbl'
            FieldLength = 0
            FieldName = 'personTemperature_dbl'
            SQLFieldName = 'personTemperature_dbl'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField21: TdaField
            Alias = 'personWeight_ID'
            DataType = dtGUID
            DisplayWidth = 38
            FieldAlias = 'personWeight_ID'
            FieldLength = 38
            FieldName = 'personWeight_ID'
            SQLFieldName = 'personWeight_ID'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField22: TdaField
            Alias = 'personWeight_int'
            DataType = dtDouble
            DisplayWidth = 10
            FieldAlias = 'personWeight_int'
            FieldLength = 0
            FieldName = 'personWeight_int'
            SQLFieldName = 'personWeight_int'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField23: TdaField
            Alias = 'personWeightDateRecorded_Dat'
            DataType = dtDateTime
            DisplayWidth = 18
            FieldAlias = 'personWeightDateRecorded_Dat'
            FieldLength = 0
            FieldName = 'personWeightDateRecorded_Dat'
            SQLFieldName = 'personWeightDateRecorded'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daField24: TdaField
            Alias = 'personWeightforHeight_str'
            DisplayWidth = 10
            FieldAlias = 'personWeightforHeight_str'
            FieldLength = 10
            FieldName = 'personWeightforHeight_str'
            SQLFieldName = 'personWeightforHeight_str'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
            TableSQLAlias = 'tblPersonWeight'
          end
          object daTable1: TdaTable
            ChildType = 5
            Alias = 'tblPersonWeight'
            JoinType = dajtNone
            OwnerName = 'dbo'
            SQLAlias = 'tblPersonWeight'
            TableAlias = 'tblPersonWeight'
            TableName = 'tblPersonWeight'
          end
        end
      end
    end
    object ppParameterList7: TppParameterList
    end
  end
  object ppDBPipelineContacts: TppDBPipeline
    DataSource = dsqryPersonContact
    UserName = 'DBPipelineContacts'
    Left = 1056
    Top = 473
  end
  object ppPatientLabelBarCode: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 270
    PrinterSetup.mmMarginLeft = 2000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 39000
    PrinterSetup.mmPaperWidth = 83000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 1171
    Top = 713
    Version = '11.03'
    mmColumnWidth = 31200
    object ppHeaderBand7: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 37571
      mmPrintPosition = 0
      object ppDBText75: TppDBText
        UserName = 'DBText84'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personPAS_str'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 8202
        mmLeft = 4498
        mmTop = 2117
        mmWidth = 44186
        BandType = 0
      end
      object ppDBText77: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personIDNumber_Str'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3768
        mmLeft = 75311
        mmTop = 4763
        mmWidth = 889
        BandType = 0
      end
      object ppDBText78: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personStatusDesc_str'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3239
        mmLeft = 4498
        mmTop = 14288
        mmWidth = 635
        BandType = 0
      end
      object ppDBText79: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PatientName'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3239
        mmLeft = 4498
        mmTop = 10583
        mmWidth = 635
        BandType = 0
      end
      object ppDBBarCode2: TppDBBarCode
        UserName = 'DBBarCode1'
        AlignBarCode = ahLeft
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personPAS_str'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 17018
        mmLeft = 4498
        mmTop = 17727
        mmWidth = 47498
        BandType = 0
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppLabel123: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DOH:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3175
        mmLeft = 50006
        mmTop = 10583
        mmWidth = 7144
        BandType = 0
      end
      object ppDBText80: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDOB_Dat'
        DataPipeline = ppDBPipeline3
        DisplayFormat = 'mmmm d, yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3239
        mmLeft = 58208
        mmTop = 10583
        mmWidth = 635
        BandType = 0
      end
    end
    object ppDetailBand7: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand7: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList8: TppParameterList
    end
  end
  object ppPatientLabel: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 270
    PrinterSetup.mmMarginLeft = 2000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 39000
    PrinterSetup.mmPaperWidth = 83000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 1064
    Top = 713
    Version = '11.03'
    mmColumnWidth = 31200
    object ppHeaderBand8: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 37571
      mmPrintPosition = 0
      object ppDBText81: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        SaveOrder = 0
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personAddressCurrent_str'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 10054
        mmLeft = 12435
        mmTop = 16404
        mmWidth = 59796
        BandType = 0
      end
      object ppDBText82: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        SaveOrder = 1
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personTelNoCurrent_str'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3239
        mmLeft = 8467
        mmTop = 12965
        mmWidth = 635
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        SaveOrder = 2
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'H:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3175
        mmLeft = 4498
        mmTop = 12965
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel125: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        SaveOrder = 3
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Addr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3175
        mmLeft = 4498
        mmTop = 16404
        mmWidth = 6879
        BandType = 0
      end
      object ppDBText83: TppDBText
        UserName = 'DBText84'
        HyperlinkColor = clBlue
        SaveOrder = 4
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personPAS_str'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 4128
        mmLeft = 4498
        mmTop = 794
        mmWidth = 974
        BandType = 0
      end
      object ppDBText85: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        SaveOrder = 5
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personIDNumber_Str'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3768
        mmLeft = 71342
        mmTop = 2910
        mmWidth = 889
        BandType = 0
      end
      object ppDBText88: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        SaveOrder = 6
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personStatusDesc_str'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3239
        mmLeft = 4498
        mmTop = 9260
        mmWidth = 635
        BandType = 0
      end
      object ppDBText89: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        SaveOrder = 7
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PatientName'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3239
        mmLeft = 4498
        mmTop = 5556
        mmWidth = 635
        BandType = 0
      end
      object ppLabel126: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        SaveOrder = 8
        Save = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DOH:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3175
        mmLeft = 37306
        mmTop = 12965
        mmWidth = 7144
        BandType = 0
      end
      object ppDBText90: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        SaveOrder = 9
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'personDOB_Dat'
        DataPipeline = ppDBPipeline3
        DisplayFormat = 'mmmm d, yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3239
        mmLeft = 45508
        mmTop = 12965
        mmWidth = 635
        BandType = 0
      end
      object ppDBText91: TppDBText
        UserName = 'DBText91'
        HyperlinkColor = clBlue
        SaveOrder = 10
        Save = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EmployerDetail'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3239
        mmLeft = 4498
        mmTop = 27517
        mmWidth = 635
        BandType = 0
      end
      object ppDBText92: TppDBText
        UserName = 'DBText92'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MedicalAid'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 3239
        mmLeft = 4498
        mmTop = 31221
        mmWidth = 635
        BandType = 0
      end
    end
    object ppDetailBand8: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand8: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList9: TppParameterList
    end
  end
  object qryVisitExistsForToday: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'person_id'
        DataType = ftGuid
        Size = 38
        Value = '{332EBD5D-2FD1-4C00-A885-94733EC0BCD4}'
      end
      item
        Name = 'visitDate'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'clinic'
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'IF EXISTS ('
      'SELECT HealthCareReg_ID FROM tblHealthCareRegister'
      'WHERE Patient_ID=:person_id'
      'AND DATEDiff(d, Date_dat, :visitDate) = 0'
      'AND clinic_str =:clinic'
      ')'
      'SELECT 1 AS Result'
      'ELSE '
      'SELECT 0 AS Result')
    Left = 464
    Top = 569
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtParadox
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    IniStorageType = 'IniFile'
    IniStorageName = '($LocalAppData)\RBuilder\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 1264
    Top = 25
  end
  object stp_UpdateGBID: TADOQuery
    Tag = 1
    Connection = conPatient
    Parameters = <
      item
        Name = 'GBID'
        Attributes = [paNullable]
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'person_ID'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE tblPerson'
      'SET personGreenBox_ID =:GBID'
      'WHERE person_ID=:person_ID')
    Left = 1168
    Top = 199
  end
  object qryPatientByGreenBoxID: TADOQuery
    Tag = 1
    Connection = conPatient
    Parameters = <
      item
        Name = 'gbpatientID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT personPAS_str, personIDNumber_str, personLastName_str, pe' +
        'rsonFirstName_str, personRefNoCurrent_str'
      'FROM tblPerson'
      'WHERE tblPerson.personGreenBox_ID=:gbpatientID')
    Left = 1032
    Top = 201
    object qryPatientByGreenBoxIDpersonPAS_str: TWideStringField
      FieldName = 'personPAS_str'
    end
    object qryPatientByGreenBoxIDpersonIDNumber_str: TWideStringField
      FieldName = 'personIDNumber_str'
    end
    object qryPatientByGreenBoxIDpersonLastName_str: TWideStringField
      FieldName = 'personLastName_str'
      Size = 30
    end
    object qryPatientByGreenBoxIDpersonFirstName_str: TWideStringField
      FieldName = 'personFirstName_str'
      Size = 30
    end
    object qryPatientByGreenBoxIDpersonRefNoCurrent_str: TWideStringField
      FieldName = 'personRefNoCurrent_str'
    end
  end
  object qryPatientLabel: TADOQuery
    Connection = conPatient
    CursorType = ctStatic
    DataSource = dsqryPersonDetail
    Parameters = <
      item
        Name = 'person_ID'
        DataType = ftGuid
        NumericScale = 255
        Precision = 255
        Size = 38
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  ISNULL(tblPerson.personFirstName_str, '#39#39') + '#39' '#39' + ISNULL' +
        '(tblPerson.PersonLastName_Str, '#39#39') AS PatientName, tblPerson.per' +
        'sonIDNUmber_str, tblPerson.personPAS_str,'
      
        'tblPerson.personDOB_Dat, tblPerson.personRefNoCurrent_str, tblPe' +
        'rson.personTelNoCurrent_str, tblPerson.personCelNoCurrent_str,'
      
        'tblPerson.personAddressCurrent_str, tblPErson.personStatusDesc_s' +
        'tr, tblPerson.vstSupporterName_str, tblPerson.vstSupporterAddres' +
        's_str, tblPerson.vstUpporterPhone_str,'
      'tblPerson.vstSupporterRelationship_str, '
      
        #39'Medical Aid: '#39' + ISNULL(personMedicalAidName_Str, '#39#39') + '#39' '#39' +IS' +
        'NULL(personMedicalAidNumber_Str, '#39#39') AS MedicalAid, '
      
        #39'Employer: '#39' + tblContact.contactDescription_str + '#39' '#39'+ tblConta' +
        'ct.contactDetail_Str  AS EmployerDetail'
      'FROM tblPerson'
      
        'LEFT OUTER JOIN tblPersonMedicalAid ON tblPersonMedicalAid.perso' +
        'n_ID = tblPerson.person_ID'
      
        'LEFT OUTER JOIN tblContact ON (tblContact.linking_ID = tblPerson' +
        '.person_ID AND tblContact.contactType_Str = '#39'Work'#39' AND tblContac' +
        't.contactMode_str ='#39'Phone'#39')'
      'WHERE tblPerson.person_ID=:person_ID')
    Left = 800
    Top = 713
    object qryPatientLabelPatientName: TWideStringField
      FieldName = 'PatientName'
      ReadOnly = True
      Size = 61
    end
    object qryPatientLabelpersonIDNUmber_str: TWideStringField
      FieldName = 'personIDNUmber_str'
    end
    object qryPatientLabelpersonPAS_str: TWideStringField
      FieldName = 'personPAS_str'
    end
    object qryPatientLabelpersonDOB_Dat: TDateTimeField
      FieldName = 'personDOB_Dat'
    end
    object qryPatientLabelpersonRefNoCurrent_str: TWideStringField
      FieldName = 'personRefNoCurrent_str'
    end
    object qryPatientLabelpersonTelNoCurrent_str: TWideStringField
      FieldName = 'personTelNoCurrent_str'
    end
    object qryPatientLabelpersonCelNoCurrent_str: TWideStringField
      FieldName = 'personCelNoCurrent_str'
    end
    object qryPatientLabelpersonAddressCurrent_str: TWideStringField
      FieldName = 'personAddressCurrent_str'
      Size = 255
    end
    object qryPatientLabelpersonStatusDesc_str: TWideStringField
      FieldName = 'personStatusDesc_str'
      Size = 150
    end
    object qryPatientLabelvstSupporterName_str: TWideStringField
      FieldName = 'vstSupporterName_str'
      Size = 30
    end
    object qryPatientLabelvstSupporterAddress_str: TWideStringField
      FieldName = 'vstSupporterAddress_str'
      Size = 255
    end
    object qryPatientLabelvstUpporterPhone_str: TWideStringField
      FieldName = 'vstUpporterPhone_str'
      Size = 50
    end
    object qryPatientLabelvstSupporterRelationship_str: TWideStringField
      FieldName = 'vstSupporterRelationship_str'
    end
    object qryPatientLabelMedicalAid: TWideStringField
      FieldName = 'MedicalAid'
      ReadOnly = True
      Size = 101
    end
    object qryPatientLabelEmployerDetail: TWideStringField
      FieldName = 'EmployerDetail'
      ReadOnly = True
      Size = 416
    end
  end
  object dsPatientLabel: TDataSource
    DataSet = qryPatientLabel
    Left = 880
    Top = 713
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = dsPatientLabel
    UserName = 'DBPipeline3'
    Left = 976
    Top = 713
  end
  object dsActiveStatusLog: TDataSource
    DataSet = tblActiveStatusLog
    Left = 784
    Top = 40
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipelineWeights
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 1312
    Top = 544
    Version = '11.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipelineWeights'
    object ppHeaderBand9: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand10: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 76729
      mmPrintPosition = 0
      object ppDPTeeChart1: TppDPTeeChart
        UserName = 'DPTeeChart1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        mmHeight = 71438
        mmLeft = 3440
        mmTop = 1852
        mmWidth = 177800
        BandType = 4
        object ppDPTeeChartControl1: TppDPTeeChartControl
          Left = 0
          Top = 0
          Width = 400
          Height = 250
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.Text.Strings = (
            'Chart')
          LeftAxis.DateTimeFormat = 'MM/dd/yyyy'
          Legend.LegendStyle = lsValues
          BevelOuter = bvNone
          Color = clWhite
          object Series1: TFastLineSeries
            Marks.ArrowLength = 8
            Marks.Style = smsValue
            Marks.Visible = True
            SeriesColor = clRed
            LinePen.Color = clRed
            XValues.DateTime = True
            XValues.Name = 'X'
            XValues.Multiplier = 1
            XValues.Order = loAscending
            YValues.DateTime = True
            YValues.Name = 'Y'
            YValues.Multiplier = 1
            YValues.Order = loNone
          end
        end
      end
    end
    object ppFooterBand9: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 11642
      mmPrintPosition = 0
    end
    object ppParameterList10: TppParameterList
    end
  end
end
