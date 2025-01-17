unit DispenserListUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  SystemConstants, RzButton, RzDlgBtn, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  RzPanel, StdCtrls, RzLabel, ExtCtrls, Menus, ActnList, DB, ADODB,
  RzCommon, dxExEdtr, ElPopBtn, RzBckgnd, jpeg, ppModule, raCodMod,
  ppBands, ppCtrls, ppVar, ppStrtch, ppMemo, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ppRegion, dxDBTLCl,
  dxGrClms, ppParameter, RzBmpBtn;


type
  TDispenserListFrm = class(TForm)
    conDispenser: TADOConnection;
    rzcMain: TRzFrameController;
    qryDispenser: TADOQuery;
    dsqryDispenser: TDataSource;
    ActionList1: TActionList;
    atnDispenser_Add: TAction;
    atnDispenser_Edit: TAction;
    atnDispenser_Delete: TAction;
    PopupMenu1: TPopupMenu;
    Add1: TMenuItem;
    Edit1: TMenuItem;
    N1: TMenuItem;
    Delete1: TMenuItem;
    pnl_Main_Back: TPanel;
    pnlToolbar_Header_ShapeBorder: TShape;
    pnl_Main_PatientListPanel: TPanel;
    Label83: TLabel;
    rzbGradient: TRzBackground;
    Shape2: TShape;
    rzsLine01: TRzSeparator;
    Panel2: TPanel;
    Shape4: TShape;
    ElSpeedButton19: TElSpeedButton;
    ElSpeedButton1: TElSpeedButton;
    ElSpeedButton10: TElSpeedButton;
    ElSpeedButton9: TElSpeedButton;
    pnl_Main_QuestionnairePanel: TPanel;
    Label5: TLabel;
    Shape3: TShape;
    Panel3: TPanel;
    Shape1: TShape;
    ElSpeedButton17: TElSpeedButton;
    atnDispenser_GridColumns: TAction;
    pmnuPrint: TPopupMenu;
    PrintDispenserbyName1: TMenuItem;
    PrintDispenserByNumber1: TMenuItem;
    atnPrntDispenserByName: TAction;
    qryPrintRegisterByName: TADOQuery;
    dsqryPrintRegisterByName: TDataSource;
    ppDBRegisterByName: TppDBPipeline;
    ppReportRegisterByName: TppReport;
    ppTitleBand7: TppTitleBand;
    ppHeaderBand7: TppHeaderBand;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppLine18: TppLine;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppMemo4: TppMemo;
    ppLabel48: TppLabel;
    ppDBText38: TppDBText;
    ppDBImage3: TppDBImage;
    ppDetailBand7: TppDetailBand;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppLine24: TppLine;
    ppFooterBand7: TppFooterBand;
    ppLine25: TppLine;
    ppLabel73: TppLabel;
    ppSystemVariable19: TppSystemVariable;
    ppSystemVariable20: TppSystemVariable;
    ppLabel76: TppLabel;
    ppSummaryBand4: TppSummaryBand;
    ppShape17: TppShape;
    ppLabel78: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLabel79: TppLabel;
    ppSystemVariable21: TppSystemVariable;
    ppPageStyle7: TppPageStyle;
    raCodeModule4: TraCodeModule;
    atnPrntDispenserByNumber: TAction;
    qryPrintRegisterByNumber: TADOQuery;
    dsqryPrintRegisterByNumber: TDataSource;
    ppReportRegisterByNumber: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppShape4: TppShape;
    ppShape1: TppShape;
    ppLine4: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppMemo1: TppMemo;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppDBImage4: TppDBImage;
    ppDetailBand2: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLine5: TppLine;
    ppFooterBand2: TppFooterBand;
    ppLine6: TppLine;
    ppLabel20: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel21: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppShape7: TppShape;
    ppLabel23: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLabel24: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppPageStyle2: TppPageStyle;
    raCodeModule3: TraCodeModule;
    qryBioDataSheet: TADOQuery;
    dsqryBioDataSheet: TDataSource;
    ppReportBioDataSheet: TppReport;
    ppTitleBand4: TppTitleBand;
    ppHeaderBand4: TppHeaderBand;
    ppShape9: TppShape;
    ppLine10: TppLine;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLabel29: TppLabel;
    ppDBImage6: TppDBImage;
    ppDetailBand4: TppDetailBand;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLine11: TppLine;
    ppFooterBand4: TppFooterBand;
    ppImage5: TppImage;
    ppLine12: TppLine;
    ppLabel36: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppPageStyle4: TppPageStyle;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppRegion3: TppRegion;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLabel41: TppLabel;
    ppRegion2: TppRegion;
    ppDBImage1: TppDBImage;
    ppLabel49: TppLabel;
    ppDBText46: TppDBText;
    ppLine13: TppLine;
    ppDBText47: TppDBText;
    ppLine14: TppLine;
    ppDBImage2: TppDBImage;
    ppLabel50: TppLabel;
    ppRegion5: TppRegion;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppDBText52: TppDBText;
    ppLabel57: TppLabel;
    ppDBText53: TppDBText;
    ppLabel58: TppLabel;
    ppDBText54: TppDBText;
    ppLabel59: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppRegion4: TppRegion;
    ppLabel60: TppLabel;
    ppReportBioBlankDataSheet: TppReport;
    ppTitleBand3: TppTitleBand;
    ppHeaderBand3: TppHeaderBand;
    ppShape5: TppShape;
    ppLine7: TppLine;
    ppLabel4: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppDBImage9: TppDBImage;
    ppDetailBand3: TppDetailBand;
    ppLabel104: TppLabel;
    ppFooterBand3: TppFooterBand;
    ppImage1: TppImage;
    ppLine26: TppLine;
    ppLabel105: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel106: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel107: TppLabel;
    ppPageStyle3: TppPageStyle;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppRegion1: TppRegion;
    ppLabel19: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppShape6: TppShape;
    ppShape8: TppShape;
    ppShape21: TppShape;
    ppLabel28: TppLabel;
    ppShape22: TppShape;
    ppLabel30: TppLabel;
    ppShape23: TppShape;
    ppLabel92: TppLabel;
    ppShape24: TppShape;
    ppRegion8: TppRegion;
    ppLabel93: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel94: TppLabel;
    ppRegion15: TppRegion;
    ppLabel98: TppLabel;
    ppRegion16: TppRegion;
    ppLabel99: TppLabel;
    ppRegion17: TppRegion;
    ppLabel100: TppLabel;
    ppShape25: TppShape;
    ppShape35: TppShape;
    ppLabel101: TppLabel;
    ppRegion18: TppRegion;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    N2: TMenuItem;
    PrintBiosheet1: TMenuItem;
    atnPrintBioDataSheet: TAction;
    atnPrintBlankBioSheet: TAction;
    PrintBlankBiodatasheet1: TMenuItem;
    atnPrintbyName1: TMenuItem;
    atnPrntDispenserByNumber1: TMenuItem;
    N3: TMenuItem;
    atnPrintBioDataSheet1: TMenuItem;
    atnPrintBlankBioSheet1: TMenuItem;
    N4: TMenuItem;
    ppImage2: TppImage;
    ppImage3: TppImage;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    qryFindLastAddedDispenser: TADOQuery;
    qryPrintRegisterByNameprovincialLogo_img: TBlobField;
    qryPrintRegisterByNamepersonIDNumber_Str: TWideStringField;
    qryPrintRegisterByNamepersonLastName_Str: TWideStringField;
    qryPrintRegisterByNamepersonFirstName_Str: TWideStringField;
    qryPrintRegisterByNamepersonInitials_Str: TWideStringField;
    qryPrintRegisterByNamepersonGender_Str: TWideStringField;
    qryPrintRegisterByNamepersonActive_Bol: TBooleanField;
    qryPrintRegisterByNamepersonPositionCurrent_bol: TBooleanField;
    qryPrintRegisterByNamepersonPositionNumberNo_Str: TWideStringField;
    qryPrintRegisterByNamepersonPositionTitle_Str: TWideStringField;
    qryPrintRegisterByNamepersonPositionStart_Dat: TDateTimeField;
    qryPrintRegisterByNamepersonTypeDescription_Str: TWideStringField;
    qryPrintRegisterByNamepersonPositionTitleDescription_Str: TWideStringField;
    qryPrintRegisterByNamepersonPositionDescription_Str: TWideStringField;
    qryPrintRegisterByNamerxLevelCode_Str: TWideStringField;
    qryPrintRegisterByNamepersonRegistrationNo_str: TWideStringField;
    qryPrintRegisterByNamecontactMode_str: TWideStringField;
    qryPrintRegisterByNamecontactDisplay_Str: TWideStringField;
    qryPrintRegisterByNamecontactDetail_Str: TWideStringField;
    qryPrintRegisterByNameDemanderName_str: TWideStringField;
    qryPrintRegisterByNameName_str: TWideStringField;
    qryPrintRegisterByNameCode_str: TWideStringField;
    qryPrintRegisterByNumberprovincialLogo_img: TBlobField;
    qryPrintRegisterByNumberpersonIDNumber_Str: TWideStringField;
    qryPrintRegisterByNumberpersonLastName_Str: TWideStringField;
    qryPrintRegisterByNumberpersonFirstName_Str: TWideStringField;
    qryPrintRegisterByNumberpersonInitials_Str: TWideStringField;
    qryPrintRegisterByNumberpersonGender_Str: TWideStringField;
    qryPrintRegisterByNumberpersonActive_Bol: TBooleanField;
    qryPrintRegisterByNumberpersonPositionCurrent_bol: TBooleanField;
    qryPrintRegisterByNumberpersonPositionNumberNo_Str: TWideStringField;
    qryPrintRegisterByNumberpersonPositionTitle_Str: TWideStringField;
    qryPrintRegisterByNumberpersonPositionStart_Dat: TDateTimeField;
    qryPrintRegisterByNumberpersonTypeDescription_Str: TWideStringField;
    qryPrintRegisterByNumberpersonPositionTitleDescription_Str: TWideStringField;
    qryPrintRegisterByNumberpersonPositionDescription_Str: TWideStringField;
    qryPrintRegisterByNumberrxLevelCode_Str: TWideStringField;
    qryPrintRegisterByNumberpersonRegistrationNo_str: TWideStringField;
    qryPrintRegisterByNumbercontactMode_str: TWideStringField;
    qryPrintRegisterByNumbercontactDisplay_Str: TWideStringField;
    qryPrintRegisterByNumbercontactDetail_Str: TWideStringField;
    qryPrintRegisterByNumberDemanderName_str: TWideStringField;
    qryPrintRegisterByNumberName_str: TWideStringField;
    qryPrintRegisterByNumberCode_str: TWideStringField;
    DBRegisterByNumber: TppDBPipeline;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    qryBioDataSheetprovincialLogo_img: TBlobField;
    qryBioDataSheetpersonIDNumber_Str: TWideStringField;
    qryBioDataSheetpersonLastName_Str: TWideStringField;
    qryBioDataSheetpersonFirstName_Str: TWideStringField;
    qryBioDataSheetpersonKnownName_Str: TWideStringField;
    qryBioDataSheetpersonInitials_Str: TWideStringField;
    qryBioDataSheetpersonDOB_Dat: TDateTimeField;
    qryBioDataSheetpersonGender_Str: TWideStringField;
    qryBioDataSheetpersonReviewed_Dat: TDateTimeField;
    qryBioDataSheetpersonActive_Bol: TBooleanField;
    qryBioDataSheetpersonRace_Str: TWideStringField;
    qryBioDataSheetpersonLanguageNarrative_Str: TWideStringField;
    qryBioDataSheetpersonLanguageWritten_Str: TWideStringField;
    qryBioDataSheetpersonAgeYears_int: TIntegerField;
    qryBioDataSheetpersonAgeMonths_int: TIntegerField;
    qryBioDataSheetpersonPositionCurrent_bol: TBooleanField;
    qryBioDataSheetpersonPositionNumberNo_Str: TWideStringField;
    qryBioDataSheetpersonPositionTitle_Str: TWideStringField;
    qryBioDataSheetpersonPositionStart_Dat: TDateTimeField;
    qryBioDataSheetpersonPositionEnd_Dat: TDateTimeField;
    qryBioDataSheetpersonTypeDescription_Str: TWideStringField;
    qryBioDataSheetpersonPhotoCurrent_bol: TBooleanField;
    qryBioDataSheetpersonPhotoPicture_Img: TBlobField;
    qryBioDataSheetpersonSignatureImage_Img: TBlobField;
    qryBioDataSheetpersonSignatureCurrent_bol: TBooleanField;
    qryBioDataSheetperson_ID: TGuidField;
    qryBioDataSheetpersonSignatureDateRecorded_Dat: TDateTimeField;
    qryBioDataSheetpersonPhotoDate_Dat: TDateTimeField;
    qryBioDataSheetpersonPositionTitleDescription_Str: TWideStringField;
    qryBioDataSheetpersonPositionDescription_Str: TWideStringField;
    qryBioDataSheetrxLevelCode_Str: TWideStringField;
    qryBioDataSheetpersonQualificationDateReceived_Dat: TDateTimeField;
    qryBioDataSheetpersonQualificationDescription_Str: TWideStringField;
    qryBioDataSheetpersonQualificationName_Str: TWideStringField;
    qryBioDataSheetpersonQualificationInstitution_Str: TWideStringField;
    qryBioDataSheetpersonQualificationDateEntered_Dat: TDateTimeField;
    qryBioDataSheetpersonQualificationNumber_str: TWideStringField;
    qryBioDataSheetName_str: TWideStringField;
    qryBioDataSheetpersonRegistrationNo_str: TWideStringField;
    ppDBBioDataSheet: TppDBPipeline;
    pnl_Image_Header: TRzLabel;
    dxgDispensers: TdxDBGrid;
    dxgDispenserspersonLastName_Str: TdxDBGridColumn;
    dxgDispenserspersonFirstName_Str: TdxDBGridColumn;
    dxgDispenserspersonRefNoCurrent_str: TdxDBGridColumn;
    dxgDispenserspersonActive_Bol: TdxDBGridCheckColumn;
    btnPrint: TRzBmpButton;
    procedure atnDispenser_AddExecute(Sender: TObject);
    procedure atnDispenser_DeleteExecute(Sender: TObject);
    procedure atnDispenser_EditExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure atnDispenser_GridColumnsExecute(Sender: TObject);
    procedure atnPrntDispenserByNameExecute(Sender: TObject);
    procedure atnPrntDispenserByNumberExecute(Sender: TObject);
    procedure PrintBiosheet1Click(Sender: TObject);
    procedure atnPrintBioDataSheetExecute(Sender: TObject);
    procedure atnPrintBlankBioSheetExecute(Sender: TObject);
  private
    FDbConnectionString: string;
    FLoading: Boolean;
    atnCanEdit : Boolean;
    procedure Screen_Resize;
    procedure SetDbConnectionString(const Value: string);
    { Private declarations }
  public
    procedure Close;
    procedure Open;
     procedure Print(printWhat : integer); //SM
    procedure Refresh_DataSet(DataSet : TDataset ; PrimaryKeyField : String);
    property DbConnectionString: string read FDbConnectionString write
        SetDbConnectionString;
    { Public declarations }
  end;

