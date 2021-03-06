unit uOperOffset;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, foMyFunc, frOperOffset, Buttons,
  uTopWin, dbclient, RXCtrls, Menus, ActnList;

type
  TOperOffset = class(IOper)
    Panel2: TPanel;
    btnVisa: TSpeedButton;
    btnDel: TSpeedButton;
    btnCancel: TButton;
    btnOk: TButton;
    Label1: TLabel;
    sbDocForm: TRxSpeedButton;
    alAdv: TActionList;
    advMark: TAction;
    advCopy: TAction;
    advOff: TAction;
    advBalance: TAction;
    advCard: TAction;
    advUnViza: TAction;
    pmAdv: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    btnAdvMenu: TRxSpeedButton;
    N6: TMenuItem;
    advPay: TAction;
    N7: TMenuItem;
    advAPGen: TAction;
    N8: TMenuItem;
    fOperOffset1: TfOperOffset;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnVisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sbDocFormClick(Sender: TObject);
    procedure pmAdvPopup(Sender: TObject);
    procedure advMarkExecute(Sender: TObject);
    procedure advCopyExecute(Sender: TObject);
    procedure advOffExecute(Sender: TObject);
    procedure advBalanceExecute(Sender: TObject);
    procedure advCardExecute(Sender: TObject);
    procedure advUnVizaExecute(Sender: TObject);
    procedure advPayExecute(Sender: TObject);
    procedure advAPGenExecute(Sender: TObject);
  private
    FHandle : HWnd;
    FOperParamz : TOperParamz;
    function GetID_Oper: integer;  override;
  public
    constructor Create(AOwner : TComponent); override;
    procedure CreateParams(var Params: TCreateParams); override;
    function SaveProp: boolean; override;
    procedure Initialize(const AHandle : HWnd; AOperParamz : TOperParamz); override;
    property ID_Oper : integer read GetID_Oper;
    
    function PrevViza(var AText, ACaption: String): boolean; override;
    function GetbtnVisaEnabled: boolean; override;
    function GetSelf : TForm;
    function GetOperCDS : TClientDataSet; override;
    function CheckAmount(var Amount : Extended) : boolean; override;

    function GetbtnVisaEn : boolean;
  end;

var
  OperOffset: TOperOffset;

implementation

uses uDM, uFormApi_Oper, uFormAPI_Doc, uAPOperList;


{$R *.DFM}

procedure TOperOffset.btnOkClick(Sender: TObject);
begin
  if not fOperOffset1.ConfirmChanges then
    ModalResult := mrNone
  else
  begin
    ModalResult := mrOk;
    Close;
  end;
end;

function TOperOffset.GetID_Oper: integer;
begin
  Result := fOperOffset1.ID_Oper;
end;

procedure TOperOffset.Initialize(const AHandle : HWnd; AOperParamz : TOperParamz);
var DD : Variant;
begin
  FHandle := AHandle;
  FOperParamz := AOperParamz;
  DD := DM.DD_DayGetProp;
  Label1.Visible := (DD = Null);
  if Label1.Visible then
    Label1.Caption := '���� ������. ����������� ����������!';
  //AReadOnly := (DD = Null);

  if (FOperParamz.ID_Oper = -1) or (FOperParamz.Correct) or (FOperParamz.Copy) then
  begin
    Caption := '�������� �������������� ��������';
  end
  else
  begin
    Caption := '�������������� �������� �' + IntToStr(FOperParamz.ID_Oper);
    if not DM.CheckUserRights(4, Null) then
      if DM.CheckUserRights(7, Null) then
      begin
        FOperParamz.ReadOnly := true;
        btnOk.Enabled := false;
        with fOperOffset1 do
        begin
          fExtDataVal1.ToolBar.Visible := false;
          fExtDataVal1.aEdit.Visible := false;
          fExtDataVal1.Action1.Visible := false;
        end;
      end;
  end;

  //btnOk.Visible := not AReadOnly;
  if FOperParamz.ReadOnly then
    Caption := Caption + ', ������ ������';

  btnVisa.Enabled := not FOperParamz.ReadOnly and (DD <> Null);

  btnDel.Visible := (FOperParamz.ID_Oper <> -1) and FOperParamz.DelMode;
  btnVisa.Visible := not FOperParamz.DelMode and not FOperParamz.ReadOnly;
   btnOk.Visible := not FOperParamz.DelMode;

  fOperOffset1.Initialize(FOperParamz);
  if fOperOffset1.cdsOperFin.FieldByName('HasViza').AsBoolean then
  begin
    btnVisa.Visible := true;
  end;
   btnVisa.Visible := btnVisa.Visible and DM.CheckUserRights(19, Null);
   sbDocForm.Visible := not AOperParamz.DelMode and DM.CheckUserRights(26, Null);

   btnAdvMenu.Visible := DM.CheckUserRights(19, Null);

