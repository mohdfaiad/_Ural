unit uLCSelectorUn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  foMyFunc, StdCtrls, ExtCtrls, ActnList, frLCEntFrame;

type
  TLCSelectorUn = class(TForm)
    Panel2: TPanel;
    btnCancel: TButton;
    btnOk: TButton;
    ActionList1: TActionList;
    aOk: TAction;
    Panel1: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    fLCEntFrame1: TfLCEntFrame;
    procedure FormDestroy(Sender: TObject);
    procedure aOkExecute(Sender: TObject);
    procedure ActionList1Update(Action: TBasicAction;
      var Handled: Boolean);
  private
    Fid_Bsn : Variant;
    FDisabled : Variant;
  public
  end;

var
  LCSelectorUn: TLCSelectorUn;

  function SelectObjUn(UID : Variant; var ASelectedObj : TSelectedObj; Disabled : Variant; AEObjTypes: TEObjTypes = [eotBsn, eotFin, eotWH, eotManuf, eotOwnCA, eotOwnRepr, eotCA, eotRepr, eotEQ, eotCatalog, eotWare, eotRaw, eotExtRaw, eotService]) : boolean;

implementation

uses uMainForm;

function SelectObjUn(UID : Variant; var ASelectedObj : TSelectedObj; Disabled : Variant; AEObjTypes: TEObjTypes) : boolean;
var F : TLCSelectorUn;
    SL : TStringList;
    S : String;
    i : integer;
begin
  SL := TStringList.Create;
  try
    if eotFin in AEObjTypes then
      SL.Add('����');
    if eotWH in AEObjTypes then
      SL.Add('�����');
    if eotManuf in AEObjTypes then
      SL.Add('������������');
    if eotOwnCA in AEObjTypes then
      SL.Add('������ �����������');
    if eotOwnRepr in AEObjTypes then
      SL.Add('������������� ������ �����������');
    if eotCA in AEObjTypes then
      SL.Add('������������');
    if eotRepr in AEObjTypes then
      SL.Add('������������� �����������');
    if eotEQ in AEObjTypes then
      SL.Add('������������');
    if eotWare in AEObjTypes then
      SL.Add('�����');
    if eotRaw in AEObjTypes then
      SL.Add('�����');
    if eotExtRaw in AEObjTypes then
      SL.Add('����� ������������');
    if eotService in AEObjTypes then
      SL.Add('������');

    S := '�������� ';
    for i := 0 to SL.Count - 1 do
    begin
      if i = 0 then
        S := S + SL[i]
      else
        if i = SL.Count - 1 then
          S := S + ' ��� ' + SL[i]
        else
          S := S + ', ' + SL[i];
    end;
  finally
    SL.Free;
  end;
  Result := false;
  F := TLCSelectorUn.Create(MainForm);
  try
    F.fLCEntFrame1.Initialize2(UID, Disabled, AEObjTypes);
    F.Label2.Caption := S;

    F.ShowModal;
    if F.ModalResult = mrOk then
    begin
      Result := true;
      //*** ��������� ��������� ���������� ***
      ASelectedObj.ID := F.fLCEntFrame1.SelObjID;
      ASelectedObj.Name := F.fLCEntFrame1.SelObjName;
      ASelectedObj.ObjType := F.fLCEntFrame1.SelObjType;
      //*** *** *** *** *** *** *** *** *** *** ***
    end;
  finally
    F.Free;
  end;
end;

{$R *.DFM}

{ TEForm }


procedure TLCSelectorUn.FormDestroy(Sender: TObject);
begin
  LCSelectorUn := nil;
end;

procedure TLCSelectorUn.aOkExecute(Sender: TObject);
begin
  ModalResult := mrOk;
//  Close;
end;

procedure TLCSelectorUn.ActionList1Update(Action: TBasicAction;
  var Handled: Boolean);
var S : String;
begin
//  aOk.Enabled := (fEForm1.SelObjType in fEForm1.EObjTypes);
  if fLCEntFrame1.isNeedObjSelected then
  begin
    case fLCEntFrame1.SelObjType of
      eotFin : S := '������ ����';
      eotWH : S := '������ �����';
      eotManuf : S := '������� ������������';
      eotOwnCA : S := '������ ���� ����������';
      eotOwnRepr : S := '������ ������������� ������ �����������';
      eotCA : S := '������ ����������';
      eotRepr : S := '������ ������������� �����������';
      eotEQ : S := '������� ������������';
      eotCatalog : S := '������ �������';
      eotWare : S := '������ �����';
      eotRaw : S := '������� �����';
      eotExtRaw : S := '������� ����� ������������';
      eotService : S := '������� ������';
      eotSimplRepr : S := '������ �������������';
    end;
    S := S + ' ' + fLCEntFrame1.SelObjName;
  end
  else
  begin
    S := '������ �� �������';
  end;
  if Label1.Caption <> S then
    Label1.Caption := S;
  aOk.Enabled := fLCEntFrame1.isNeedObjSelected;
end;

end.
