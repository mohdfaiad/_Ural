unit uDoc_DAcc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, DBClient, Mask, DBCtrls, ToolEdit, RXDBCtrl,
  RxDBComb, CurrEdit, ComObj, foMyFunc, RXCtrls, Grids, DBGridEh, Menus,
  ComCtrls, ToolWin, ImgList, ActnList, RxLookup, Buttons, ShellAPI,
  GridsEh;

type
  TDAcc = class(TForm)
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
    Label3: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    edcustomer: TDBEdit;
    Label19: TLabel;
    edPayer: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    GroupBox2: TGroupBox;
    cdsDocWare: TClientDataSet;
    cdsDocWareNumb: TIntegerField;
    cdsDocWareSS: TAggregateField;
    dsOperWare: TDataSource;
    DBGridEh1: TDBGridEh;
    cdsDocWareid_AccountWare: TAutoIncField;
    cdsDocWareid_Account: TIntegerField;
    cdsDocWareMesName: TStringField;
    cdsDocWareAmount: TFloatField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    RxSpeedButton1: TRxSpeedButton;
    ActionList1: TActionList;
    aAddWare: TAction;
    aDelWare: TAction;
    aCalcAmount: TAction;
    aClearWare: TAction;
    ilImage: TImageList;
    ToolBar3: TToolBar;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    cdsDocWareSSwoVAT: TAggregateField;
    cdsDocCurGetList: TClientDataSet;
    cdsDocCurGetListid_DocCur: TAutoIncField;
    cdsDocCurGetListDocCurName: TStringField;
    cdsDocCurGetListDocCurPartName: TStringField;
    dsDocCurGetList: TDataSource;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    cdsDocCurGetListDef: TIntegerField;
    mpWare: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    cdsDocWarewoVAT: TBCDField;
    cdsDocWareVATVal: TBCDField;
    cdsDocWareWareName: TStringField;
    cdsDocid_Account: TAutoIncField;
    cdsDocid_Oper: TIntegerField;
    cdsDocDoc_Num: TStringField;
    cdsDocDoc_Date: TDateTimeField;
    cdsDocDoc_DateCreate: TDateTimeField;
    cdsDocid_UserCreator: TIntegerField;
    cdsDocOrgName: TStringField;
    cdsDocAddress: TStringField;
    cdsDocINN: TBCDField;
    cdsDocKPP: TBCDField;
    cdsDocBank: TStringField;
    cdsDocAcc1: TStringField;
    cdsDocAcc2: TStringField;
    cdsDocChif: TStringField;
    cdsDocBuh: TStringField;
    cdsDoccustomer: TStringField;
    cdsDocPayer: TStringField;
    cdsDocid_DocCur: TIntegerField;
    cdsDocid_business: TIntegerField;
    cdsDocDisabled: TBooleanField;
    cdsDocDocCurPartName: TStringField;
    cdsDocDocCurName: TStringField;
    cdsDocid_DocCur_1: TAutoIncField;
    cdsDocDef: TBooleanField;
    cdsDocNumberCode: TStringField;
    cdsDocid_Doc_Org: TIntegerField;
    cbINN: TDBEdit;
    cbKPP: TDBEdit;
    cbOrgName: TDBEdit;
    cbAddress: TDBEdit;
    cbBIK: TDBEdit;
    cbBank: TDBEdit;
    cbAcc1: TDBEdit;
    cbAcc2: TDBEdit;
    cbChif: TDBEdit;
    cbBuh: TDBEdit;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    cdsDocVAT: TBCDField;
    cdsDocBIK: TBCDField;
    cdsDocWarePrice: TBCDField;
    cdsDocWarePrice0: TBCDField;
    cdsDocWareSummWare: TBCDField;
    RxDBCalcEdit1: TRxDBComboBox;
    Label6: TLabel;
    cdsDocWareAmount0: TFloatField;
    cdsDocWareVAT: TBCDField;
    RxDBCalcEdit2: TRxDBCalcEdit;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure cdsDocWareCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure dsOperWareDataChange(Sender: TObject; Field: TField);
    procedure DBGridEh1ColEnter(Sender: TObject);
    procedure aAddWareExecute(Sender: TObject);
    procedure aDelWareExecute(Sender: TObject);
    procedure aClearWareExecute(Sender: TObject);
    procedure aCalcAmountExecute(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGridEh1GetFooterParams(Sender: TObject; DataCol,
      Row: Integer; Column: TColumnEh; AFont: TFont;
      var Background: TColor; var Alignment: TAlignment;
      State: TGridDrawState; var Text: String);
    procedure cdsDocVATChange(Sender: TField);
    procedure Button1Click(Sender: TObject);
    procedure cdsDocAddressGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsDocINNGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsDocKPPGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    FHandle : HWnd;
    FDocParamz : TDocParamz;
    function CheckData: boolean;
    function ConfirmChanges: boolean;
    procedure MakeExport(APrint: boolean);
    function GetVATCol: TColumnEh;
    procedure Doc_OrgBankGetDef(id_Doc_Org: integer);
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
  DAcc: TDAcc;

  procedure ShowDAcc(AHandle : HWnd; ADocParamz : TDocParamz;
                   AcdsOper : TClientDataSet = nil;
                   AcdsWare : TClientDataSet = nil);
implementation

uses uDM, foMyFuncEh, {$IFNDEF LC} uUnivSelector , {$ENDIF}uInputBoxDigit, NumTools,
  uSelectorDocOrg, uSelectorDocOrgBank;

procedure ShowDAcc(AHandle : HWnd; ADocParamz : TDocParamz;
                   AcdsOper : TClientDataSet;
                   AcdsWare : TClientDataSet);
var F : TDAcc;
begin
  DM.Rights_GetUserRights(26, Null);
  F := TDAcc.Create(nil);
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

constructor TDAcc.Create(AOwner: TComponent);
begin
  inherited;
  SetWindowLong(Handle, GWL_HWNDPARENT, 0);
  LoadEhGridSettingsFromRegistry(DBGridEh1, SRegPath + '\' + ClassName);
end;

procedure TDAcc.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle:=(Params.ExStyle or WS_EX_APPWINDOW);

end;

procedure TDAcc.initialize(ADocParamz : TDocParamz;
                   AcdsOper : TClientDataSet;
                   AcdsWare : TClientDataSet);
var Val : Variant;
    NeedOpen, VATIn : boolean;
    OrgName, INN,
  KPP, Chif, Buh, OKPO, OKPD, Address, id_Doc_Org: OleVariant;
  xDate: TDateTime; xNum: String;
begin
  FPrntW := GetControlFormHHH(AcdsOper);
//  cdsDocWare.OnCalcFields := nil;
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
    Params.ParamByName('@id_Account').AsInteger := FDocParamz.id_Doc;
    Open;
  end;
  with cdsDocWare do
  begin
    Close;
    Params.ParamByName('@id_Account').AsInteger := FDocParamz.id_Doc;
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
        cdsDocid_business.Value := FieldByName('id_business').Value;
        cdsDoccustomer.AsString := FieldByName('ReprName').AsString;
        cdsDocPayer.AsString := FieldByName('ReprName').AsString;
        if not FieldByName('Id_CurrencySys').IsNull then
          cdsDocid_DocCur.AsInteger := FieldByName('Id_CurrencySys').AsInteger
        else
          cdsDocid_DocCur.AsInteger := FieldByName('Id_CurrencyOper').AsInteger;
      finally
        if NeedOpen then Close;
      end;
    end;
    cdsDocDoc_Num.AsVariant := DM.rsCA.AppServer.GetDoc_Num2(2, cdsDocid_business.Value);
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
          cdsDocWareWareName.Value := FieldByName('WareName').Value;
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
    Caption := '����� ����';
  end
  else
  begin
    Caption := '���� �' + cdsDocDoc_Num.AsString;
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
      cdsDocINN.AsVariant := INN;
      cdsDocKPP.AsVariant := KPP;
      cdsDocChif.AsVariant := Chif;
      cdsDocBuh.AsVariant := Buh;

      cdsDoc.Post;
      Doc_OrgBankGetDef(id_Doc_Org);
    end;

  DM.cdsDocCurGetListOpen(cdsDocCurGetList, RxDBLookupCombo1, cdsDocid_business.Value, FDocParamz.ID_Doc,
                          cdsDocid_DocCur.AsInteger); 
 // DM.ColumnGetData(GetVATCol, cdsDocid_Doc_Org.AsInteger, FDocParamz.ID_Doc);
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
//  cdsDocWare.OnCalcFields := cdsDocWareCalcFields;
end;

function TDAcc.GetVATCol: TColumnEh;
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

function TDAcc.SaveProp: boolean;
var ID_Tmp, id_Oper: Integer;
    Doc_Num, Doc_Date,
    BIK, id_UserCreator, INN, Payer, Chif, Buh, customer, Bank,
  Acc1, Acc2, OrgName, Address, KPP, VAT: OleVariant;
    OldCursor : TCursor;
    id_DocCur, id_Doc_Org : integer;

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

    BIK := fieldByName('BIK').Value;
    INN := fieldByName('INN').Value;
    Payer := fieldByName('Payer').Value;
    Chif  := fieldByName('Chif').Value;
    Buh := fieldByName('Buh').Value;
    customer := fieldByName('customer').Value;
    Bank := fieldByName('Bank').Value;
    Acc1 := fieldByName('Acc1').Value;
    Acc2 := fieldByName('Acc2').Value;
    OrgName := fieldByName('OrgName').Value;
    Address := fieldByName('Address').Value;
    KPP := fieldByName('KPP').Value;
    id_Doc_Org := fieldByName('id_Doc_Org').AsInteger;
    VAT := fieldByName('VAT').Value;

    id_UserCreator := fieldByName('id_UserCreator').Value;
  end;

  BeginTruns(DM.rsCA);
  try
    ID_Tmp := DM.rsCA.AppServer.Doc_AccountEdit(FDocParamz.ID_Doc, id_Oper, Doc_Num,
            Doc_Date, BIK, id_UserCreator, INN, Payer, Chif, Buh, customer, Bank,
            Acc1, Acc2, OrgName, Address, KPP, id_DocCur, id_Doc_Org, VAT);

    if ID_Tmp = -1 then
      raise Exception.Create('������ ��� ���������� �������');
    if FDocParamz.ID_Doc = -1 then
      FDocParamz.ID_Doc := ID_Tmp;
    if not CDSApplyUpdates(cdsDocWare, 'id_Account', FDocParamz.ID_Doc, true) then
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

procedure TDAcc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  if ModalResult = mrOk then
    if SaveProp then
      SendMessage(FHandle, xxx_RefrMsg, FDocParamz.ID_Doc, 0);
end;

procedure TDAcc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (cdsDoc.State = dsEdit) then cdsDoc.Post;
end;

destructor TDAcc.Destroy;
begin
  SaveEhGridSettingsToRegistry(DBGridEh1, SRegPath + '\' + ClassName);
  inherited;
  BringWindowToTop(FPrntW);
end;


procedure TDAcc.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TDAcc.btnOkClick(Sender: TObject);
begin
  if not ConfirmChanges then
    ModalResult := mrNone
  else
  begin
    ModalResult := mrOk;
    Close;
  end;
end;

function TDAcc.ConfirmChanges: boolean;
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

function TDAcc.CheckData: boolean;
begin
  Result := false;

  CheckEmptyControl(Handle,DBDateEdit1);

  CheckEmptyControl(Handle, cbOrgName);
  CheckEmptyControl(Handle, cbAddress);
  CheckEmptyControl(Handle, cbINN);
  CheckEmptyControl(Handle, cbKPP);
  CheckEmptyControl(Handle, cbBIK);

  CheckEmptyControl(Handle, cbBank);
  CheckEmptyControl(Handle, cbAcc1);
  CheckEmptyControl(Handle, cbAcc2);
  CheckEmptyControl(Handle, edcustomer);
  CheckEmptyControl(Handle, edPayer);

  CheckEmptyControl(Handle, cbBuh);
  CheckEmptyControl(Handle, cbChif);
  with cdsDocWare do
    if IsEmpty then
    begin
      MessageBox(Handle, '�� ������� ������', '������� �� ��� ������', MB_OK + MB_ICONERROR);
      Windows.SetFocus(DBGridEh1.Handle);
      Exit;
    end;
  Result := true;
end;

procedure TDAcc.cdsDocWareCalcFields(DataSet: TDataSet);
begin
  cdsDocWare.OnCalcFields := nil;
  try
    DataSet.FieldByName('Numb').AsInteger := DataSet.RecNo;
    if (cdsDocWarePrice0.AsVariant <> cdsDocWarePrice.AsVariant)
    and (not cdsDocWarePrice.IsNull) and (not cdsDocWarePrice0.IsNull) then
    begin
      cdsDocWareSummWare.Value := cdsDocWareAmount.Value * cdsDocWarePrice.Value{ * (1 + cdsDocVAT.Value / 100)};
    end;
    if (cdsDocWareAmount0.AsVariant <> cdsDocWareAmount.AsVariant)
    and (not cdsDocWareAmount.IsNull) and (not cdsDocWareAmount0.IsNull) then
    begin
      cdsDocWareSummWare.Value := cdsDocWareSummWare.Value/cdsDocWareAmount0.Value * cdsDocWareAmount.Value{ * (1 + cdsDocVAT.Value / 100)};
    end; 

    cdsDocWareVATVal.Value := cdsDocWareSummWare.Value * cdsDocVAT.Value / (100 + cdsDocVAT.Value);
    cdsDocWarewoVAT.Value := cdsDocWareSummWare.Value - cdsDocWareVATVal.Value;

    if cdsDocWareAmount.Value <> 0 then
      cdsDocWarePrice.Value := cdsDocWareSummWare.Value/cdsDocWareAmount.Value;

    cdsDocWarePrice0.AsVariant := cdsDocWarePrice.AsVariant;
    cdsDocWareAmount0.AsVariant := cdsDocWareAmount.AsVariant;
  finally
    cdsDocWare.OnCalcFields := cdsDocWareCalcFields;
  end;
end;

procedure TDAcc.FormDestroy(Sender: TObject);
begin
  SaveFormSettingsToRegistry(Self, SRegPath + '\' + ClassName);
end;

procedure TDAcc.FormShow(Sender: TObject);
begin
  LoadFormSettingsToRegistry(Self, SRegPath + '\' + ClassName);
end;

procedure TDAcc.MakeExport(APrint : boolean);
var
  ExcelApp, DataValues, Workbook, Sheet, Range//, Column, Cell1, Cell2, V
  : Variant;
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
      try Workbook := ExcelApp.WorkBooks.Add(ExtractFilePath(Application.EXEName) + 'docs_templ\DAcc.xlt');
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

      SetExcelBMVal(Range, '^Doc_NumAdv', '���� �' + cdsDocDoc_Num.AsString +
                           ' �� ' + FormatDateTimeNull('dd mmmm yyyy �.', cdsDocDoc_Date.AsDateTime));
      SetExcelBMVal(Range, '^AddressAdv', '�����: ' + cdsDocAddress.DisplayText);
      SetExcelBMVal(Range, '^KPPAdv', '���: ' + cdsDocKPP.DisplayText);
      SetExcelBMVal(Range, '^TotalAmount', '����� ������������: ' +
                           IntToStr(cdsDocWare.RecordCount) + ' �� �����');

      SSS := StrToFloatAdv(cdsDocWareSS.AsString);

      S := NumeralToPhraseAdv(SSS);
      SetExcelBMVal(Range, '^TotalSummAdv', S);

      SetExcelBMVal(Range, '^ChifAdv', '(' + cdsDocChif.AsString + ')');
      SetExcelBMVal(Range, '^BuhAdv', '(' + cdsDocBuh.AsString + ')');

      SSS := StrToFloatAdv(cdsDocWareSS.AsString)*cdsDocVAT.Value/(100 + cdsDocVAT.Value);
      SetExcelBMVal(Range, '^TotalVAT', SSS);

      SetExcelBMVal(Range, '^customerAdv', '��������: ' + cdsDoccustomer.AsString);
      SetExcelBMVal(Range, '^PayerAdv', '����������: ' + cdsDocPayer.AsString);

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

procedure TDAcc.N1Click(Sender: TObject);
begin
  MakeExport(false);
end;

procedure TDAcc.N2Click(Sender: TObject);
begin
  MakeExport(true);
end;

procedure TDAcc.dsOperWareDataChange(Sender: TObject; Field: TField);
begin
  with (Sender as TDataSource).DataSet do
  begin
    aClearWare.Enabled := not IsEmpty;
    aDelWare.Enabled := not IsEmpty;
 //   aCalcAmount.Enabled := not IsEmpty;
  end;
end;

procedure TDAcc.DBGridEh1ColEnter(Sender: TObject);
var ACol : TColumnEh;
begin
  ACol := DBGridEh1.Columns[DBGridEh1.col];
  aCalcAmount.Enabled := not DBGridEh1.DataSource.DataSet.IsEmpty and
                         (ACol.Field is TNumericField)
                         and not ACol.ReadOnly;

end;

procedure TDAcc.aAddWareExecute(Sender: TObject);
var ASelectedObj : TSelectedObj;
    AID, AName : OleVariant;
    EObjTypes : TEObjTypes;
begin
{$IFNDEF LC}
  if cdsDocid_business.Value = Null then Exit;
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

procedure TDAcc.aDelWareExecute(Sender: TObject);
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

procedure TDAcc.aClearWareExecute(Sender: TObject);
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

procedure TDAcc.aCalcAmountExecute(Sender: TObject);
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

procedure TDAcc.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
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

procedure TDAcc.BitBtn3Click(Sender: TObject);
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
    cdsDocINN.AsVariant := INN;
    cdsDocKPP.AsVariant := KPP;
    cdsDocChif.AsVariant := Chif;
    cdsDocBuh.AsVariant := Buh;


    cdsDoc.Post;
    Doc_OrgBankGetDef(id_Doc_Org);
    DM.CDStoSL(FDocParamz.ID_Doc, RxDBCalcEdit1, 1, cdsDocid_Doc_Org.AsInteger);   
  end;
end;

procedure TDAcc.Doc_OrgBankGetDef(id_Doc_Org : integer);
var Bank, BIK, Acc, CorrAcc: OleVariant;
begin
  if DM.rsCA.AppServer.Doc_OrgBankGetDef(id_Doc_Org, Bank, BIK, Acc, CorrAcc) = 1 then
  begin
    cdsDoc.Edit;
    cdsDocBank.AsVariant := Bank;
    cdsDocBIK.AsVariant := BIK;
    cdsDocAcc1.AsVariant := Acc;
    cdsDocAcc2.AsVariant := CorrAcc;
    cdsDoc.Post;
  end;
end;

procedure TDAcc.BitBtn1Click(Sender: TObject);
var Bank, BIK, Acc, CorrAcc: Variant;
begin
  if ShowSelectorDocOrgBank(cdsDocid_Doc_Org.AsInteger, Bank, BIK, Acc, CorrAcc)  then
  begin
    cdsDoc.Edit;
    cdsDocBank.AsVariant := Bank;
    cdsDocBIK.AsVariant := BIK;
    cdsDocAcc1.AsVariant := Acc;
    cdsDocAcc2.AsVariant := CorrAcc;
    cdsDoc.Post;
  end;
end;

procedure TDAcc.DBGridEh1GetFooterParams(Sender: TObject; DataCol,
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

procedure TDAcc.SetVat;
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


procedure TDAcc.cdsDocVATChange(Sender: TField);
begin
  SetVat;
end;


  procedure SetExcelBMVal_X(AMarkName, AText : String; AStringList : TStrings);
  begin
    AStringList.Text := StringReplace(AStringList.Text, AMarkName, AText, [rfReplaceAll, rfIgnoreCase]);
  end;


procedure CDSToStringList_X(CDS : TClientDataSet; AStringList : TStrings);
var i, j : integer;
    AField : TField;
    function GetFVal : String;
    var S : String;
    begin
      if AField is TBCDField then
      begin
        if TBCDField(AField).Size = 0 then
        begin
          S := AField.AsString;
          if UpperCase(AField.FieldName) = 'BIK' then
          begin
            if Length(S) < 9 then
              S := StringOfChar('0', 9 - Length(S)) + S;
          end;
          Result := S;
        end
        else
          Result := FormatFloat('0.00', AField.AsCurrency);
      end
      else
      if AField is TStringField then
      begin
        Result := AField.AsString;
      end
      else
      if AField is TDateTimeField then
      begin
        if AField.IsNull then
          Result := ''
        else
          Result := FormatDateTime('', AField.AsDateTime);
      end
      else
        Result := AField.AsString;
    end;
begin
  for i := 0 to CDS.Fields.Count - 1 do
  begin
    AField := CDS.Fields[i];
    SetExcelBMVal_X('^' + AField.FieldName, GetFVal, AStringList);
  end;
end;

procedure TDAcc.Button1Click(Sender: TObject);
var S, SP : String;
    SL : TStringList;
    SSS : Extended;
begin
  SP := ExtractFilePath(Application.EXEName) + 'docs_templ\acc.htm';
  SL := TStringList.Create;
  try
   SL.LoadFromFile(SP);
   SP := ExtractFilePath(Application.EXEName) + 'docs_templ\acc_1.htm';

         SL.Text := StringReplace(SL.Text, '^OrgName', cdsDocOrgName.AsString, [rfReplaceAll, rfIgnoreCase]);
   SL.Text := StringReplace(SL.Text, '^OrgName2', cdsDocOrgName.AsString, [rfReplaceAll, rfIgnoreCase]);
   SL.Text := StringReplace(SL.Text, '^Numb', '1', [rfReplaceAll, rfIgnoreCase]);
   SL.Text := StringReplace(SL.Text, '^WareName', cdsDocWareWareName.AsString, [rfReplaceAll, rfIgnoreCase]);
   SL.Text := StringReplace(SL.Text, '^MesName', cdsDocWareMesName.AsString, [rfReplaceAll, rfIgnoreCase]);
   SL.Text := StringReplace(SL.Text, '^Amount', '1', [rfReplaceAll, rfIgnoreCase]);
   SL.Text := StringReplace(SL.Text, '^Price', FormatFloat('0.00', cdsDocWarePrice.AsFloat), [rfReplaceAll, rfIgnoreCase]);
   SL.Text := StringReplace(SL.Text, '^SummWare', FormatFloat('0.00', cdsDocWarePrice.AsFloat), [rfReplaceAll, rfIgnoreCase]);


      SetExcelBMVal_X( '^TotalAmount', '����� ������������: ' +
                           IntToStr(cdsDocWare.RecordCount) + ' �� �����', SL);


      SetExcelBMVal_X('^Doc_NumAdv', '���� �' + cdsDocDoc_Num.AsString +
                           ' �� ' + FormatDateTimeNull('dd mmmm yyyy �.', cdsDocDoc_Date.AsDateTime), SL);
      SetExcelBMVal_X('^AddressAdv', '�����: ' + cdsDocAddress.AsString, SL);
      SetExcelBMVal_X('^KPPAdv', '���: ' + cdsDocKPP.AsString, SL);
      SetExcelBMVal_X('^TotalAmount', '����� ������������: ' +
                           IntToStr(cdsDocWare.RecordCount) + ' �� �����', SL);

      SSS := StrToFloatAdv(cdsDocWareSS.AsString);

      S := NumeralToPhraseAdv(SSS);
      SetExcelBMVal_X('^TotalSummAdv', S, SL);

      SetExcelBMVal_X('^ChifAdv', '(' + cdsDocChif.AsString + ')', SL);
      SetExcelBMVal_X('^BuhAdv', '(' + cdsDocBuh.AsString + ')', SL);

      SSS := StrToFloatAdv(cdsDocWareSS.AsString)*cdsDocVAT.Value/(100 + cdsDocVAT.Value);
      if SSS = 0 then
        S := '��� ���'
      else
        S := FormatFloat('0.00', SSS);

      SetExcelBMVal_X('^TotalVAT', S, SL);

      SetExcelBMVal_X('^customerAdv', '��������: ' + cdsDoccustomer.AsString, SL);
      SetExcelBMVal_X('^PayerAdv', '����������: ' + cdsDocPayer.AsString, SL);



   CDSToStringList_X(cdsDoc, SL);

   SL.SaveToFile(SP);
   ShellExecute(Application.Handle, 'open', PChar(SP), nil, nil, 0);
  finally
    SL.Free;
  end;

end;

procedure TDAcc.cdsDocAddressGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := DM.acsAdr(Sender);
end;

procedure TDAcc.cdsDocINNGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := DM.acsINN(Sender);
end;

procedure TDAcc.cdsDocKPPGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := DM.acsKPP(Sender);
end;

end.
