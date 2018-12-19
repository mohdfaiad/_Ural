unit uInputBoxDigit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, ToolEdit,{$IFDEF VER150} Variants,{$ENDIF} CurrEdit;

type
  TSetOfChar = set of char;

  TFrmInputBoxDigit = class(TForm)
    Label1: TLabel;
    btnOk: TButton;
    btnCancel: TButton;
    RxCalcEdit1: TRxCalcEdit;
    procedure btnOkClick(Sender: TObject);
    procedure RxCalcEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dxCalculatorKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    FAllCh : set of char;
  end;

var
  FrmInputBoxDigit: TFrmInputBoxDigit;
function InputBoxDigit(const AHandle : HWnd; const ACaption, APrompt: string; var Value: Variant; AFormat : String = '0.##'): boolean;

implementation

uses foMyFunc, uDM;

{$R *.DFM}
function InputBoxDigit(const AHandle : HWnd; const ACaption, APrompt: string; var Value: Variant; AFormat : String = '0.##'): boolean;
var F : TFrmInputBoxDigit;
begin
  Result := false;
  F := TFrmInputBoxDigit.Create(nil);
  try
    if AHandle > 0 then
      SetWindowLong(F.Handle, GWL_HWNDPARENT, AHandle);
    if ACaption <> '' then
      F.Caption := ACaption;
    if APrompt <> '' then
      F.Label1.Caption := APrompt;

//    F.RxCalcEdit1.Left := F.Label1.Left + F.Label1.Width + 10;
//    F.Width := F.RxCalcEdit1.Left + F.RxCalcEdit1.Width + 10;

    if Value <> Null then
      F.RxCalcEdit1.Value := Value;
 //   F.RxCalcEdit1.DisplayFormat := AFormat;
    F.ActiveControl := F.RxCalcEdit1;

    F.ShowModal;
    if F.ModalResult = mrOk then
    begin

      Value := F.RxCalcEdit1.Value;
      if integer(Trunc(Value*100)) - Value*100 <> 0 then
        Value := Trunc(Value*100 + 0.5*(abs(Value)/Value))/100;
      Result := true;
    end;
  finally
    F.Free;
  end;
end;

procedure TFrmInputBoxDigit.btnOkClick(Sender: TObject);
begin
  if RxCalcEdit1.Text = '' then
  begin
    ModalResult := mrNone;
    Windows.SetFocus(RxCalcEdit1.Handle);
    MessageBox(Handle, 'Rate not inputed', '', MB_ICONERROR + MB_OK);
  end;
end;

procedure TFrmInputBoxDigit.RxCalcEdit1KeyPress(Sender: TObject;
  var Key: Char);
var P : integer;
    S : String;
begin
{  with TdxCalcEdit(Sender) do
  begin
    if Key in ['0'..'9', #8, DecimalSeparator] then
    begin
      S := Text;
      P := Pos(DecimalSeparator, S);
      if (P > 0) and (Length(S) - P = 2) then
        Key := #0;
    end
    else
      Key := #0;
  end;   }

end;

procedure TFrmInputBoxDigit.dxCalculatorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = '.') or (Key = ',') then
    Key := Decimalseparator;
  if Key = #13 then
    ModalResult := mrOk;
end;

procedure TFrmInputBoxDigit.FormShow(Sender: TObject);
begin
//  LoadFormSettingsToRegistry(Self, SRegPath + '\' + Name);
end;

procedure TFrmInputBoxDigit.FormDestroy(Sender: TObject);
begin
 // SaveFormSettingsToRegistry(Self, SRegPath + '\' + Name);
end;

end.