end;

function TOperOffset.SaveProp: boolean;
begin
  Result := fOperOffset1.SaveProp;
end;

procedure TOperOffset.FormCreate(Sender: TObject);
begin
  fOperOffset1.PageControl1.ActivePageIndex := 0;
end;

procedure TOperOffset.btnVisaClick(Sender: TObject);
var AText, ACaption : String;
begin
  if PrevViza(AText, ACaption) then
  begin
    ModalResult := mrYes;
    Close;
  end
  else
    if AText <> '' then
      MessageBox(Handle, PChar(AText), PChar(ACaption), MB_OK + MB_ICONERROR);
end;

function TOperOffset.PrevViza(var AText, ACaption : String) : boolean;
var ObjType : TEObjType;
    Amount :  Extended;
begin
  ACaption := '����������� ����������';
  Result := false;
  if (DM.DD_DayGetProp = Null)  then
  begin
    AText := '���� ������.' + #13 + #10 + '����������� ����������';
    Exit;
  end;
  if fOperOffset1.ConfirmChanges then
  begin

  end
  else
    Exit;

  if not MayVized(fOperOffset1.cdsOperFin) then
  begin
    AText := '������ �� �������� ������� �� ���������.' + #13 + #10 + '����������� ����������';
    Exit;
  end;
  Result := true;
end;

procedure TOperOffset.FormShow(Sender: TObject);
begin
  LoadFormSettingsToRegistry(Self, SRegPath + '\qz267' + ClassName);
end;

procedure TOperOffset.btnDelClick(Sender: TObject);
begin
  ModalResult := mrIgnore;
  Close;
end;

procedure TOperOffset.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FOperParamz.id_Oper := fOperOffset1.ID_Oper;
  EditOper_xxx(FHandle, FOperParamz, Self);
end;

procedure TOperOffset.FormDestroy(Sender: TObject);
begin
  SaveFormSettingsToRegistry(Self, SRegPath + '\qz267' + ClassName);
end;

constructor TOperOffset.Create(AOwner: TComponent);
begin
  inherited;
  SetWindowLong(Handle, GWL_HWNDPARENT, 0);
end;

procedure TOperOffset.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle:=(Params.ExStyle or WS_EX_APPWINDOW);
end;

procedure TOperOffset.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
  Close;
end;

procedure TOperOffset.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ModalResult in [mrCancel, mrNone] then
  begin
    if fOperOffset1.ChangeData then
      case MessageBox(Handle, '��������� ��������?', '������ �� ���� ���������', MB_YESNOCANCEL + MB_DEFBUTTON3 + MB_ICONQUESTION) of
        id_Yes :
        begin
          CanClose := false;
          btnOk.Click;
        end;
        ID_CANCEL : CanClose := false;
      end;
  end;
end;

function TOperOffset.CheckAmount(var Amount: Extended): boolean;
begin
   Result := true;
end;

function TOperOffset.GetbtnVisaEnabled: boolean;
begin
  Result := btnVisa.Enabled and btnVisa.Visible;
end;

function TOperOffset.GetOperCDS: TClientDataSet;
begin
  Result := fOperOffset1.cdsOperFin;
end;

function TOperOffset.GetSelf: TForm;
begin
  Result := Self;
end;

procedure TOperOffset.sbDocFormClick(Sender: TObject);
var DP : TDocParamz;
begin
  fOperOffset1.UpdateData;
  DP := GetEmptyDocParamz;
  DP.ID_Oper := id_Oper;
  DP.Is_Mirr := fOperOffset1.cdsOperFinIs_Mirr.AsBoolean;
  ShowActCL(Handle, DP, fOperOffset1.cdsOperFin, nil);
end;

function TOperOffset.GetbtnVisaEn: boolean;
begin
  Result := btnVisa.Enabled;
end;

