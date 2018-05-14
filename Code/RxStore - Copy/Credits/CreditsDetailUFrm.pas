unit CreditsDetailUFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL, dxCntner,
  ExtCtrls, DBCtrls, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  wwdbdatetimepicker, wwdblook, Mask, RzBmpBtn, DB, Menus, ElPopBtn,
  ActnList, RzDBEdit, RzTabs, RzCmboBx, RzDBCmbo, ComCtrls, DateUtils,
  RzEdit;

type
  TCreditsDetailFrm = class(TForm)
    PopupMenu1: TPopupMenu;
    Panel4: TPanel;
    btnClose: TButton;
    ActionList1: TActionList;
    atnColSelect: TAction;
    PageTakeItems: TRzPageControl;
    tbsCreditItems: TRzTabSheet;
    tbsCredit_Remarks: TRzTabSheet;
    dbgCreditItems: TdxDBGrid;
    dbgCreditItemICN_str: TdxDBGridColumn;
    dbgCreditItemECN_str: TdxDBGridColumn;
    dbgCreditItemNSN_str: TdxDBGridColumn;
    dbgQtyCredited_int: TdxDBGridMaskColumn;
    dbgPackCost_mon: TdxDBGridCurrencyColumn;
    dbgExpiry_dat: TdxDBGridDateColumn;
    RzDBNotesField: TRzDBMemo;
    dbgExtendedCost_mon: TdxDBGridCurrencyColumn;
    PopMenuPrint: TPopupMenu;
    dbgCreditItemsDescription_str: TdxDBGridColumn;
    dbgBatchNumber_str: TdxDBGridColumn;
    tbsCreditHistory: TRzTabSheet;
    dxDBCreditHistory: TdxDBGrid;
    Panel1: TPanel;
    pnlHeaderBackground: TPanel;
    Label13: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label31: TLabel;
    Label79: TLabel;
    lblDate: TDBText;
    dbtCountOfItems: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    cmbAuthorised_Dat: TwwDBDateTimePicker;
    btnPostClose: TButton;
    cmbDemanderCode: TRzDBLookupComboBox;
    cmbDemanderName: TRzDBLookupComboBox;
    cmbReceivedBy: TRzDBLookupComboBox;
    edtReference: TRzDBEdit;
    Panel3: TPanel;
    ElSpeedButton17: TElSpeedButton;
    ElSpeedButton11: TElSpeedButton;
    ElSpeedButton5: TElSpeedButton;
    ElSpeedButton6: TElSpeedButton;
    ElSpeedButton2: TElSpeedButton;
    ElSpeedButton9: TElSpeedButton;
    ElSpeedButton8: TElSpeedButton;
    ElSpeedButton3: TElSpeedButton;
    ElSpeedButton13: TElSpeedButton;
    ElSpeedButton16: TElSpeedButton;
    Button1: TButton;
    edtReason_str: TRzDBEdit;
    Label4: TLabel;
    PrintReturnOut2: TMenuItem;
    dxDBCreditHistoryDate_dat: TdxDBGridColumn;
    dxDBCreditHistoryDescription_str: TdxDBGridColumn;
    dxDBCreditHistoryUserName_str: TdxDBGridColumn;
    Label3: TLabel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    AddAnotherBatchItem1: TMenuItem;
    AddSingleItem1: TMenuItem;
    RemoveAllItems1: TMenuItem;
    N1: TMenuItem;
    dbgCreditItemsShippingPack_int: TdxDBGridColumn;
    dbgCreditItemBin_str: TdxDBGridPickColumn;
    Label5: TLabel;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    RzDBLookupComboBox3: TRzDBLookupComboBox;
    dxDBCreditHistoryType_str: TdxDBGridColumn;
    AddRequisitionItems1: TMenuItem;
    N2: TMenuItem;
    Panel2: TPanel;
    lblCreditNo_str: TDBText;
    lblPosted: TLabel;
    lblLocked: TLabel;
    RzBmpButton1: TRzBmpButton;
    dbgSellingPrice_mon: TdxDBGridCurrencyColumn;
    lblBrowseOnly: TLabel;
    procedure atnColSelectExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SetDisplayProperties;
    procedure UpdateBinLookUps;
    procedure FormCreate(Sender: TObject);
    procedure test1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CreditsDetailFrm: TCreditsDetailFrm;

implementation

uses DialogGridColumnSelectorUFrm, RxSolutionUFrm,
  RxSolutionSecurityClass, CreditsUDm;

