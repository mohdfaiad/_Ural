unit uM111;

interface

uses
  Windows, Db, DBClient, DragDrop, Menus, Classes, ActnList, sButton,
  ComCtrls, sStatusBar, StdCtrls, sComboBox, Controls, ExtCtrls, sPanel,
  Buttons, sSpeedButton, ToolWin, sToolBar, Forms, messages, foMyFunc, Dialogs, FileCtrl, Sysutils, RXCtrls,DBGrids, DBGridEh, RXDBCtrl;



type
  TForm1 = class(TForm)
    cdsNS: TClientDataSet;
    cdsNSid_NS: TAutoIncField;
    cdsNSNSName: TStringField;
    cdsNSdeleted: TBooleanField;
    cdsNSSortID: TIntegerField;
    cdsNSFileNameRules: TStringField;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses uDM, uArcPropEh, uEForm, uDataList, uExtData, foMyFuncDXTreeExcel, foMyFuncEh, foMyFuncEhExcel,
uSettings, uFileProp, uNote, uLog;

{$R *.DFM}

procedure TForm1.Button2Click(Sender: TObject);
begin
 
   try
      cdsNS.CreateDataSet;
      ShowMessage('ok');
    except
      on E: Exception do MessageBox(0,PChar(E.Message), PChar(Application.ExeName), MB_ICONERROR);
    end;

end;

end.