var
  DispenserListFrm: TDispenserListFrm;

implementation

uses RxSolutionUFrm, DLLInterface, DialogGridColumnSelectorUFrm, RxSolutionSecurityClass;

{$R *.dfm}
///////////////////SM
procedure TDispenserListFrm.Print(printWhat : integer);
begin

  case printWhat of
    0:
      begin
      qryPrintRegisterByName.Open;
      ppReportRegisterByName.Print;
      qryPrintRegisterByName.Close;
      end;
    1:
      begin
      qryPrintRegisterByNumber.Open;
      ppReportRegisterByNumber.Print;
      qryPrintRegisterByNumber.Close;
      end;
    2:
      begin
      {qryPrintRegisterConsultants.Open;
      ppReportRegisterConsultants.Print;
      qryPrintRegisterConsultants.Close;
      }end;
    3:
      begin
      qryBioDataSheet.Close;
      qryBioDataSheet.Parameters.ParamByName('PERSONID').Value :=
        qryDispenser.FieldByName('person_ID').AsString;
      ppReportBioDataSheet.Print;
      qryBioDataSheet.Close;
      end;
    4:
      begin
      ppReportBioBlankDataSheet.Print;
      end;
    5:
      begin
     { qryNoficationLetter.Close;
      qryNoficationLetter.Parameters.ParamByName('PERSONID').Value :=
        qryPrescriber.FieldByName('person_ID').AsString;
      ppReportNotificationLetter.Print;
      qryNoficationLetter.Close;
      }end;

  end;
