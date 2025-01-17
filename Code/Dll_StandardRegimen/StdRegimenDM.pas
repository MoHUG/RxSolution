unit StdRegimenDM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComObj, StdCtrls, PrescriptionUtilities;

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
  HST_COPY    = 'PROTOCOL COPY';
  HST_REG_REPLACED = 'REGIMEN REPLACED';
  HST_ICDT = 'ICD10';

type
  TdmStdReg = class(TDataModule)
    conStdReg: TADOConnection;
    qryProtocol: TADOQuery;
    qryStdRegimen: TADOQuery;
    qryProductFormulation: TADOQuery;
    qryProductPacks: TADOQuery;
    qryICD10: TADOQuery;
    qryRegiminInterval: TADOQuery;
    qryRegiminIntervalabbreviation_Str: TWideStringField;
    qryRegiminIntervalabbreviationDescription_Str: TWideStringField;
    qryRegiminIntervalabbreviationValue_dbl: TFloatField;
    qryRegiminIntervalabbreviationValueUnit_Str: TWideStringField;
    qryRegiminIntervalabbreviationValueRatio_dbl: TFloatField;
    qryRegiminIntervalabbreviationType_Str: TWideStringField;
    qryRegiminIntervalabbreviationValueRatioUnit_Str: TWideStringField;
    qryRegiminIntervalabbreviationInstruction_Str: TWideStringField;
    qryRegiminIntervalabbreviationLanguage_str: TWideStringField;
    qryRegiminInstruction: TADOQuery;
    dsqryProductFormulation: TDataSource;
    qryStdRegimenStdRegimen_ID: TGuidField;
    qryStdRegimenFrmFormulation_Str: TWideStringField;
    qryStdRegimenFrmAdministration_Str: TWideStringField;
    qryStdRegimenFrmSKU_Dbl: TFloatField;
    qryStdRegimenFrmInterval_Str: TWideStringField;
    qryStdRegimenFrmAdministrationUnit_Str: TWideStringField;
    qryStdRegimenFrmDailyDoseCalc_Dbl: TFloatField;
    qryStdRegimenFrmDoseCalc_Dbl: TFloatField;
    qryStdRegimenFrmSKUTotal_Dbl: TFloatField;
    qryStdRegimenFrmDuration_Dbl: TFloatField;
    qryStdRegimenFrmRepeat_Dbl: TFloatField;
    qryStdRegimenFrmDirections_Str: TWideStringField;
    qryStdRegimenFrmICDCode_Str: TWideStringField;
    qryStdRegimenFrmDescription_Str: TWideStringField;
    qryStdRegimenFrmProtocol_ID: TGuidField;
    qryStdRegimenDspDescription_Str: TWideStringField;
    qryStdRegimenDspProduct_ID: TGuidField;
    qryStdRegimenDspProduct_Str: TWideStringField;
    qryStdRegimenDspSKUActual_Dbl: TFloatField;
    qryStdRegimenDspProductCalc_Dbl: TFloatField;
    qryStdRegimenDspProductBreakPack_Bol: TBooleanField;
    qryStdRegimenDspWarning_Str: TWideStringField;
    qryStdRegimenDspDirections_Str: TWideStringField;
    qryStdRegimenDspLabel01_Str: TWideStringField;
    qryStdRegimenDspLabel02_Str: TWideStringField;
    qryStdRegimenDspLabel03_Str: TWideStringField;
    qryStdRegimenDspLabel04_Str: TWideStringField;
    qryStdRegimenDspLabel05_Str: TWideStringField;
    qryStdRegimenDspLabel06_Str: TWideStringField;
    qryStdRegimenItemPreview_Str: TWideStringField;
    qryStdRegimenDspDirectionsAuto_Bol: TBooleanField;
    qryRXItem_Worker: TADOQuery;
    qryProtocolRegimen: TADOQuery;
    dsqryProtocol: TDataSource;
    qryProtocolRegimen_Worker: TADOQuery;
    qryProtocolRegimenDescription_Worker: TADOQuery;
    qryProtocolRegimenProtocol_ID: TGuidField;
    qryProtocolRegimenProtocolRegimen_ID: TGuidField;
    qryProtocolRegimenStdRegimen_ID: TGuidField;
    qryProtocolRegimenFrmFormulation_Str: TWideStringField;
    qryProtocolRegimenFrmAdministration_Str: TWideStringField;
    qryProtocolRegimenFrmSKU_Dbl: TFloatField;
    qryProtocolRegimenFrmInterval_Str: TWideStringField;
    qryProtocolRegimenFrmAdministrationUnit_Str: TWideStringField;
    qryProtocolRegimenFrmDailyDoseCalc_Dbl: TFloatField;
    qryProtocolRegimenFrmDoseCalc_Dbl: TFloatField;
    qryProtocolRegimenFrmSKUTotal_Dbl: TFloatField;
    qryProtocolRegimenFrmDuration_Dbl: TFloatField;
    qryProtocolRegimenFrmRepeat_Dbl: TFloatField;
    qryProtocolRegimenFrmDirections_Str: TWideStringField;
    qryProtocolRegimenFrmICDCode_Str: TWideStringField;
    qryProtocolRegimenFrmDescription_Str: TWideStringField;
    qryProtocolRegimenFrmProtocol_ID: TGuidField;
    qryProtocolRegimenDspDescription_Str: TWideStringField;
    qryProtocolRegimenDspProduct_ID: TGuidField;
    qryProtocolRegimenDspProduct_Str: TWideStringField;
    qryProtocolRegimenDspSKUActual_Dbl: TFloatField;
    qryProtocolRegimenDspProductCalc_Dbl: TFloatField;
    qryProtocolRegimenDspProductBreakPack_Bol: TBooleanField;
    qryProtocolRegimenDspWarning_Str: TWideStringField;
    qryProtocolRegimenDspDirections_Str: TWideStringField;
    qryProtocolRegimenDspLabel01_Str: TWideStringField;
    qryProtocolRegimenDspLabel02_Str: TWideStringField;
    qryProtocolRegimenDspLabel03_Str: TWideStringField;
    qryProtocolRegimenDspLabel04_Str: TWideStringField;
    qryProtocolRegimenDspLabel05_Str: TWideStringField;
    qryProtocolRegimenDspLabel06_Str: TWideStringField;
    qryProtocolRegimenItemPreview_Str: TWideStringField;
    qryProtocolRegimenDspDirectionsAuto_Bol: TBooleanField;
    qryProtocolRegimen_WorkerProtocolRegimen_ID: TGuidField;
    qryProtocolRegimen_WorkerProtocol_ID: TGuidField;
    qryProtocolRegimen_WorkerStdRegimen_ID: TGuidField;
    qryCheckIfRegimenBeingUsed: TADOQuery;
    qryProtocolRegimen_WorkerInputOrder_int: TIntegerField;
    qryProtocolRegimenDescription_WorkerProtocol_ID: TGuidField;
    qryProtocolRegimenDescription_WorkerProtocolRegimen_ID: TGuidField;
    qryProtocolRegimenDescription_WorkerStdRegimen_ID: TGuidField;
    qryProtocolRegimenDescription_WorkerFrmFormulation_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerFrmAdministration_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerFrmSKU_Dbl: TFloatField;
    qryProtocolRegimenDescription_WorkerFrmInterval_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerFrmAdministrationUnit_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerFrmDailyDoseCalc_Dbl: TFloatField;
    qryProtocolRegimenDescription_WorkerFrmDoseCalc_Dbl: TFloatField;
    qryProtocolRegimenDescription_WorkerFrmSKUTotal_Dbl: TFloatField;
    qryProtocolRegimenDescription_WorkerFrmDuration_Dbl: TFloatField;
    qryProtocolRegimenDescription_WorkerFrmRepeat_Dbl: TFloatField;
    qryProtocolRegimenDescription_WorkerFrmDirections_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerFrmICDCode_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerFrmDescription_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerFrmProtocol_ID: TGuidField;
    qryProtocolRegimenDescription_WorkerDspDescription_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerDspProduct_ID: TGuidField;
    qryProtocolRegimenDescription_WorkerDspProduct_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerDspSKUActual_Dbl: TFloatField;
    qryProtocolRegimenDescription_WorkerDspProductCalc_Dbl: TFloatField;
    qryProtocolRegimenDescription_WorkerDspProductBreakPack_Bol: TBooleanField;
    qryProtocolRegimenDescription_WorkerDspWarning_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerDspDirections_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerDspLabel01_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerDspLabel02_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerDspLabel03_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerDspLabel04_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerDspLabel05_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerDspLabel06_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerItemPreview_Str: TWideStringField;
    qryProtocolRegimenDescription_WorkerDspDirectionsAuto_Bol: TBooleanField;
    qryProtocolRegimenInputOrder_int: TIntegerField;
    qryRegimenID: TADOQuery;
    qryHideDailyDDosage: TADOQuery;
    qryHideDailyDDosagedoNotShowDailyDefinedDose_bol: TBooleanField;
    stp_CopyProtocol: TADOQuery;
    tblProtocolEditLog: TADOQuery;
    qryUserDetail: TADOQuery;
    tblProtocolEditLogProtocolChange_ID: TAutoIncField;
    tblProtocolEditLogDate_dat: TDateTimeField;
    tblProtocolEditLogDescription_str: TWideStringField;
    tblProtocolEditLogProtocol_ID: TGuidField;
    tblProtocolEditLogRegimen_ID: TGuidField;
    tblProtocolEditLogType_str: TWideStringField;
    tblProtocolEditLogMode_str: TWideStringField;
    tblProtocolEditLogUser_str: TWideStringField;
    QryInputNumberMax: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure StdRegimenFieldsChanged(Sender: TField);
    procedure qryStdRegimenNewRecord(DataSet: TDataSet);
    procedure qryProtocolBeforePost(DataSet: TDataSet);
    procedure qryProtocolNewRecord(DataSet: TDataSet);
    procedure qryRXItem_WorkerNewRecord(DataSet: TDataSet);
    procedure qryStdRegimenBeforePost(DataSet: TDataSet);
  private
    FCalculatingRXItem: Boolean;
    FDatabaseConString: WideString;

  // Regimen Fields
  fldFrmFormulation_Str: string;
  fldFrmAdministration_Str: string;
  fldFrmSKU_Dbl: string;
  fldFrmAdministrationUnit_Str: string;
  fldFrmInterval_Str: string;
  fldFrmDuration_Dbl: string;
