unit uClImport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, RxMemDS, ExtCtrls, Grids, DBGrids, ComObj,RXDBCtrl, StdCtrls, Mask, ToolEdit,
  frBsnSelector;

type
  TClImport = class(TForm)
    RxMemoryData1: TRxMemoryData;
    RxDBGrid1: TRxDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    FilenameEdit1: TFilenameEdit;
    RxMemoryData1ReprName: TStringField;
    RxMemoryData1INN: TStringField;
    RxMemoryData1email: TStringField;
    RxMemoryData1Phone1: TStringField;
    RxMemoryData1Phone2: TStringField;
    RxMemoryData1isEx: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    constructor Create(AOwner : TCOmponent); override;
    destructor Destroy; override;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Initialize;
  end;

var
  ClImport: TClImport;
procedure ShowClImport;

implementation

uses foMyFunc, uPrgForm, uDM;

{$R *.DFM}

procedure ShowClImport;
var F : TClImport;
begin
  F := TClImport.Create(nil);
  try
    F.Show;
    F.Repaint;
    F.Initialize;
  except
    on E : Exception do
    begin
      F.Free;
      raise Exception.Create(E.Message);
    end;
  end;
end;


{ TWHImport }

procedure TClImport.Initialize;
begin

end;

procedure TClImport.Button1Click(Sender: TObject);
var
    ExcelApp, DataValues : Variant;
    Workbook, Column, Row, Sheet, Cell1, Cell2, Range : Variant;
    i, j, StartRow : integer;
    S : String;
    TotalAmount : Double;
    Price, ID_Cur : OLeVariant;
begin
  StartRow := 5;
  
  if FilenameEdit1.FileName = '' then
  begin
    MessageBox(Self.Handle, '�� ������ ���� ������.', '�������� ����', MB_OK + MB_ICONERROR);
    Windows.SetFocus(FilenameEdit1.Handle);
    Exit;
  end;
    ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.DisplayAlerts := false;
    //ExcelApp.visible := true;
    try
      try Workbook := ExcelApp.WorkBooks.Add(FilenameEdit1.FileName); except end;
      Sheet := ExcelApp.Workbooks[1].WorkSheets[1];

      for i := 0 to RxDBGrid1.Columns.Count - 1 do
      begin
        if (RxDBGrid1.Columns[i].Field.Tag = 0) then
        begin
          RxDBGrid1.Columns[i].Title.Font.Color := clRed;
          RxDBGrid1.Columns[i].Title.Font.Style := [fsBold];
        end;

        for j := 1 to 10 do
        begin
          Cell1 := Sheet.Cells[StartRow, j];
          S := Cell1.value;
          if (S = RxDBGrid1.Columns[i].Title.Caption) and (RxDBGrid1.Columns[i].Field.Tag = 0) then
          begin
            RxDBGrid1.Columns[i].Title.Font.Color := clBlack;
            RxDBGrid1.Columns[i].Title.Font.Style := [fsBold];
            RxDBGrid1.Columns[i].Field.Tag := j;
          end;
        end;

      end;

        RxMemoryData1.Close;
        RxMemoryData1.Open;
      ShowProgressForm(0, -1, -1, '���� �������� ������...');
      for j := StartRow + 1 to 5000 do
      begin
        RxMemoryData1.Append;

        for i := 0 to RxDBGrid1.Columns.Count - 1 do
        begin
          if (RxDBGrid1.Columns[i].Field.Tag > 0) then
          begin
            Cell1 := Sheet.Cells[j, RxDBGrid1.Columns[i].Field.Tag];
            S := Cell1.value;
            if RxDBGrid1.Columns[i].Field is TStringField then
              RxDBGrid1.Columns[i].Field.Value := trim(S)
            else
              RxDBGrid1.Columns[i].Field.AsFloat := StrToFloatAdv(trim(S));
          end;
        end;
        RxMemoryData1.Post;
        if (RxMemoryData1ReprName.AsString = '') then
        begin
          RxMemoryData1.Delete;
          Break;
        end;  
      end;

      with RxMemoryData1 do
      begin
        First;

        while not Eof do
        begin
          ShowProgressForm(0, RecNo, RecordCount, '��������������� ��������� ������');
          Edit;

       //   RxMemoryData1id_Repr.AsInteger := DM.rsCA.AppServer.DCh_ReprAdd(fBsnSelector1.ID, RxMemoryData1CAName.AsString, RxMemoryData1CAName.AsString);

          Post;
          Next;
        end;
      end; 
      CloseProgressForm;
      Button2.Enabled := true;

    //  ExcelApp.DisplayAlerts := true;
    //  ExcelApp.Visible := true;
      ExcelApp.Quit;
      ExcelApp := Null;
    except
      ExcelApp.Quit;
      ExcelApp := Null;

    end;

end;

constructor TClImport.Create(AOwner: TCOmponent);
begin
  inherited;
  SetWindowLong(Handle, GWL_HWNDPARENT, 0);

end;

procedure TClImport.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle:=(Params.ExStyle or WS_EX_APPWINDOW);

end;

destructor TClImport.Destroy;
begin
  inherited;

end;

procedure TClImport.Button2Click(Sender: TObject);
begin
  {    Button2.Enabled := false;
      with RxMemoryData1 do
      begin
        First;

        while not Eof do
        begin
          ShowProgressForm(0, RecNo, RecordCount, '��������������� ��������� ������');
          Edit;                                                                    
          if DM.rsCA.AppServer.DCh_CA_DeptAdd(fBsnSelector1.ID, RxMemoryData1id_repr.AsInteger,
          RxMemoryData1S_RUB.AsFloat, RxMemoryData1S_USD.AsFloat, RxMemoryData1S_EUR.AsFloat) <> -1 then
          begin
            RxMemoryData1Cmnt.AsString := 'Ok';
          end
          else
            RxMemoryData1Cmnt.AsString := '������';
          Post;
          Next;
        end;
      end;
      CloseProgressForm;    }
end;

procedure TClImport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;

end;

end.