end;
///////////////////////////////////SM



procedure TDispenserListFrm.atnDispenser_AddExecute(Sender: TObject);
var
 ID : String;
begin
  TDLLInterface.Dispenser__Add(FDbConnectionString, 1);
  qryDispenser.Close;
  qryDispenser.Open;
 // Refresh_DataSet(qryDispenser, 'person_ID');
  //SM
 // qryFindLastAddedDispenser.Active := True;
 // ID := qryFindLastAddedDispenser.FieldByName('person_Id').AsString;
 // qryDispenser.Locate('person_ID', ID, []);
 // qryFindLastAddedDispenser.Active := False;
  //SM
end;

procedure TDispenserListFrm.atnDispenser_DeleteExecute(Sender: TObject);
var
  ID : string;
  nme : string;
begin

  Nme := qryDispenser.FieldByName('personKnownName_Str').AsString;

  if MessageDlg('Do you want to delete ' + Nme + '?', mtWarning, [mbYes, mbNo, mbCancel], 0) = mrYes then
    begin
    ID := qryDispenser.FieldByName('person_ID').AsString;
    TDLLInterface.Dispenser__Delete(FDbConnectionString, ID, 1);
    Refresh_DataSet(qryDispenser, 'person_ID');
    end;
    
end;

procedure TDispenserListFrm.atnDispenser_EditExecute(Sender: TObject);
var
  ID : string;