{$R *.dfm}

procedure TCreditsDetailFrm.atnColSelectExecute(Sender: TObject);
var
  SelectColumns : TColumnSelector;
  GridCols      : TDxDBGrid;
begin
  SelectColumns := TColumnSelector.Create;
  try
   GridCols := dbgCreditItems;
  if assigned(GridCols) then
    SelectColumns.SelectColumns(GridCols);
  finally
    SelectColumns.Free;
  end;
end;

procedure TCreditsDetailFrm.SetDisplayProperties;
var
  vAccessLevel  :integer;
  i:integer;

  prvIsRepLocked, prvIsRepPosted : boolean;
  vDisable, atnBrowse : boolean;
begin

 with RxSolutionFrm.Security do
  atnBrowse := (GetUserAccessLevel(MODULE_CREDITS) = USER_BROWSER);

 with CreditsDm.qryCreditWorker do
  begin
  prvIsRepLocked  := (FieldByName('CheckedOut_bol').Asboolean and not CreditsDm.IsLockedBySameUser);
  prvIsRepPosted  := FieldByName('Posted_bol').Asboolean;
  end;

 vDisable := not (prvIsRepPosted or prvIsRepLocked or atnBrowse);
 pnlHeaderBackground.Enabled := vDisable;

 lblPosted.Visible := prvIsRepPosted;
 lblLocked.Visible := prvIsRepLocked;
 lblBrowseOnly.Visible := atnBrowse and (not prvIsRepPosted);

 CreditsDm.atnAddSingleItem.Enabled := vDisable;
 CreditsDm.atnDeleteAllItems.Enabled := vDisable;
 CreditsDm.atnDeleteSingleItem.Enabled := vDisable;
 creditsDm.atnUnlockReturns.Enabled := (prvIsRepLocked);
 CreditsDm.atnAddAnotherBatchItem.Enabled := vDisable;
 CreditsDm.atnAddRequisitionItems.Enabled := vDisable;

 //Bug Issue 422
 with dbgCreditItems do
    for i:= 0 to ColumnCount -1 do
          if (Columns[i].FieldName = 'QtyCredit_int') or
             (Columns[i].FieldName = 'BatchNumber_str') or
             (Columns[i].FieldName = 'Expiry_dat') or
             (Columns[i].FieldName = 'SellingPrice_mon') or
             (Columns[i].FieldName = 'PackCost_mon') or
             (Columns[i].FieldName = 'Bin_str') then
              Columns[i].DisableEditor := not vDisable;

 RzDBNotesField.Enabled := vDisable;
end;

procedure TCreditsDetailFrm.FormShow(Sender: TObject);
begin
// Set Display properties
 SetDisplayProperties;

 CreditsDetailFrm.WindowState := wsMaximized;
//maximise window state of Returns Out detail form
// CreditsDetailFrm.WindowState := wsMaximized;
// Make Credit items the active page whenever this form is open
 PageTakeItems.ActivePage := tbsCreditItems;
// Only load bin locations if necessary into Bin location loop up
 if not CreditsDm.CheckComplete then
  UpdateBinLookUps;
end;

// Load all bin locations into look up tables
procedure TCreditsDetailFrm.UpdateBinLookUps;
begin
// Clear the list first
dbgCreditItemBin_str.Items.Clear;
 with CreditsDm.tblBinLocations do
  begin
  Open;
  while not Eof do
   begin
   dbgCreditItemBin_str.Items.Add(fieldByName('Code_str').AsString);
   Next;
   end;
  Close;
  end;
end;

procedure TCreditsDetailFrm.FormCreate(Sender: TObject);
const
  cbuf = 1;
var
  vDetFormSize  :TRect;
begin
  vDetFormSize := Screen.WorkAreaRect;
  Left    := vDetFormSize.Left + cbuf;
  Top     := vDetFormSize.Top + cBuf;
  Height  := (vDetFormSize.Bottom - vDetFormSize.Top) - ( cbuf * 2);
  Width   := (vDetFormSize.Right - vDetFormSize.Left) - ( cbuf * 2);

  PageTakeItems.Height := Height - (Panel1.Height + Panel3.Height + Panel4.Height *2 + 5);

end;

procedure TCreditsDetailFrm.test1Click(Sender: TObject);
begin
 CreditsDm.atnAddAnotherBatchItem.Execute;
end;

end.