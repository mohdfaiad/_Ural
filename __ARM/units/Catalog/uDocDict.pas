unit uDocDict;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frDocDict, frBsnSelector, frDocOrg;

type
  TDocDict = class(TForm)
    fBsnSelector1: TfBsnSelector;
    fDocOrg1: TfDocOrg;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure fBsnSelector1Button1Click(Sender: TObject);
  private
    Val : Variant;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Initialize;
  end;

  procedure ShowDocDict;
var
  DocDict: TDocDict;

implementation

uses foMyFunc, uDM;

  procedure ShowDocDict;
  begin
    DM.Rights_GetUserRights(26, Null);
    if not Assigned(DocDict) then
    begin
      DocDict := TDocDict.Create(nil);
      DocDict.Initialize;
    end
    else
    begin
      DocDict.WindowState := wsMaximized;
      DocDict.BringToFront;
    end;
  end;
{$R *.DFM}

{ TFormalDict }

procedure TDocDict.Initialize;
begin
  fDocOrg1.Initialize(fBsnSelector1.ID);
end;

procedure TDocDict.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TDocDict.FormDestroy(Sender: TObject);
begin
  DocDict := nil;
end;

procedure TDocDict.fBsnSelector1Button1Click(Sender: TObject);
var OldID : Variant;
begin
  OldID := fBsnSelector1.ID;
  fBsnSelector1.Button1Click(Sender);
  if fBsnSelector1.ID <> OldID then
    Initialize;
end;

constructor TDocDict.Create(AOwner: TComponent);
begin
  inherited;
  fBsnSelector1.UID := Null;
{  LoadValFromRegistry(Val, SRegPath + '\' + Name + '\' + ClassName, 'id_Bsn');
  if Val <> Null then
    fBsnSelector1.ID := Val;   }
end;

destructor TDocDict.Destroy;
begin
  SaveValToRegistry(fBsnSelector1.ID, SRegPath + '\' + Name + '\' + ClassName, 'id_Bsn');
  inherited;

end;

end.