begin

  ID := qryDispenser.FieldByName('person_ID').AsString;

  if atnCanEdit then
   TDLLInterface.Dispenser__Edit(FDbConnectionString,ID, 1)
  else
   TDLLInterface.Dispenser__Edit(FDbConnectionString,ID, 0);

  Refresh_DataSet(qryDispenser, 'person_ID');

end;

procedure TDispenserListFrm.Close;
begin

  conDispenser.Close;

end;

procedure TDispenserListFrm.Open;
var
  Server, DB :String;

begin

  FLoading := True; // stops connection to Rxstore on every record scroll
  conDispenser.Close;
  conDispenser.ConnectionString := FDbConnectionString;
  qryDispenser.Open;
  Floading := False;

end;

procedure TDispenserListFrm.Refresh_DataSet(DataSet : TDataset ;
    PrimaryKeyField : String);
var
  curRecord :String;
begin

  try
  with DataSet do
    try
    DisableControls;
    curRecord := FieldByName(PrimaryKeyField).AsString;
    Close;
    Open;
    Last;
    while not BOF do
      begin
      if FieldByName(PrimaryKeyField).AsString = curRecord then Break;
      Prior;
      end;
    finally
    EnableControls;
    end;
  except
  end;

end;

procedure TDispenserListFrm.SetDbConnectionString(const Value: string);
begin
  FDbConnectionString := Value;
  conDispenser.Close;
  conDispenser.ConnectionString := Value;