//  fldFrmRepeat_Dbl: string;
  fldFrmDirections_Str: string;
  fldFrmDailyDoseCalc_Dbl: string;
  fldFrmDoseCalc_Dbl: string;
  fldFrmSKUTotal_Dbl: string;
  fldFrmICDCode_Str: string;
  fldFrmDescription_Str: string;
//  fldFrmProtocol_ID: string;
  fldDspProduct_Str: string;
  fldDspProduct_ID: string;
  fldDspSKUActual_Dbl: string;
  fldDspProductCalc_Dbl: string;
  fldDspDirections_Str: string;
  fldDspWarning_Str: string;
//  fldDspProductBatch_Str: string;
  fldDspProductBreakPack_Bol: string;
  fldDspDescription_Str: string;
//  fldDspProductCost_Mny: string;
//  fldDspItemCost_Mny: string;
//  fldDspNotDispensed_Bol: string;
//  fldDspInterventionProblem_Str: string;
//  fldDspInterventionOutcome_Str: string;
  fldDspLabel01_Str: string;
  fldDspLabel02_Str: string;
  fldDspLabel03_Str: string;
  fldDspLabel04_Str: string;
  fldDspLabel05_Str: string;
  fldDspLabel06_Str: string;
  fldItemPreviewStr: string;
  fldDspDirectionsAuto_Bol: string;
    fldDspInterventionOutcome_Str: string;
    fldDspInterventionProblem_Str: string;
    fldDspItemCost_Mny: string;
    fldDspNotDispensed_Bol: string;
    fldDspProductBatch_Str: string;
    fldDspProductCost_Mny: string;
    fldFrmProtocol_ID: string;
    fldFrmRepeat_Dbl: string;
    fldInputOrder_int: string;
    fldRXID: string;
    fldRXItemID: string;
  fldStdRegID: string;
    function AddSingleRegimen(const rxID: string): string;
    function AddProtocolToRx(const rxID: string): string;
    function AddSingleRegimenToProtocol(const protocolId: string): string;
    function AddMultipleRegimenToProtocol(const protocolId: string; f: TRXMultipleReg): string;

    procedure LoadData;
    procedure LoadRegimenForEdit;
    procedure CloseRegimenAfterEdit;
    function InsertStdRegIntoProtocol(protocolId: string): string;
    function InsertMultipleStdRegIntoProtocol(protocolId: string; _RegID: TRXMultipleReg): string;
    function EditStdRegIntoProtocol(protocolRegimenId: string): string;
    procedure LiveUpdateOfStdRegimen(Sender: TField; Dataset: TDataSet);
    procedure LoadSupportDataProperties;
    function InsertStdRegIntoRX(const rxId, protocolId: string): string;
    function Protocol_DeleteItem: Boolean;
    procedure SetDatabaseConString(const Value: WideString);
    procedure CopyCurrentProtocol(protocol_ID: string);
    procedure LogProtocolChange(vtype: string; vDescription: string; vProtocolID: string; vRegimenID: string;  vUser: string; vMode: string);
    function GetUserFullName(userID: string): string;
    function GetMaxInputOrderNumber: Integer;

    { Private declarations }
  public
    FUserName: string;
    FUserPin: string;
    function Delete_ProtocolItem: Boolean;
    procedure Protocol_Edit;
    function Protocol_Add: string;
    procedure Protocol_Delete(id: string = '');
    function Protocol_List(const rXId: string = ''): string;
    function StandardRegimen_List(const rxId: string): string;
    procedure StandardRegimen_Edit;
    function StandardRegimen_ListFromProtocolAdd: string;
    function StandardRegimen_ListFromProtocolEdit: string;
    property DatabaseConString: WideString read FDatabaseConString write
        SetDatabaseConString;
    function HideDailyDefinedDose : Boolean;
    procedure CopyProtocol;
    procedure ProtocolViewEditHistory;
    procedure RegimenViewEditHistory;
    { Public declarations }
  end;

var
  dmStdReg: TdmStdReg;

implementation

uses StdRegimen_ProtocolFRM, StdRegimen_StdDoseFRM,
  StdRegimen_StdDoseDetailFRM,
  StdRegimen_ProtocolDetailFRM, StdProtocol_EditHistoryFRM;

{$R *.dfm}

procedure TdmStdReg.LogProtocolChange(vtype: string; vDescription: string; vProtocolID: string; vRegimenID: string; vUser: string; vMode: string);
var
 _username: string;
begin


 _username := GetUserFullName(vUser);

 //04 August 2014
 //This method records any changes made to the protocol and regimen 
 with tblProtocolEditLog do
  begin
  Open;
  Append;

  FieldByName('Date_dat').AsDateTime := Now();
  FieldByName('Description_str').AsString := vDescription;

  if (vMode = 'PROTOCOL') then
   FieldByName('Protocol_ID').AsString := vProtocolID
  else
   FieldByName('Regimen_ID').AsString := vRegimenID;

  if (vType = HST_REG_ADD) OR (vType = HST_REG_DEL) then
   FieldByName('Regimen_ID').AsString := vRegimenID;

  FieldByName('Type_str').AsString := vtype;
  FieldByName('User_str').AsString := _username;
  FieldByName('Mode_str').AsString := vMode;
  
  Post;
  Close;
  end;


end;

function TdmStdReg.AddSingleRegimen(const rxID: string): string;
begin

  Result := InsertStdRegIntoRX(rxId, '');

end;

function TdmStdReg.AddProtocolToRx(const rxID: string): string;
var
  _loaderItemRead : TLoader;
//  _loaderItemWrite : TLoader;
//  _regimenId : string;
  _id : string;
  _protocolId : string;
//  _dm : TDataManager;
  _sr : TDataManager;

begin

  Result := '';
  _loaderItemRead := TLoader.Create;

  _loaderItemRead.DataSet := qryProtocolRegimen;
  if _loaderItemRead.DataSet.State in [dsInsert, dsEdit] then _loaderItemRead.DataSet.Post;

  _loaderItemRead.DataSet := qryProtocolRegimen_Worker;
  _loaderItemRead.DataSet.Close;
  _loaderItemRead.DataSet.Open;

  _sr := TDataManager.Create(qryStdRegimen, fldStdRegID);


  try
    try

    _sr.Refresh;

    if _loaderItemRead.DataSet.RecordCount > 0 then
      while not _loaderItemRead.DataSet.Eof do
        begin
        _loaderItemRead.Load( _id, 'StdRegimen_ID');
        _loaderItemRead.Load( _protocolId, 'Protocol_ID');

        if _id <> '' then
          begin
          _sr.Move(_id);
          Result := InsertStdRegIntoRX(rxId, _protocolId);
          end;

        _loaderItemRead.DataSet.Next;
        end;


    except
    end;
  finally
  _sr.Free;
  _loaderItemRead.DataSet.Close;
  _loaderItemRead.Free;
  end;


end;

function TdmStdReg.AddSingleRegimenToProtocol(const protocolId: string): string;
begin

  Result := InsertStdRegIntoProtocol(protocolId);

end;

//SM
function TdmStdReg.AddMultipleRegimenToProtocol(const protocolId: string; f: TRXMultipleReg): string;
begin

  Result := InsertMultipleStdRegIntoProtocol(protocolId, f);

