unit uDoc_WHOrd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, DBClient, Mask, DBCtrls, ToolEdit, RXDBCtrl,
  RxDBComb, CurrEdit, ComObj, foMyFunc, RXCtrls, Grids, DBGridEh, Menus,
  ComCtrls, ToolWin, ImgList, ActnList, RxLookup, Buttons, GridsEh;

type
  TDoc_WHOrd = class(TForm)
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
    Label14: TLabel;
    Label19: TLabel;
    edPayer: TDBEdit;
    GroupBox2: TGroupBox;
    cdsDocWare: TClientDataSet;
    dsOperWare: TDataSource;
    DBGridEh1: TDBGridEh;
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
    mpWare: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    edExpeditor: TDBEdit;
    cdsDocWareid_WHOrdWare: TAutoIncField;
    cdsDocWareid_WHOrd: TIntegerField;
    cdsDocWareWareName: TStringField;
    cdsDocWareMesName: TStringField;
    cdsDocWareAmount: TFloatField;
    cdsDocid_WHOrd: TAutoIncField;
    cdsDocid_Doc_Org: TIntegerField;
    cdsDocid_Oper: TIntegerField;
    cdsDocDoc_Num: TStringField;
    cdsDocDoc_Date: TDateTimeField;
    cdsDocDoc_DateCreate: TDateTimeField;
    cdsDocid_UserCreator: TIntegerField;
    cdsDocPayer: TStringField;
    cdsDocExpeditor: TStringField;
    cdsDocOpComment: TStringField;
    cdsDocid_DocCur: TIntegerField;
    cdsDocid_business: TIntegerField;
    cdsDocTotalAmount_Pack: TIntegerField;
    cdsDocTotalAmount_Box: TIntegerField;
    cdsDocDisabled: TBooleanField;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    cdsDocWareNumb: TIntegerField;
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
  private
    FHandle : HWnd;
    FDocParamz : TDocParamz;
    function CheckData: boolean;
    function ConfirmChanges: boolean;
    procedure MakeExport(APrint: boolean);
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
  Doc_WHOrd: TDoc_WHOrd;

  procedure ShowWHOrd(AHandle : HWnd; ADocParamz : TDocParamz;
                   AcdsOper : TClientDataSet = nil;
                   AcdsWare : TClientDataSet = nil);
implementation

uses uDM, foMyFuncEh, {$IFNDEF LC}uUnivSelector,{$ENDIF} uInputBoxDigit, NumTools,
  uSelectorDocOrg, uSelectorDocOrgBank;

procedure ShowWHOrd(AHandle : HWnd; ADocParamz : TDocParamz;
                   AcdsOper : TClientDataSet;
                   AcdsWare : TClientDataSet);
var F : TDoc_WHOrd;
begin
  DM.Rights_GetUserRights(26, Null);
  F := TDoc_WHOrd.Create(nil);
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