end;

procedure TDispenserListFrm.FormResize(Sender: TObject);
begin
  Screen_Resize;
end;

procedure TDispenserListFrm.FormCreate(Sender: TObject);
var
     atnBrowse :  Boolean;
begin

 FDbConnectionString := RxSolutionFrm.DatabaseSession.ThisConnection.ConnectionString;
 Open;

 with RxSolutionFrm.Security do
   atnCanEdit := (GetUserAccessLevel(MODULE_DISPENSING_DISPENSERS) > USER_BROWSER);

 atnDispenser_Add.Enabled       := atnCanEdit;
 atnDispenser_Delete.Enabled    := atnCanEdit;

  //MC - 30/03/2012
 with RxSolutionFrm.Security do
  if (GetUserAccessLevel(MODULE_DISPENSING_DISPENSERS) = USER_BROWSER) then
  begin
  atnDispenser_Add.Enabled := False;
  atnDispenser_Delete.Enabled := False;
  atnDispenser_Edit.Enabled := False;
  end;
end;

procedure TDispenserListFrm.Screen_Resize;
var
  pnlWid: Integer;
  curWid, curHgt  :integer;

  LeftPnl, RightPnl : TPanel;

const
  STEP = 5;
  HGHT = 45;

begin

  curWid  := pnl_Main_Back.Width;
  curHgt  := pnl_Main_Back.Height;

  pnlToolbar_Header_ShapeBorder.Left  := (STEP * 1);
  pnlToolbar_Header_ShapeBorder.Top   := (STEP * 1);
  pnlToolbar_Header_ShapeBorder.Width := curWid - (STEP * 2);
  pnlToolbar_Header_ShapeBorder.Height:= curHgt - (STEP * 2);

  pnl_Image_Header.Left               := 68;
  pnl_Image_Header.Top                := (STEP * 2);

  LeftPnl   := pnl_Main_PatientListPanel;
  RightPnl  := pnl_Main_QuestionnairePanel;

  if RightPnl.Visible then
    begin
    pnlWid := (curWid - (STEP * 5)) div 6;
    LeftPnl.Left           := (STEP * 2);
    LeftPnl.Top            := pnl_Image_Header.Top + pnl_Image_Header.Height;
    LeftPnl.Height         := curHgt - (LeftPnl.Top + (STEP * 2));
    LeftPnl.Width          := pnlWid * 4;

    RightPnl.Left         := LeftPnl.Left + LeftPnl.Width + (STEP * 1);
    RightPnl.Top          := pnl_Image_Header.Top + pnl_Image_Header.Height;
    RightPnl.Height       := curHgt - (LeftPnl.Top + (STEP * 2));
    RightPnl.Width        := pnlWid * 2;
    end else
    begin
    pnlWid := (curWid - (STEP * 2));
    LeftPnl.Left           := (STEP * 2);
    LeftPnl.Top            := pnl_Image_Header.Top + pnl_Image_Header.Height;
    LeftPnl.Height         := curHgt - (LeftPnl.Top + (STEP * 2));
    LeftPnl.Width          := pnlWid;
    end;

  // Now the items on the filter panel
  curWid  := LeftPnl.Width;
  curHgt  := LeftPnl.Height;

  rzsLine01.Width           := curWid - (STEP * 2);
//  rzsLine02.Width           := curWid - (STEP * 2);

  dxgDispensers.Top       := 70;
  dxgDispensers.Left      := STEP;
  dxgDispensers.Width     := curWid - (STEP * 2);
  dxgDispensers.Height    := curHgt - (dxgDispensers.Top + STEP);
                                                                      

end;

procedure TDispenserListFrm.atnDispenser_GridColumnsExecute(
  Sender: TObject);
begin
  TSelectDxGridColumns.SelectColumns(dxgDispensers);
end;

procedure TDispenserListFrm.atnPrntDispenserByNameExecute(Sender: TObject);
begin
Print(0);
end;

procedure TDispenserListFrm.atnPrntDispenserByNumberExecute(
  Sender: TObject);
begin
Print(1);
end;

procedure TDispenserListFrm.PrintBiosheet1Click(Sender: TObject);
begin
Print(3);
end;

procedure TDispenserListFrm.atnPrintBioDataSheetExecute(Sender: TObject);
begin
Print(3);
end;

procedure TDispenserListFrm.atnPrintBlankBioSheetExecute(Sender: TObject);
begin
Print(4);
end;

end.