end;

procedure TdmStdReg.LoadData;
var
  ErrPos : string;
begin


  try
  ErrPos := 'qryICD10';
  qryICD10.Open;

  ErrPos := 'qryProtocol';
  qryProtocol.Open;

  ErrPos := 'qryProtocolRegimen';
  qryProtocolRegimen.Open;

  ErrPos := 'qryStdRegimen';
  qryStdRegimen.Open;


  except
    on E:Exception do raise Exception.Create('LoadData' + #13 + ErrPos + #13 + E.Message);
  end;


end;

procedure TdmStdReg.LoadRegimenForEdit;
var
  ErrPos : string;
begin

  try

  CloseRegimenAfterEdit;

  ErrPos := 'qryProductFormulation';
  qryProductFormulation.Open;

  ErrPos := 'qryProductPacks';
  qryProductPacks.Open;

  ErrPos := 'qryRegiminInterval';
  qryRegiminInterval.Open;

  ErrPos := 'qryRegiminInstruction';
  qryRegiminInstruction.Open;

  except
    on E:Exception do raise Exception.Create('LoadRegimenForEdit' + #13 + ErrPos + #13 + E.Message);
  end;


end;

procedure TdmStdReg.CloseRegimenAfterEdit;
var
  ErrPos : string;
begin


  try
  ErrPos := 'qryProductFormulation';
  qryProductFormulation.Close;

  ErrPos := 'qryProductPacks';
  qryProductPacks.Close;

  ErrPos := 'qryRegiminInterval';
  qryRegiminInterval.Close;

  ErrPos := 'qryRegiminInstruction';
  qryRegiminInstruction.Close;

  except
    on E:Exception do raise Exception.Create('CloseRegimenAfterEdit' + #13 + ErrPos + #13 + E.Message);
  end;


end;

procedure TdmStdReg.LiveUpdateOfStdRegimen(Sender: TField; Dataset: TDataSet);
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
  _dispensingFormStr : string;

begin


try



  FCalculatingRXItem := True;

  _loader := TLoader.Create;
  _loader.DataSet := Dataset;


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


//    if (Sender.FieldName = fldDspProductBatch_Str) then
//      Exit;

    // Fetch any fields that need to be used in the calculation here.

    {Formulation Data}
    Load(_frmFormulationStr, Sender, fldFrmFormulation_Str );
    Load(_frmAdministrationStr, Sender, fldFrmAdministration_Str );
    Load(_frmSKUDbl, Sender, fldFrmSKU_Dbl);
    Load(_frmAdministrationUnitStr, Sender, fldFrmAdministrationUnit_Str);
    Load(_frmIntervalStr, Sender, fldFrmInterval_Str);
    Load(_frmDurationDbl, Sender, fldFrmDuration_Dbl);
//    Load(_frmRepeatDbl, Sender, fldFrmRepeat_Dbl);
    Load(_frmDirectionStr, Sender, fldFrmDirections_Str);

    Load(_frmDailyDoseDbl, Sender, fldFrmDailyDoseCalc_Dbl);
    Load(_frmDoseDbl, Sender, fldFrmDoseCalc_Dbl);
    Load(_frmSKUTotalDbl, Sender, fldFrmSKUTotal_Dbl);

    Load(_frmICDCodeStr, Sender, fldFrmICDCode_Str);
    Load(_frmDescriptionStr, Sender, fldFrmDescription_Str);
//    Load(_frmProtocolID, Sender, fldFrmProtocol_ID);



    {Dispensing Data}
    Load(_dspProductStr, Sender, fldDspProduct_Str);
    Load(_dspProductId, Sender, fldDspProduct_ID);

    Load(_dspSKUActualDbl, Sender, fldDspSKUActual_Dbl);
    Load(_dspProductCalculatedDbl, Sender, fldDspProductCalc_Dbl);

    Load(_dspDirectionsStr, Sender, fldDspDirections_Str);
    Load(_dspWarningStr, Sender, fldDspWarning_Str);
//    Load(_dspProductBatchStr, Sender, fldDspProductBatch_Str);

    Load(_dspProductBreakPackBol, Sender, fldDspProductBreakPack_Bol);

    Load(_dspDescriptionStr, Sender, fldDspDescription_Str);
//    Load(_dspProductCostDbl, Sender, fldDspProductCost_Mny);
//    Load(_dspItemCostDbl, Sender, fldDspItemCost_Mny);
//    Load(_dspNotDispensedBol, Sender, fldDspNotDispensed_Bol);
//    Load(_dspInterventionProblemStr, Sender, fldDspInterventionProblem_Str);
//    Load(_dspInterventionOutcomeStr, Sender, fldDspInterventionOutcome_Str);

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
      LookUpValue(_luFrmStrengthDbl, 'StrengthValue_dbl');
      LookUpValue(_luFrmStrengthUnitStr, 'StrengthUnit_Str');
      LookUpValue(_luFrmStrengthCoEffDbl, 'DispensingValue_dbl');
      LookUpValue(_frmAdministrationUnitStr, 'DispensingUnit_str');
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


      // Medicine measure etc
      LookUpValue(_luAdministeredByUnitStr, 'dispensedUnit_str'); // AdministeredBy = how the patient sees it eg medicine measure.
      LookUpValue(_luAdministeredByCoEffDbl, 'dispensedValue_dbl');

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

      // only look this up if it was fired by lookup list.
//      if Sender.FieldName = fldFrmDirections_Str then //SM 12 Jan 2009
        LookUpValue(_luDirectionsStr, 'abbreviationInstruction_Str');
      end;



    // Do any calculations here.
    if _luFrmIntervalDbl > 0 then _luFrmIntervalDbl := 24 / _luFrmIntervalDbl;
//    if _luFrmStrengthCoEffDbl > 0 then _luFrmStrengthDbl := _luFrmStrengthDbl / _luFrmStrengthCoEffDbl;



    if _luFrmStrengthCoEffDbl >= 1 then
      _luFrmStrengthDbl := _luFrmStrengthDbl / _luFrmStrengthCoEffDbl
      else if _luFrmStrengthCoEffDbl > 0 then
      _luFrmStrengthDbl := _luFrmStrengthDbl * _luFrmStrengthCoEffDbl;

//    ShowMessage('( ' + FloatToStr(_luFrmStrengthDbl) +' * '+FloatToStr(_frmSKUDbl)+' ) / '+FloatToStr(_luFrmStrengthCoEffDbl));
    if _luDspPackCoEffDbl <> 0 then
      _frmDoseDbl := (_luFrmStrengthDbl * _frmSKUDbl) / _luDspPackCoEffDbl
      else
      _frmDoseDbl := (_luFrmStrengthDbl * _frmSKUDbl);





    _frmDailyDoseDbl := _frmDoseDbl * _luFrmIntervalDbl;
    _frmSKUTotalDbl := _frmSKUDbl * _luFrmIntervalDbl * _frmDurationDbl;



    // Evaluate chosen product
    if _dspProductStr <> '' then
      begin
      _clcDspSKUPerDoseDbl := 1;
      if _luDspStrengthCoEffDbl > 0 then
        _luDspStrengthDbl := _luDspStrengthDbl / _luDspStrengthCoEffDbl;
      if _luDspStrengthDbl > 0 then
        _clcDspSKUPerDoseDbl := _frmDoseDbl / _luDspStrengthDbl;


      if not _dspProductBreakPackBol then
        _dspSKUActualDbl := _clcDspSKUPerDoseDbl * _luFrmIntervalDbl * _frmDurationDbl ;

      if Sender.FieldName = fldDspProductBreakPack_Bol then
        if _dspProductBreakPackBol then _dspSKUActualDbl := _frmSKUTotalDbl;

      _dspProductCalculatedDbl := (_dspSKUActualDbl / _luProductPackSizeDbl);
      if _luProductPackSizeDbl > 0 then
        _dspProductCalculatedDbl := (_dspSKUActualDbl / _luProductPackSizeDbl)
        else
        _dspProductCalculatedDbl := _dspSKUActualDbl;


      // Now for dispending reset the dose sku
      //_dspSKUActualDbl := _dspSKUActualDbl * _luDspPackCoEffDbl;


      RX.PacksRequired(_luProductPackSizeDbl * _luDspPackCoEffDbl, _dspSKUActualDbl, _dspProductCalculatedDbl, _dspProductBreakPackBol);

      if _luAdministeredByCoEffDbl > 0 then
        _calcDspSKUDbl := _clcDspSKUPerDoseDbl  / _luAdministeredByCoEffDbl * _luDspPackCoEffDbl;



      end else
      begin
      _dspProductCalculatedDbl := 0;
      _dspSKUActualDbl := 0;
      _calcDspSKUDbl := 0;
      _dspProductBreakPackBol := False;
      _dspNotDispensedBol := True;
      end;

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
                    '[Patient Name]', // patientName
                    '[RX Number]', // RXNum
//                    _frmRepeatDbl,
//                    0,
                    '[Institution]',  // hospital
                    '[Institution Address]',
                    Date,
                    '[Nil]'); // hospital Address

     _dspLabel01Str := _rXLabel[1];
     _dspLabel02Str := _rXLabel[2];
    // _dspLabel03Str := _dspWarningStr;
     _dspLabel04Str := _rXLabel[4];
     _dspLabel05Str := _rXLabel[5];
     _dspLabel06Str := _rXLabel[6];

    //************* SM - 25 Jan 2013 Task 5142
    if (not HideDailyDefinedDose) then
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
//    Write(_frmRepeatDbl, fldFrmRepeat_Dbl);
    Write(_frmDirectionStr, fldFrmDirections_Str);

    Write(_frmDailyDoseDbl, fldFrmDailyDoseCalc_Dbl);
    Write(_frmDoseDbl, fldFrmDoseCalc_Dbl);
    Write(_frmSKUTotalDbl, fldFrmSKUTotal_Dbl);

    Write(_frmICDCodeStr, fldFrmICDCode_Str);
    Write(_frmDescriptionStr, fldFrmDescription_Str);
//    WriteGUID(_frmProtocolID, fldFrmProtocol_ID);

    {Dispensing Data}
    Write(_dspProductStr, fldDspProduct_Str);
    WriteGUID(_dspProductId, fldDspProduct_ID);

    Write(_dspSKUActualDbl, fldDspSKUActual_Dbl);
    Write(_dspProductCalculatedDbl, fldDspProductCalc_Dbl);

    Write(_dspDirectionsStr, fldDspDirections_Str);
    Write(_dspWarningStr, fldDspWarning_Str);
//    Write(_dspProductBatchStr, fldDspProductBatch_Str);

    Write(_dspProductBreakPackBol, fldDspProductBreakPack_Bol);

    Write(_dspDescriptionStr, fldDspDescription_Str);
//    Write(_dspProductCostDbl, fldDspProductCost_Mny);
//    Write(_dspItemCostDbl, fldDspItemCost_Mny);
//    Write(_dspNotDispensedBol, fldDspNotDispensed_Bol);
//    Write(_dspInterventionProblemStr, fldDspInterventionProblem_Str);
//    Write(_dspInterventionOutcomeStr, fldDspInterventionOutcome_Str);

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

(*
  FCalculatingRXItem := True;

  _loader := TLoader.Create;
  _loader.DataSet := Dataset;


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


//    if (Sender.FieldName = fldDspProductBatch_Str) then
//      Exit;

    // Fetch any fields that need to be used in the calculation here.

    {Formulation Data}
    Load(_frmFormulationStr, Sender, fldFrmFormulation_Str );
    Load(_frmAdministrationStr, Sender, fldFrmAdministration_Str );
    Load(_frmSKUDbl, Sender, fldFrmSKU_Dbl);
    Load(_frmAdministrationUnitStr, Sender, fldFrmAdministrationUnit_Str);
    Load(_frmIntervalStr, Sender, fldFrmInterval_Str);
    Load(_frmDurationDbl, Sender, fldFrmDuration_Dbl);
//    Load(_frmRepeatDbl, Sender, fldFrmRepeat_Dbl);
    Load(_frmDirectionStr, Sender, fldFrmDirections_Str);

    Load(_frmDailyDoseDbl, Sender, fldFrmDailyDoseCalc_Dbl);
    Load(_frmDoseDbl, Sender, fldFrmDoseCalc_Dbl);
    Load(_frmSKUTotalDbl, Sender, fldFrmSKUTotal_Dbl);

    Load(_frmICDCodeStr, Sender, fldFrmICDCode_Str);
    Load(_frmDescriptionStr, Sender, fldFrmDescription_Str);
//    Load(_frmProtocolID, Sender, fldFrmProtocol_ID);



    {Dispensing Data}
    Load(_dspProductStr, Sender, fldDspProduct_Str);
    Load(_dspProductId, Sender, fldDspProduct_ID);

    Load(_dspSKUActualDbl, Sender, fldDspSKUActual_Dbl);
    Load(_dspProductCalculatedDbl, Sender, fldDspProductCalc_Dbl);

    Load(_dspDirectionsStr, Sender, fldDspDirections_Str);
    Load(_dspWarningStr, Sender, fldDspWarning_Str);
//    Load(_dspProductBatchStr, Sender, fldDspProductBatch_Str);

    Load(_dspProductBreakPackBol, Sender, fldDspProductBreakPack_Bol);

    Load(_dspDescriptionStr, Sender, fldDspDescription_Str);
//    Load(_dspProductCostDbl, Sender, fldDspProductCost_Mny);
//    Load(_dspItemCostDbl, Sender, fldDspItemCost_Mny);
//    Load(_dspNotDispensedBol, Sender, fldDspNotDispensed_Bol);
//    Load(_dspInterventionProblemStr, Sender, fldDspInterventionProblem_Str);
//    Load(_dspInterventionOutcomeStr, Sender, fldDspInterventionOutcome_Str);

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

    if  (Sender.FieldName = fldFrmDirections_Str) or
        (Sender.FieldName = fldDspProduct_Str)
      then
      _dspDirectionsAutoBol := True;

    // Lookup Formulation Table values
    if _frmFormulationStr <> '' then
      begin
      LookUpData := qryProductFormulation;
      Key := _frmFormulationStr;
      KeyField := 'strengthExtraDescription_str';

      // 250mg/5ml broken up as per the following
      // _luFrmStrengthDbl + _luFrmStrengthUnitStr / _luFrmStrengthCoEffDbl + _frmAdministrationUnitStr
      LookUpValue(_luFrmStrengthDbl, 'StrengthValue_dbl');
      LookUpValue(_luFrmStrengthUnitStr, 'StrengthUnit_Str');
      LookUpValue(_luFrmStrengthCoEffDbl, 'DispensingValue_dbl');
      LookUpValue(_frmAdministrationUnitStr, 'DispensingUnit_str');
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

      // Medicine measure etc
      LookUpValue(_luAdministeredByUnitStr, 'dispensedUnit_str'); // AdministeredBy = how the patient sees it eg medicine measure.
      LookUpValue(_luAdministeredByCoEffDbl, 'dispensedValue_dbl');

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

      // only look this up if it was fired by lookup list.
      if Sender.FieldName = fldFrmDirections_Str then
        LookUpValue(_luDirectionsStr, 'abbreviationInstruction_Str');
      end;



    // Do any calculations here.
    if _luFrmIntervalDbl > 0 then _luFrmIntervalDbl := 24 / _luFrmIntervalDbl;
    if _luFrmStrengthCoEffDbl > 0 then _luFrmStrengthDbl := _luFrmStrengthDbl / _luFrmStrengthCoEffDbl;


    _frmDoseDbl := (_luFrmStrengthDbl * _frmSKUDbl);
    _frmDailyDoseDbl := _frmDoseDbl * _luFrmIntervalDbl;
    _frmSKUTotalDbl := _frmSKUDbl * _luFrmIntervalDbl * _frmDurationDbl;



    // Evaluate chosen product
    if _dspProductStr <> '' then
      begin
      _clcDspSKUPerDoseDbl := 1;
      if _luDspStrengthCoEffDbl > 0 then
        _luDspStrengthDbl := _luDspStrengthDbl / _luDspStrengthCoEffDbl;
      if _luDspStrengthDbl > 0 then
        _clcDspSKUPerDoseDbl := _frmDoseDbl / _luDspStrengthDbl;

      if not _dspProductBreakPackBol then
        _dspSKUActualDbl := _clcDspSKUPerDoseDbl * _luFrmIntervalDbl * _frmDurationDbl;

      _dspProductCalculatedDbl := (_dspSKUActualDbl / _luProductPackSizeDbl);
      if _luProductPackSizeDbl > 0 then
        _dspProductCalculatedDbl := (_dspSKUActualDbl / _luProductPackSizeDbl)
        else
        _dspProductCalculatedDbl := _dspSKUActualDbl;


      RX.PacksRequired(_luProductPackSizeDbl, _dspSKUActualDbl, _dspProductCalculatedDbl, _dspProductBreakPackBol);

      if _luAdministeredByCoEffDbl > 0 then
        _calcDspSKUDbl := _clcDspSKUPerDoseDbl  / _luAdministeredByCoEffDbl

      end else
      begin
      _dspProductCalculatedDbl := 0;
      _dspSKUActualDbl := 0;
      _calcDspSKUDbl := 0;
      _dspProductBreakPackBol := False;
      end;

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
      _dspDirectionsStr := RX.Instruction( _frmAdministrationStr, _calcDspSKUDbl, _luAdministeredByUnitStr, _luFrmIntervalDescriptionStr, _luDirectionsStr);
      // Clear if no product selected.
      if _dspSKUActualDbl = 0 then _dspDirectionsStr := 'Nil';
      end;

    RX.RxItemLabel( _rXLabel,
                    _dspProductStr,
                    _dspSKUActualDbl,
                    _dspDirectionsStr,
                    '', // specialInstruction
                    _dspWarningStr, // warning
                    '[Patient Name]', // patientName
                    '[RX Number]', // RXNum
                    _frmRepeatDbl,
                    0,
                    '[Institution]',  // hospital
                    '[Institution Address]'); // hospital Address

     _dspLabel01Str := _rXLabel[1];
     _dspLabel02Str := _rXLabel[2];
     _dspLabel03Str := _dspWarningStr;
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
//    Write(_frmRepeatDbl, fldFrmRepeat_Dbl);
    Write(_frmDirectionStr, fldFrmDirections_Str);

    Write(_frmDailyDoseDbl, fldFrmDailyDoseCalc_Dbl);
    Write(_frmDoseDbl, fldFrmDoseCalc_Dbl);
    Write(_frmSKUTotalDbl, fldFrmSKUTotal_Dbl);

    Write(_frmICDCodeStr, fldFrmICDCode_Str);
    Write(_frmDescriptionStr, fldFrmDescription_Str);
//    WriteGUID(_frmProtocolID, fldFrmProtocol_ID);



    {Dispensing Data}
    Write(_dspProductStr, fldDspProduct_Str);
    WriteGUID(_dspProductId, fldDspProduct_ID);

    Write(_dspSKUActualDbl, fldDspSKUActual_Dbl);
    Write(_dspProductCalculatedDbl, fldDspProductCalc_Dbl);

    Write(_dspDirectionsStr, fldDspDirections_Str);
    Write(_dspWarningStr, fldDspWarning_Str);
//    Write(_dspProductBatchStr, fldDspProductBatch_Str);

    Write(_dspProductBreakPackBol, fldDspProductBreakPack_Bol);

    Write(_dspDescriptionStr, fldDspDescription_Str);
//    Write(_dspProductCostDbl, fldDspProductCost_Mny);
//    Write(_dspItemCostDbl, fldDspItemCost_Mny);
//    Write(_dspNotDispensedBol, fldDspNotDispensed_Bol);
//    Write(_dspInterventionProblemStr, fldDspInterventionProblem_Str);
//    Write(_dspInterventionOutcomeStr, fldDspInterventionOutcome_Str);

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
*)
end;

procedure TdmStdReg.LoadSupportDataProperties;
var
  ErrPos : string;
begin


  try
  {
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
  }
  except
    on E:Exception do raise Exception.Create('LoadSupportDataProperties' + #13 + ErrPos + #13 + E.Message);
  end;


end;

procedure TdmStdReg.Protocol_Edit;
begin

  if TProtocolDetail.Show then
    if qryProtocol.State in [dsInsert, dsEdit] then
      qryProtocol.Post else
        if qryProtocol.State in [dsInsert, dsEdit] then
          qryProtocol.Cancel;

end;

function TdmStdReg.Protocol_List(const rXId: string = ''): string;
begin
  Result := '';
//  if TProtocol.Show then
// SM 07 August 2014
// When User edits Prescription; disable editing of protocol 
  if TProtocol.Show('Select', true, false) then
    begin
    // Return value is the last item added to the Rx items.
    Result := AddProtocolToRx(rXId);
//    Result := True;
    end;
end;

procedure TdmStdReg.SetDatabaseConString(const Value: WideString);
begin

  try

    conStdReg.Close;
    conStdReg.ConnectionString := value;
    conStdReg.Open;
    conStdReg.Close;

    LoadData;
    FDatabaseConString := Value;

    LoadSupportDataProperties; // TStrings for grid display.


  except
    on E:Exception do raise Exception.Create('SetDatabaseConString' + #13 + E.Message);
  end;

end;

function TdmStdReg.StandardRegimen_List(const rxId: string): string;
var f: TRXMultipleReg;
begin
  Result := '';
//  if TStdDose.Show() then
  if TStdDose.Show(false, f) then
    begin
    Result := AddSingleRegimen(rxId);
    end;
end;

procedure TdmStdReg.StandardRegimen_Edit;
begin

  LoadRegimenForEdit;
  if TStdDoseDetail.Show = mrOK then
    if qryStdRegimen.State in [dsInsert, dsEdit] then
      qryStdRegimen.Post else
        if qryStdRegimen.State in [dsInsert, dsEdit] then qryStdRegimen.Cancel;
  CloseRegimenAfterEdit;

end;

procedure TdmStdReg.DataModuleCreate(Sender: TObject);
begin

  FCalculatingRXItem := False;

  // FieldNames
  fldFrmFormulation_Str:= 'FrmFormulation_Str';
  fldFrmAdministration_Str:= 'FrmAdministration_Str';
  fldFrmSKU_Dbl:= 'FrmSKU_Dbl';
  fldFrmAdministrationUnit_Str:= 'FrmAdministrationUnit_Str';
  fldFrmInterval_Str:= 'FrmInterval_Str';
  fldFrmDuration_Dbl:= 'FrmDuration_Dbl';
  fldFrmDirections_Str:= 'FrmDirections_Str';
  fldFrmDailyDoseCalc_Dbl:= 'FrmDailyDoseCalc_Dbl';
  fldFrmDoseCalc_Dbl:= 'FrmDoseCalc_Dbl';
  fldFrmSKUTotal_Dbl:= 'FrmSKUTotal_Dbl';
  fldFrmICDCode_Str:= 'FrmICDCode_Str';
  fldFrmDescription_Str:= 'FrmDescription_Str';
  fldDspProduct_Str:= 'DspProduct_Str';
  fldDspProduct_ID:= 'DspProduct_ID';
  fldDspSKUActual_Dbl:= 'DspSKUActual_Dbl';
  fldDspProductCalc_Dbl:= 'DspProductCalc_Dbl';
  fldDspDirections_Str:= 'DspDirections_Str';
  fldDspWarning_Str:= 'DspWarning_Str';
  fldDspProductBreakPack_Bol:= 'DspProductBreakPack_Bol';
  fldDspDescription_Str:= 'DspDescription_Str';
  fldDspLabel01_Str:= 'DspLabel01_Str';
  fldDspLabel02_Str:= 'DspLabel02_Str';
  fldDspLabel03_Str:= 'DspLabel03_Str';
  fldDspLabel04_Str:= 'DspLabel04_Str';
  fldDspLabel05_Str:= 'DspLabel05_Str';
  fldDspLabel06_Str:= 'DspLabel06_Str';
  fldItemPreviewStr := 'ItemPreview_Str';
  fldDspDirectionsAuto_Bol := 'DspDirectionsAuto_Bol';
  fldStdRegID := 'StdRegimen_ID';
  fldRXID := 'RX_ID';
  fldRXItemID := 'RXItem_ID';
  fldFrmProtocol_ID := 'FrmProtocol_ID';
  fldDspProductCost_Mny:= 'DspProductCost_Mny';
  fldFrmRepeat_Dbl:= 'FrmRepeat_Dbl';
  fldDspItemCost_Mny:= 'DspItemCost_Mny';
  fldDspNotDispensed_Bol := 'fldDspNotDispensed_Bol';
  fldDspInterventionProblem_Str := 'fldDspInterventionProblem_Str';
  fldDspInterventionOutcome_Str := 'fldDspInterventionOutcome_Str';
  fldDspProductBatch_Str := 'fldDspProductBatch_Str';
  fldInputOrder_int   := 'InputOrder_int';

  // End Fieldname

end;

function TdmStdReg.Delete_ProtocolItem: Boolean;
begin
  Result := Protocol_DeleteItem;
end;

function TdmStdReg.InsertStdRegIntoProtocol(protocolId: string): string;
var
  _loaderItemRead : TLoader;
  _loaderItemWrite : TLoader;
  _regimenId : string;
  _id : string;
  _InputOrder_int : integer;
  _dm : TDataManager;

begin
  _loaderItemRead := TLoader.Create;
  _loaderItemWrite := TLoader.Create;
  _dm := TDataManager.Create(qryProtocolRegimen, 'ProtocolRegimen_ID');

  try
    try

    _loaderItemRead.DataSet := qryStdRegimen;

    _loaderItemWrite.DataSet := qryProtocolRegimen_Worker;

    _loaderItemRead.Load(_regimenId, fldStdRegID);

    _id := CreateClassID;

    _loaderItemWrite.DataSet.Open;
    //control the order of inserting protocol into description  by input order

    _InputOrder_int :=  _loaderItemWrite.DataSet.RecordCount + 1;

    _loaderItemWrite.DataSet.Append;

    _loaderItemWrite.WriteGUID(_InputOrder_int, 'InputOrder_int');
    _loaderItemWrite.WriteGUID(_regimenId, 'StdRegimen_ID');
    _loaderItemWrite.WriteGUID(protocolId, 'Protocol_ID');
    _loaderItemWrite.WriteGUID(_id, 'ProtocolRegimen_ID');

    _loaderItemWrite.Post;

    _dm.Refresh;
    _dm.Move(_id);

    except
    end;
  finally
  _dm.Free;
  _loaderItemWrite.DataSet.Close;
  _loaderItemRead.Free;
  _loaderItemWrite.Free;
  end; 
end;

//******** Task/Issue 4452 - SM Aug 2012
//******** Function added to enable user to add multiple Regimens at a time onto a Protocol
function TdmStdReg.InsertMultipleStdRegIntoProtocol(protocolId: string; _RegID: TRXMultipleReg): string;
var
  _loaderItemRead : TLoader;
  _loaderItemWrite : TLoader;
  _regimenId : string;
  _id : string;
  _InputOrder_int : integer;
  _dm : TDataManager;
  _i : integer;
begin
  _loaderItemRead := TLoader.Create;
  _loaderItemWrite := TLoader.Create;
  _dm := TDataManager.Create(qryProtocolRegimen, 'ProtocolRegimen_ID');

  try
   try
    //******** Task/Issue 4452 - SM Aug 2012
    //******** Loop through regimen items. Add multiple Regimen
    for _i:= Low(_RegID) to High(_RegID) do
    begin
     //******* Fetch Right Regimen Record
     with qryRegimenID do
      begin
      Close;
      Parameters.ParamByName('StdRegimenID').Value := _RegID[_i];
      Open;
      end;

     _loaderItemRead.DataSet := qryRegimenID;

     _loaderItemWrite.DataSet := qryProtocolRegimen_Worker;

     _loaderItemRead.Load(_regimenId, fldStdRegID);

     _id := CreateClassID;

     _loaderItemWrite.DataSet.Open;

     _InputOrder_int := _loaderItemWrite.DataSet.RecordCount + 1;

     _loaderItemWrite.DataSet.Append;
     _loaderItemWrite.WriteGUID(_InputOrder_int, 'InputOrder_int');
     _loaderItemWrite.WriteGUID(_regimenId, 'StdRegimen_ID');
     _loaderItemWrite.WriteGUID(protocolId, 'Protocol_ID');
     _loaderItemWrite.WriteGUID(_id, 'ProtocolRegimen_ID');
     _loaderItemWrite.DataSet.Post;
     _loaderItemWrite.DataSet.Close;

     LogProtocolChange(HST_REG_ADD, qryRegimenID.FieldByName('FrmDescription_Str').AsString, protocolId, _regimenId, FUserName, 'PROTOCOL');
     end;

    _dm.Refresh;
    _dm.Move(_id);
      
    except
          on E:Exception do raise Exception.Create('Error Multi-Regimen: ' + #13 + E.Message);
    end;
  finally
  _dm.Free;
  _loaderItemWrite.DataSet.Close;
  _loaderItemRead.Free;
  _loaderItemWrite.Free;
  end; 
end;



function TdmStdReg.EditStdRegIntoProtocol(protocolRegimenId: string): string;
var
  _loaderItemRead : TLoader;
  _loaderItemWrite : TLoader;
  _regimenId : string;
  _id : string;
  _dm : TDataManager;


begin

  _loaderItemRead := TLoader.Create;
  _loaderItemWrite := TLoader.Create;
  _dm := TDataManager.Create(qryProtocolRegimen, 'ProtocolRegimen_ID');

  try
    try

    _loaderItemRead.DataSet := qryStdRegimen;
    _loaderItemWrite.DataSet := qryProtocolRegimen_Worker;

    _loaderItemRead.Load(_regimenId, fldStdRegID);

    _id := protocolRegimenId;

    _loaderItemWrite.DataSet.Open;
    if _loaderItemWrite.DataSet.Locate('ProtocolRegimen_ID', _id, []) then
      _loaderItemWrite.WriteGUID(_regimenId, 'StdRegimen_ID');

    _loaderItemWrite.Post;

    _dm.Refresh;
    _dm.Move(_id);

    except
    end;
  finally
  _dm.Free;
  _loaderItemWrite.DataSet.Close;
  _loaderItemRead.Free;
  _loaderItemWrite.Free;
  end;



end;

procedure TdmStdReg.StdRegimenFieldsChanged(Sender: TField);

begin

  if not FCalculatingRXItem then
    begin
    LiveUpdateOfStdRegimen(Sender, qryStdRegimen);
    end

end;

procedure TdmStdReg.qryStdRegimenNewRecord(DataSet: TDataSet);
var
  _loader : TLoader;

begin

  _loader := TLoader.Create;
  _loader.DataSet := Dataset;

  with _loader do
try


  try
    // Insert New value into dataset here

    // Primary and foreign key data
    WriteGUID(CreateClassID, fldStdRegID );
    //  Formulation Data
    Write('', fldFrmFormulation_Str );
    Write('', fldFrmAdministration_Str );
    Write(0.0, fldFrmSKU_Dbl);
    Write('', fldFrmAdministrationUnit_Str);
    Write('', fldFrmInterval_Str);
    Write(0.0, fldFrmDuration_Dbl);
    Write('', fldFrmDirections_Str);
    Write(0.0, fldFrmDailyDoseCalc_Dbl);
    Write(0.0, fldFrmDoseCalc_Dbl);
    Write(0.0, fldFrmSKUTotal_Dbl);
    Write('', fldFrmICDCode_Str);
    Write('', fldFrmDescription_Str);
    //Dispensing Data
    Write('', fldDspProduct_Str);
    WriteGUID('', fldDspProduct_ID);
    Write(0, fldDspSKUActual_Dbl);
    Write(0, fldDspProductCalc_Dbl);
    Write('', fldDspDirections_Str);
    Write('', fldDspWarning_Str);
    Write(False, fldDspProductBreakPack_Bol);
    Write('', fldDspDescription_Str);
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
      raise Exception.Create('qryStdRegimenNewRecord' + #13 + E.Message);
      end;

    end;

  finally

    _loader.Free;

  end;

end;

function TdmStdReg.InsertStdRegIntoRX(const rxId, protocolId: string): string;
var
  _loaderItemRead : TLoader;
  _loaderItemWrite : TLoader;
  _rXItemID : string;
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
  _dspItemPreview: string;
  _dspDirectionsAuto: Boolean;

begin

  Result := '';
  _loaderItemRead := TLoader.Create;
  _loaderItemWrite := TLoader.Create;

  try
      try
        _loaderItemRead.DataSet := qryStdRegimen;
        _loaderItemWrite.DataSet := qryRXItem_Worker;
        qryRXItem_Worker.Parameters.ParamByName('prescription_ID').Value := rxId;

        _loaderItemWrite.DataSet.Open;

        //  Formulation Data
        _loaderItemRead.Load( _frmFormulation , fldFrmFormulation_Str );
        _loaderItemRead.Load( _frmAdministration, fldFrmAdministration_Str );
        _loaderItemRead.Load( _frmSKU, fldFrmSKU_Dbl);
        _loaderItemRead.Load( _frmAdministrationUnt, fldFrmAdministrationUnit_Str);
        _loaderItemRead.Load( _frmInterval, fldFrmInterval_Str);
        _loaderItemRead.Load( _frmDuration, fldFrmDuration_Dbl);
//        _loaderItemRead.Load( _frmRepeat, fldFrmRepeat_Dbl);
        _loaderItemRead.Load( _frmDirections, fldFrmDirections_Str);


         _loaderItemRead.Load( _frmDailyDoseCalc, fldFrmDailyDoseCalc_Dbl);

        _loaderItemRead.Load( _frmDoseCalc, fldFrmDoseCalc_Dbl);
        _loaderItemRead.Load( _frmSKUTotal, fldFrmSKUTotal_Dbl);
        _loaderItemRead.Load( _frmICD, fldFrmICDCode_Str);
        _loaderItemRead.Load( _frmDescription, fldFrmDescription_Str);
//        _loaderItemRead.Load( _frmProtocolId, fldFrmProtocol_ID);
          //Dispensing Data
        _loaderItemRead.Load( _dspProduct, fldDspProduct_Str);
        _loaderItemRead.Load( _dspProductId, fldDspProduct_ID);
        _loaderItemRead.Load( _dspSKUActual, fldDspSKUActual_Dbl);
        _loaderItemRead.Load( _dspProductCalc, fldDspProductCalc_Dbl);
        _loaderItemRead.Load( _dspDirections, fldDspDirections_Str);
        _loaderItemRead.Load( _dspWarning, fldDspWarning_Str);
        _loaderItemRead.Load( _dspBreakPack, fldDspProductBreakPack_Bol);
        _loaderItemRead.Load( _dspDescription, fldDspDescription_Str);
        _loaderItemRead.Load( _dspItemPreview, fldItemPreviewStr);
        _loaderItemRead.Load( _dspDirectionsAuto, fldDspDirectionsAuto_Bol);


        _loaderItemWrite.DataSet.Append;
        _rXItemID := CreateClassID;
        _loaderItemWrite.WriteGUID(_rXItemID, fldRXItemID );
        _loaderItemWrite.WriteGUID(rxId, fldRXID );

//SM May 2015 Find Max of all input Numbers
        _loaderITemWrite.Write(GetMaxInputOrderNumber + 1, 'InputOrder_int');
//SM 

        _loaderItemWrite.Write( _frmFormulation , fldFrmFormulation_Str );
        _loaderItemWrite.Write( _frmAdministration, fldFrmAdministration_Str );
        _loaderItemWrite.Write( _frmSKU, fldFrmSKU_Dbl);
        _loaderItemWrite.Write( _frmAdministrationUnt, fldFrmAdministrationUnit_Str);
        _loaderItemWrite.Write( _frmInterval, fldFrmInterval_Str);
        _loaderItemWrite.Write( _frmDuration, fldFrmDuration_Dbl);
        _loaderItemWrite.Write( 0, fldFrmRepeat_Dbl);
        _loaderItemWrite.Write( _frmDirections, fldFrmDirections_Str);

         _loaderItemWrite.Write( _frmDailyDoseCalc, fldFrmDailyDoseCalc_Dbl);

        _loaderItemWrite.Write( _frmDoseCalc, fldFrmDoseCalc_Dbl);
        _loaderItemWrite.Write( _frmSKUTotal, fldFrmSKUTotal_Dbl);
        _loaderItemWrite.Write( _frmICD, fldFrmICDCode_Str);
        _loaderItemWrite.Write( _frmDescription, fldFrmDescription_Str);
        _loaderItemWrite.WriteGUID( protocolId, fldFrmProtocol_ID);
          //Dispensing Data
        _loaderItemWrite.Write( _dspProduct, fldDspProduct_Str);
        _loaderItemWrite.WriteGUID( _dspProductId, fldDspProduct_ID);
        _loaderItemWrite.Write( _dspSKUActual, fldDspSKUActual_Dbl);
        _loaderItemWrite.Write( _dspProductCalc, fldDspProductCalc_Dbl);
        _loaderItemWrite.Write( _dspDirections, fldDspDirections_Str);
        _loaderItemWrite.Write( _dspWarning, fldDspWarning_Str);
        _loaderItemWrite.Write( _dspBreakPack, fldDspProductBreakPack_Bol);
        _loaderItemWrite.Write( _dspDescription, fldDspDescription_Str);
        _loaderItemWrite.Write( 0, fldDspProductCost_Mny);
        _loaderItemWrite.Write( 0, fldDspItemCost_Mny);
        _loaderItemWrite.Write( _dspItemPreview, fldItemPreviewStr);
        _loaderItemWrite.Write( _dspDirectionsAuto, fldDspDirectionsAuto_Bol);
        //_loaderItemWrite.Write( False, fldDspNotDispensed_Bol);
        //_loaderItemWrite.Write( '', fldDspInterventionProblem_Str);
        //_loaderItemWrite.Write( '', fldDspInterventionOutcome_Str);
        //_loaderItemWrite.Write( '', fldDspProductBatch_Str);

///          UpdateRowInformation(qryRXItem_Worker);

          // Update the row data first
        _loaderItemWrite.Post;
        Result := _rXItemID;


      except
        on E:Exception do raise Exception.Create('Insert std regimen create Error.' + #13 + E.Message);

      end;
    finally
      _loaderItemWrite.DataSet.Close;
      _loaderItemRead.Free;
      _loaderItemWrite.Free;
    end;

end;

function TdmStdReg.Protocol_Add: string;
var
  _protocolId : string;
begin

  Result := '';
  qryProtocol.Append;
  _protocolId := qryProtocol.FieldByName('Protocol_ID').AsString;
  qryProtocol.Post;

  if TProtocolDetail.Show(True) then
    begin
    if qryProtocol.State in [dsInsert, dsEdit] then qryProtocol.Post;
    //Log New Protocol Added
    //SM 11 August 2014
    LogProtocolChange(HST_ADD, qryProtocol.FieldByName('Name_str').AsString, _protocolId, '', dmStdReg.FUserName, 'PROTOCOL');
    Result := _protocolId;
   end else
    begin
    Protocol_Delete(_protocolId);
    end;

end;

function TdmStdReg.StandardRegimen_ListFromProtocolAdd: string;
var
  protocolID : string;
  f: TRXMultipleReg;
begin
  Result := '';
  if TStdDose.Show(True, f) then
    begin
    protocolID := qryProtocol.FieldByName('Protocol_ID').AsString;
    Result := AddMultipleRegimenToProtocol(protocolId, f);
    //Result := AddSingleRegimenToProtocol(protocolId);
    end;
end;

procedure TdmStdReg.qryProtocolBeforePost(DataSet: TDataSet);
var
  _loader : TLoader;
  _loaderItem : TLoader;
  _icdDesc :string;
  _icd : string;
  _previewDesc : string;
  _frmDesc : string;
  _dspDesc : string;
begin


  _loader := TLoader.Create;
  _loaderItem := TLoader.Create;

  try
    _loader.DataSet := qryProtocol;
    if qryICD10.Active then
      try
      _loader.LookUpData := qryICD10;
      _loader.Load(_icd, 'IndicationCode_Str');

      // Description of ICD
      _loader.KeyField := 'ICode_str';
      _loader.Key := _icd;
      _loader.LookUpValue(_icdDesc, 'Description_str');

      _loader.Write(_icdDesc,'Indication_Str');

      except
      end;//try


    try
      _previewDesc := '';
      _loaderItem.DataSet := qryProtocolRegimenDescription_Worker;
      _loaderItem.DataSet.Close;
      _loaderItem.DataSet.Open;
      while not _loaderItem.DataSet.Eof do
        begin
        _loaderItem.Load(_frmDesc, fldFrmFormulation_Str);
        _loaderItem.Load(_dspDesc, fldDspDescription_Str);
        _previewDesc := _previewDesc + _frmDesc + #9 + _dspDesc + #13;
        _loaderItem.DataSet.Next;
        end;
      _loaderItem.DataSet.Close;
    except
    end;

    _loader.Write(_previewDesc,'ItemPreview_Str');
  finally
   _loaderItem.DataSet.Close;
   _loader.Free;
   _loaderItem.Free;
  end;

  //Log changes to Protocol Name and Protocol Code
  //SM 11 August 2014
  with qryProtocol do
   begin
   if (not VarIsNULL(FieldByName('Name_str').OldValue)) then
    if (FieldByName('Name_str').OldValue <> FieldByName('Name_str').NewValue) then
     LogProtocolChange(HST_EDT + ' NAME', FieldByName('Name_str').OldValue + ' TO ' +  FieldByName('Name_str').NewValue, FieldByName('protocol_ID').AsString, '', FUserName, 'PROTOCOL' ) ;

   if (not VarIsNULL(FieldByName('Code_str').OldValue)) then
    if (FieldByName('Code_str').OldValue <> FieldByName('Code_str').NewValue) then
     LogProtocolChange(HST_EDT + ' CODE', FieldByName('Code_str').OldValue + ' TO ' +  FieldByName('Code_str').NewValue, FieldByName('protocol_ID').AsString, '', FUserName, 'PROTOCOL' ) ;

   if (not VarIsNULL(FieldByName('GroupCode_Str').OldValue)) then
    if (FieldByName('GroupCode_Str').OldValue <> FieldByName('GroupCode_Str').NewValue) then
     LogProtocolChange(HST_EDT + ' GROUP', FieldByName('GroupCode_Str').OldValue + ' TO ' +  FieldByName('GroupCode_Str').NewValue, FieldByName('protocol_ID').AsString, '', FUserName, 'PROTOCOL' ) ;

   if (not VarIsNULL(FieldByName('IndicationCode_Str').OldValue)) then
    if (FieldByName('IndicationCode_Str').OldValue <> FieldByName('IndicationCode_Str').NewValue) then
     LogProtocolChange(HST_ICDT, FieldByName('IndicationCode_Str').OldValue + ' TO ' +  FieldByName('IndicationCode_Str').NewValue, FieldByName('protocol_ID').AsString, '', FUserName, 'PROTOCOL' ) ;

   end;


end;

function TdmStdReg.StandardRegimen_ListFromProtocolEdit: string;
var
  protocolRegimenId : string;
  f: TRXMultipleReg;
begin
  Result := '';
  if TStdDose.Show() then
    begin
    protocolRegimenId := qryProtocolRegimen.FieldByName('ProtocolRegimen_ID').AsString;
    Result := EditStdRegIntoProtocol(protocolRegimenId);
    end;
end;

procedure TdmStdReg.qryProtocolNewRecord(DataSet: TDataSet);
begin

  with DataSet do
    begin
    FieldByName('Protocol_ID').AsString := CreateClassID;
    FieldByName('Name_Str').AsString := '<new protocol>';
    FieldByName('Code_Str').AsString := '<nil>';
    FieldByName('Indication_Str').AsString := '';
    FieldByName('IndicationCode_Str').AsString := '';
    FieldByName('ItemPreview_Str').AsString := '<nil>';
    end;
    
end;

procedure TdmStdReg.Protocol_Delete(id: string = '');
var
  _qryProtocolDelete : TADOQuery;
  _qryProtocolItemDelete : TADOQuery;
  _itemsDel: Integer;
  _rxDel: Integer;
  _protocolName: string;

begin

  if id = '' then id := qryProtocol.FieldByName('Protocol_ID').AsString;
  _protocolName := qryProtocol.FieldByName('Name_str').AsString +
   '(' + qryProtocol.FieldByName('Code_str').AsString +')';

  _qryProtocolDelete := TADOQuery.Create(nil);
  _qryProtocolItemDelete := TADOQuery.Create(nil);

  try

    _qryProtocolDelete.Connection := conStdReg;
    _qryProtocolItemDelete.Connection := conStdReg;

    _qryProtocolDelete.SQL.Add('DELETE FROM TblStdProtocol WHERE (Protocol_ID = :@protocol_ID)');
    _qryProtocolDelete.Parameters.ParamByName('@protocol_ID').Value := id;

    _qryProtocolItemDelete.SQL.Add('DELETE FROM TblProtocolRegimen WHERE (Protocol_ID = :@protocol_ID)');
    _qryProtocolItemDelete.Parameters.ParamByName('@protocol_ID').Value := id;


    conStdReg.BeginTrans;
    try
      _itemsDel := _qryProtocolItemDelete.ExecSQL;
      _rxDel := _qryProtocolDelete.ExecSQL;
      conStdReg.CommitTrans;

    LogProtocolChange(HST_DEL + ' PROTOCOL', _protocolName, id, '', FUserName, 'PROTOCOL');

    except
      on E:Exception do
        begin
        conStdReg.RollbackTrans;
        ShowMessage('Prescription could not be deleted.' + #13 + E.Message);
        end;
    end;
  finally
    _qryProtocolItemDelete.Free;
    _qryProtocolDelete.Free;
  end;

end;

function TdmStdReg.Protocol_DeleteItem: Boolean;
var
  _id: string;
  _qry : TADOQuery;
  _regimenid, _protocolid, _regimenname: string;
begin

  Result := False;
  _id := '';
  _regimenid := '';
  _protocolid := '';

  with qryProtocolRegimen do
    if Active then
      begin
      _id := qryProtocolRegimen.FieldByName('ProtocolRegimen_ID').AsString;
      _regimenid := qryProtocolRegimen.FieldByName('StdRegimen_ID').AsString;
      _protocolid := qryProtocolRegimen.FieldByName('Protocol_ID').AsString;
      _regimenname := qryProtocolRegimen.FieldByName('FrmFormulation_Str').AsString;
      end;
  if _id <> '' then
    try
      try
      _qry := TADOQuery.Create(nil);
      _qry.Connection := conStdReg;
      _qry.SQL.Add('DELETE FROM TblProtocolRegimen WHERE ProtocolRegimen_ID = :REGID');
      _qry.Parameters.ParamByName('REGID').Value := _id;
      _qry.ExecSQL;
      Result := True;
      
      LogProtocolChange(HST_REG_DEL, _regimenname, _protocolid, _regimenid, FUserName, 'PROTOCOL');
      except
        //on E:Exception do
      end;
    finally
    _qry.Free;
    end;  
end;

procedure TdmStdReg.qryRXItem_WorkerNewRecord(DataSet: TDataSet);
var
 num: integer;
begin

 num := 0;
 num := GetMaxInputOrderNumber + 1;

  with DataSet do
    begin
    FieldByName(fldInputOrder_int).AsInteger :=  RecordCount + 1;
    end;

end;

//************* SM -This function check to see if the system should show/hide the Daily Define Dose field on the view/grid
//************* Funstion return True if Daily Define Dose field should be hidden from view/grid
function TdmStdReg.HideDailyDefinedDose: Boolean;
begin

 with qryHideDailyDDosage do
  begin
  Close;
  Open;
  if FieldByName('doNotShowDailyDefinedDose_bol').AsBoolean then
   Result := True
  else
   Result := False; 
  Close;
  end;
  
end;

procedure TdmStdReg.CopyCurrentProtocol(protocol_ID: string);
begin

 with stp_CopyProtocol do
  begin
  try
  Parameters.ParamByName('Protocol_ID').Value := protocol_ID;
  ExecSQL;

  LogProtocolChange(HST_COPY, qryProtocol.FieldByName('Name_str').AsString, protocol_ID, '', FUserName, 'PROTOCOL');
  except
   on E:Exception do
        begin
        conStdReg.RollbackTrans;
        ShowMessage('Protocol could not be copied' + #13 + E.Message);
        end;
  end;
  end;
end;

procedure TdmStdReg.CopyProtocol;
var
 currentProtocol: string;
begin
 
 with qryProtocol do
  begin
  currentProtocol := fieldByName('Protocol_ID').AsString;
  end;

 CopyCurrentProtocol(currentProtocol);

end;

function TdmStdReg.GetUserFullName(userID: string): string;
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

procedure TdmStdReg.ProtocolViewEditHistory;
begin

 TProtocolEditHistoryFrm.LoadEditHistory(qryProtocol.FieldByName('Protocol_ID').AsString, 0);

end;

procedure TdmStdReg.RegimenViewEditHistory;
begin

 TProtocolEditHistoryFrm.LoadEditHistory(qryStdRegimen.FieldByName('StdRegimen_ID').AsString, 1);

end;



procedure TdmStdReg.qryStdRegimenBeforePost(DataSet: TDataSet);
begin
 {
 with qryStdRegimen do
  begin
  if (not VarIsNull(FieldByName('FrmFormulation_Str').OldValue)) then
   if (FieldByName('FrmFormulation_Str').OldValue <> FieldByName('FrmFormulation_Str').NewValue) then
   LogProtocolChange(HST_EDT + ' FORMULATION', FieldByName('FrmFormulation_Str').OldValue, '', FieldByName('FrmFormulation_Str').AsString, dmStdReg.FUserName, 'REGIMEN');
  
  if (not VarIsNull(FieldByName('DspProduct_Str').OldValue)) then
   if (FieldByName('DspProduct_Str').OldValue <> FieldByName('DspProduct_Str').NewValue) then
   LogProtocolChange(HST_EDT + ' PRODUCT', FieldByName('DspProduct_Str').OldValue, '', FieldByName('DspProduct_Str').AsString, dmStdReg.FUserName, 'REGIMEN');

  if (not VarIsNull(FieldByName('FrmDirections_Str').OldValue)) then
   if (FieldByName('FrmDirections_Str').OldValue <> FieldByName('FrmDirections_Str').NewValue) then
   LogProtocolChange(HST_EDT + ' FRM DIRECTIONS', FieldByName('FrmDirections_Str').OldValue, '', FieldByName('FrmDirections_Str').AsString, dmStdReg.FUserName, 'REGIMEN');

  if (not VarIsNull(FieldByName('DspWarning_Str').OldValue)) then
   if (FieldByName('DspWarning_Str').OldValue <> FieldByName('DspWarning_Str').NewValue) then
   LogProtocolChange(HST_EDT + ' DSP WARNING', FieldByName('DspWarning_Str').OldValue, '', FieldByName('DspWarning_Str').AsString, dmStdReg.FUserName, 'REGIMEN');

  if (not VarIsNull(FieldByName('DspDirections_Str').OldValue)) then
   if (FieldByName('DspDirections_Str').OldValue <> FieldByName('DspDirections_Str').NewValue) then
   LogProtocolChange(HST_EDT + ' DSP DIRECTIONS', FieldByName('DspDirections_Str').OldValue, '', FieldByName('DspDirections_Str').AsString, dmStdReg.FUserName, 'REGIMEN');
  end;
  }
end;

//Functions Return the Max Number for field InputOrder_int for items
function TdmStdReg.GetMaxInputOrderNumber: Integer;
var
 num : integer;
begin

 num := 0;

  with QryInputNumberMax do
   begin
   Close;
   Parameters.ParamByName('RX_ID').Value := qryRXItem_Worker.FieldByName('RX_ID').Value;
   Open;

   num := FieldByName('ItemsMax').AsInteger;
   end;
 
 Result := num;

end;

end.
