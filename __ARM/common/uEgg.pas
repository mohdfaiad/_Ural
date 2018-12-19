unit uEgg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, RXCtrls, ImgList, ShellAPI;

type
  TEgg = class(TForm)
    asf: TSecretPanel;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Panel1: TPanel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
  public
    i : integer;
  end;

var
  Egg: TEgg;

implementation

uses uMainForm;

{$R *.DFM}

procedure TEgg.FormCreate(Sender: TObject);

begin
  i := -1;
  Caption := '�'+'��'+'��'+'�'+'�'+'�'+'�'+'�'+' � '+'��'+'��'+'��'+'�'+'��'+'��'+'��'+' �'+'�'+'��'+'��'+'�'+'��';

  Label1.Caption := '�'+'��'+'��'+'�'+'�'+'�'+'� '+'� '+'��'+'�'+'��'+'�'+'��'+'��'+'�'+'��'+':';
  Label2.Caption := 'o'+'v'+'k'+'@m'+'ai'+'l'+'3'+'3'+'3'+'.c'+'o'+'m';

  with asf do
  begin
    Lines.Clear;
    Lines.Add('�'+'��'+' �'+'�'+'�'+'��'+'�'+'�'+'�'+'�'+' '+'�'+'�'+'�'+'�'+' '+'�'+'�'+'�'+'�'+'�'+'�'+'�'+'�'+'�'+'�'+'�'+' � '+'�'+'�'+'��'+'�'+'��'+'�');
    Lines.Add('�'+'�'+'�'+'�'+'�'+'�'+'�'+'�'+'� '+'��'+'�'+'�'+'��'+' �'+'�'+'�'+'�'+'�'+'�'+'��'+'�'+'��'+'�'+'��.');
    Lines.Add('');
    Lines.Add('��'+'�'+'��'+' �'+'��'+'��'+'��'+'��'+'���'+'��'+'�'+'� �'+'� �'+'���'+'��'+'��'+'��'+'��'+'� �'+'���'+'��'+'��'+'��'+'��'+'���'+'�'+',');
    Lines.Add('�'+'��'+'�'+'��'+'�'+'� '+'�'+' ��'+'���'+'��'+'��'+'� '+'��'+'��'+'��'+'�'+'��'+'��'+'� '+'� '+'��'+'��'+'��'+'��'+'��'+'��'+'��'+'� '+'��'+'��'+'�'+'.');
    Lines.Add('');
    Lines.Add('�'+'�'+'��'+'��'+'��'+'�'+' �'+' '+'�'+'��'+'�'+'��� '+'��'+'�'+'�� '+'�� '+'e'+'-'+'ma'+'il'+': o'+'v'+'k'+'@'+'m'+'a'+'il'+'3'+'3'+'3'+'.com');

    Active := true;
  end;

end;

procedure TEgg.Timer1Timer(Sender: TObject);
begin
  inc(i);
 // if i > RMain.ImageList2.Count - 1 then
 //   i := 0;
  Image1.Picture.Assign(nil);
//  RMain.ImageList2.GetBitmap(i, Image1.Picture.Bitmap);
//  edit1.Text := Inttostr(AllocMemSize);
end;

procedure TEgg.Label2Click(Sender: TObject);
var S : String;
begin
  S := 'm'+'a'+'i'+'l'+'t'+'o'+':'+'o'+'v'+'k'+'@'+'m'+'a'+'i'+'l'+'r'+'u'+'3'+'3'+'3'+'.'+'c'+'o'+'m';
  ShellExecute(Application.Handle, 'open', PChar(S), nil, nil, 0); 
//* --
end;

end.
