unit uBusinessDetailForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, StdCtrls, ExtCtrls, frCurSelector, Mask, ImgList, Buttons,
  frCurProp;

type
  TBusinessDetailForm = class(TForm)
    Panel2: TPanel;
    OkButton: TButton;
    Button1: TButton;
    ClientDataSet: TClientDataSet;
    Panel1: TPanel;
    Label1: TLabel;
    NameEdit: TEdit;
    Label2: TLabel;
    ShortNameEdit: TEdit;
    Label3: TLabel;
    NumEdit: TEdit;
    cdsCur: TClientDataSet;
    cdsCurId_Currency: TAutoIncField;
    cdsCurName: TStringField;
    cdsCurShortName: TStringField;
    cdsCurISOCode: TStringField;
    cdsCurNumberCode: TStringField;
    cdsCurFastAccess: TBooleanField;
    cdsCurValue: TIntegerField;
    cdsCurRate: TFloatField;
    cdsCurAvForPay: TBooleanField;
    cdsCurBase: TBooleanField;
    cdsCurLastUpdated: TBytesField;
    cdsCurId_URL: TIntegerField;
    fCurProp1: TfCurProp;
    Label4: TLabel;
    cbCrn: TComboBox;
    procedure OkButtonClick(Sender: TObject);
    procedure NumEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbCrnChange(Sender: TObject);
  private
    { Private declarations }
  protected
    UnComplits:string;
    function CheckComplitInput : boolean;
    procedure SaveData;
  public
   Id:Variant;
   procedure Init;
   constructor Create(AOwner : TComponent); override;
  end;

var
  BusinessDetailForm: TBusinessDetailForm;

implementation
    uses uDM, uFormApi_CrnAdm, foMyFunc;
{$R *.DFM}
procedure TBusinessDetailForm.Init;

begin
//  if Id<>-1 then
  begin
    with ClientDataSet do
     begin
      Params.ParamByName('Id').Value:=Id;
      Open;
        NameEdit.Text:=FieldByName('Name').AsString;
        ShortNameEdit.Text:=FieldByName('ShortName').AsString;
        NumEdit.Text:=FieldByName('Num').AsString;
     end;
   end;
  with cdsCur do
  begin
    Close;
    Params.ParamByName('@FastAccess').Value := Null;
    Params.ParamByName('@AvForPay').Value := True;
    Params.ParamByName('@id_Bsn').Value := Id;
    Open;
    if ID <> -1 then
    begin
      if Locate('Id_Currency', ClientDataSet.FieldByName('id_Currency').AsInteger, []) and cdsCurBase.AsBoolean then
      begin
        cbCrn.ItemIndex := 0
      end
      else
          if cbCrn.Items.Count >= 2 then
            cbCrn.ItemIndex := 3;
    end;
  end;
  cbCrn.Enabled := id = -1;
  cbCrnChange(nil);
end;

procedure TBusinessDetailForm.OkButtonClick(Sender: TObject);
begin
 if CheckComplitInput then
 begin
   SaveData;
   ModalResult:=mrOk;
 end
 else
   ModalResult:=mrNone; 
end;

procedure TBusinessDetailForm.SaveData;
  var B1 : boolean;
  Act:Variant;
  New_Id, ID_Crn, id_USD, id_EUR:Integer;
    AName, ShortName, ISOCode, NumberCode: OleVariant;
    AValue: Integer;
    Rate: OleVariant;
    Id_URL, DocCurPartName: OleVariant;
    Id_Bsn : integer;
