unit frBsnSelector;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,
  uBsnSelector, Menus;

type
  TfBsnSelector = class(TFrame)
    Label1: TLabel;
    edName: TEdit;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    miGetID_BsnFromArc: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure miGetID_BsnFromArcClick(Sender: TObject);
  private
    FID : Variant;
    FUID: Variant;
    FShowbtnDel: boolean;
    FGetID_BsnFromArc : Boolean;
    function getID: Variant;
    procedure SetID(const Value: Variant);
    function getBsnName: String;
    procedure SetUID(const Value: Variant);
  public
    constructor Create(AOwner : TComponent); override;
    destructor Destroy; override;
    property ID : Variant read getID write SetID;
    property BsnName : String read getBsnName;
    property UID : Variant read FUID write SetUID;

    property AShowbtnDel : boolean read FShowbtnDel write FShowbtnDel;

  end;


implementation

uses uDM, foMyFunc;

{$R *.DFM}

procedure TfBsnSelector.Button1Click(Sender: TObject);
var AID : Variant;
    AName : String;
begin
  AID := FID;
  AName := edName.Text;
  if SelectBuisnes(AID, AName, UID, Owner, AShowbtnDel) then
  begin
    FID := AID;
    edName.Text := AName;
  end;
end;

constructor TfBsnSelector.Create(AOwner: TComponent);
var V : Variant;
begin
  inherited;
  FGetID_BsnFromArc := false;
  FShowbtnDel := true;
  FID := -1;
  UID := Null;
 // if DM.FBsnList.Count = 1 then
 //   ID := TBsnObj(DM.FBsnList[0]).ID;
  LoadValFromRegistry_CalcPath(Self, V, 'FGetID_BsnFromArc');
  if V <> Null then FGetID_BsnFromArc := V;

  miGetID_BsnFromArc.Checked := FGetID_BsnFromArc;
  if FGetID_BsnFromArc then
    ID := DM.GetID_BsnFromArc;

  if DM.FBsnList.Count = 1 then
    ID := TBsnObj(DM.FBsnList[0]).ID;
end;

destructor TfBsnSelector.Destroy;
begin
  SaveValToRegistry_CalcPath(Self, FGetID_BsnFromArc, 'FGetID_BsnFromArc');
  inherited;

end;

function TfBsnSelector.getBsnName: String;
begin
  Result := edName.Text;
end;

function TfBsnSelector.getID: Variant;
begin
  Result := FID;
  if Result = Null then
    Result := -1;
end;

procedure TfBsnSelector.SetID(const Value: Variant);
var BsnName : Variant;
begin
  try
    FID := Value;
    if VarIsEmpty(FID) then FID := Null;
    BsnName := DM.GetBusinessName(FID);
    edName.Text := BsnName;
    if BsnName = '' then
      FID := Null;  
  except
  end;
end;

procedure TfBsnSelector.SetUID(const Value: Variant);
begin
  FUID := Value;
end;

procedure TfBsnSelector.miGetID_BsnFromArcClick(Sender: TObject);
begin
  FGetID_BsnFromArc := not FGetID_BsnFromArc;
  miGetID_BsnFromArc.Checked := FGetID_BsnFromArc;

end;

end.