procedure TOperOffset.pmAdvPopup(Sender: TObject);
begin
  if fOperOffset1.cdsOperFin.FieldByName('OperState').AsInteger = -1 then
  begin
    advMark.ImageIndex := -1;
    advMark.Caption := '����� �����';
  end;
  advMark.Enabled := btnVisa.Visible and not FOperParamz.ReadOnly;

  advCopy.Enabled := fOperOffset1.ID_Oper > 0;
  advOff.Enabled := fOperOffset1.ID_Oper > 0;
  advBalance.Enabled := fOperOffset1.cdsOperFinid_ContrAgent.AsInteger > 0;
  advCard.Enabled := fOperOffset1.cdsOperFinid_Acc.AsInteger > 0;
  advUnViza.Enabled := not fOperOffset1.cdsOperFinBlocked.AsBoolean and not fOperOffset1.cdsOperFinCheckDate.IsNull;
  advPay.Enabled := fOperOffset1.ID_Oper > 0;

  if advPay.Enabled then
  begin
    advPay.Caption := '������� ������, ';
    if fOperOffset1.cbOperTypeIn.ItemIndex = 0 then
      advPay.Caption := advPay.Caption + fOperOffset1.cbOperTypeIn.Items[1]
    else
      advPay.Caption := advPay.Caption + fOperOffset1.cbOperTypeIn.Items[0];

    advPay.Caption := advPay.Caption + ' ' + trim(FormatFloat('### ### ### ##0.##', fOperOffset1.cdsOperFinPriceOper.AsFloat)) + ' ' + fOperOffset1.fCurSelector1.CurName;
  end;
end;

procedure TOperOffset.advMarkExecute(Sender: TObject);
begin
  if fOperOffset1.ConfirmChanges then
  begin
    ModalResult := mrNo;
    Close;
  end

end;

procedure TOperOffset.advCopyExecute(Sender: TObject);
begin
  EditOper_ext(fOperOffset1.cdsOperFin);
  Close;

end;

procedure TOperOffset.advOffExecute(Sender: TObject);
var AOperParamz : TOperParamz;
begin
  AOperParamz := GetEmptyOperParamz;
  AOperParamz.ID_Oper := fOperOffset1.cdsOperFin.FieldByName('id_Oper').AsInteger;
  AOperParamz.Offset := true;
  AOperParamz.Copy := true;
  EditOperOffset(Handle, AOperParamz);
//  Close;

end;

procedure TOperOffset.advBalanceExecute(Sender: TObject);
begin
  ShowBalance_v2_ext(fOperOffset1.cdsOperFin);

end;

procedure TOperOffset.advCardExecute(Sender: TObject);
begin
  ShowAccCard_v2_ext(fOperOffset1.cdsOperFin);

end;

procedure TOperOffset.advUnVizaExecute(Sender: TObject);
begin
  if MessageBox(Handle, '����� �����������?', '����������� ������ �����������', MB_YESNO + MB_ICONWARNING) = idYes then
  begin
    if DM.rsCA.AppServer.OP_OperDelCheckDate_v2(fOperOffset1.ID_Oper) = 1 then
    begin
      fOperOffset1.FOperParamz.ReadOnly := false;
      Initialize(FHandle, fOperOffset1.FOperParamz);
    end
    else
    begin
      MessageBox(Handle, '������ ��� ������ �����������', '��������� ������ ��� ������ �����������', MB_YESNO + MB_ICONERROR);
    end;
  end;

end;

procedure TOperOffset.advPayExecute(Sender: TObject);
var AOperParamz : TOperParamz;
begin
  fOperOffset1.UpdateData;
  AOperParamz := GetEmptyOperParamz;
  AOperParamz.ID_Oper := fOperOffset1.cdsOperFin.FieldByName('id_Oper').AsInteger;
  AOperParamz.DoPay := true;
  AOperParamz.Copy := true;
  AOperParamz.id_Cur :=  fOperOffset1.cdsOperFinId_CurrencyOper.AsInteger;
  AOperParamz.Summ := fOperOffset1.cdsOperFinPriceOper.AsInteger;
  AOperParamz.OperTypeIn := not fOperOffset1.cdsOperFinOperTypeIn.AsBoolean;
  EditOperFin(Handle, AOperParamz);
end;

procedure TOperOffset.advAPGenExecute(Sender: TObject);
begin
  if fOperOffset1.ID_Oper = -1 then
    raise Exception.Create('�������� �� ���������. ��������� ����������!')
  else
    ShowAPOperList(Handle, fOperOffset1.id_Oper, 0)

end;

end.