constructor TDoc_WHOrd.Create(AOwner: TComponent);
begin
  inherited;
  SetWindowLong(Handle, GWL_HWNDPARENT, 0);
  LoadEhGridSettingsFromRegistry(DBGridEh1, SRegPath + '\' + ClassName);
end;

procedure TDoc_WHOrd.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle:=(Params.ExStyle or WS_EX_APPWINDOW);

end;

procedure TDoc_WHOrd.initialize(ADocParamz : TDocParamz;
                   AcdsOper : TClientDataSet;
                   AcdsWare : TClientDataSet);
var Val : Variant;
    NeedOpen : boolean;
    OperVid : integer;
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

  with cdsDoc do
  begin
    Close;
    Params.ParamByName('@id_WHOrd').AsInteger := FDocParamz.id_Doc;
    Open;
  end;
  with cdsDocWare do
  begin
    Close;
    Params.ParamByName('@id_WHOrd').AsInteger := FDocParamz.id_Doc;
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
        cdsDocid_business.Value := FieldByName('id_business').Value;
        cdsDocPayer.AsString := FieldByName('ReprName').AsString;
        cdsDocOpComment.AsString := FieldByName('OpComment').AsString;
  if AcdsWare = nil then
  begin
    if DM.FFF201 and (AcdsOper.FieldByName('OperVid').AsInteger = 201) then
    begin
      AcdsWare := DM.cdsOperWare201;
      AcdsWare.Params.ParamByName('@Mode').Value := 1;
    end
    else
      AcdsWare := DM.cdsOperWare;
  end;

      finally
        if NeedOpen then Close;
      end;
    end;
    cdsDocDoc_Num.AsVariant := DM.rsCA.AppServer.GetDoc_Num2(9, cdsDocid_business.Value);
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
          cdsDocWareMesName.AsVariant := DM.GetLeftText(FieldByName('MeasureName').Value);

          if AcdsWare.FindField('AmountOperBaseMS_1') <> nil then
            cdsDocWareAmount.AsVariant := FieldByName('AmountOper').AsFloat - FieldByName('AmountOperBaseMS_1').AsFloat
          else
            cdsDocWareAmount.AsVariant := FieldByName('AmountOper').Value;

          cdsDocWare.Post;

          Next;
        end;
        DM.TrimCDS(cdsDocWareAmount);
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
    Caption := '����� ������ �� �����';
  end
  else
  begin
    Caption := '������ �� ����� �' + cdsDocDoc_Num.AsString;
  end;
  if FDocParamz.ReadOnly then
    Caption := Caption + ', ������ ������';

//  cdsDocWare.OnCalcFields := cdsDocWareCalcFields;
end;

function TDoc_WHOrd.SaveProp: boolean;
var ID_Tmp, id_Oper: Integer;
    id_Doc_Org, 
  Doc_Num, Doc_Date, id_UserCreator, Payer, Expeditor, OpComment,
  id_DocCur, TotalAmount_Pack, TotalAmount_Box, id_business: OleVariant;
  OldCursor : TCursor;
begin
  if FDocParamz.ReadOnly or ((cdsDoc.ChangeCount = 0) and  (cdsDocWare.ChangeCount = 0)) then Exit;
  ID_Tmp := FDocParamz.ID_Doc;
  OldCursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;
  Result := false;
  with cdsDoc do
  begin
    id_DocCur := Null;
    id_Oper := fieldByName('id_Oper').AsInteger;
    Doc_Num := fieldByName('Doc_Num').Value;
    Doc_Date := fieldByName('Doc_Date').Value;
    id_UserCreator := fieldByName('id_UserCreator').Value;
    id_Doc_Org := -1;
    
    Payer := fieldByName('Payer').Value;
    Expeditor := fieldByName('Expeditor').Value;
    OpComment := fieldByName('OpComment').Value;
    
    TotalAmount_Pack  := fieldByName('TotalAmount_Pack').Value;
    TotalAmount_Box := fieldByName('TotalAmount_Box').Value;
    id_business := fieldByName('id_business').Value;
  end;

 // BeginTruns(DM.rsCA);
  try
    ID_Tmp := DM.rsCA.AppServer.Doc_WHOrdEdit(FDocParamz.ID_Doc, id_Doc_Org, id_Oper,
                Doc_Num, Doc_Date, id_UserCreator, Payer, Expeditor, OpComment,
                id_DocCur, TotalAmount_Pack, TotalAmount_Box, id_business);

    if ID_Tmp = -1 then
      raise Exception.Create('������ ��� ���������� �������');
    if FDocParamz.ID_Doc = -1 then
      FDocParamz.ID_Doc := ID_Tmp;
    if not CDSApplyUpdates(cdsDocWare, 'id_WHOrd', FDocParamz.ID_Doc, true) then
      raise Exception.Create('������ ��� ���������� ������� �������');
  //  CommitTrans(DM.rsCA);
    Result := true;
  except
    on E : Exception do
    begin
      Screen.Cursor := OldCursor;
 //     RollbackTrans(DM.rsCA);
      FDocParamz.ID_Doc := ID_Tmp;
      raise Exception.Create(E.Message);
    end;
  end;
  Screen.Cursor := OldCursor;
end;

procedure TDoc_WHOrd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  if ModalResult = mrOk then
    if SaveProp then
      SendMessage(FHandle, xxx_RefrMsg, FDocParamz.ID_Doc, 0);
end;

procedure TDoc_WHOrd.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (cdsDoc.State = dsEdit) then cdsDoc.Post;
end;

destructor TDoc_WHOrd.Destroy;
begin
  SaveEhGridSettingsToRegistry(DBGridEh1, SRegPath + '\' + ClassName);
  inherited;
  BringWindowToTop(FPrntW);
end;


procedure TDoc_WHOrd.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TDoc_WHOrd.btnOkClick(Sender: TObject);
begin
  if DBDateEdit1.date = 0 then
  begin
    MessageBox(Handle, '�� ������� ���� ��������', '', MB_OK + MB_ICONERROR);
    Windows.SetFocus(DBDateEdit1.Handle);
    ModalResult := mrNone;
    Exit;
  end;

  if not ConfirmChanges then
    ModalResult := mrNone
  else
  begin
    ModalResult := mrOk;
    Close;
  end;
end;

function TDoc_WHOrd.ConfirmChanges: boolean;
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

function TDoc_WHOrd.CheckData: boolean;
begin
  Result := false;

  CheckEmptyControl(Handle,DBDateEdit1);

  CheckEmptyControl(Handle, edPayer);
  with cdsDocWare do
    if IsEmpty then
    begin
      MessageBox(Handle, '�� ������� ������', '������� �� ��� ������', MB_OK + MB_ICONERROR);
      Windows.SetFocus(DBGridEh1.Handle);
      Exit;
    end;
  Result := true;
end;

procedure TDoc_WHOrd.cdsDocWareCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('Numb').AsInteger := DataSet.RecNo;
end;

procedure TDoc_WHOrd.FormDestroy(Sender: TObject);
begin
  SaveFormSettingsToRegistry(Self, SRegPath + '\' + ClassName);
end;

procedure TDoc_WHOrd.FormShow(Sender: TObject);
begin
  LoadFormSettingsToRegistry(Self, SRegPath + '\' + ClassName);
end;

procedure TDoc_WHOrd.MakeExport(APrint : boolean);
var
  ExcelApp, DataValues, Workbook, Column, Sheet, Cell1, Cell2, Range, V : Variant;
  i : integer;
  SSS : Extended;
  S, S2, S3 : String;
  ACanvas : TCanvas;
begin
 // if cdsDocWare.IsEmpty then
 //   raise Exception.Create('�� ������ �� ���� �����!!!' + #13 + #10 + '����������� ����������');
  CheckExcel;
  if cdsDoc.State in [dsEdit, dsInsert] then
  begin
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
      try Workbook := ExcelApp.WorkBooks.Add(ExtractFilePath(Application.EXEName) + 'docs_templ\WHOrd.xlt');
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

      SetExcelBMVal(Range, '^Doc_NumAdv', '������ �� ����� �' + cdsDocDoc_Num.AsString +
                           ' �� ' + FormatDateTimeNull('dd mmmm yyyy �.', Now));
      SetExcelBMVal(Range, '^TotalAmount', '����� ������������: ' +
                           IntToStr(cdsDocWare.RecordCount));

      SetExcelBMVal(Range, '^PayerAdv', '����������: ' + cdsDocPayer.AsString);
      SetExcelBMVal(Range, '^DateAdv', '���� ��������: ' + FormatDateTimeNull('dd mmmm yyyy �.', cdsDocDoc_Date.AsDateTime) + ', ' + DayOfWeekName(cdsDocDoc_Date.AsDateTime));
      SetExcelBMVal(Range, '^User', '��������: ' + DM.FullFIO);
      if (cdsDocExpeditor.AsString) <> '' then
        SetExcelBMVal(Range, '^ExpeditorAdv', '����������: ' + (cdsDocExpeditor.AsString))
      else
        SetExcelBMVal(Range, '^ExpeditorAdv', '����������:_______________________________________________');

      ACanvas := TCanvas.Create;
      try
        ACanvas.Handle := GetDC(0);

        SetExcelBMVal(Range, '^OpComment', '�����������: ' + #10 + StringReplace(cdsDocOpComment.AsString, #13, '', [rfReplaceAll, rfIgnoreCase]) , ACanvas);
      finally
        ACanvas.Free;
      end;
      
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

procedure TDoc_WHOrd.N1Click(Sender: TObject);
begin
  MakeExport(false);
end;

procedure TDoc_WHOrd.N2Click(Sender: TObject);
begin
  MakeExport(true);
end;

procedure TDoc_WHOrd.dsOperWareDataChange(Sender: TObject; Field: TField);
begin
  with (Sender as TDataSource).DataSet do
  begin
    aClearWare.Enabled := not IsEmpty;
    aDelWare.Enabled := not IsEmpty;
  //  aCalcAmount.Enabled := not IsEmpty;
  end;
end;

procedure TDoc_WHOrd.DBGridEh1ColEnter(Sender: TObject);
var ACol : TColumnEh;
begin
  ACol := DBGridEh1.Columns[DBGridEh1.col];
  aCalcAmount.Enabled := not DBGridEh1.DataSource.DataSet.IsEmpty and
                         (ACol.Field is TNumericField)
                         and not ACol.ReadOnly;

end;

procedure TDoc_WHOrd.aAddWareExecute(Sender: TObject);
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
  end; {$ENDIF}
end;

procedure TDoc_WHOrd.aDelWareExecute(Sender: TObject);
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

procedure TDoc_WHOrd.aClearWareExecute(Sender: TObject);
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

procedure TDoc_WHOrd.aCalcAmountExecute(Sender: TObject);
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

procedure TDoc_WHOrd.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
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

end.