begin
  B1 := false;
   if Id=-1 then
    Act:=0
   else
    Act:=1;
  if (Id=-1) then
  begin
    Id_Bsn := -1;
    AName := '������ ���';
    ShortName := '����';
    ISOCode := 'USD';
    NumberCode := 480;
    AValue := 1;
    Rate := 27;
    Id_URL := Null;
    DocCurPartName := '����';

    id_USD := DM.rsCA.AppServer.CurrencyAdd_2(AName, ShortName, ISOCode, NumberCode, true, AValue, Rate, true, Id_URL, Id_Bsn, DocCurPartName);


    AName := '����';
    ShortName := '����';
    ISOCode := 'EUR';
    NumberCode := 978;
    AValue := 1;
    Rate := 35;
    Id_URL := Null;
    DocCurPartName := '��������';
    id_EUR := DM.rsCA.AppServer.CurrencyAdd_2(AName, ShortName, ISOCode, NumberCode, true, AValue, Rate, true, Id_URL, Id_Bsn, DocCurPartName);

     if (cbCrn.ItemIndex = 3) then
     begin
       fCurProp1.cdsCurProp.edit;
       fCurProp1.cdsCurPropFastAccess.AsBoolean := true;
       fCurProp1.cdsCurPropAvForPay.AsBoolean := true;
       fCurProp1.cdsCurProp.Post;
       
       fCurProp1.SaveProp;
       ID_Crn := fCurProp1.ObjID;
       B1 := true;
     end
     else
     begin
       if cbCrn.ItemIndex = 0 then
       begin
         with cdsCur do
         begin
           First;
           while not Eof do
           begin
             if cdsCurBase.AsBoolean then
             begin
               ID_Crn := cdsCurId_Currency.AsInteger;
               Break;
             end;
             Next;
           end;
         end;
       end
       else
       begin
         if cbCrn.ItemIndex = 1 then
           ID_Crn := id_USD;
         if cbCrn.ItemIndex = 2 then
           ID_Crn := id_EUR;
       end;
     end;
   end;
   New_Id:=DM.rsCA.AppServer.SetBusinessDetail(
    Act,
    Id,
    NameEdit.Text,
    ShortNameEdit.Text,
    ID_Crn,
    NumEdit.Text,
    false
    );
    Id:=New_Id;
  if (id > -1) and (Act = 0) then
  begin
    if B1 then
      DM.rsCA.AppServer.SetCurid_Bsn(ID_Crn, ID);
    if id_USD > 0 then
      DM.rsCA.AppServer.SetCurid_Bsn(id_USD, ID);
    if id_EUR > 0 then
      DM.rsCA.AppServer.SetCurid_Bsn(id_EUR, ID);

    DM.GetBsnList(DM.FBsnList, DM.IDUser, Null);
  end;
end;

procedure TBusinessDetailForm.NumEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [^H,'-','0'..'9']) then Key := #0;
end;

function TBusinessDetailForm.CheckComplitInput : boolean;
begin
  Result := false;
  with NameEdit do
    if trim(Text) = '' then
    begin
      MessageBox(Handle, '�� ������� ��������', '������� �� ��� ������', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      Exit;
    end;
  with ShortNameEdit do
    if trim(Text) = '' then
    begin
      MessageBox(Handle, '�� ������� �������� ��������', '������� �� ��� ������', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      Exit;
    end;
  with NumEdit do
    if trim(Text) = '' then
    begin
      MessageBox(Handle, '�� ������ ���', '������� �� ��� ������', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      Exit;
    end;
  with cbCrn do
    if trim(Text) = '' then
    begin
      MessageBox(Handle, '�� ������ ������', '������� �� ��� ������', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      Exit;
    end;

 if (cbCrn.ItemIndex = 3) and not fCurProp1.CheckData then
   Exit;
 Result:=True;

end;

procedure TBusinessDetailForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=13 then OkButton.Click;
 if Key=27 then ModalResult:=mrCancel;
end;

constructor TBusinessDetailForm.Create(AOwner: TComponent);
begin
  inherited;
  fCurProp1.Label7.Visible := false;
  fCurProp1.RxDBLookupCombo1.Visible := false;
//  fCurProp1.DBCheckBox1.Visible := false;
//  fCurProp1.DBCheckBox2.Visible := false;


end;

procedure TBusinessDetailForm.cbCrnChange(Sender: TObject);
begin
  if cbCrn.ItemIndex = 3 then
  begin
    if ID > 0 then
    begin
      fCurProp1.initialize(ClientDataSet.FieldByName('id_Currency').AsInteger, ID);
      DisableControl(fCurProp1);
    end
    else
    begin
      fCurProp1.initialize(-1, -1);
      EnableControl(fCurProp1);
    end;
  end
  else
  begin
    DisableControl(fCurProp1);
  end;
end;

end.
