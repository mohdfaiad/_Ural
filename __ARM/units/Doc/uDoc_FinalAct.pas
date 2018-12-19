unit uDoc_FinalAct;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, DBClient, Mask, DBCtrls, ToolEdit, RXDBCtrl,
  RxDBComb, CurrEdit, ComObj, foMyFunc, RXCtrls, Grids, DBGridEh, ComCtrls,
  ToolWin, ActnList, ImgList, Menus, RxLookup, Buttons, GridsEh;

type
  TFinalAct = class(TForm)
    Panel2: TPanel;
    btnCancel: TButton;
    btnOk: TButton;
    cdsDoc: TClientDataSet;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label2: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label18: TLabel;
    edcustomer: TDBEdit;
    GroupBox2: TGroupBox;
    dsOperWare: TDataSource;
    DBGridEh1: TDBGridEh;
    cdsDocid_FinalAct: TAutoIncField;
    cdsDocid_Oper: TIntegerField;
    cdsDocDoc_Num: TStringField;
    cdsDocDoc_Date: TDateTimeField;
    cdsDocDoc_DateCreate: TDateTimeField;
    cdsDocid_UserCreator: TIntegerField;
    cdsDocOrgName: TStringField;
    cdsDocAddress: TStringField;
    cdsDocperformer: TStringField;
    cdsDoccustomer: TStringField;
    Label3: TLabel;
    edperformer: TDBEdit;
    ilImage: TImageList;
    ActionList1: TActionList;
    aAddWare: TAction;
    aDelWare: TAction;
    aCalcAmount: TAction;
    aClearWare: TAction;
    ToolBar3: TToolBar;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    PopupMenu1: TPopupMenu;
    miOpen: TMenuItem;
    miPrint: TMenuItem;
    RxSpeedButton1: TRxSpeedButton;
    cdsDocWare: TClientDataSet;
    cdsDocWareNumb: TIntegerField;
    cdsDocWareSS: TAggregateField;
    cdsDocWareSSwoVAT: TAggregateField;
    cdsDocCusPerson: TStringField;
    edCusPerson: TDBEdit;
    Label4: TLabel;
    cdsDocWareid_FinalActWare: TAutoIncField;
    cdsDocWareid_FinalAct: TIntegerField;
    cdsDocWareWareName: TStringField;
    cdsDocWareMesName: TStringField;
    cdsDocWareAmount: TFloatField;
    cdsDocWareAmSum: TAggregateField;
    cdsDocCurGetList: TClientDataSet;
    cdsDocCurGetListid_DocCur: TAutoIncField;
    cdsDocCurGetListDocCurName: TStringField;
    cdsDocCurGetListDocCurPartName: TStringField;
    dsDocCurGetList: TDataSource;
    Label20: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    cdsDocCurGetListDef: TIntegerField;
    cdsDocid_DocCur: TIntegerField;
    cdsDocid_business: TIntegerField;
    cdsDocid_DocCur_1: TAutoIncField;
    cdsDocDocCurName: TStringField;
    cdsDocDocCurPartName: TStringField;
    cdsDocDef: TBooleanField;
    cdsDocNumberCode: TStringField;
    mpWare: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    cdsDocWarewoVAT: TBCDField;
    cdsDocWareVATVAL: TBCDField;
    cdsDocid_Doc_Org: TIntegerField;
    cdsDocDisabled: TBooleanField;
    cbOrgName: TDBEdit;
    BitBtn3: TBitBtn;
    cbAddress: TDBEdit;
    cdsDocVAT: TBCDField;
    cdsDocWareSummWare: TBCDField;
    cdsDocWarePrice: TBCDField;
    cdsDocWarePrice0: TBCDField;
    RxDBCalcEdit1: TRxDBComboBox;
    Label21: TLabel;
    cdsDocWareAmount0: TFloatField;
    cdsDocWareVAT: TBCDField;
    RxDBCalcEdit2: TRxDBCalcEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure cdsDocWareCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1ColEnter(Sender: TObject);
    procedure dsOperWareDataChange(Sender: TObject; Field: TField);
    procedure aAddWareExecute(Sender: TObject);
    procedure aDelWareExecute(Sender: TObject);
    procedure aClearWareExecute(Sender: TObject);
    procedure aCalcAmountExecute(Sender: TObject);
    procedure miOpenClick(Sender: TObject);
    procedure miPrintClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh1GetFooterParams(Sender: TObject; DataCol,
      Row: Integer; Column: TColumnEh; AFont: TFont;
      var Background: TColor; var Alignment: TAlignment;
      State: TGridDrawState; var Text: String);
    procedure cdsDocVATChange(Sender: TField);
    procedure cdsDocAddressGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    FHandle : HWnd;
    FDocParamz : TDocParamz;
    function CheckData: boolean;
    function ConfirmChanges: boolean;
    procedure MakeExport(APrint: boolean);
    function GetVATCol: TColumnEh;
    procedure SetVat;
  public
    FPrntW : HWnd;
    constructor Create(AOwner : TComponent); override;
    destructor Destroy; override;
    procedure CreateParams(var Params: TCreateParams); override;
    function SaveProp: boolean;
    procedure initialize(ADocParamz : TDocParamz;
                   AcdsOper : TClientDataSet;
                   AcdsWare : TClientDataSet);

  end;

