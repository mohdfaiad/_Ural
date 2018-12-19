unit frOperOldData;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, Grids;

type
  TfOperOldData = class(TFrame)
    StringGrid1: TStringGrid;
    cdsOldOperProp: TClientDataSet;
    cdsOperNewData: TClientDataSet;
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    procedure GetInfo(CDS: TClientDataSet);
    { Private declarations }
  public
    procedure Initialize(id_old_Oper: integer);
    procedure InitializeNewData(id_Oper: integer);
  end;

implementation

uses uDM, foMyFunc;

{$R *.DFM}

{ TfOperOldData }

procedure TfOperOldData.Initialize(id_old_Oper: integer);
var S : String;
begin
  with cdsOldOperProp do
  begin
    Close;
    Params.ParamByName('@id_old_Oper').AsInteger := id_old_Oper;
    Open;
  end;
  GetInfo(cdsOldOperProp);
end;

procedure TfOperOldData.InitializeNewData(id_Oper: integer);
var S : String;
begin
  with cdsOperNewData do
  begin
    Close;
    Params.ParamByName('@id_Oper').AsInteger := id_Oper;
    Open;
  end;
  GetInfo(cdsOperNewData);
end;

procedure TfOperOldData.GetInfo(CDS : TClientDataSet);
  procedure AddToGrid(A : String; B : Variant; ANeedRed: boolean = false);
  var S : String;
  begin
    if (StringGrid1.Cells[0, StringGrid1.RowCount] <> '') then
 //   if (StringGrid1.RowCount <> 1) then
      StringGrid1.RowCount := StringGrid1.RowCount + 1;
    StringGrid1.Cells[0, StringGrid1.RowCount] := A;

    S := GetFieldData(B, false);
    StringGrid1.Cells[1, StringGrid1.RowCount] := S;
    if ANeedRed then
      StringGrid1.Objects[0, StringGrid1.RowCount] := TObject(-1)
    else
      StringGrid1.Objects[0, StringGrid1.RowCount] := nil;
  end;
var S : String;
begin
  StringGrid1.RowCount := 1;
  StringGrid1.Cells[0, 0] := '��������';
  StringGrid1.Cells[1, 0] := '��������';

  AddToGrid('������', CDS.FieldByName('BusinessName').Value);
  case CDS.FieldByName('OperVid').AsInteger of
    0 : S := '������';
    1 : S := '���������';
    2 : S := '����������';
    3 : S := '������';
    4 : S := '�����������';
    201 : S := '�����������';
  end;
  AddToGrid('���', S);

  AddToGrid('���� ��������', CDS.FieldByName('DateLocal').Value);
  AddToGrid('���', CDS.FieldByName('TypeName').Value);
  if CDS.FieldByName('OperVid').AsInteger <> 0 then
    AddToGrid('���������', CDS.FieldByName('Correct').AsBoolean);

  case CDS.FieldByName('OperVid').AsInteger of
    0 : S := '';
    1 : S := '�����';
    2 : S := '����';
    3 : S := '';
    4 : S := '';
  end;
  if not CDS.FieldByName('SrcName').IsNull then
    AddToGrid(S, CDS.FieldByName('SrcName').Value, CDS.FieldByName('SrcID_Main').IsNull);
    
  if not CDS.FieldByName('ReprName').IsNull then
    AddToGrid('�������������', CDS.FieldByName('ReprName').Value, CDS.FieldByName('ReprID_Main').IsNull);
  if not CDS.FieldByName('ReprWHName').IsNull then
    AddToGrid('����� �������������', CDS.FieldByName('ReprWHName').Value, CDS.FieldByName('ReprWHID_Main').IsNull);

  if not CDS.FieldByName('WareName').IsNull then
    AddToGrid('������������', CDS.FieldByName('WareName').Value, CDS.FieldByName('WareID_Main').IsNull);
  if CDS.FieldByName('OperVid').AsInteger in [1, 3] then
    AddToGrid('���-��', GetFieldData(CDS.FieldByName('AmountOper').Value) + ' ' + CDS.FieldByName('MeasureName').AsString);
//  if not CDS.FieldByName('MeasureName').IsNull then
//    AddToGrid('��. ���������', CDS.FieldByName('MeasureName').Value);
  if CDS.FieldByName('OperVid').AsInteger in [1, 3] then
    AddToGrid('�� �������', GetFieldData(CDS.FieldByName('PriceOper').Value) + ' ' + CDS.FieldByName('CurrencyOperShortName').AsString);

  if CDS.FieldByName('OperVid').AsInteger in [1, 3] then
    AddToGrid('������������� �������', GetFieldData(CDS.FieldByName('PriceInv').Value) + ' ' + CDS.FieldByName('CurrencyInvShortName').AsString);

  if CDS.FieldByName('OperVid').AsInteger <> 0 then   // � ������ �������� ��� �����
  begin
    AddToGrid('�����', CDS.FieldByName('SummOper').AsString + ' ' + CDS.FieldByName('CurrencyOperShortName').AsString);
  end;
  if not CDS.FieldByName('SummSys').IsNull then   // � ������ �������� ��� �����
  begin
    AddToGrid('�������� �����', CDS.FieldByName('SummSys').AsString + ' ' + CDS.FieldByName('CurrencySysShortName').AsString);
  end;
  AddToGrid('������', CDS.FieldByName('CreatorFIO').Value);
//  AddToGrid('��������', CDS.FieldByName('ManagerFIO').Value);

  if not CDS.FieldByName('Imp_PayBasic').IsNull then
    AddToGrid('��������� �������', CDS.FieldByName('Imp_PayBasic').Value);
  if not CDS.FieldByName('AccInv_PayAssignment').IsNull then
    AddToGrid('��������� ���������', CDS.FieldByName('AccInv_PayAssignment').Value);
  if not CDS.FieldByName('Contract').IsNull then
    AddToGrid('�������', CDS.FieldByName('Contract').Value);

  StringGrid1.FixedRows := 1;
end;

procedure TfOperOldData.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if Integer(StringGrid1.Objects[0, ARow]) = -1 then
  begin
    StringGrid1.Canvas.Font.Color := clRed;
    StringGrid1.Canvas.Font.Style := StringGrid1.Canvas.Font.Style + [fsBold];

  end;
  StringGrid1.Canvas.TextRect(Rect, Rect.Left, Rect.Top, StringGrid1.Cells[ACol, ARow]);
 //     DrawText(StringGrid1.Canvas.Handle, PChar(StringGrid1.Cells[ACol, ARow]), -1, Rect, DT_Left);
end;

end.
