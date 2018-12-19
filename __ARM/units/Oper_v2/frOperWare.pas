unit frOperWare;

interface

uses  
  Windows, ImgList, Controls, DBSumLst, Db, DBClient, frExtDataVal,
  StdCtrls, Grids, DBGridEh, DBCtrls, RxLookup, frCurSelector, Buttons,
  Mask, ExtCtrls, Forms, ComCtrls, Classes, graphics, Sysutils,
  ActnList, ToolWin, RXCtrls, Registry, Menus, RXSplit, foMyFunc, frArc,
  GridsEh;

type
  TCustomGridxxx = class(TDBGridEh)
  end;
  TfOperWare = class(TFrame)
    cdsOperFin: TClientDataSet;
    dsOperFin: TDataSource;
    PageControl1: TPageControl;
    tsData: TTabSheet;
    tsComment: TTabSheet;
    P1: TPanel;
    lbReprName: TLabel;
    Label3: TLabel;
    edReprName: TDBEdit;
    BitBtn4: TBitBtn;
    cbOperTypeIn: TComboBox;
    Label9: TLabel;
    P4: TPanel;
    lbSrcName: TLabel;
    DBEdit3: TDBEdit;
    BitBtn1: TBitBtn;
    cdsFormal: TClientDataSet;
    cdsFormalid_FormalDistrib: TAutoIncField;
    cdsFormalName: TStringField;
    dsFormal: TDataSource;
    dsFunc: TDataSource;
    cdsFunc: TClientDataSet;
    cdsFuncid_FuncDistrib: TAutoIncField;
    cdsFuncName: TStringField;
    Label19: TLabel;
    DBEdit12: TDBEdit;
    Label6: TLabel;
    DBEdit13: TDBEdit;
    P_FF: TPanel;
    Label8: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    lcFormalDistrib: TRxDBLookupCombo;
    lcFuncDistrib: TRxDBLookupCombo;
    cbKoef: TComboBox;
    DBEdit8: TDBEdit;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edContract: TDBEdit;
    edImp_PayBasic: TDBEdit;
    edAccInv_PayAssignment: TDBEdit;
    gbWare: TGroupBox;
    fCurSelector1: TfCurSelector;
    cdsOperWare: TClientDataSet;
    dsOperWare: TDataSource;
    cdsOperWareid_OperWare: TAutoIncField;
    cdsOperWareid_Oper: TIntegerField;
    cdsOperWareid_Measure: TIntegerField;
    cdsOperWareid_Goods: TIntegerField;
    cdsOperWareMeasureName: TStringField;
    cdsOperWareRealKoef: TFloatField;
    cdsOperWareAmountOperBaseMS: TFloatField;
    cdsOperWareWareName: TStringField;
    cdsOperWareWareID_Main: TIntegerField;
    cdsOperWareSummOper2: TFloatField;
    cdsOperWareNumb: TIntegerField;
    ilImage: TImageList;
    DBGridEh1: TDBGridEh;
    ActionList1: TActionList;
    aAddWare: TAction;
    aDelWare: TAction;
    aCalcSys: TAction;
    aSumm: TAction;
    ToolBar3: TToolBar;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    POther: TPanel;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    fCurSelector2: TfCurSelector;
    aCalcAmount: TAction;
    pmAmount: TPopupMenu;
    aAddWare1: TMenuItem;
    aDelWare1: TMenuItem;
    aSumm1: TMenuItem;
    aCalcSys1: TMenuItem;
    aCalcAmount1: TMenuItem;
    ToolButton1: TToolButton;
    Splitter1: TSplitter;
    pnForSize: TPanel;
    GroupBox4: TGroupBox;
    DBMemo1: TDBMemo;
    fExtDataVal1: TfExtDataVal;
    Splitter2: TSplitter;
    cdsOperWare2SS: TAggregateField;
    aClearWare: TAction;
    ToolButton2: TToolButton;
    Panel7: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit10: TDBEdit;
    cdsOperWareAmountOper: TFloatField;
    cdsOperWarePriceOper: TFloatField;
    cdsOperWareSummSys: TFloatField;
    cdsOperWarePriceInv: TFloatField;
    cdsOperFinid_Oper: TIntegerField;
    cdsOperFinid_OperParent: TIntegerField;
    cdsOperFinid_Replicator: TIntegerField;
    cdsOperFinid_old_Oper: TIntegerField;
    cdsOperFinDateCreate: TDateTimeField;
    cdsOperFinid_LC_Oper: TIntegerField;
    cdsOperFinOperVid: TIntegerField;
    cdsOperFinid_UserCreator: TIntegerField;
    cdsOperFinCreatorFIO: TStringField;
    cdsOperFinid_business: TIntegerField;
    cdsOperFinId_CurrencyBsn: TIntegerField;
    cdsOperFinBusinessName: TStringField;
    cdsOperFinBusinessNum: TStringField;
    cdsOperFinDateLocal: TDateTimeField;
    cdsOperFinCorrect: TBooleanField;
    cdsOperFinOperTypeIn: TBooleanField;
    cdsOperFinId_CurrencyOper: TIntegerField;
    cdsOperFinCurrencyOperName: TStringField;
    cdsOperFinCurrencyOperShortName: TStringField;
    cdsOperFinPriceOper: TFloatField;
    cdsOperFinRateOper: TFloatField;
    cdsOperFinId_CurrencySys: TIntegerField;
    cdsOperFinCurrencySysName: TStringField;
    cdsOperFinCurrencySysShortName: TStringField;
    cdsOperFinSummSys: TFloatField;
    cdsOperFinRateSys: TFloatField;
    cdsOperFinid_Acc: TIntegerField;
    cdsOperFinid_Warehouse: TIntegerField;
    cdsOperFinid_Manufact: TIntegerField;
    cdsOperFinSrcName: TStringField;
    cdsOperFinSrcID_Main: TIntegerField;
    cdsOperFinid_Repr: TIntegerField;
    cdsOperFinid_Acc_Ext: TIntegerField;
    cdsOperFinid_Warehouse_Ext: TIntegerField;
    cdsOperFinid_Manufact_Ext: TIntegerField;
    cdsOperFinReprName: TStringField;
    cdsOperFinReprID_Main: TIntegerField;
    cdsOperFinId_CurrencyInv: TIntegerField;
    cdsOperFinRateInv: TFloatField;
    cdsOperFinCurrencyInvName: TStringField;
    cdsOperFinCurrencyInvShortName: TStringField;
    cdsOperFinKoeff: TIntegerField;
    cdsOperFinKoeffName: TStringField;
    cdsOperFinCheckDate: TDateTimeField;
    cdsOperFinCheckerFIO: TStringField;
    cdsOperFinid_FormalDistrib: TIntegerField;
    cdsOperFinFormalDistribName: TStringField;
    cdsOperFinid_FuncDistrib: TIntegerField;
    cdsOperFinFuncDistribName: TStringField;
    cdsOperFinDeleted: TBooleanField;
    cdsOperFinid_ContrAgent: TIntegerField;
    cdsOperFinContrAgentName: TStringField;
    cdsOperFinid_CAGroup: TIntegerField;
    cdsOperFinSummOper: TFloatField;
    cdsOperFinTypeName: TStringField;
    cdsOperFinHasViza: TBooleanField;
    cdsOperFinOperState: TIntegerField;
    cdsOperFinHidedOper: TBooleanField;
    cdsOperFinRateMain: TFloatField;
    cdsOperFinid_Repr_Ex: TIntegerField;
    cdsOperFinid_DocType: TIntegerField;
    cdsOperFinImp_PayBasic: TStringField;
    cdsOperFinAccInv_PayAssignment: TStringField;
    cdsOperFinContract: TStringField;
    cdsOperFinOperCrnName: TStringField;
    cdsOperFinBlocked: TBooleanField;
    cdsOperFinCurrencyBsnName: TStringField;
    cdsOperFinOpComment: TStringField;
    cdsOperFinRealDataCreate: TDateTimeField;
    cdsOperFinOperTypeSIGN: TIntegerField;
    cdsOperFinHasChild: TIntegerField;
    cdsOperFinDig1: TFloatField;
    cdsOperFinDig2: TFloatField;
    cdsOperFinDig3: TFloatField;
    cdsOperFinDig4: TFloatField;
    cdsOperFinDig5: TFloatField;
    cdsOperFinDig6: TFloatField;
    cdsOperFinDig7: TFloatField;
    cdsOperFinDig8: TFloatField;
    cdsOperFinDig9: TFloatField;
    cdsOperFinDig10: TFloatField;
    cdsOperFinDig11: TFloatField;
    cdsOperFinDig12: TFloatField;
    cdsOperFinDig13: TFloatField;
    cdsOperFinDig14: TFloatField;
    cdsOperFinDig15: TFloatField;
    cdsOperFinStr1: TStringField;
    cdsOperFinStr2: TStringField;
    cdsOperFinStr3: TStringField;
    cdsOperFinStr4: TStringField;
    cdsOperFinStr5: TStringField;
    cdsOperFinStr6: TStringField;
    cdsOperFinStr7: TStringField;
    cdsOperFinStr8: TStringField;
    cdsOperFinStr9: TStringField;
    cdsOperFinStr10: TStringField;
    cdsOperFinStr11: TStringField;
    cdsOperFinStr12: TStringField;
    cdsOperFinStr13: TStringField;
    cdsOperFinStr14: TStringField;
    cdsOperFinStr15: TStringField;
    cdsOperFinOperVidName: TStringField;
    cdsOperFinis_Mirr: TBooleanField;
    cdsOperFinid_Acc_Group: TIntegerField;
    cdsOperFinid_Warehouse_Group: TIntegerField;
    cdsOperFinid_Manufact_Group: TIntegerField;
    cdsOperFinOperNum: TStringField;
    cdsOperFinVatIn: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    cdsOperWare201: TClientDataSet;
    AggregateField1: TAggregateField;
    cdsOperWare201id_OperWare: TAutoIncField;
    cdsOperWare201id_Oper: TIntegerField;
    cdsOperWare201AmountOper: TFloatField;
    cdsOperWare201id_Measure: TIntegerField;
    cdsOperWare201PriceOper: TFloatField;
    cdsOperWare201SummSys: TFloatField;
    cdsOperWare201PriceInv: TFloatField;
    cdsOperWare201id_Goods: TIntegerField;
    cdsOperWare201MeasureName: TStringField;
    cdsOperWare201RealKoef: TFloatField;
    cdsOperWare201AmountOperBaseMS: TFloatField;
    cdsOperWare201WareName: TStringField;
    cdsOperWare201WareID_Main: TIntegerField;
    cdsOperWare201AmountOperBaseMS_2: TFloatField;
    cdsOperWare201AmountOperBaseMS_1: TFloatField;
    cdsOperWare201id_Raw: TIntegerField;
    cdsOperWare201id_ExtRaw: TIntegerField;
    cdsOperWare201id_Service: TIntegerField;
    cdsOperWare201SummOper_2: TFloatField;
    cdsOperWare201SummSys_2: TFloatField;
    cdsOperWare201PriceInv_2: TFloatField;
    cdsOperWare201DMName: TStringField;
    cdsOperWare201SummOper_1: TFloatField;
    cdsOperWare201SummSys_1: TFloatField;
    cdsOperWare201PriceInv_1: TFloatField;
    cdsOperWare201delta: TFloatField;
    cdsOperWare201SummOper2: TFloatField;
    cdsOperWare201Numb: TIntegerField;
    tsOperList: TTabSheet;
    Panel2: TPanel;
    Button1: TButton;
    ToolButton3: TToolButton;
    aCalcOper: TAction;
    Action11: TMenuItem;
    sbForm: TSpeedButton;
    sbFunc: TSpeedButton;
    cdsOperWareSS_SYS: TAggregateField;
    cdsOperWare201SS_SYS: TAggregateField;
    tsOperList_Off: TTabSheet;
    Panel3: TPanel;
    btnShowOper: TButton;
    btnGen: TButton;
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure cbVizaClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure cbKoefKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsOperFinCorrectGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cbOperTypeInChange(Sender: TObject);
    procedure cdsOperFinAfterPost(DataSet: TDataSet);
    procedure lcbBsnChange(Sender: TObject);
    procedure cbKoefChange(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure cdsOperWareCalcFields(DataSet: TDataSet);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dsWMesDataChange(Sender: TObject; Field: TField);
    procedure OnSelectWare(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure OnDoCalcCrn(Sender: TObject;
      var Handled: Boolean);
    procedure cdsOperWareid_MeasureChange(Sender: TField);
    procedure cdsOperWareMeasureName13GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsOperWareMeasureName13Change(Sender: TField);
    procedure OnChangeMes(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure aSummExecute(Sender: TObject);
    procedure aCalcSysExecute(Sender: TObject);
    procedure aDelWareExecute(Sender: TObject);
    procedure aAddWareExecute(Sender: TObject);
    procedure cdsOperWareBeforeInsert(DataSet: TDataSet);
    procedure dsOperWareDataChange(Sender: TObject; Field: TField);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure aCalcAmountExecute(Sender: TObject);
    procedure DBGridEhColEnter(Sender: TObject);
    procedure aClearWareExecute(Sender: TObject);
    procedure cdsOperWareAfterPost(DataSet: TDataSet);
    procedure cdsOperWareAfterDelete(DataSet: TDataSet);
    procedure DBGridEh1DrawFooterCell(Sender: TObject; DataCol,
      Row: Integer; Column: TColumnEh; Rect: TRect; State: TGridDrawState);
    procedure cdsOperWarePriceInvGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DBGridEh1ColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure Button1Click(Sender: TObject);
    procedure aCalcOperExecute(Sender: TObject);
    procedure cdsFormalAfterOpen(DataSet: TDataSet);
    procedure cdsFuncAfterOpen(DataSet: TDataSet);
    procedure sbFormClick(Sender: TObject);
    procedure sbFuncClick(Sender: TObject);
    procedure btnShowOperClick(Sender: TObject);
    procedure btnGenClick(Sender: TObject);
  private
    FOperVid : integer;
    FPriceLocked, FInvLocked, FNeedColor : boolean;
    FVKoef, FId_CurrencyInv : Variant;
    FShowSummAmount : boolean;
    fArc, fArc_Off : TfArc;
    procedure xxx(ACalcPrice : boolean = true);
    function GetKoefVal: integer;
    procedure SetKoefVal(const Value: integer);
    property KoefVal : integer read GetKoefVal write SetKoefVal;

    procedure MakeRed;
    procedure CheckNColor;
    procedure cbKoefDoChange;
    procedure AddWare(AEdit : boolean);
    procedure sbConvertCrn(ABack: boolean = false);
    procedure DoChangeMes;
    procedure CalcSumm;
    procedure LockPrice;
    procedure UnLockPrice;
    procedure xxxOne(ACalcPrice: boolean = true);

    procedure CheckFooter;
    procedure EditAmountOper;
    procedure CheckButton;
    procedure CalcAmountSum;
    function GetID_Oper: integer;
    function GetRezMode: boolean;
    procedure RefrEvent(id_Oper: integer);
  public
    FOperParamz : TOperParamz;
    OLD_OperVid : integer;
    function ChangeData : boolean;
    constructor Create(AOwner : TComponent); override;
    destructor Destroy; override;
    function SaveProp : boolean;
    procedure UpdateData;
    function ConfirmChanges : boolean;
    function CheckData : boolean;
    procedure Initialize(AOperParamz : TOperParamz);

    property ID_Oper : integer read GetID_Oper;
    property RezMode : boolean read GetRezMode;
    function CheckAmount : boolean;
    function CheckAmountOne(var Amount, AmountOper: Extended): boolean;

    function GetSS : Variant;
    function GetSS_SYS : Variant;

  end;

implementation

uses uDM, uUnivOper_v2, uUnivSelector,
  foMyFuncEh, uOperMesSelector, uInputBoxDigit, uRepSelector,
  uCrnRateSelector, uAPOperList;

{$R *.DFM}

{ TfOperWare }

function TfOperWare.CheckData: boolean;
var OldRecNo : integer;
begin
  FNeedColor := true;
  MakeRed;
  Result := false;
  UpdateData;
  with cbOperTypeIn do
    if trim(Text) = '' then
    begin
      MessageBox(Handle, '�� ������ ��� ��������', '������� �� ��� ������', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      Exit;
    end;
  with DBEdit3 do
    if trim(Text) = '' then
    begin
      MessageBox(Handle, '�� ������ �����', '������� �� ��� ������', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      Exit;
    end;
  with edReprName do
    if trim(Text) = '' then
    begin
      MessageBox(Handle, '�� ������ ����� ������', '������� �� ��� ������', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      Exit;
    end;
  with edReprName do
    if cdsOperFin.FieldByName('ContrAgentName').IsNull and (not cdsOperFin.FieldByName('id_Repr').IsNull or not cdsOperFin.FieldByName('id_Repr_Ex').IsNull) then
    begin
      MessageBox(Handle, '�� ��������� ���������� � �������������', '������� �� ��� ������', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      Exit;
    end;
    with dsOperWare.DataSet do
      if IsEmpty then
      begin
        MessageBox(Handle, '�� ������� ������', '������� �� ��� ������', MB_OK + MB_ICONERROR);
        Windows.SetFocus(Handle);
        Exit;
      end;
  with fCurSelector1.cbCur do
    if (dsOperWare.DataSet.FieldByName('SS').Value <> 0) and (fCurSelector1.ID_Curr = Null)  then
    begin
      MessageBox(Handle,'�� ������� ������ �������', '������� �� ��� ������', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      Exit;
    end;

  if KoefVal <> 0 then
  begin
    if (not cdsOperFin.FieldByName('id_Warehouse').IsNull) and (not cdsOperFin.FieldByName('id_Warehouse_Ext').IsNull) then
    begin
      with cbKoef do
      begin
        Windows.SetFocus(cbKoef.Handle);
        MessageBox(Handle, '������ �������� �������� ��� ������� ��� ������� ��� �������� ������� �� ������ �� �����!', '������!!!', MB_OK + MB_ICONERROR);
        Exit;
      end;
    end;

    with lcFormalDistrib do
    begin
      if not DataSource.DataSet.IsEmpty and  (trim(Text) = '') then
      begin
        if MessageBox(Handle, '�� ������� ���������� �������������. ������ ��� �������?', '������� �� ��� ������', MB_ICONWARNING + MB_YESNO + MB_DEFBUTTON2) = IDYES	then
        begin
          Windows.SetFocus(Handle);
          Exit;
        end;
      end;
    end;
    with lcFuncDistrib do
    begin
      if not DataSource.DataSet.IsEmpty and  (trim(Text) = '') then
      begin
        if MessageBox(Handle, '�� ������� �������������� �������������. ������ ��� �������?', '������� �� ��� ������', MB_ICONWARNING + MB_YESNO + MB_DEFBUTTON2) = IDYES	then
        begin
          Windows.SetFocus(Handle);
          Exit;
        end;
      end;
    end;

  end; 

  with dsOperWare.DataSet do
  begin
    DisableControls;
    OldRecNo := RecNo;
    try
      First;
      while not Eof do
      begin
        if FieldByName('PriceOper').IsNull then
        begin
          MessageBox(Handle, '�� ������� ����', '������� �� ��� ������', MB_OK + MB_ICONERROR);
          Windows.SetFocus(DBGridEh1.Handle);
          DBGridEh1.col := 5;
          Exit;
        end;
        if FieldByName('id_Measure').IsNull then
        begin
          MessageBox(Handle, '�� ������� ������� ���������', '������� �� ��� ������', MB_OK + MB_ICONERROR);
          Windows.SetFocus(DBGridEh1.Handle);
          DBGridEh1.col := 4;
          Exit;
        end;
        if CheckBox1.Checked and CheckBox1.Enabled then
        begin
          if FieldByName('SummSys').IsNull then
          begin
            MessageBox(Handle, '�� ������� ����� ������', '������� �� ��� ������', MB_OK + MB_ICONERROR);
            Windows.SetFocus(DBGridEh1.Handle);
            DBGridEh1.col := 7;
            Exit;
          end;
        end;
        Next;
      end;
      First;
    finally
      RecNo := OldRecNo;
      EnableControls;
    end;
  end;

  if CheckBox1.Checked and CheckBox1.Enabled then
  begin
    with fCurSelector2.cbCur do
      if fCurSelector2.ID_Curr = Null then
      begin
        MessageBox(Handle, '�� ������� �������� ������', '������� �� ��� ������', MB_OK + MB_ICONERROR);
        Windows.SetFocus(Handle);
        Exit;
      end;
  end;

  Result := true;
  MakeRed;
end;

function TfOperWare.ConfirmChanges: boolean;
var SL : TStringList;
    CDS : TClientDataSet;
begin       
  Result := false;
  if not CheckData then
    Exit;
  if (Owner is TCustomForm) and (not TForm(Owner).Visible) then
  begin
    Result := true;
    Exit;
  end;
  CDS := cdsOperFin;
  Result := true;
  UpdateData;
  if (FOperParamz.ID_Oper <> -1) then
  begin
    SL := TStringList.Create;
    try
      if (CDS.ChangeCount > 0) then
      begin
        CompareField(CDS, 'Correct', '���������', SL);
        CompareField(CDS, 'SrcName', '����', SL);
        CompareField(CDS, 'AcName', '�����', SL);
        CompareField(CDS, 'ReprName', '����������', SL);
  //      CompareField(CDS, 'ReprWHName', '����� �������������', SL);

        CompareField(CDS, 'BusinessName', '������', SL);

        if TClientDataSet(dsOperWare.DataSet).ChangeCount > 0 then
          SL.Add('������� ������ �������');

 //       CompareField(CDS, 'PriceOper', '�����', SL);
        CompareField(CDS, 'CurrencyOperShortName', '������', SL);
    {    if CheckBox1.Checked then
        begin
          CompareField(CDS, 'SummSys', '�������� �����', SL);
          CompareField(CDS, 'CurrencySysShortName', '�������� ������', SL);
        end;  }

        CompareField(CDS, 'PriceInv', '�������������', SL);
        CompareField(CDS, 'CurrencyInvShortName', '������ �������������', SL);

        CompareField(CDS, 'ManagerFIO', '���������', SL);
        CompareField(CDS, 'FormalDistribName', '���������� �������������', SL);
        CompareField(CDS, 'FuncDistribName', '�������������� �������������', SL);
        CompareField(CDS, 'Koeff', '���� ��������', SL, false);
        CompareField(CDS, 'Imp_PayBasic', '��������� �������', SL);
        CompareField(CDS, 'AccInv_PayAssignment', '��. ���������/���� �������', SL);
        CompareField(CDS, 'Contract', '�������', SL);
        CompareField(CDS, 'OpComment', '�����������', SL, false);
     end;
 //    if cdsOperWare.ChangeCount > 0 then
 //      SL.Add('������� ������ �������');

      if SL.Count > 0 then
        Result := MessageBox(Handle, PChar('���� �������� ��������� ������:' + #13 + #10 + SL.Text ), '����������� ���������', MB_YESNO + MB_ICONQUESTION) = idYes;
    finally
      SL.Free;
    end;
  end;
end;

constructor TfOperWare.Create(AOwner: TComponent);
var i : integer;
    Reg : TRegistry;
    FullRegPathName : String;
begin
  inherited;
  SetCDSFormat(cdsOperWare, '### ### ### ##0.00', '0.##');
  SetCDSFormat(cdsOperWare201, '### ### ### ##0.00', '0.##');

  FShowSummAmount := true;
  FPriceLocked := false;
  FInvLocked := false;
  FNeedColor := false;
  FVKoef := Null;
  if Owner is TCustomForm then
  begin
    LoadEhGridSettingsFromRegistry(DBGridEh1, SRegPath + '\' + TForm(Owner).ClassName + '\q' + ClassName);
  //  DBGridEh1.Options := DBGridEh1.Options - [goColMoving];
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;
      FullRegPathName := SRegPath + '\' + ClassName + TCustomForm(Owner).ClassName;
      if Reg.OpenKey(FullRegPathName, true) then
      begin
        if Reg.ValueExists('fExtDataVal1Height5') then
          pnForSize.Height := Reg.ReadInteger('fExtDataVal1Height5');
        if Reg.ValueExists('GroupBox4Height5') then
          GroupBox4.Height := Reg.ReadInteger('GroupBox4Height5');
      end;
    finally
      Reg.CloseKey;
      Reg.Free;
    end;
  end;
end;

destructor TfOperWare.Destroy;
var Reg : TRegistry;
    FullRegPathName : String;
begin
  if Owner is TCustomForm then
  begin
    SaveEhGridSettingsToRegistry(DBGridEh1, SRegPath + '\' + TForm(Owner).ClassName + '\q' + ClassName);
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;

      FullRegPathName := SRegPath + '\' + ClassName + TCustomForm(Owner).ClassName;
      if Reg.OpenKey(FullRegPathName, true) then
      begin
        Reg.WriteInteger('fExtDataVal1Height5', pnForSize.Height);
        if fExtDataVal1.Visible then
          Reg.WriteInteger('GroupBox4Height5', GroupBox4.Height);
      end;
    finally
      Reg.CloseKey;
      Reg.Free;
    end;
  end;
  inherited;
end;

procedure TfOperWare.Initialize(AOperParamz : TOperParamz);
var S : String;
    i, id_Goods : integer;
    ObjName, ObjID, BsnName, id_business: OleVariant;
    ObjName2, ObjID2, BsnName2, id_business2: OleVariant;
    b, b2 : boolean;
begin
  FOperParamz := AOperParamz;
  if FOperParamz.RezMode then
    FOperVid := 201
  else
    FOperVid := 1;

  FNeedColor := FOperParamz.ID_Oper <> -1;

  with cdsOperFin do
  begin
    Close;
    Params.ParamByName('@id_Oper').AsInteger := FOperParamz.ID_Oper;
    Params.ParamByName('@is_Mirr').AsBoolean := FOperParamz.is_Mirr;
    Open;
    if FOperParamz.Copy then
      OLD_OperVid := FOperVid
    else
      OLD_OperVid := FieldByName('OperVid').AsInteger;
    if FOperParamz.ID_Oper = -1 then
    begin
      cbOperTypeIn.ItemIndex := -1;
      CheckBox1.Checked := false;
      CheckBox1Click(CheckBox1);
      Edit;
      FieldByName('VatIn').AsBoolean := FVatIn;
      FieldByName('Correct').AsBoolean := false;
  //    FieldByName('id_Replicator').AsInteger := Null;    //1013
      FieldByName('id_UserCreator').AsInteger := DM.IDUser;
      FieldByName('CreatorFIO').Value := DM.FullFIO;
      FieldByName('id_OperParent').Value := FOperParamz.id_OperParent;
      FieldByName('OperVid').AsInteger := FOperVid;

      if AReadOneObj then
      begin
        b := DM.SnglObj_wh(ObjName, ObjID, BsnName, id_business);
        b2 := DM.SnglObj_MN(ObjName2, ObjID2, BsnName2, id_business2);
        if b xor b2 then
        begin
          if b2 and not b then
          begin
            ObjName := ObjName2;
            ObjID := ObjID;
            BsnName := BsnName2;
            id_business := id_business2;
          end;
          FieldByName('id_business').Value := id_business;
          FieldByName('BusinessName').Value := BsnName;     

          FId_CurrencyInv := DM.rsCA.AppServer.GetBsnCur(cdsOperFin.FieldByName('id_business').AsInteger);


          if b then
            FieldByName('id_Warehouse').Value := ObjID
          else                              
            FieldByName('id_Manufact').Value := ObjID;
          FieldByName('SrcName').Value := ObjName;
        end;
      end;

      Post;
  fCurSelector1.Initialize(cdsOperFin.FieldByName('id_business').AsInteger);
  fCurSelector2.Initialize(FieldByName('id_business').AsInteger);
//  fCurSelectorInv.Initialize(FieldByName('id_business').Value);
  fExtDataVal1.Initialize(Null, FieldByName('id_business').Value);
      cdsFormal.Close;
      cdsFormal.Params.ParamByName('@id_Bsn').Value := FieldByName('id_business').AsInteger;
      cdsFormal.Open;
      cdsFunc.Close;
      cdsFunc.Params.ParamByName('@id_Bsn').Value := FieldByName('id_business').AsInteger;
      cdsFunc.Open;
      cbKoefDoChange
    end
    else
    begin
      if FOperVid <> 201 then
      begin
        cdsFormal.Close;
        cdsFormal.Params.ParamByName('@id_Bsn').Value := FieldByName('id_business').AsInteger;
        cdsFormal.Open;
        cdsFunc.Close;
        cdsFunc.Params.ParamByName('@id_Bsn').Value := FieldByName('id_business').AsInteger;
        cdsFunc.Open;

     end;
     fCurSelector1.Initialize(FieldByName('id_business').AsInteger);
     fCurSelector2.Initialize(FieldByName('id_business').AsInteger);
//     fCurSelectorInv.Initialize(FieldByName('id_business').AsInteger);

     fCurSelector1.ID_Curr := FieldByName('Id_CurrencyOper').Value;
     fCurSelector2.ID_Curr := FieldByName('Id_CurrencySys').Value;
//     fCurSelectorInv.ID_Curr := FieldByName('Id_CurrencyInv').Value;
     FId_CurrencyInv := DM.rsCA.AppServer.GetBsnCur(cdsOperFin.FieldByName('id_business').AsInteger);
     
      CheckBox1.Checked := not FieldByName('Id_CurrencySys').IsNull;
      CheckBox1Click(CheckBox1);
      if FieldByName('OperTypeIn').AsBoolean then
        cbOperTypeIn.ItemIndex := 0
      else
        cbOperTypeIn.ItemIndex := 1;
      KoefVal := FieldByName('Koeff').AsInteger;
    end;
  end;
  if (cdsOperFin.FieldByName('OperVid').AsInteger <> FOperVid) then
  begin
    with cdsOperFin do
    begin
      Edit;
      if (FieldByName('OperVid').AsInteger = 201) and (FOperVid = 1) then
      begin
        FieldByName('id_OperParent').AsInteger := FOperParamz.ID_Oper;
        FOperParamz.id_OperParent := FOperParamz.ID_Oper;
        FOperParamz.Copy := true;
      end;
      FieldByName('OperVid').AsInteger := FOperVid;
      Post;
    end;
  end;




  if cdsOperFin.FieldByName('OperVid').AsInteger = 201 then
    dsOperWare.DataSet := cdsOperWare201
  else
    dsOperWare.DataSet := cdsOperWare;
  with TClientDataSet(dsOperWare.DataSet) do
  begin
    Close;
    if (OLD_OperVid = 201) and not cdsOperFin.FieldByName('id_OperParent').IsNull then
      Params.ParamByName('@id_Oper').Value := cdsOperFin.FieldByName('id_OperParent').AsInteger;
      
    Params.ParamByName('@id_Oper').Value := FOperParamz.ID_Oper;
    if dsOperWare.DataSet = cdsOperWare201 then
      cdsOperWare201.Params.ParamByName('@Mode').Value := 0;
    Open;
    if (OLD_OperVid = 201) and not cdsOperFin.FieldByName('id_OperParent').IsNull then
    begin
      cdsOperWare201.Params.ParamByName('@id_Oper').Value := FOperParamz.ID_Oper;
      cdsOperWare201.Params.ParamByName('@Mode').Value := 0;
      cdsOperWare201.Open;
      DisableControls;
      try
        First;
        while not Eof do
        begin
          if cdsOperWare201.Locate('id_Goods', FieldByName('id_Goods').Value, []) then
          begin
            Edit;
            if cdsOperWare201.FieldByName('Delta').AsFloat <= 0 then
              FieldByName('AmountOper').Value := Null
            else
              FieldByName('AmountOper').Value := cdsOperWare201.FieldByName('Delta').Value;
            Post;
          end;
          Next;  
        end;
        Last;
        while not Bof do
        begin
          if FieldByName('AmountOper').Value = Null then
            Delete
          else
            Prior;  
        end;  
      finally
        cdsOperWare201.Close;
        EnableControls;
      end;
    end;
  end;
  if (fOperParamz.xxx) then
  begin
        cdsOperFin.edit;
        cdsOperFinid_Warehouse.AsInteger := 151;
        cdsOperFinOperTypeIn.Asboolean := true;
        cbOperTypeIn.ItemIndex := 0;
        cdsOperFin.post;
        begin
        cdsOperWare.BeforeInsert := nil;
        cdsOperWare.Append;
        cdsOperWare.BeforeInsert := cdsOperWareBeforeInsert;

      //  id_Goods := DM.rsCA.AppServer.UN_Check_Ware(0, 3756, cdsOperFinOpComment.Asstring, -1);
      //  if id_Goods = -1 then
          id_Goods := DM.rsCA.AppServer.WareAdd(0, 3756, cdsOperFinOpComment.Asstring, '', '', 0, 99,
                   null, null, null, null, null, null);
          cdsOperWare.FieldByName('WareName').Value := cdsOperFinOpComment.Asstring;

          cdsOperWare.FieldByName('id_Goods').Value := id_Goods;
          cdsOperWare.FieldByName('MeasureName').Value := '��';
          cdsOperWare.FieldByName('RealKoef').AsInteger := 1;
          cdsOperWare.FieldByName('AmountOper').AsInteger := 1;
          cdsOperWare.FieldByName('PriceOper').AsFloat := cdsOperFinPriceOper.AsFloat;
          cdsOperWare.FieldByName('id_Measure').Value := 99;
          cdsOperWare.Post;
          xxxOne(false);
        end;
  end;
//  CheckMeasure;
  if FOperVid <> 201 then
    fExtDataVal1.Initialize(FOperParamz.ID_Oper, cdsOperFin.FieldByName('id_business').AsInteger);
  if FOperParamz.Correct or FOperParamz.Copy then   // ��������� ��� �����������
  begin
    FOperParamz.ID_Oper := -1;
    RebildExtData(fExtDataVal1.cdsExtData);
    RebildWareData(TClientDataSet(dsOperWare.DataSet));
    with cdsOperFin do
    begin
      Edit;
      FieldByName('OperVid').AsInteger := FOperVid;
      FieldByName('Correct').AsBoolean := FOperParamz.Correct;
   //   FieldByName('id_Replicator').Value := Null;
   //   FieldByName('is_Mirr').Value := Null;

      FieldByName('id_OperParent').Value := FOperParamz.id_OperParent;

      FieldByName('CreatorFIO').Value := DM.FullFIO;;
      FieldByName('id_UserCreator').AsInteger := DM.IDUser;
      FieldByName('DateLocal').Value := Null;

      FieldByName('OperState').Value := 0;
      FieldByName('CheckDate').Value := Null;
      FieldByName('HasViza').Value := false;

      Post;
      if (FOperParamz.Correct) then
      begin
        S := FieldByName('OperNum').AsString;
//        S := DM.rsCA.AppServer.GetOperNum(ID_Oper);
        if S <> '' then
        begin
          Edit;
          FieldByName('OpComment').AsString := '��������� �������� �' + S;
          Post;
        end;
      end;
    end;
  end;
  if (cdsOperFin.FieldByName('OperVid').AsInteger = 201) then
  begin
    cbOperTypeIn.Enabled := false;
    cbOperTypeIn.ItemIndex := 1;
    with cdsOperFin do
    begin
      Edit;
      if not FieldByName('id_Manufact').IsNull then
      begin
        FieldByName('id_Manufact').Value := Null;
        FieldByName('SrcName').Value := Null;
      end;
      if not FieldByName('id_WareHouse_Ext').IsNull then
      begin
        FieldByName('id_WareHouse_Ext').Value := Null;
        FieldByName('ReprName').Value := Null;
      end;
      Post;
      if ID_Oper = -1 then
        xxx(false);
    end;
  end;
//  fOperOldData1.Initialize(cdsOperFinid_old_Oper.AsInteger);
  PageControl1.ActivePageIndex := 0;

  xxx({false} FOperParamz.CalcPrice and (Owner is TCustomForm) and (not TForm(Owner).Visible) and cdsOperFinid_Repr.IsNull);
  if ID_Oper <> -1 then
    MakeRed;

  DBGridEh1.Columns[5].Footer.EnsureSumValue;
  for i := 0 to DBGridEh1.Columns.Count - 1 do
  begin
    with DBGridEh1.Columns[i] do
    begin
      if Field = dsOperWare.DataSet.FieldByName('PriceInv') then
        Visible := not FOperParamz.RezMode;
      if (Field = cdsOperWare201AmountOperBaseMS_2)  then
        Visible := FOperParamz.RezMode;
      if (Field = cdsOperWare201AmountOperBaseMS_1)  then
        Visible := FOperParamz.RezMode;
      if Field = cdsOperWare201delta then
        Visible := FOperParamz.RezMode;
      if (Field = nil)  then
        Visible := false;
    end;
  end;
  tsOperList.TabVisible := FOperParamz.RezMode;
  tsOperList.Visible := FOperParamz.RezMode;
  if FOperParamz.RezMode then
  begin
    P_FF.Visible := false;
    fExtDataVal1.Visible := false;
    Splitter2.Visible := false;
    GroupBox4.Align := alClient;
    GroupBox3.Visible := false;
  end;
  P1.Enabled := not FOperParamz.ReadOnly;

  P4.Enabled := not FOperParamz.ReadOnly;
  POther.Enabled := not FOperParamz.ReadOnly;

  cbKoef.Enabled := not FOperParamz.ReadOnly;
  DBGridEh1.ReadOnly := FOperParamz.ReadOnly;
  ToolBar3.Enabled := not FOperParamz.ReadOnly;
end;

function TfOperWare.SaveProp: boolean;
var CDS : TClientDataSet;
    OldRecNo : integer;
begin
  if not CheckBox1.Checked or not CheckBox1.Enabled then
  begin
    with dsOperWare.DataSet do
    begin
      DisableControls;
      OldRecNo := RecNo;
      try
        First;

        while not Eof do
        begin
          Edit;
          FieldByName('SummSys').Clear;
          Post;
          Next;
        end;
      finally
        RecNo := OldRecNo;
        EnableControls;
      end;
    end;
  end;

  if not ChangeData then
  begin
    Result := false;
    Exit;
  end;
  if FOperParamz.ReadOnly then
    CDS := nil
  else
    CDS := TClientDataSet(dsOperWare.DataSet);
  Result := SavePropOper(FOperParamz.ID_Oper, cdsOperFin, CDS, fExtDataVal1, nil);
end;

procedure TfOperWare.UpdateData;
var CDS : TClientDataSet;
begin
  CDS := cdsOperFin;

  if dsOperWare.DataSet.State in [dsEdit, dsInsert] then
    dsOperWare.DataSet.Post;
  if CDS.State <> dsEdit then
    CDS.Edit;

//  if CDS.FieldByName('PriceOper').AsFloat = 0 then
//    fCurSelector1.ID_Curr := Null;   
  CDS.FieldByName('Id_CurrencyOper').Value := fCurSelector1.ID_Curr;
  CDS.FieldByName('CurrencyOperShortName').Value := fCurSelector1.CurName;

{  if GroupBox1.Enabled then
  begin
    CDS.FieldByName('Id_CurrencyInv').Value := fCurSelectorInv.ID_Curr;
    CDS.FieldByName('CurrencyInvShortName').Value := fCurSelectorInv.CurName;
  end
  else
  begin
    CDS.FieldByName('PriceInv').Value := Null;
    CDS.FieldByName('Id_CurrencyInv').Value := Null;
    CDS.FieldByName('CurrencyInvShortName').Value := Null;
  end;    }

  if CheckBox1.Checked and CheckBox1.Enabled then
  begin
    CDS.FieldByName('Id_CurrencySys').Value := fCurSelector2.ID_Curr;
    CDS.FieldByName('CurrencySysShortName').Value := fCurSelector2.CurName;
    CDS.FieldByName('CurrencySysShortName').Value := fCurSelector2.CurName;
    CDS.FieldByName('RateSys').Value := Null;
  end
  else
  begin
    CDS.FieldByName('Id_CurrencySys').Value := Null;
    CDS.FieldByName('CurrencySysShortName').Value := Null;
    CDS.FieldByName('SummSys').Value := Null;
    CDS.FieldByName('RateSys').Value := Null;
  end;

//  if CDS.FieldByName('ReprWHName').AsString <> lcbRepWH.Text then
//    CDS.FieldByName('ReprWHName').Value := lcbRepWH.Text;

 // if lcbRepWH.Text = '' then
 //   CDS.FieldByName('id_CAWhouse').Value := Null;

{  if CDS.FieldByName('MeasureName').AsString <> lcbWMes.Text then
  CDS.FieldByName('MeasureName').Value := lcbWMes.Text;
  if lcbWMes.Text = '' then
    CDS.FieldByName('id_Measure').Value := Null;
}
  CDS.FieldByName('Koeff').Value := KoefVal;
  {if KoefVal <> CDS.FieldByName('Koeff').AsInteger then
  begin
    CDS.FieldByName('Koeff').Value := KoefVal;
  end;  }

  CDS.FieldByName('KoeffName').AsString := cbKoef.Text;
  if (cbOperTypeIn.ItemIndex = 0) <> CDS.FieldByName('OperTypeIn').AsBoolean then
    CDS.FieldByName('OperTypeIn').Value := cbOperTypeIn.ItemIndex = 0;

{  if KoefVal <> 0 then
  begin  }
    if lcFormalDistrib.Text <> CDS.FieldByName('FormalDistribName').AsString then
      CDS.FieldByName('FormalDistribName').Value := lcFormalDistrib.Text;
    if lcFuncDistrib.Text <> CDS.FieldByName('FuncDistribName').AsString then
      CDS.FieldByName('FuncDistribName').Value := lcFuncDistrib.Text;
{  end
  else
  begin
    CDS.FieldByName('id_FormalDistrib').Value := Null;
    CDS.FieldByName('id_FuncDistrib').Value := Null;
  end;  }
//  CDS.FieldByName('CheckDate').Value := Null;
  CDS.Post;
end;

procedure TfOperWare.CheckBox1Click(Sender: TObject);
var i : integer;
    tmpCol : TColumnEh;
begin
  if CheckBox1.Checked  and CheckBox1.Enabled then
  begin
    EnableControl(fCurSelector2);
    aCalcSys.Enabled := not dsOperWare.DataSet.IsEmpty and not FPriceLocked and CheckBox1.Checked and CheckBox1.Enabled;
    aCalcOper.Enabled := not dsOperWare.DataSet.IsEmpty and not FPriceLocked and CheckBox1.Checked and CheckBox1.Enabled;
  end
  else
  begin
    DisableControl(fCurSelector2);
    aCalcSys.Enabled := not dsOperWare.DataSet.IsEmpty and not FPriceLocked and CheckBox1.Checked and CheckBox1.Enabled;
    aCalcOper.Enabled := not dsOperWare.DataSet.IsEmpty and not FPriceLocked and CheckBox1.Checked and CheckBox1.Enabled;
  end;
  CheckNColor;
  CheckFooter;
  CheckButton;
end;

procedure TfOperWare.BitBtn4Click(Sender: TObject);
var ASelectedObj : TSelectedObj;
    Rez, b : boolean;
    AEObjTypes: TEObjTypes;
    AOldObjType : TEObjType;
    AOldID : Variant;
begin
  b := false;
  with cbOperTypeIn do
    if trim(Text) = '' then
    begin
      MessageBox(Handle, '�� ������ ��� ��������', '������� �������� ��� ��������', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      Exit;
    end;
  with DBEdit3 do
    if trim(Text) = '' then
    begin
      MessageBox(Handle, '�� ������ �����', '������� �������� �����', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      Exit;
    end;

  if not cdsOperFin.FieldByName('id_Repr').IsNull then
  begin
    ASelectedObj.ID := cdsOperFin.FieldByName('id_Repr').Value;
    ASelectedObj.ObjType := eotRepr;
  end;
  if not cdsOperFin.FieldByName('id_Warehouse_Ext').IsNull then
  begin
    ASelectedObj.ID := cdsOperFin.FieldByName('id_Warehouse_Ext').Value;
    ASelectedObj.ObjType := eotWH;
  end;
  if not cdsOperFin.FieldByName('id_Manufact_Ext').IsNull then
  begin
    ASelectedObj.ID := cdsOperFin.FieldByName('id_Manufact_Ext').Value;
    ASelectedObj.ObjType := eotManuf;
  end;

  if (not cdsOperFin.FieldByName('id_Repr_Ex').IsNull) and (cdsOperFin.FieldByName('id_Repr').IsNull) then
  begin
    ASelectedObj.ID := cdsOperFin.FieldByName('id_Repr_Ex').Value;
    ASelectedObj.ObjType := eotRepr;
  end;

  AEObjTypes := [eotRepr, eotManuf];

  if (not cdsOperFin.FieldByName('id_Warehouse').IsNull) and not FOperParamz.RezMode then
    AEObjTypes := AEObjTypes + [eotWH];

  AOldObjType := ASelectedObj.ObjType;
  AOldID := ASelectedObj.ID;
  if (not cdsOperFin.FieldByName('id_Repr_Ex').IsNull) and (cdsOperFin.FieldByName('id_Repr').IsNull) then
  begin
    Rez := SelectRep(Handle, Null, cdsOperFin.FieldByName('id_business').AsInteger, ASelectedObj, 0, AEObjTypes, cdsOperFin.FieldByName('id_Repr').Value);
    b := Rez;
  end
  else
    Rez := SelectObjUnBsn(Owner, cdsOperFin.FieldByName('id_business').AsInteger, ASelectedObj, 0, AEObjTypes);

  if (Rez and ((ASelectedObj.ObjType <> AOldObjType) or (ASelectedObj.ID <> AOldID))) or b then
  begin
    with cdsOperFin do
    begin
      Edit;
      FieldByName('id_Repr').Value := Null;
      FieldByName('id_Warehouse_Ext').Value := Null;
      FieldByName('id_Manufact_Ext').Value := Null;
      FieldByName('id_Repr_Ex').Value := Null;
      
      case ASelectedObj.ObjType of
        eotRepr : FieldByName('id_Repr').Value := ASelectedObj.ID;
        eotWH : FieldByName('id_Warehouse_Ext').Value := ASelectedObj.ID;
        eotManuf : FieldByName('id_Manufact_Ext').Value := ASelectedObj.ID;
      else
        raise Exception.Create('�������� ��� ������������� ��������');
      end;
      FieldByName('ContrAgentName').Value := ASelectedObj.CA_Name;
      FieldByName('ReprName').Value := ASelectedObj.Name;
      Post;
    end;
    if (cbOperTypeIn.ItemIndex = 1) and (eotRepr <> AOldObjType) and (ASelectedObj.ObjType = eotRepr) and (not dsOperware.DataSet.IsEmpty) then
    begin
      if MessageBox(Handle, '����������� ���� ������?', '����������� ��������', MB_ICONQUESTION + MB_YESNO) = idYes then
        xxx
      else
        xxx(false)
    end
    else
      xxx(false);
  end;
end;

procedure TfOperWare.cbVizaClick(Sender: TObject);
begin
  with cdsOperFin do
  begin
    Edit;
    FieldByName('CheckDate').Value := Null;
    FieldByName('id_UserChecker').Value := Null;
    Post;
  end;
end;

function TfOperWare.ChangeData: boolean;
begin
  Result := (ID_Oper = -1) or (cdsOperFin.ChangeCount > 0) or (TClientDataSet(dsOperWare.DataSet).ChangeCount > 0)
            or (fExtDataVal1.cdsExtData.ChangeCount > 0)
end;

procedure TfOperWare.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_return) and (cdsOperFin.State = dsEdit) then
    cdsOperFin.Post;
end;

procedure TfOperWare.BitBtn1Click(Sender: TObject);
var ASelectedObj : TSelectedObj;
    AEObjTypes: TEObjTypes;
    UID : integer;
begin
  if not cdsOperFin.FieldByName('id_Warehouse').IsNull then
  begin
    ASelectedObj.ID := cdsOperFin.FieldByName('id_Warehouse').Value;
    ASelectedObj.ObjType := eotWH;
  end;
  if not cdsOperFin.FieldByName('id_Manufact').IsNull then
  begin
    ASelectedObj.ID := cdsOperFin.FieldByName('id_Manufact').Value;
    ASelectedObj.ObjType := eotManuf;
  end;

  if FOperParamz.RezMode then
    AEObjTypes := [eotWH]
  else
    AEObjTypes := [eotWH, eotManuf];
  if RezMode then
    UID := 25
  else
    UID := 1;
  if SelectObjUn(Owner, UID, ASelectedObj, 0, AEObjTypes) then
  begin
    with cdsOperFin do
    begin
      Edit;
      FieldByName('id_Warehouse').Value := Null;
      FieldByName('id_Manufact').Value := Null;

      if FieldByName('id_business').Value <> ASelectedObj.Bsn_id then
      begin
        FieldByName('id_Repr').Value := Null;
        FieldByName('id_Warehouse_Ext').Value := Null;
        FieldByName('id_Manufact_Ext').Value := Null;
        FieldByName('ReprName').Value := Null;
        FieldByName('ContrAgentName').Value := Null;
                                                   
        //FieldByName('id_Goods').Value := Null;
     //   FieldByName('WareName').Value := Null;
        FieldByName('Id_CurrencyInv').Value := Null;

        with TClientDataSet(dsOperWare.DataSet) do
        begin
          Close;
          Params.ParamByName('@id_Oper').Value := -1;
          Open;
        end;
//        cdsOperWare.EmptyDataSet;
      end;
      FieldByName('id_business').Value := ASelectedObj.Bsn_id;
      FieldByName('BusinessName').Value := ASelectedObj.Bsn_Name;
      FId_CurrencyInv := DM.rsCA.AppServer.GetBsnCur(cdsOperFin.FieldByName('id_business').AsInteger);

      case ASelectedObj.ObjType of
        eotWH : FieldByName('id_Warehouse').Value := ASelectedObj.ID;
        eotManuf : FieldByName('id_Manufact').Value := ASelectedObj.ID;
      else
        raise Exception.Create('�������� ��� ������������� ��������');
      end;

      FieldByName('SrcName').Value := ASelectedObj.Name;
      if cdsOperFin.FieldByName('id_Warehouse').IsNull and not cdsOperFin.FieldByName('id_Warehouse_Ext').IsNull then
      begin
        FieldByName('id_Warehouse_Ext').Value := Null;
        FieldByName('ReprName').Value := Null;
        FieldByName('ContrAgentName').Value := Null;
      end;
      Post;
  fCurSelector1.Initialize(cdsOperFin.FieldByName('id_business').Value);
  fCurSelector2.Initialize(FieldByName('id_business').Value);
//  fCurSelectorInv.Initialize(FieldByName('id_business').Value);
  fExtDataVal1.Initialize(Null, FieldByName('id_business').Value);
      cdsFormal.Close;
      cdsFormal.Params.ParamByName('@id_Bsn').Value := FieldByName('id_business').AsInteger;
      cdsFormal.Open;
      cdsFunc.Close;
      cdsFunc.Params.ParamByName('@id_Bsn').Value := FieldByName('id_business').AsInteger;
      cdsFunc.Open;
      cbKoefDoChange
    end;
    if (cbOperTypeIn.ItemIndex = 1) and (ASelectedObj.ObjType = eotRepr) and (not dsOperware.DataSet.IsEmpty) then
    begin
      if MessageBox(Handle, '����������� ���� ������?', '����������� ��������', MB_ICONQUESTION + MB_YESNO) = idYes then
        xxx
      else
        xxx(false)
    end
    else
      xxx(false);
  end;
end;

procedure TfOperWare.cbKoefKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    cbKoef.ItemIndex := 0;
  cbKoefDoChange;
end;

function TfOperWare.GetKoefVal: integer;
begin
  case cbKoef.ItemIndex of
    0 : Result := 0;
    1 : Result := 1;
    2 : Result := -1;
    else
      Result := 0;
  end;
end;

procedure TfOperWare.SetKoefVal(const Value: integer);
begin
  case Value of
    0 : cbKoef.ItemIndex := 0;
    1 : cbKoef.ItemIndex := 1;
    -1 : cbKoef.ItemIndex := 2;
    else
      cbKoef.ItemIndex := 0;  
  end;
  cbKoefDoChange;
end;

procedure TfOperWare.MakeRed;
begin
  if cdsOperFin.FieldByName('SrcID_Main').IsNull then
  begin
    with lbSrcName do
    begin
      Font.Style := Font.Style + [fsBold];
      Font.Color := clRed;
    end;
  end;
  if cdsOperFin.FieldByName('ReprID_Main').IsNull then
  begin
    with lbReprName do
    begin
      Font.Style := Font.Style + [fsBold];
      Font.Color := clRed;
    end;
  end;
{  if (not cdsOperFinid_Repr.IsNull or not cdsOperFinid_Repr_Ex.IsNull) and
     (cdsOperFinid_ContrAgent.IsNull) then
  begin
    with DBEdit12 do
    begin
      Label19.Font.Style := Font.Style + [fsBold];
      Label19.Color := clRed;
    end;
  end;    }
{  if (cdsOperFinReprWHID_Main.IsNull) and
     (not cdsCAWHList.IsEmpty) then
  begin
    with lbReprWHName do
    begin                                                                       
      Font.Style := Font.Style + [fsBold];
      Font.Color := clRed;
    end;
  end;   }
{  if cdsOperFinWareID_Main.IsNull then
  begin
    with lbWareName do
    begin
      Font.Style := Font.Style + [fsBold];
      Font.Color := clRed;
    end;
  end;  }
end;


procedure TfOperWare.cdsOperFinCorrectGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsBoolean then
    Text := '��'
  else
    Text := '���';
end;

procedure TfOperWare.LockPrice;
var i : integer;
    tmpCol : TColumnEh;
begin
  FPriceLocked := true;
  aCalcSys.Enabled := not FPriceLocked;
  aCalcOper.Enabled := not FPriceLocked;
  aSumm.Enabled := not FPriceLocked;
  DisableControl(P4);
  DisableControl(POther);

  for i := 0 to DBGridEh1.Columns.Count - 1 do
  begin
    tmpCol := DBGridEh1.Columns[i];
    if (tmpCol.Field = dsOperWare.DataSet.FieldByName('PriceOper')) or (tmpCol.Field = dsOperWare.DataSet.FieldByName('SummSys')) then
      tmpCol.ReadOnly := true;
  end;
end;

procedure TfOperWare.UnLockPrice;
var i : integer;
    tmpCol : TColumnEh;
begin
  FPriceLocked := false;
  aCalcSys.Enabled := not FPriceLocked;
  aCalcOper.Enabled := not FPriceLocked;
  aSumm.Enabled := not FPriceLocked;
  EnableControl(P4);
  EnableControl(POther);
  fCurSelector2.Enabled := CheckBox1.Checked and CheckBox1.Enabled;

  for i := 0 to DBGridEh1.Columns.Count - 1 do
  begin
    tmpCol := DBGridEh1.Columns[i];
    if (tmpCol.Field = dsOperWare.DataSet.FieldByName('PriceOper')) then
      tmpCol.ReadOnly := false;
    if (tmpCol.Field = dsOperWare.DataSet.FieldByName('SummSys')) then
      tmpCol.ReadOnly := not CheckBox1.Checked or not CheckBox1.Enabled;
  end;
end;

procedure TfOperWare.CheckNColor;
begin
  if ((not cdsOperFin.FieldByName('id_Repr').IsNull) or (not cdsOperFin.FieldByName('id_Repr_Ex').IsNull))
  or ((cbOperTypeIn.ItemIndex = 1) and (not cdsOperFin.FieldByName('id_Manufact').IsNull) and (not cdsOperFin.FieldByName('id_WareHouse_Ext').IsNull))
  or ((cbOperTypeIn.ItemIndex = 0) and (not cdsOperFin.FieldByName('id_Manufact_Ext').IsNull) and (not cdsOperFin.FieldByName('id_Manufact_Ext').IsNull)) then
  begin
    UnLockPrice;
    if not ((not cdsOperFin.FieldByName('id_Repr').IsNull) or (not cdsOperFin.FieldByName('id_Repr_Ex').IsNull)) or
       ((cbOperTypeIn.ItemIndex = 1) and  (not cdsOperFin.FieldByName('id_Repr').IsNull) or (not cdsOperFin.FieldByName('id_Repr_Ex').IsNull) and not cdsOperFin.FieldByName('id_WareHouse').IsNull)  then
      DisableControl(POther); 
  end
  else
  begin
    LockPrice;
  end;
  
  if FOperParamz.ReadOnly then Exit;
  if not FNeedColor then
    Exit;
  with cbOperTypeIn do
  begin
    if  trim(Text) = '' then
    begin
      Color := redColor;
    end
    else
      Color := clWindow;
  end;

{  with DBEdit1 do
  begin
    if (trim(Text) = '') or (Field.AsFloat = 0) then
    begin
      Color := redColor;
    end
    else
      Color := clWindow;
  end; }
  with edReprName do
  begin
    if (trim(Text) = '')  {or
     ((not cdsOperFin.FieldByName('id_Repr_Ex').IsNull) and (cdsOperFin.FieldByName('id_Repr').IsNull))}  then
    begin
      Color := redColor;
    end
    else
      Color := clWindow;
  end;
{  with DBEdit2 do
  begin
    if (trim(Text) = '') or (Field.AsFloat = 0) then
    begin
      Color := redColor;
    end
    else
      Color := clWindow;
  end;  }
  with fCurSelector1.cbCur do
  begin
    if fCurSelector1.ID_Curr = Null then
    begin
      Color := redColor;
    end
    else
      Color := clWindow;
  end;
 { if (CheckBox1.Checked) then
  begin
    with DBEdit4 do
    begin
      if (trim(Text) = '') or (Field.AsFloat = 0) then
    begin
      Color := redColor;
    end
      else
        Color := clWindow;
    end;   
    with fCurSelector2.cbCur do
    begin
      if fCurSelector2.ID_Curr = Null then
    begin
      Color := redColor;
    end
      else
        Color := clWindow;
    end;
  end;     }
  with lcFormalDistrib do
  begin
    if (trim(Text) = '') and (Enabled) then
    begin
      Color := redColor;
    end
    else
      Color := clWindow;
  end;
  with lcFuncDistrib do
  begin
    if (trim(Text) = '') and (Enabled) then
    begin
      Color := redColor;
    end
    else
      Color := clWindow;
  end;
{  with DBEdit9 do
  begin
    if trim(Text) = '' then
    begin
      Color := redColor;
    end
    else
      Color := clWindow;
  end; 
  with DBEdit9 do
  begin
    if trim(Text) = '' then
    begin
      Color := redColor;
    end
    else
      Color := clWindow;
  end;   }
  with fCurSelector1.cbCur do
  begin
    if fCurSelector1.ID_Curr = Null then
  begin
    Color := redColor;
  end
    else
      Color := clWindow;
  end;
  if CheckBox1.Checked and CheckBox1.Enabled then
  begin
    with fCurSelector2.cbCur do
    begin
      if fCurSelector2.ID_Curr = Null then
    begin
      Color := redColor;
    end
      else
        Color := clWindow;
    end;
  end;
end;

procedure TfOperWare.cbOperTypeInChange(Sender: TObject);
begin
  CheckNColor;
  if (not dsOperware.DataSet.IsEmpty) then
  begin
    if MessageBox(Handle, '����������� ���� ������?', '����������� ��������', MB_ICONQUESTION + MB_YESNO) = idYes then
      xxx
    else
      xxx(false)
  end
  else
    xxx(false);
end;

procedure TfOperWare.lcbBsnChange(Sender: TObject);
begin
  CheckNColor;
end;

procedure TfOperWare.cbKoefChange(Sender: TObject);
begin
  cbKoefDoChange;
end;

procedure TfOperWare.cbKoefDoChange;
begin
  lcFormalDistrib.Enabled := true; //(cbKoef.ItemIndex > 0);
  lcFuncDistrib.Enabled := true; //(cbKoef.ItemIndex > 0);
  CheckNColor;
end;


function TfOperWare.CheckAmount: boolean;
var ID, OldRecNo : integer;
    TotalAmount, AmountOper : Extended;
    Price, ID_Cur : OLeVariant;
    Koef :  Double;
    ID_Warehouse : Variant;
    Amount: Extended;
begin
  Result := true;
  ID_Warehouse := Null;
  if (cbOperTypeIn.ItemIndex = 1) and (not cdsOperFin.FieldByName('HasViza').AsBoolean) then
  begin
    ID_Warehouse := cdsOperFin.FieldByName('ID_Warehouse').Value;
  end;
  if (cbOperTypeIn.ItemIndex = 0) and (not cdsOperFin.FieldByName('HasViza').AsBoolean) then
  begin
    ID_Warehouse := cdsOperFin.FieldByName('id_Warehouse_Ext').Value;
  end;
  // *** ��������� ���-�� ***
  with dsOperWare.DataSet do
  begin
    DisableControls;
    try
      OldRecNo := RecNo;
      First;
      while not Eof do
      begin
        Result := CheckAmountOne(Amount, AmountOper);
        if not Result then
          Break;
        Next;
      end;
    finally
      RecNo := OldRecNo;
      EnableControls;
    end;
  end;
end;

function TfOperWare.CheckAmountOne(var Amount, AmountOper: Extended): boolean;
var ID, OldRecNo : integer;
    TotalAmount : Double;
    Price, ID_Cur : OLeVariant;
    Koef, K2 :  Double;
    ID_Warehouse : Variant;
begin
  Result := true;
  if cdsOperFin.FieldByName('OperVid').AsInteger = 201 then
  begin
    Exit;
  end;
  ID_Warehouse := Null;
  if (cbOperTypeIn.ItemIndex = 1) and (not cdsOperFin.FieldByName('HasViza').AsBoolean) then
  begin
    ID_Warehouse := cdsOperFin.FieldByName('ID_Warehouse').Value;
  end;
  if (cbOperTypeIn.ItemIndex = 0) and (not cdsOperFin.FieldByName('HasViza').AsBoolean) then
  begin
    ID_Warehouse := cdsOperFin.FieldByName('id_Warehouse_Ext').Value;
  end;
  // *** ��������� ���-�� ***
  with dsOperWare.DataSet do
  begin
    ID := dsOperWare.DataSet.FieldByName('id_Goods').Value;
    Koef := 1;
    if not FieldByName('RealKoef').IsNull then
      Koef := FieldByName('RealKoef').AsFloat;
    AmountOper := 0;
    try
      OldRecNo := RecNo;
      DisableControls;
      First;
      while not Eof do
      begin
        if ID = dsOperWare.DataSet.FieldByName('id_Goods').Value then
        begin
          K2 := 1;
          if not FieldByName('RealKoef').IsNull then
            K2 := FieldByName('RealKoef').AsFloat;

          AmountOper := AmountOper + dsOperWare.DataSet.FieldByName('AmountOper').AsFloat * K2;
        end;
        Next;
      end;
      if ID_Warehouse <> Null then
      begin
        if DM.PL_GetDefWarePrice(ID, ID_Warehouse, Price, ID_Cur, TotalAmount) <> -1 then
        begin
          Amount := TotalAmount/Koef;
          AmountOper := AmountOper/Koef;
          Result := Amount - AmountOper >= 0;//0.001;
        end;
      end;
    finally
      RecNo := OldRecNo;
      EnableControls;
    end;
  end;
end;

procedure TfOperWare.cdsOperFinAfterPost(DataSet: TDataSet);
begin
  CheckNColor;
end;

procedure TfOperWare.xxx(ACalcPrice : boolean);
var OldRec : integer;
begin
  if FOperParamz.ReadOnly or
    (not ACalcPrice and (cdsOperFinOperVid.AsInteger = 201)) then Exit;
  
  with dsOperWare.DataSet do
  begin
    OldRec := RecNo;
    First;
    DisableControls;
    try
      while not Eof do
      begin
        xxxOne(ACalcPrice);

        Next;
      end;
      RecNo := OldRec;
    finally
      EnableControls;
    end;
  end;
end;

procedure TfOperWare.xxxOne(ACalcPrice : boolean);
var ASelectedObj : TSelectedObj;
    Price, Price2, ID_Cur, ID_Warehouse: OleVariant;
    TotalAmount : Double;
    NeedPost : boolean;
begin
  ASelectedObj.ID := Null;
  with dsOperWare.DataSet do
  begin
    if not FieldByName('id_Goods').IsNull then
    begin
      ASelectedObj.ID := FieldByName('id_Goods').Value;
      ASelectedObj.ObjType := eotGoods;
    end;

    if ASelectedObj.ID <> Null then
    begin
      NeedPost := not (dsOperWare.DataSet.State in [dsEdit, dsInsert]);
      if NeedPost then
        Edit;
      // ����������� ���������� ����

        ID_Warehouse := cdsOperFin.FieldByName('ID_Warehouse').Value;

        if DM.PL_GetDefWarePrice(ASelectedObj.ID, ID_Warehouse, Price, ID_Cur, TotalAmount) <> -1 then
        begin
          Price2 := Price;
          Price := Price*FieldByName('RealKoef').AsFloat;
          if ACalcPrice then
          begin
            if fCurSelector1.ID_Curr = Null then
              fCurSelector1.ID_Curr := FId_CurrencyInv;
            if FId_CurrencyInv = fCurSelector1.ID_Curr then
              FieldByName('PriceOper').Value := Price
            else
              FieldByName('PriceOper').Value := Null;
          end;


          if ((not cdsOperFin.FieldByName('id_Repr').IsNull) or (not cdsOperFin.FieldByName('id_Repr_Ex').IsNull))
          or ((cbOperTypeIn.ItemIndex = 1) and (not cdsOperFin.FieldByName('id_Manufact').IsNull) and (not cdsOperFin.FieldByName('id_WareHouse_Ext').IsNull))
          or ((cbOperTypeIn.ItemIndex = 0) and (not cdsOperFin.FieldByName('id_Manufact_Ext').IsNull) and (not cdsOperFin.FieldByName('id_Manufact_Ext').IsNull)) then
          begin
            UnLockPrice;
            if FUsePrice and (FId_CurrencyInv = fCurSelector1.ID_Curr) then
            begin
              DM.cdsGoodsProp.Close;
              try
                DM.cdsGoodsProp.Params.ParamByName('@id_Goods').Value := FieldByName('id_Goods').Value;
                DM.cdsGoodsProp.Open;
                FieldByName('PriceOper').AsVariant := DM.cdsGoodsPropPrice.AsVariant;
              finally
                DM.cdsGoodsProp.Close;
              end;
            end;
          end
          else
          begin
            LockPrice;
           // if fCurSelector1.ID_Curr = Null then
              fCurSelector1.ID_Curr := FId_CurrencyInv;
          //  if FId_CurrencyInv = fCurSelector1.ID_Curr then
              FieldByName('PriceOper').Value := Price
          //  else
          //    FieldByName('PriceOper').Value := Null;
          end;
            
          if (cbOperTypeIn.ItemIndex = 1) and  not cdsOperFin.FieldByName('id_WareHouse').IsNull and
          ((not cdsOperFin.FieldByName('id_Repr').IsNull) or (not cdsOperFin.FieldByName('id_Repr_Ex').IsNull)) then
            begin
              dsOperWare.DataSet.FieldByName('PriceInv').Value := Price;
              cdsOperFin.Edit;
              cdsOperFin.FieldByName('Id_CurrencyInv').Value := FId_CurrencyInv;//ID_Cur;
              cdsOperFin.Post;
          //    FieldByName('Id_CurrencyInv').Value := ID_Cur;
          //    fCurSelectorInv.ID_Curr := ID_Cur;
         //     EnableControl(GroupBox1);
          //    fCurSelectorInv.cbCur.Enabled := false;
          //    DBEdit10.Enabled := false;
          end
          else
          begin
            // ������� ���
            FieldByName('PriceInv').Value := Null;
            cdsOperFin.Edit;
            cdsOperFin.FieldByName('Id_CurrencyInv').Value := Null;
            cdsOperFin.Post;
       //     fCurSelectorInv.ID_Curr := Null;
       //     DisableControl(GroupBox1);
          end;
       end;
       if NeedPost and (dsOperWare.DataSet.State in [dsEdit, dsInsert]) then
         dsOperWare.DataSet.Post;

    end;
  end;
end;

procedure TfOperWare.DBEdit1Enter(Sender: TObject);
begin
//  Windows.SetFocus((sender as TWinControl).Handle);
  TCustomEdit(sender).SelStart := 0;
  TCustomEdit(sender).SelLength := Length(TCustomEdit(sender).Text);
end;

procedure TfOperWare.cdsOperWareCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('Numb').AsInteger := DataSet.RecNo;
  if DataSet.FieldByName('AmountOper').AsFloat = 0 then
    DataSet.FieldByName('SummOper2').AsFloat := DataSet.FieldByName('PriceOper').AsFloat
  else
    DataSet.FieldByName('SummOper2').AsFloat := DataSet.FieldByName('AmountOper').AsFloat * DataSet.FieldByName('PriceOper').AsFloat;

  if DataSet = cdsOperWare201 then
    DataSet.FieldByName('delta').AsFloat := DataSet.FieldByName('AmountOper').AsFloat - DataSet.FieldByName('AmountOperBaseMS_1').AsFloat;

end;

procedure TfOperWare.DBGridEh1DblClick(Sender: TObject);
begin
//  AddWare(true);
end;

procedure TfOperWare.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var Style, cbSize   : Integer;
    R : TRect;
    ImgIndex : integer;
    S : String;
begin
  if (Sender as TDBGridEh).DataSource.DataSet.IsEmpty then
    Exit;

  if Column.Field = dsOperWare.DataSet.FieldByName('WareName') then
  begin
    if FOperVid = 201 then
      ImgIndex := 13
    else
      ImgIndex := 2;
    TDBGridEh(Sender).Canvas.FillRect(Rect);
    ilImage.Draw(TDBGridEh(Sender).Canvas, Rect.Left + 2, Rect.Top + 1, ImgIndex);
    R := Rect;
    R.Top := R.Top + 2;
    R.Left := R.Left + 2 + ilImage.Width;
//    S := cdsOperWare.FieldByName('WareName').AsString;
//    DrawText(TDBGridEh(Sender).Canvas.Handle, PChar(S), -1, R, DT_RIGHT);
    TDBGridEh(Sender).DefaultDrawColumnCell(R, DataCol, Column, State);
  end
  else
  begin
    TDBGridEh(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);

    // ������ ������������� ������
    if ((Column.Field = dsOperWare.DataSet.FieldByName('PriceOper')) and
       (dsOperWare.DataSet.FieldByName('PriceOper').AsFloat = 0)) 
       or
       ((Column.Field = dsOperWare.DataSet.FieldByName('AmountOper')) and
       (dsOperWare.DataSet.FieldByName('AmountOper').AsFloat = 0))
       or
       ((Column.Field = dsOperWare.DataSet.FieldByName('MeasureName')) and
       (dsOperWare.DataSet.FieldByName('id_Measure').IsNull))
       or
       (CheckBox1.Checked and CheckBox1.Enabled and
       (Column.Field = dsOperWare.DataSet.FieldByName('SummSys')) and
       (dsOperWare.DataSet.FieldByName('SummSys').AsFloat = 0))
        then
    begin
      TDBGridEh(Sender).Canvas.Brush.Color := clWindow;

      TDBGridEh(Sender).Canvas.Font.Color := clRed;
      TDBGridEh(Sender).Canvas.Font.Style := TDBGridEh(Sender).Canvas.Font.Style + [fsBold];

      TDBGridEh(Sender).Canvas.Brush.Style := bsClear;
      TDBGridEh(Sender).Canvas.Pen.Color := clRed;
      TDBGridEh(Sender).Canvas.Rectangle(Rect.Left + 0, Rect.Top + 0, Rect.Right - 0, Rect.Bottom - 0);
    end;    
  end; 
end;

procedure TfOperWare.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (dsOperWare.DataSet = cdsOperWare201) and (cdsOperWare201delta.AsFloat <= 0) then
  begin
    AFont.Color := clGrayText;
    AFont.Style := [fsStrikeOut];
  end;
  if dsOperWare.DataSet.FieldByName('WareID_Main').IsNull then
  begin
  //  AFont.Color := clRed;
    AFont.Style := [fsBold];
  end;
  if (FPriceLocked) and
     ((Column.Field = dsOperWare.DataSet.FieldByName('PriceOper')) or
     (Column.Field = dsOperWare.DataSet.FieldByName('SummOper2')) or
     (Column.Field = dsOperWare.DataSet.FieldByName('SummSys'))) then
    AFont.Color := clGrayText
  else
  begin
    if (not CheckBox1.Checked or not CheckBox1.Enabled) and (Column.Field = dsOperWare.DataSet.FieldByName('SummSys')) then
      AFont.Color := clGrayText;
    if (CheckBox1.Checked and CheckBox1.Enabled) and ((Column.Field = dsOperWare.DataSet.FieldByName('SummOper2')) or (Column.Field = dsOperWare.DataSet.FieldByName('PriceOper'))) then
      AFont.Color := clGrayText;
  end;
end;

procedure TfOperWare.dsWMesDataChange(Sender: TObject; Field: TField);
begin
//*
  tag := 0;
end;

procedure TfOperWare.AddWare(AEdit : boolean);
var ASelectedObj : TSelectedObj;
    Price, ID_Cur: OleVariant;
    TotalAmount : Double;
    id_Warehouse : integer;
    AID, AName : OleVariant;
    S : String;
    EObjTypes : TEObjTypes;
    OldID, OldRecNo : Integer;
begin
  with cbOperTypeIn do
    if trim(Text) = '' then
    begin
      MessageBox(Handle, '�� ������ ��� ��������', '������� �������� ��� ��������', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      Exit;
    end;
  with DBEdit3 do
    if trim(Text) = '' then
    begin
      MessageBox(Handle, '�� ������ �����', '������� �������� �����', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      Exit;
    end;
  with edReprName do
    if trim(Text) = '' then
    begin
      MessageBox(Handle, '�� ������ ����� ������', '������� �������� ����������', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      Exit;
    end;
  Screen.Cursor := crSQLWait;
  EObjTypes := [eotGoods];
  with dsOperWare.DataSet do
  begin
    if not FieldByName('id_Goods').IsNull then
    begin
      ASelectedObj.ID := FieldByName('id_Goods').Value;
      ASelectedObj.ObjType := eotGoods;
//      EObjTypes := [eotGoods];
    end;
    if cbOperTypeIn.ItemIndex = 1 then // ������
    begin
      if cdsOperFin.FieldByName('id_Warehouse').IsNull then
        id_Warehouse := -1
      else
        id_Warehouse := cdsOperFin.FieldByName('id_Warehouse').AsInteger;
    end
    else
    begin
      if cdsOperFin.FieldByName('id_Warehouse_Ext').IsNull then
        id_Warehouse := -1
      else
        id_Warehouse := cdsOperFin.FieldByName('id_Warehouse_Ext').AsInteger;
    end;
//    if not AEdit then ASelectedObj.ID := -1;
    OldID := ASelectedObj.ID;
    if SelectObjUnBsn(Owner, cdsOperFin.FieldByName('id_business').AsInteger, ASelectedObj, 0, EObjTypes, true, id_Warehouse) then
    begin
      if FOperParamz.ReadOnly then Exit;

      OldRecNo := RecNo;
      if (not AEdit or (OldID <> ASelectedObj.ID)) and Locate('id_Goods', ASelectedObj.ID, []) then
      begin
        if cdsOperFin.FieldByName('OperVid').AsInteger = 201 then
        begin
          MessageBox(Handle, PChar('���� ����� ��� ������. � ������ ������ �������� ��� ��������, ����� ��� ����������.'), '���� ����� ��� ������', MB_ICONWARNING + MB_OK);
          DBGridEh1.Col := 3;
          windows.SetFocus(DBGridEh1.Handle);
          Exit;
        end
        else
        begin
          if MessageBox(Handle, PChar('���� ����� ��� ������. �� ������ �� ��������� ��� ��������, � ������ �������� ��� ����������.' + #13 + #10 +
                                      '�������� ��������?'), '���� ����� ��� ������', MB_ICONWARNING + MB_YESNO + MB_DEFBUTTON2) <> IDYES	then
          begin
            DBGridEh1.Col := 3;
            windows.SetFocus(DBGridEh1.Handle);
            Exit;
          end
          else
          begin
            RecNo := OldRecNo;
          end;
        end;
      end;
      if AEdit then
        Edit
      else
      begin
        BeforeInsert := nil;
        Append;
        BeforeInsert := cdsOperWareBeforeInsert;
      end;
        
      FieldByName('WareName').Value := ASelectedObj.Name;

      FieldByName('id_Goods').Value := ASelectedObj.ID;

      if DM.rsCA.AppServer.PL_WareMeasureGet(FieldByName('id_Goods').Value,
                                             AID, AName) = 1 then
      begin
        FieldByName('id_Measure').Value := AID;
        FieldByName('MeasureName').Value := AName;
        FieldByName('RealKoef').AsInteger := 1;
      end;
      xxxOne;
      Post;
      DBGridEh1.col := 3;
      windows.SetFocus(DBGridEh1.Handle);
    end;
  end;
 // CheckMeasure;
{  if cdsWMes.Locate('id_BaseMeasure', Null, []) then
  begin
    lcbWMes.KeyValue := cdsWMesid_Measure.AsInteger;
  end;}
end;

procedure TfOperWare.OnSelectWare(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
  AddWare(false);
end;

procedure TfOperWare.OnDoCalcCrn(Sender: TObject;
  var Handled: Boolean);
begin
  sbConvertCrn;
end;

procedure TfOperWare.sbConvertCrn(ABack: boolean);
var
    S : String;
    OldRecNo : integer;
    RateOper, RateSys, K: Extended;

  procedure ConvOne;
  var F : Extended;
  begin                        
    with dsOperWare.DataSet do
    begin
      if ABack then
        F := FieldByName('SummSys').AsFloat / K
      else
        F := FieldByName('SummOper2').AsFloat * K;

      Edit;
      if ABack then
        FieldByName('PriceOper').AsFloat := Round(F*100)/100/FieldByName('AmountOper').AsFloat
      else
        FieldByName('SummSys').AsFloat := Round(F*100)/100;
      Post;
    end;
  end;
begin
  if fCurSelector1.ID_Curr = Null then
  begin
    MessageBox(Handle, '�� ������� ������', '', MB_OK + MB_ICONERROR);
    Windows.SetFocus(fCurSelector1.cbCur.Handle);
    Exit;
  end;
  if fCurSelector2.ID_Curr = Null then
  begin
    MessageBox(Handle, '�� ������� ������', '', MB_OK + MB_ICONERROR);
    Windows.SetFocus(fCurSelector2.cbCur.Handle);
    Exit;
  end;

  if ShowCrnRateSelector(cdsOperFinid_business.AsInteger, fCurSelector1.ID_Curr, fCurSelector2.ID_Curr, RateOper, RateSys) then
  begin
    K := RateOper/RateSys;
    if (dsOperWare.DataSet.RecordCount > 1) and (MessageBox(Handle, PChar('���������� ����� ������ ��� ���� ������� (��) ��� ������ ��� "' + dsOperWare.DataSet.FieldByName('WareName').AsString + '" (���)?'), '', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = idyes) then
    begin
      with dsOperWare.DataSet do
      begin
        OldRecNo := RecNo;
        First;
        while not Eof do
        begin
          ConvOne;
          Next;
        end;
        RecNo := OldRecNo;
      end;
    end
    else
      ConvOne;
  end;
end;
  
procedure TfOperWare.cdsOperWareid_MeasureChange(Sender: TField);
begin
  tag := 0;
end;

procedure TfOperWare.cdsOperWareMeasureName13GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
 { if Sender.AsString = '' then
    Text := Sender.DataSet.fieldByName('MeasureName').AsString
  else
    Text := Sender.AsString;    }
end;                            

procedure TfOperWare.cdsOperWareMeasureName13Change(Sender: TField);
begin
//  if Sender.DataSet.fieldByName('MeasureName').AsString <> Sender.AsString then
//    Sender.DataSet.fieldByName('MeasureName').AsString := Sender.AsString;
end;

procedure TfOperWare.OnChangeMes(Sender: TObject;
  var Handled: Boolean);
begin
  DoChangeMes;
end;

procedure TfOperWare.DoChangeMes;
var
  AID:Variant;
  AName:string;
  Koef, KKK : Extended;
  xxxPriceOper, xxxPriceInv : Variant;
begin
  with dsOperWare.DataSet do
  begin
    AID := FieldByName('id_Measure').Value;
//  AName := cdsWare.FieldByName('MeasureName').AsString;
    if SelectOperMeasure(Handle, FieldByName('id_Goods').Value,
                         AID, AName, Koef) then
    begin
      Edit;
      FVKoef := FieldByName('RealKoef').Value;
      FieldByName('MeasureName').AsString := AName;
      FieldByName('id_Measure').Value := AID;
      FieldByName('RealKoef').Value := Koef;

      xxxPriceOper := Null;
      if FVKoef <> Null then
      begin
        KKK := Koef/FVKoef;
        if dsOperWare.DataSet = cdsOperWare201 then
        begin
          FieldByName('AmountOperBaseMS_2').Value := FieldByName('AmountOperBaseMS_2').Value / KKK;
        end;
        if not FieldByName('PriceOper').IsNull then
        begin
          xxxPriceOper := FieldByName('PriceOper').AsVariant * KKK;
        end;
        if not FieldByName('PriceInv').IsNull then
        begin
          FieldByName('PriceInv').AsVariant := FieldByName('PriceInv').AsVariant * KKK;
        end; 
        if ((not FieldByName('PriceOper').IsNull) or
           (not FieldByName('PriceInv').IsNull)) and (Koef <> FVKoef) then
        begin
          if MessageBox(Handle, '�� �������� ������� ���������. ����������� "���� �� �������"?', '�������� ������� ���������', MB_ICONQUESTION + MB_YESNO) = idYes then
          begin
            FieldByName('PriceOper').AsVariant := xxxPriceOper;
        //    FieldByName('PriceInv').AsVariant := xxxPriceInv;
          end;
        end;
      end;
      FVKoef := Koef;

      Post;
    end;
  end;
end;

procedure TfOperWare.DBGridEh1EditButtonClick(Sender: TObject);
var tmpCol : TColumnEh;
begin
  if dsOperWare.DataSet.FieldByName('WareName').IsNull then Exit;
  tmpCol := TDBGridEh(Sender).Columns[TDBGridEh(Sender).col - 1];
  if tmpCol.Field = dsOperWare.DataSet.FieldByName('WareName') then
    AddWare(true);
  if not FOperParamz.ReadOnly then
  begin
    if tmpCol.Field = dsOperWare.DataSet.FieldByName('MeasureName') then
      DoChangeMes;
    if tmpCol.Field = dsOperWare.DataSet.FieldByName('AmountOper') then
      EditAmountOper;
    if tmpCol.Field = dsOperWare.DataSet.FieldByName('SummSys') then
      sbConvertCrn;
  end;
end;

procedure TfOperWare.EditAmountOper;
var F : Variant;
    ACol : TColumnEh;
    S : String;
begin
  ACol := DBGridEh1.Columns[DBGridEh1.col - 1];
  if ACol.Field = dsOperWare.DataSet.FieldByName('SummOper2') then
  begin
    CalcSumm;
    Exit;
  end;  
  F := ACol.Field.AsFloat;
  if ACol.Field = dsOperWare.DataSet.FieldByName('AmountOper') then
  begin
    S := '���-�� ������';
  end
  else
    if ACol.Field = dsOperWare.DataSet.FieldByName('PriceOper') then
    begin
      S := '���� ������';
    end
    else
      if ACol.Field = dsOperWare.DataSet.FieldByName('SummSys') then
      begin
        S := '����� ������';
      end;
  if InputBoxDigit(Handle, S + ' "' + dsOperWare.DataSet.FieldByName('WareName').AsString + '"', ACol.Title.Caption, F) then
  begin
    with dsOperWare.DataSet do
    begin
      Edit;
      ACol.Field.AsFloat := F;
      Post;
    end;
  end;   
end;

procedure TfOperWare.aSummExecute(Sender: TObject);
begin
  CalcSumm;
end;

procedure TfOperWare.CalcSumm;
var F : Variant;
begin
  if dsOperWare.DataSet.FieldByName('AmountOper').AsFloat = 0 then
    Exit;
  F := dsOperWare.DataSet.FieldByName('SummOper2').AsFloat;
  if InputBoxDigit(Handle, '����� ������ "' + dsOperWare.DataSet.FieldByName('WareName').AsString + '"', '�����', F) then
  begin
    F := F / dsOperWare.DataSet.FieldByName('AmountOper').AsFloat;
    with dsOperWare.DataSet do
    begin
      Edit;
      FieldByName('PriceOper').AsFloat := F;
      Post;
    end;
  end;   
end;

procedure TfOperWare.aCalcSysExecute(Sender: TObject);
begin
  sbConvertCrn;
end;

procedure TfOperWare.aDelWareExecute(Sender: TObject);
var i : integer;
    S : String;
begin
  if DBGridEh1.SelectedRows.Count > 0 then
    S := '������� ' + IntToStr(DBGridEh1.SelectedRows.Count) + ' �������?'
  else
    S := '������� ����� "' + dsOperWare.DataSet.FieldByName('WareName').AsString+ '"?';
  if MessageBox(Handle, PChar(S), '����������� ��������', MB_YESNO + MB_ICONQUESTION) = idYes then
  begin
    try
      if DBGridEh1.SelectedRows.Count > 0 then
      begin
        for i := 0 to DBGridEh1.SelectedRows.Count - 1 do
        begin
          DBGridEh1.DataSource.DataSet.GotoBookmark(pointer(DBGridEh1.SelectedRows.Items[i]));
          dsOperWare.DataSet.Delete;
        end;
      end
      else
        dsOperWare.DataSet.Delete;
    finally

    end;


  end;
end;

procedure TfOperWare.aAddWareExecute(Sender: TObject);
begin
  AddWare(false);
end;

procedure TfOperWare.cdsOperWareBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfOperWare.dsOperWareDataChange(Sender: TObject; Field: TField);
begin
  aClearWare.Enabled := not dsOperWare.DataSet.IsEmpty;
  CheckButton;
  aDelWare.Enabled := not dsOperWare.DataSet.IsEmpty and not FOperParamz.ReadOnly;
  aCalcSys.Enabled := not dsOperWare.DataSet.IsEmpty and not FPriceLocked and ((CheckBox1 <> nil) and CheckBox1.Checked) and not FOperParamz.ReadOnly;
  aCalcOper.Enabled := not dsOperWare.DataSet.IsEmpty and not FPriceLocked and ((CheckBox1 <> nil) and CheckBox1.Checked) and not FOperParamz.ReadOnly;
  aSumm.Enabled := not dsOperWare.DataSet.IsEmpty and not FPriceLocked and not FOperParamz.ReadOnly;
  aAddWare.Enabled := not FOperParamz.ReadOnly;
end;

procedure TfOperWare.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
var tmpCol : TColumnEh;
    S, S2 : String;
begin
  if (Key = '.') or (Key = ',') then
  begin
    tmpCol := TDBGridEh(Sender).Columns[TDBGridEh(Sender).col - 1];
    if (tmpCol.Field is TFloatField) or (tmpCol.Field is TBCDField) then
      Key := DecimalSeparator;
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

procedure TfOperWare.CheckFooter;
var i : integer;
begin
  for i := 0 to DBGridEh1.Columns.Count - 1 do
  begin
    if DBGridEh1.Columns[i].Field = dsOperWare.DataSet.FieldByName('SummOper2') then
    begin
      if not CheckBox1.Checked or not CheckBox1.Enabled then
        DBGridEh1.Columns[i].Footer.Font.Style := [fsBold]
      else
        DBGridEh1.Columns[i].Footer.Font.Style := [];
    end;
    if DBGridEh1.Columns[i].Field = dsOperWare.DataSet.FieldByName('SummSys') then
    begin
      if CheckBox1.Checked or CheckBox1.Enabled then
        DBGridEh1.Columns[i].Footer.Font.Style := [fsBold]
      else
        DBGridEh1.Columns[i].Footer.Font.Style := [];
    end;
  end; 
end;

procedure TfOperWare.aCalcAmountExecute(Sender: TObject);
begin
  EditAmountOper;
end;

procedure TfOperWare.CheckButton;
var ACol : TColumnEh;
begin     
  if not (csDestroying in ComponentState) and (DBGridEh1 <> nil) and (DBGridEh1.col < DBGridEh1.Columns.Count) then
  begin
    ACol := DBGridEh1.Columns[DBGridEh1.col - 1];
    aCalcAmount.Enabled := not dsOperWare.DataSet.IsEmpty and not FPriceLocked and not FOperParamz.ReadOnly and (
                           (ACol.Field = dsOperWare.DataSet.FieldByName('AmountOper')) or
                           (ACol.Field = dsOperWare.DataSet.FieldByName('PriceOper')) or
                           (ACol.Field = dsOperWare.DataSet.FieldByName('SummOper2')) or
                           ((ACol.Field = dsOperWare.DataSet.FieldByName('SummSys')) and (CheckBox1.Checked and CheckBox1.Enabled))
                           );
  end;
end;

procedure TfOperWare.DBGridEhColEnter(Sender: TObject);
var ACol : TColumnEh;
begin
  if dsOperWare.DataSet.State = dsEdit then
  begin
    dsOperWare.DataSet.Post;
    DBGridEh1.Columns[5].Footer.EnsureSumValue;
  end;

  ACol := DBGridEh1.Columns[DBGridEh1.col - 1];
  aCalcAmount.Enabled := not dsOperWare.DataSet.IsEmpty and not FPriceLocked and not FOperParamz.ReadOnly and (
                         (ACol.Field = dsOperWare.DataSet.FieldByName('AmountOper')) or
                         (ACol.Field = dsOperWare.DataSet.FieldByName('PriceOper')) or
                         (ACol.Field = dsOperWare.DataSet.FieldByName('SummOper2')) or
                         ((ACol.Field = dsOperWare.DataSet.FieldByName('SummSys')) and (CheckBox1.Checked and CheckBox1.Enabled))
                         );
end;

procedure TfOperWare.aClearWareExecute(Sender: TObject);
begin
  if MessageBox(Handle, PChar('�������� �������� �������?'), '����������� �������', MB_ICONWARNING + MB_YESNO + MB_DEFBUTTON2) = IDYES then
  begin
    with dsOperWare.DataSet do
    begin
      while not IsEmpty do
        Delete;
    end;
  end;
end;

procedure TfOperWare.CalcAmountSum;
var OldRecNo, oldId_Mes : integer;
begin
  FShowSummAmount := true;
  with dsOperWare.DataSet do
  begin
    OldRecNo := RecNo;
    DisableControls;
    try
      First;
      oldId_Mes := dsOperWare.DataSet.FieldByName('id_Measure').AsInteger;
      while not Eof do
      begin
        if oldId_Mes <> dsOperWare.DataSet.FieldByName('id_Measure').AsInteger then
        begin
          FShowSummAmount := false;
          Break;
        end;
        Next;
      end;
    finally
      RecNo := OldRecNo;
      EnableControls;
    end;
  end;
  tag := 0;
end;

procedure TfOperWare.cdsOperWareAfterPost(DataSet: TDataSet);
begin
  CalcAmountSum;
end;

procedure TfOperWare.cdsOperWareAfterDelete(DataSet: TDataSet);
begin
  CalcAmountSum;
end;

procedure TfOperWare.DBGridEh1DrawFooterCell(Sender: TObject; DataCol,
  Row: Integer; Column: TColumnEh; Rect: TRect; State: TGridDrawState);
begin
  if Column.Field = dsOperWare.DataSet.FieldByName('AmountOper') then
  begin
    if not FShowSummAmount then
      DBGridEh1.Canvas.FillRect(Rect);
  end
  else
    if (Column.Field = dsOperWare.DataSet.FieldByName('MeasureName')) and FShowSummAmount then
    begin
      DBGridEh1.Canvas.FillRect(Rect);
      DrawText(DBGridEh1.Canvas.Handle, PChar(dsOperWare.DataSet.FieldByName('MeasureName').AsString), -1, Rect, DT_END_ELLIPSIS AND DT_RIGHT);
    end
end;

function TfOperWare.GetID_Oper: integer;
begin
  Result := FOperParamz.ID_Oper;
end;

function TfOperWare.GetRezMode: boolean;
begin
  Result := FOperParamz.RezMode;
end;

procedure TfOperWare.cdsOperWarePriceInvGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var K : Double;
begin
  if not dsOperWare.DataSet.FieldByName('PriceInv').IsNull then
  begin
    if dsOperWare.DataSet.FieldByName('RealKoef').IsNull then
      K := 1
    else
      K := dsOperWare.DataSet.FieldByName('RealKoef').AsFloat;
    Text := FormatFloat('### ### ### ##0.00', dsOperWare.DataSet.FieldByName('PriceInv').AsFloat*K);
    Text := FormatFloat('### ### ### ##0.00', dsOperWare.DataSet.FieldByName('PriceInv').AsFloat);
  end;
end;

procedure TfOperWare.DBGridEh1ColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
  tag := 0;
end;

procedure TfOperWare.Button1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    if fArc = nil then
    begin
      fArc := TfArc.Create(Self);
      with fArc do
      begin
        ShowBudjet := false;
        Parent := tsOperList;
        Align := alClient;
        ARefrEvent := RefrEvent;
        ToolBar1.Visible := false;
        pnDate.Visible := false;
        fArc.Fid_OperParent := id_Oper;
        fArc.loadStng;
      end;
    end;

    with TClientDataSet(fArc_Off.dsArc.DataSet) do
    begin
      begin
        Close;
        Params.ParamByName('@DateFrom').Value := now() - 3650;
        Params.ParamByName('@DateTo').Value := now() + 3650;
        Params.ParamByName('@id_OperParent').Value := id_Oper;
        Params.ParamByName('@OperWare').Value := true;
        Params.ParamByName('@id_user').Value := DM.IDUser;
        Open;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfOperWare.RefrEvent(id_Oper: integer);
begin
  cdsOperWare201.Close;
  cdsOperWare201.Open;
end;

procedure TfOperWare.aCalcOperExecute(Sender: TObject);
begin
  sbConvertCrn(true);
end;

procedure TfOperWare.cdsFormalAfterOpen(DataSet: TDataSet);
begin
  sbForm.Enabled := not cdsOperFin.FieldByName('id_business').IsNull;
end;

procedure TfOperWare.cdsFuncAfterOpen(DataSet: TDataSet);
begin
  sbFunc.Enabled := not cdsOperFin.FieldByName('id_business').IsNull;
end;

procedure TfOperWare.sbFormClick(Sender: TObject);
var
  ID:Variant;
  S : String;
begin
  with DBEdit3 do
    if trim(Text) = '' then
    begin
      MessageBox(Handle, '�� ������ �����', '������� �������� �����', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      Exit;
    end;
  S := '';
  if InputBoxKrm('����� ���������� �������������', '��������', S) then
  begin
    ID := DM.rsCA.AppServer.OP_FormalDistribAdd(S, cdsOperFin.FieldByName('id_business').AsInteger);
    if ID <> -1 then
    begin
      with cdsFormal do
      begin
        Close;
        Open;
      end;
      cdsOperFin.Edit;
      cdsOperFinid_FormalDistrib.AsInteger := ID;
      cdsOperFin.Post;
    end;
  end;
end;

procedure TfOperWare.sbFuncClick(Sender: TObject);
var
  ID:Variant;
  S : String;
begin
  with DBEdit3 do
    if trim(Text) = '' then
    begin
      MessageBox(Handle, '�� ������ �����', '������� �������� �����', MB_OK + MB_ICONERROR);
      Windows.SetFocus(Handle);
      Exit;
    end;
  S := '';
  S := '';
  if InputBoxKrm('����� �������������� �������������', '��������', S) then
  begin
    ID := DM.rsCA.AppServer.OP_FuncDistribAdd(S, cdsOperFin.FieldByName('id_business').AsInteger);
    if ID <> -1 then
    begin
      with cdsFunc do
      begin
        Close;
        Open;
      end;
      cdsOperFin.Edit;
      cdsOperFinid_FuncDistrib.AsInteger := ID;
      cdsOperFin.Post;
    end;
  end;
end;

function TfOperWare.GetSS: Variant;
begin
  Result := dsOperWare.DataSet.FieldByName('SS').Value;
end;

function TfOperWare.GetSS_SYS: Variant;
begin
  if CheckBox1.Checked then
    Result := dsOperWare.DataSet.FieldByName('SS_SYS').Value
  else
    Result := -1;
end;

procedure TfOperWare.btnShowOperClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    if fArc_Off = nil then
    begin
      fArc_Off := TfArc.Create(Self);
      with fArc_Off do
      begin
        ShowBudjet := false;
        Parent := tsOperList_Off;
        Align := alClient;
        ARefrEvent := RefrEvent;
        ToolBar1.Visible := false;
        pnDate.Visible := false;
        fArc_Off.Fid_OperParent := id_Oper;
        fArc_Off.loadStng;
      end;
    end;

    with TClientDataSet(fArc_Off.dsArc.DataSet) do
    begin
      begin
        Close;
        Params.ParamByName('@DateFrom').Value := now() - 3650;
        Params.ParamByName('@DateTo').Value := now() + 3650;
        Params.ParamByName('@id_OperParent').Value := id_Oper;//-id_Oper;
        Params.ParamByName('@OperFin').Value := true;
        Params.ParamByName('@OperOffset').Value := true;
        Params.ParamByName('@id_user').Value := DM.IDUser;
        Open;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfOperWare.btnGenClick(Sender: TObject);
begin
  if ID_Oper = -1 then
    raise Exception.Create('�������� �� ���������. ��������� ����������!')
  else
    ShowAPOperList(Handle, id_Oper, 0)

end;

end.

