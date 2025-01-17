unit StdRegimenUNT;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, DBCtrls, DB, Menus, ActnList, ImgList, StdCtrls, Mask,

  StdRegimenDM, StdRegimen_ProtocolFRM, PrescriptionUtilities;

type
  TStdRegimen = class;

  TStdRegimen = class(TObject)
  public
    constructor Create(const dbConnectionString: WideString);
    destructor Destroy; override;
    function ProtocolListFromRX(const rxId: string): string;
    function Protocols(_userRights: Boolean; _userNameID: String; _userPin: String): Boolean;
    function RegimenListFromRX(const rxId: string): string;
    function StandardDose(_userRights: Boolean; _userNameID: String; _userPin: String): Boolean;
  end;

implementation

uses StdRegimen_StdDoseFRM;

constructor TStdRegimen.Create(const dbConnectionString: WideString);
begin

  inherited Create;
  dmStdReg := TdmStdReg.Create(nil);
  dmStdReg.DatabaseConString := dbConnectionString;

end;


destructor TStdRegimen.Destroy;
begin

  dmStdReg.Free;

  inherited Destroy;
end;

function TStdRegimen.ProtocolListFromRX(const rxId: string): string;
begin
  Result := dmStdReg.Protocol_List(rxId);
end;

function TStdRegimen.Protocols(_userRights: Boolean; _userNameID: String; _userPin: String): Boolean;
begin

 dmStdReg.FUserName := _userNameID;
 dmStdReg.FUserPin := _userPin;

 Result := TProtocol.Show('OK', False, _userRights);

end;

function TStdRegimen.RegimenListFromRX(const rxId: string): string;
begin
  Result := dmStdReg.StandardRegimen_List(rxId);
end;

function TStdRegimen.StandardDose(_userRights: Boolean; _userNameID: String; _userPin: String): Boolean;
var f: TRXMultipleReg;
begin
 dmStdReg.FUserName := _userNameID;
 dmStdReg.FUserPin := _userPin;
 
 Result := TStdDose.Show(_userRights, f);
end;
end.