var
  FinalAct: TFinalAct;

  procedure ShowFinalAct(AHandle : HWnd; ADocParamz : TDocParamz;
                   AcdsOper : TClientDataSet = nil;
                   AcdsWare : TClientDataSet = nil);
implementation

uses uDM, foMyFuncEh, {$IFNDEF LC} uUnivSelector, {$ENDIF} uInputBoxDigit, NumTools,
  uSelectorDocOrg;

procedure ShowFinalAct(AHandle : HWnd; ADocParamz : TDocParamz;
                   AcdsOper : TClientDataSet;
                   AcdsWare : TClientDataSet);
var F : TFinalAct;
begin
  DM.Rights_GetUserRights(26, Null);
  F := TFinalAct.Create(nil);
  try
    F.FHandle := AHandle;
    F.initialize(ADocParamz, AcdsOper, AcdsWare);
    F.ModalResult := mrNone;
{$IFNDEF LC}
    F.Show;
{$ELSE}
    F.MakeExport(false);
    F.Free;
{$ENDIF}
  except
    on E : Exception do
    begin
      F.Free;
      raise Exception.Create(E.Message);
    end;
  end;
end;
{$R *.DFM}

constructor TFinalAct.Create(AOwner: TComponent);
begin
  inherited;
  SetWindowLong(Handle, GWL_HWNDPARENT, 0);
  LoadEhGridSettingsFromRegistry(DBGridEh1, SRegPath + '\' + ClassName);
end;

procedure TFinalAct.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle:=(Params.ExStyle or WS_EX_APPWINDOW);

end;

procedure TFinalAct.initialize(ADocParamz : TDocParamz;
                   AcdsOper : TClientDataSet;
                   AcdsWare : TClientDataSet);
var Val : Variant;
    NeedOpen, VATIn : boolean;
    id_Doc_Org, OrgName, INN,
  KPP, Chif, Buh, OKPO, OKPD, Address: OleVariant;
  xDate: TDateTime; xNum: String;
begin
  FPrntW := GetControlFormHHH(AcdsOper);
  btnOk.Enabled := (ADocParamz.ID_Oper > 0) or (ADocParamz.id_Doc > 0);
  FDocParamz := ADocParamz;
  NeedOpen := AcdsOper = nil;
  if AcdsOper = nil then
  begin
    AcdsOper := DM.cdsOperFin;
  end;
  if AcdsWare = nil then
    AcdsWare := DM.cdsOperWare;

  with cdsDoc do
  begin
    Close;
    Params.ParamByName('@id_FinalAct').AsInteger := FDocParamz.id_Doc;
    Open;
  end;
  with cdsDocWare do
  begin
    Close;
    Params.ParamByName('@id_FinalAct').AsInteger := FDocParamz.id_Doc;
    Open;
  end;


  if FDocParamz.id_Doc = -1 then
  begin
    cdsDoc.Edit;
    cdsDocid_UserCreator.AsInteger := DM.IDUser;
    cdsDocid_Oper.AsInteger := FDocParamz.id_Oper;
    cdsDocDoc_Date.AsDateTime := date;
    with AcdsOper do
    begin
      if NeedOpen then
      begin
        Close;
        Params.ParamByName('@id_Oper').AsInteger := FDocParamz.id_Oper;
        Params.ParamByName('@is_Mirr').AsBoolean := FDocParamz.is_Mirr;
        Open;
      end;
      try
        VATIn := FieldByName('VATIn').AsBoolean;
        if not FieldByName('Id_CurrencySys').IsNull then
          cdsDocid_DocCur.AsInteger := FieldByName('Id_CurrencySys').AsInteger
        else
          cdsDocid_DocCur.AsInteger := FieldByName('Id_CurrencyOper').AsInteger;

        cdsDoccustomer.AsString := FieldByName('ReprName').AsString;
        cdsDocid_business.Value := FieldByName('id_business').Value;
      finally
        if NeedOpen then Close;
      end;
    end;
    cdsDocDoc_Num.AsVariant := DM.rsCA.AppServer.GetDoc_Num2(3, cdsDocid_business.Value);
        if DM.GetDocNum(cdsDocid_Oper.AsInteger, cdsDocid_business.AsInteger, xDate, xNum) then
        begin
          cdsDocDoc_Num.AsString := xNum;
          cdsDocDoc_Date.AsDateTime := xDate;
        end;
    cdsDoc.Post;

    with AcdsWare do
    begin
      if NeedOpen then
      begin
        Close;
        Params.ParamByName('@id_Oper').AsInteger := FDocParamz.id_Oper;
        Open;
      end;

      DisableControls;
      try
        First;
        while not Eof do
        begin
          cdsDocWare.Append;
          cdsDocWareWareName.AsVariant := FieldByName('WareName').Value;
          if FieldByName('SummSys').IsNull then
            cdsDocWareSummWare.AsVariant := FieldByName('PriceOper').Value * FieldByName('AmountOper').Value
          else
            cdsDocWareSummWare.AsVariant := FieldByName('SummSys').Value;
          cdsDocWareAmount.AsVariant := FieldByName('AmountOper').Value;
          cdsDocWareMesName.AsVariant := DM.GetLeftText(FieldByName('MeasureName').Value);

          cdsDocWare.Post;

          Next;
        end;
      finally
        if NeedOpen then Close else First;
        EnableControls;
      end;
    end;
  end
  else
  begin
    with cdsDoc do
    begin
      if FieldByName('Doc_Num').IsNull then
      begin
        Edit;
        FieldByName('Doc_Num').AsString := IntToStr(FDocParamz.id_Doc);
        Post;
      end;
    end;
  end;
  if FDocParamz.Copy then
    FDocParamz.id_Oper := -1;
  if (FDocParamz.ID_Doc = -1) then
  begin
    Caption := '����� ��� �������';
  end
  else
  begin
    Caption := '��� ������� �' + cdsDocDoc_Num.AsString;
  end;
  if FDocParamz.ReadOnly then
    Caption := Caption + ', ������ ������';

  if (FDocParamz.ID_Doc = -1) and not (FDocParamz.Copy) then
    if DM.GetDefOrg(cdsDocid_business.AsInteger, id_Doc_Org, OrgName, INN,
    KPP, Chif, Buh, OKPO, OKPD, Address) then
  begin
    cdsDoc.Edit;
    cdsDocid_Doc_Org.AsVariant := id_Doc_Org;
    cdsDocOrgName.AsVariant := OrgName;
    cdsDocAddress.AsVariant := Address;

    cdsDoc.Post;
  end;
  DM.cdsDocCurGetListOpen(cdsDocCurGetList, RxDBLookupCombo1, cdsDocid_business.Value, FDocParamz.ID_Doc,
                          cdsDocid_DocCur.AsInteger); 
  DM.CDStoSL(FDocParamz.ID_Doc, RxDBCalcEdit1, 1, cdsDocid_Doc_Org.AsInteger);


  if not VATIn and (FDocParamz.id_Doc = -1) then
  begin
    with cdsDocWare do
    begin
      DisableControls;
      try
        First;
        while not Eof do
        begin
          Edit;
          cdsDocWareSummWare.AsFloat := cdsDocWareSummWare.AsFloat * (100 + cdsDocWareVAT.AsFloat)/100;
          Post;
          Next;
        end;
        First;
      finally
        EnableControls;
      end;
    end;
  end;
end;

function TFinalAct.GetVATCol: TColumnEh;
var i : integer;
begin
  Result := nil;
  for i := 0 to DBGridEh1.Columns.Count - 1 do
  begin
    if DBGridEh1.Columns[i].Field = cdsDocWareVAT then
    begin
      Result := DBGridEh1.Columns[i];
      Break;
    end;
  end;
end;


function TFinalAct.SaveProp: boolean;
var ID_Tmp, id_Oper: Integer;
    Doc_Num, Doc_Date,
    id_UserCreator, OrgName, Address, performer,
    customer, CusPerson, VAT: OleVariant;
    OldCursor : TCursor;
    id_DocCur : integer;
    id_Doc_Org : integer;
begin
  if FDocParamz.ReadOnly or ((cdsDoc.ChangeCount = 0) and  (cdsDocWare.ChangeCount = 0)) then Exit;
  ID_Tmp := FDocParamz.ID_Doc;
  OldCursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;
  Result := false;
  with cdsDoc do
  begin
    id_DocCur := fieldByName('id_DocCur').AsInteger;
    id_Oper := fieldByName('id_Oper').AsInteger;
    Doc_Num := fieldByName('Doc_Num').Value;
    Doc_Date := fieldByName('Doc_Date').Value;

    OrgName := fieldByName('OrgName').Value;
    Address := fieldByName('Address').Value;
    performer := fieldByName('performer').Value;
    customer := fieldByName('customer').Value;
    CusPerson := fieldByName('CusPerson').Value;
    VAT := fieldByName('VAT').Value;
    id_Doc_Org := fieldByName('id_Doc_Org').AsInteger;

    id_UserCreator := fieldByName('id_UserCreator').Value;
  end;

  BeginTruns(DM.rsCA);
  try
    ID_Tmp := DM.rsCA.AppServer.Doc_FinalActEdit(FDocParamz.ID_Doc,
                                                id_Oper,
                                                Doc_Num,
                                                Doc_Date,
                                                id_UserCreator,
                                                OrgName,
                                                Address,
                                                performer,
                                                customer,
                                                CusPerson,
                                                id_DocCur, id_Doc_Org, VAT);

    if ID_Tmp = -1 then
      raise Exception.Create('������ ��� ���������� �������');
    if FDocParamz.ID_Doc = -1 then
      FDocParamz.ID_Doc := ID_Tmp;

    if not CDSApplyUpdates(cdsDocWare, 'id_FinalAct', FDocParamz.ID_Doc, true) then
      raise Exception.Create('������ ��� ���������� ������� �������');
    CommitTrans(DM.rsCA);
    Result := true;
  except
    on E : Exception do
    begin
      Screen.Cursor := OldCursor;
      RollbackTrans(DM.rsCA);
      FDocParamz.ID_Doc := ID_Tmp;
      raise Exception.Create(E.Message);
    end;
  end;
  Screen.Cursor := OldCursor;
end;

procedure TFinalAct.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  if ModalResult = mrOk then
    if SaveProp then
      SendMessage(FHandle, xxx_RefrMsg, FDocParamz.ID_Doc, 0);
end;

procedure TFinalAct.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (cdsDoc.State = dsEdit) then cdsDoc.Post;
end;

destructor TFinalAct.Destroy;
begin
  SaveEhGridSettingsToRegistry(DBGridEh1, SRegPath + '\' + ClassName);
  inherited;
  BringWindowToTop(FPrntW);
end;


procedure TFinalAct.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFinalAct.btnOkClick(Sender: TObject);
begin
  if not ConfirmChanges then
    ModalResult := mrNone
  else
  begin
    ModalResult := mrOk;
    Close;
  end;
end;

function TFinalAct.ConfirmChanges: boolean;
var SL : TStringList;
    CDS : TClientDataSet;
begin
  if cdsDocWare.State in [dsEdit, dsInsert] then cdsDocWare.Post;
  Result := false;
  if not CheckData then
    Exit;
  CDS := cdsDoc;                                                 
  if CDS.State <> dsEdit then
    CDS.Edit;
  Result := true;
  if (FDocParamz.ID_Doc <> -1) then
  begin
    SL := TStringList.Create;
    try
      if (CDS.ChangeCount > 0) then
      begin
        CompareField(CDS, 'Doc_Num', '����� ���������', SL);
        CompareField(CDS, 'Doc_Date', '���� �����������', SL);

        CompareField(CDS, 'OrgName1', '�����������', SL);
        CompareField(CDS, 'Summ1', '�������������', SL);
        CompareField(CDS, 'Doc1', '���������', SL);
        CompareField(CDS, 'Post1', '���������', SL);

        CompareField(CDS, 'OrgName2', '�����������', SL);
        CompareField(CDS, 'Summ2', '�������������', SL);
        CompareField(CDS, 'Doc2', '���������', SL);
        CompareField(CDS, 'Post2', '���������', SL);

        CompareField(CDS, 'Summ', '����� ������', SL);
      end;

      if SL.Count > 0 then
        Result := MessageBox(Handle, PChar('���� �������� ��������� ������:' + #13 + #10 + SL.Text ), '����������� ���������', MB_YESNO + MB_ICONQUESTION) = idYes;
    finally
      SL.Free;
    end;
  end;
  CDS.Post;
end;

function TFinalAct.CheckData: boolean;
begin
  Result := false;
 // xxx(DBEdit1);
  CheckEmptyControl(Handle, DBDateEdit1);

  CheckEmptyControl(Handle, cbOrgName);
  CheckEmptyControl(Handle, RxDBLookupCombo1);
  CheckEmptyControl(Handle, cbAddress);
  CheckEmptyControl(Handle, edcustomer);
  CheckEmptyControl(Handle, edCusPerson);
  CheckEmptyControl(Handle, edperformer);
  with cdsDocWare do
    if IsEmpty then
    begin
      MessageBox(Handle, '�� ������� ������', '������� �� ��� ������', MB_OK + MB_ICONERROR);
      Windows.SetFocus(DBGridEh1.Handle);
      Exit;
    end;

  Result := true;
end;

procedure TFinalAct.cdsDocWareCalcFields(DataSet: TDataSet);
begin
  cdsDocWare.OnCalcFields := nil;
  try
    DataSet.FieldByName('Numb').AsInteger := DataSet.RecNo;
    if (cdsDocWarePrice0.AsVariant <> cdsDocWarePrice.AsVariant)
    and (not cdsDocWarePrice.IsNull) and (not cdsDocWarePrice0.IsNull) then
    begin
      cdsDocWareSummWare.Value := cdsDocWareAmount.Value * cdsDocWarePrice.Value * (1 + cdsDocVAT.Value / 100);
    end;
    if (cdsDocWareAmount0.AsVariant <> cdsDocWareAmount.AsVariant)
    and (not cdsDocWareAmount.IsNull) and (not cdsDocWareAmount0.IsNull) then
    begin
      cdsDocWareSummWare.Value := cdsDocWareSummWare.Value/cdsDocWareAmount0.Value * cdsDocWareAmount.Value {* (1 + cdsDocVAT.Value / 100)};
    end; 

    cdsDocWareVATVal.Value := cdsDocWareSummWare.Value * cdsDocVAT.Value / (100 + cdsDocVAT.Value);
    cdsDocWarewoVAT.Value := cdsDocWareSummWare.Value - cdsDocWareVATVal.Value;

    if cdsDocWareAmount.Value <> 0 then
      cdsDocWarePrice.Value := cdsDocWarewoVAT.Value/cdsDocWareAmount.Value;

    cdsDocWarePrice0.AsVariant := cdsDocWarePrice.AsVariant;
    cdsDocWareAmount0.AsVariant := cdsDocWareAmount.AsVariant;
  finally
    cdsDocWare.OnCalcFields := cdsDocWareCalcFields;
  end;
end;

procedure TFinalAct.FormDestroy(Sender: TObject);
begin
  SaveFormSettingsToRegistry(Self, SRegPath + '\' + ClassName);
end;

procedure TFinalAct.FormShow(Sender: TObject);
begin
  LoadFormSettingsToRegistry(Self, SRegPath + '\' + ClassName);
end;

procedure TFinalAct.DBGridEh1ColEnter(Sender: TObject);
var ACol : TColumnEh;
begin
  ACol := DBGridEh1.Columns[DBGridEh1.col];
  aCalcAmount.Enabled := not DBGridEh1.DataSource.DataSet.IsEmpty and
                         (ACol.Field is TNumericField)
                         and not ACol.ReadOnly;
end;

procedure TFinalAct.dsOperWareDataChange(Sender: TObject; Field: TField);
begin
  with (Sender as TDataSource).DataSet do
  begin
    aClearWare.Enabled := not IsEmpty;
    aDelWare.Enabled := not IsEmpty;
  //  aCalcAmount.Enabled := not IsEmpty;
  end;
end;

procedure TFinalAct.aAddWareExecute(Sender: TObject);
var ASelectedObj : TSelectedObj;
    AID, AName : OleVariant;
    EObjTypes : TEObjTypes;
begin
{$IFNDEF LC}
  Screen.Cursor := crSQLWait;
  EObjTypes := [eotGoods];
  with cdsDocWare do
  begin
    if SelectObjUnBsn(Owner, cdsDocid_business.Value, ASelectedObj, 0, EObjTypes, true) then
    begin
      Append;
      FieldByName('WareName').Value := ASelectedObj.Name;
      if DM.rsCA.AppServer.PL_WareMeasureGet(ASelectedObj.ID,
                                             AID, AName) = 1 then
      begin
        FieldByName('MesName').Value := AName;
      end;
      DBGridEh1.col := 2;
      windows.SetFocus(DBGridEh1.Handle);
      Post;
    end;
  end;
{$ENDIF}
end;

procedure TFinalAct.aDelWareExecute(Sender: TObject);
var i : integer;
    S : String;
begin
  if DBGridEh1.SelectedRows.Count > 0 then
    S := '������� ' + IntToStr(DBGridEh1.SelectedRows.Count) + ' �������?'
  else
    S := '������� ����� "' + DBGridEh1.DataSource.DataSet.FieldByName('WareName').AsString+ '"?';
  if MessageBox(Handle, PChar(S), '����������� ��������', MB_YESNO + MB_ICONQUESTION) = idYes then
  begin
    try
      if DBGridEh1.SelectedRows.Count > 0 then
      begin
        for i := 0 to DBGridEh1.SelectedRows.Count - 1 do
        begin
          DBGridEh1.DataSource.DataSet.GotoBookmark(pointer(DBGridEh1.SelectedRows.Items[i]));
          DBGridEh1.DataSource.DataSet.Delete;
        end;
      end
      else
        DBGridEh1.DataSource.DataSet.Delete;
    finally

    end;


  end;
end;

procedure TFinalAct.aClearWareExecute(Sender: TObject);
begin
  if MessageBox(Handle, PChar('�������� �������� �������?'), '����������� �������', MB_ICONWARNING + MB_YESNO + MB_DEFBUTTON2) = IDYES then
  begin
    with cdsDocWare do
    begin
      while not IsEmpty do
        Delete;
    end;
  end;
end;

procedure TFinalAct.aCalcAmountExecute(Sender: TObject);
var F : Variant;
    ACol : TColumnEh;
    S : String;
begin
  ACol := DBGridEh1.Columns[DBGridEh1.col];
  F := ACol.Field.AsFloat;
  S := ACol.Title.Caption;
  if InputBoxDigit(Handle, S + ' "' + cdsDocWareWareName.AsString + '"', ACol.Title.Caption, F) then
  begin
    with cdsDocWare do
    begin
      Edit;
      ACol.Field.AsFloat := F;
      Post;
    end;
  end;   
end;

procedure TFinalAct.miOpenClick(Sender: TObject);
begin
  MakeExport(false);
end;

procedure TFinalAct.miPrintClick(Sender: TObject);
begin
  MakeExport(true);
end;

procedure TFinalAct.MakeExport(APrint : boolean);
var
  ExcelApp, DataValues, Workbook, Column, Sheet, Cell1, Cell2, Range, V : Variant;
  i : integer;
  SSS : Extended;
  S, S2, S3 : String;
begin
//  if cdsDocWare.IsEmpty then
//    raise Exception.Create('�� ������ �� ���� �����!!!' + #13 + #10 + '����������� ����������');
  CheckExcel;
  if cdsDoc.State in [dsEdit, dsInsert] then
  begin
    cdsDocDocCurName.AsString := cdsDocCurGetListDocCurName.AsString;
    cdsDocDocCurPartName.AsString := cdsDocCurGetListDocCurPartName.AsString;
    cdsDoc.Post;
  end;
  windows.SetFocus(DBDateEdit1.Handle);
  try
    ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.visible := true;
    ExcelApp.Application.EnableEvents := false;
    ExcelApp.ScreenUpdating:= false;
    Screen.Cursor := crSQLWait;
    try
      try Workbook := ExcelApp.WorkBooks.Add(ExtractFilePath(Application.EXEName) + 'docs_templ\FinalAct.xlt');
      except
        on E : Exception do
        begin
         ShowMessage('������ ��� �������� ����� ' + #13 + #10 + E.Message);
         raise Exception.Create(E.Message);
        end;
      end;
      Sheet := ExcelApp.Workbooks[1].WorkSheets[1];

   //   Cell1 := Sheet.Cells[1, 1];
   //   Cell2 := Sheet.Cells[100, 20];
    //  Range := Sheet.Range[Cell1, Cell2];
      Range := Sheet.Cells;

      SetExcelBMVal(Range, '^Doc_NumAdv', '��� �' + cdsDocDoc_Num.AsString +
                           #10 + '�� ' + FormatDateTimeNull('dd mmmm yyyy �.', cdsDocDoc_Date.AsDateTime));
      SetExcelBMVal(Range, '^AddressAdv', '�����: ' + cdsDocAddress.DisplayText);

      SSS := StrToFloatAdv(cdsDocWareSS.AsString);
      S := '����� ������� ����� �� �����: ' + NumeralToPhraseAdv(SSS);

      SetExcelBMVal(Range, '^TotalSummAdv', S);

      SetExcelBMVal(Range, '^customerAdv', '��������: ' + cdsDoccustomer.AsString );
      SetExcelBMVal(Range, '^CusPersonAdv', '��������:________________' + cdsDocCusPerson.AsString);
      SetExcelBMVal(Range, '^performerAdv', '�����������:________________' + cdsDocperformer.AsString);

      SSS := StrToFloatAdv(cdsDocWareSS.AsString);
      SetExcelBMVal(Range, '^TotalSumm', FormatFloat('0.00', SSS));
      SetExcelBMVal(Range, '^TotalSumm2', FormatFloat('0.00', SSS));

      SSS := StrToFloatAdv(cdsDocWareAmSum.AsString);
      SetExcelBMVal(Range, '^AmSum', FormatFloat('0.00', SSS));

      SSS := StrToFloatAdv(cdsDocWareSS.AsString)*cdsDocVAT.Value/(100 + cdsDocVAT.Value);
      SetExcelBMVal(Range, '^TotalVAT', SSS);

      CDSToExcel(cdsDoc, Range);
      CDSToExcelTable(cdsDocWare, Range, '^Numb')
    finally
      ExcelApp.Visible := not APrint;
      Screen.Cursor := crDefault;
      if APrint then
      begin
        Sheet.PrintOut;
        Workbook.Close(false);
        ExcelApp.Visible := true;
        ExcelApp.Quit;
        ExcelApp := Null;
      end
      else
        ExcelApp.ScreenUpdating:= true;
    end;
  except
    on E : Exception do
    begin
      try
        Workbook.Close(false);
      except end;
      ExcelApp.Quit;
      ExcelApp := Null;
      raise Exception.Create(E.Message);
    end;
  end;
end;


procedure TFinalAct.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
var tmpCol : TColumnEh;
    S, S2 : String;
begin
  if (Key = '.') then
  begin
    S := DecimalSeparator;
    if S = ',' then S2 := '.' else S2 := ',';
    tmpCol := TDBGridEh(Sender).Columns[TDBGridEh(Sender).col];
    if (Key = S2[1]) and ((tmpCol.Field is TFloatField) or (tmpCol.Field is TBCDField)) then
      Key := S[1];
  end
  else
    if (Key = #13) then
    begin
      if TDBGridEh(Sender).DataSource.DataSet.State = dsEdit then
        TDBGridEh(Sender).DataSource.DataSet.Post
      else
      begin
        with TDBGrideh(Sender) do
          if selectedindex < (fieldcount - 1) then
            selectedindex := selectedindex + 1
          else
            selectedindex := 0;   
      end;
    end;
end;

procedure TFinalAct.BitBtn3Click(Sender: TObject);
var id_Doc_Org, OrgName, INN,
  KPP, Chif, Buh, OKPO, OKPD, Address : Variant;
begin
  id_Doc_Org := cdsDocid_Doc_Org.Value;
  if ShowSelectorDocOrg(cdsDocid_business.AsInteger, id_Doc_Org, OrgName, INN,
  KPP, Chif, Buh, OKPO, OKPD, Address) then
  begin
    cdsDoc.Edit;
    cdsDocid_Doc_Org.Value := id_Doc_Org;
    cdsDocOrgName.AsVariant := OrgName;
    cdsDocAddress.AsVariant := Address;
    cdsDoc.Post;
    DM.CDStoSL(FDocParamz.ID_Doc, RxDBCalcEdit1, 1, cdsDocid_Doc_Org.AsInteger);   
  end;
end;

procedure TFinalAct.DBGridEh1GetFooterParams(Sender: TObject; DataCol,
  Row: Integer; Column: TColumnEh; AFont: TFont; var Background: TColor;
  var Alignment: TAlignment; State: TGridDrawState; var Text: String);
begin
  if cdsDocWareSS.Value <> Null then
  begin
    if Column.Field = cdsDocWareSummWare then
      Text := FormatFloat('0.00', cdsDocWareSS.Value)
    else
      if Column.Field = cdsDocWareVATVal then
        Text := FormatFloat('0.00', cdsDocWareSS.Value* cdsDocVAT.Value / (100 + cdsDocVAT.Value))
      else
        if (Column.Field = cdsDocWarewoVAT) then
          Text := FormatFloat('0.00', cdsDocWareSS.Value - cdsDocWareSS.Value*cdsDocVAT.Value / (100 + cdsDocVAT.Value))
      ;
  end;
end;

procedure TFinalAct.SetVat;
var OldRecNo : integer;
begin
  with cdsDocWare do
  begin
    DisableControls;
    OldRecNo := RecNo;
    try
      First;
      while not Eof do
      begin
        Edit;
        cdsDocWareVAT.Value := cdsDocVAT.Value;
        Post;
        Next;
      end;
      First;
    finally
      RecNo := OldRecNo;
      EnableControls;
    end;
  end;
end;

procedure TFinalAct.cdsDocVATChange(Sender: TField);
begin
  SetVat;
end;

procedure TFinalAct.cdsDocAddressGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := DM.acsAdr(Sender);

end;

end.
