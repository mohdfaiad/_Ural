unit uBJTreeEdit_v2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, foMyFunc, Buttons, Db, DBClient, Menus,
  ComCtrls, Mask, ToolEdit, CurrEdit;

type
  TBJTreeEdit_v2 = class(TForm)
    Panel4: TPanel;
    Label4: TLabel;
    edName: TEdit;
    Label5: TLabel;
    cdsBJProp: TClientDataSet;
    cdsBJPropid_BJ_Obj: TAutoIncField;
    cdsBJPropid_business: TIntegerField;
    cdsBJPropName: TStringField;
    cdsBJPropDateCreate: TDateTimeField;
    cdsBJPropid_Creator: TIntegerField;
    cdsBJPropDateCheck: TDateTimeField;
    cdsBJPropid_Checker: TIntegerField;
    cdsBJPropDisabled: TBooleanField;
    cdsBJPropStartDate: TDateTimeField;
    cdsBJPropStopDate: TDateTimeField;
    cdsBJPropid_ClosedBy: TIntegerField;
    cdsBJPropCloseDate: TDateTimeField;
    cdsBJPropCreatorFIO: TStringField;
    cdsBJPropCheckerFIO: TStringField;
    cdsBJPropClosedByFIO: TStringField;
    Panel1: TPanel;
    Button1: TButton;
    btnOk: TButton;
    ceYear: TCurrencyEdit;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FHandle : HWnd;
    Fid_BJ_Obj, Fid_business : integer;
  public
    constructor Create(AOwner : TComponent); override;
    destructor Destroy; override;
    procedure CreateParams(var Params: TCreateParams); override;
    function SaveProp: boolean;
    procedure Initialize(const AHandle : HWnd; id_BJ_Obj, id_business : integer; ACopy : boolean);
  end;

var
  BJTreeEdit_v2: TBJTreeEdit_v2;

function ShowBJTreeEdit_v2(const AHandle : HWnd; var id_BJ_Obj : integer; id_business : integer; ACopy : boolean) : boolean;

implementation

uses uDM;


function ShowBJTreeEdit_v2(const AHandle : HWnd; var id_BJ_Obj : integer; id_business : integer; ACopy : boolean) : boolean;
var F : TBJTreeEdit_v2;
begin
  if id_BJ_Obj = -1 then
    DM.Rights_GetUserRights(100, Null)
  else
    DM.Rights_GetUserRights(102, Null);
    
  Result := false;
  F := TBJTreeEdit_v2.Create(nil);
  try
 //   if AOwner is TWinControl then
   //   SetWindowLong(F.Handle, GWL_HWNDPARENT, TWinControl(AOwner).Handle);
    F.Initialize(AHandle, id_BJ_Obj, id_business, ACopy);
    F.ShowModal;
    if F.ModalResult = mrOk then
    begin
      Result := F.SaveProp;
      id_BJ_Obj := F.Fid_BJ_Obj;
    end;
  except
    F.Free;
  end;
end;

{$R *.DFM}

procedure TBJTreeEdit_v2.btnOkClick(Sender: TObject);
begin
  with edName do
  begin
    if trim(Text) = '' then
    begin
      MessageBox(Handle, '�� ������� ��������', '������� �� ��� ������', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      ModalResult := mrNone;
      Exit;
    end;
  end;
  with ceYear do
  begin
    if Value = 0 then
    begin
      MessageBox(Handle, '�� ������ ���', '������� �� ��� ������', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      ModalResult := mrNone;
      Exit;
    end;
  end;

  ModalResult := mrOk;
 // Close;
end;


procedure TBJTreeEdit_v2.Initialize(const AHandle : HWnd; id_BJ_Obj, id_business : integer; ACopy : boolean);
var DD : Variant;
    Year, Month, Day: Word;
begin
  FHandle := AHandle;
  Fid_business := id_business;
  Fid_BJ_Obj := id_BJ_Obj;
  with cdsBJProp do
  begin
    Close;
    Params.ParamByName('@id_BJ_Obj').Value := Fid_BJ_Obj;
    Open;
    try
      edName.Text := cdsBJPropName.AsString;
      DecodeDate(now, Year, Month, Day);
      ceYear.Value := Year;
      
    finally
      Close;
    end;
  end;
  if ACopy then Fid_BJ_Obj := -1;
end;

function TBJTreeEdit_v2.SaveProp: boolean;
var Rez : integer;
    AName, StartDate, StopDate: OleVariant;
begin
  Result := false;
  AName := edName.Text;
  StartDate := EncodeDate(trunc(ceYear.value), 1, 1);
  StopDate := EncodeDate(trunc(ceYear.value), 12, 31);

  BeginTruns(DM.rsCA);
  try
    Rez := DM.rsCA.AppServer.BJ_ObjEdit_v2(Fid_BJ_Obj, Fid_business, AName, StartDate, StopDate);

    if Rez = -1 then
      raise Exception.Create('������ ��� ���������� �������');
    if Fid_BJ_Obj = -1 then
      Fid_BJ_Obj := Rez;
           
    CommitTrans(DM.rsCA);
    Result := true;
  except
    RollbackTrans(DM.rsCA);
  end;
end;

procedure TBJTreeEdit_v2.FormShow(Sender: TObject);
begin
  LoadFormSettingsToRegistry(Self, SRegPath + '\2' + ClassName);
end;

procedure TBJTreeEdit_v2.FormDestroy(Sender: TObject);
begin
  SaveFormSettingsToRegistry(Self, SRegPath + '\2' + ClassName);
end;

constructor TBJTreeEdit_v2.Create(AOwner: TComponent);
begin
  inherited;
  SetWindowLong(Handle, GWL_HWNDPARENT, 0);
//  LoadSplitterSettingsFromRegistry(Splitter1, SRegPath + '\Splitter1' + ClassName);
end;

procedure TBJTreeEdit_v2.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle:=(Params.ExStyle or WS_EX_APPWINDOW);
end;

procedure TBJTreeEdit_v2.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
//  Close;
end;

procedure TBJTreeEdit_v2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
 { if ModalResult = mrOk then
    if SaveProp then
      SendMessage(FHandle, xxx_RefrMsg, fAPCond1.id_AP_Obj, 0); }
end;

destructor TBJTreeEdit_v2.Destroy;
begin
//  SaveSplitterSettingsFromRegistry(Splitter1, SRegPath + '\Splitter1' + ClassName);
  inherited;

end;

end.
