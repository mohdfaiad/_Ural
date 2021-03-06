unit uDic;

interface

uses
  Windows, Messages, SysUtils, {$IFDEF VER150} Variants,{$ENDIF}  Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, comctrls, frGrp, Menus;

type
  TDic = class(TForm)
    fGrp1: TfGrp;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure fGrp1Button3Click(Sender: TObject);
  private
 
  public
    destructor Destroy; override;
    procedure Initialize(AType : integer);
  end;

var
  DicCL: TDic;
  DicCA: TDic;
  DicDT: TDic;
  DicET: TDic;
  DicText: TDic;
procedure ShowDic(AType : integer);

implementation

uses uDM;

{$R *.dfm}

procedure ShowDT;
begin
  DM.Rights_GetUserRights(7);
  if not Assigned(DicDT) then
  begin
    DicDT := TDic.Create(Application.MainForm);
    DicDT.WindowState := wsMaximized;
    DicDT.Initialize(0);
  end
  else
  begin
    DicDT.WindowState := wsMaximized;
    DicDT.BringToFront;
  end;
end;
procedure ShowET;
begin
  DM.Rights_GetUserRights(7);
  if not Assigned(DicET) then
  begin
    DicET := TDic.Create(Application.MainForm);
    DicET.WindowState := wsMaximized;
    DicET.Initialize(13);
  end
  else
  begin
    DicET.WindowState := wsMaximized;
    DicET.BringToFront;
  end;
end;

procedure ShowText;
begin
  DM.Rights_GetUserRights(7);
  if not Assigned(DicTExt) then
  begin
    DicTExt := TDic.Create(Application.MainForm);
    DicTExt.WindowState := wsMaximized;
    DicTExt.Initialize(26);
  end
  else
  begin
    DicTExt.WindowState := wsMaximized;
    DicTExt.BringToFront;
  end;
end;

procedure ShowCA;
begin
  DM.Rights_GetUserRights(7);
  if not Assigned(DicCA) then
  begin
    DicCA := TDic.Create(Application.MainForm);
    DicCA.WindowState := wsMaximized;
    DicCA.Initialize(6);
  end
  else
  begin
    DicCA.WindowState := wsMaximized;
    DicCA.BringToFront;
  end;
end;

procedure ShowCL;
begin
  DM.Rights_GetUserRights(7);
  if not Assigned(DicCL) then
  begin
    DicCL := TDic.Create(Application.MainForm);
    DicCL.WindowState := wsMaximized;
    DicCL.Initialize(5);
  end
  else
  begin
    DicCL.WindowState := wsMaximized;
    DicCL.BringToFront;
  end;
end;

procedure ShowDic(AType : integer);
begin
  case AType of
    0 : ShowDT;
    5 : ShowCL;
    6 : ShowCA;
    13 : ShowET;
    26 : ShowText;
  end;
end;


{ TDivisionTree }

procedure TDic.Initialize(AType : integer);
begin
  fGrp1.Initialize(AType, 0);
  case AType of
    0 :
    begin
      Caption := '���������� ����� ����������';
    end;
    5 :
    begin
      Caption := '���������� ��������';
    end;
    6 :
    begin
      Caption := '���������� ����������';
    end;
    13 :
    begin
      Caption := '���������� �������';
    end;
    26 :
    begin
      Caption := '�������� �������';
    end;
  end;
end;

procedure TDic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TDic.FormDestroy(Sender: TObject);
begin
  case fGrp1.FType of
    0 : DicDT := nil;
    5 : DicCL := nil;
    6 : DicCA := nil;
    13 : DicText := nil;
  end;
end;

destructor TDic.Destroy;
begin
  inherited;
end;

procedure TDic.fGrp1Button3Click(Sender: TObject);
begin
  fGrp1.Button3Click(Sender);

end;

end.
