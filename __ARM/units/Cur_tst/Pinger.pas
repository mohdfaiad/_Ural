unit Pinger;

interface

uses Windows, WinSock, Sysutils;

function Ping(Address : string) : DWORD;

implementation

type

  ip_option_information = packed record  // ���������� ��������� IP (����������
                          // ���� ��������� � ������ ����� ������ � RFC791.
    Ttl : byte;		  // ����� ����� (������������ traceroute-��)
    Tos : byte;		  // ��� ������������, ������ 0
    Flags : byte;	  // ����� ��������� IP, ������ 0
    OptionsSize : byte;	  // ������ ������ � ���������, ������ 0, �������� 40
    OptionsData : Pointer;// ��������� �� ������
  end;

  icmp_echo_reply = packed record
    Address : u_long;     // ����� �����������
    Status : u_long;	  // IP_STATUS (��. ����)
    RTTime : u_long;	  // ����� ����� ���-�������� � ���-������� � �������������
    DataSize : u_short;   // ������ ������������ ������
    Reserved : u_short;   // ���������������
    Data : Pointer; 	  // ��������� �� ������������ ������
    Options : ip_option_information; // ���������� �� ��������� IP
  end;

  PIPINFO = ^ip_option_information;
  PVOID = Pointer;

  function IcmpCreateFile() : THandle; stdcall; external 'ICMP.DLL' name 'IcmpCreateFile';
  function IcmpCloseHandle(IcmpHandle : THandle) : BOOL; stdcall; external 'ICMP.DLL'  name 'IcmpCloseHandle';
  function IcmpSendEcho(
    IcmpHandle : THandle;    // handle, ������������ IcmpCreateFile()
    DestAddress : u_long;    // ����� ���������� (� ������� �������)
    RequestData : PVOID;     // ��������� �� ���������� ������
    RequestSize : Word;      // ������ ���������� ������
    RequestOptns : PIPINFO;  // ��������� �� ���������� ���������
                             // ip_option_information (����� ���� nil)
    ReplyBuffer : PVOID;     // ��������� �� �����, ���������� ������.
    ReplySize : DWORD;       // ������ ������ �������
    Timeout : DWORD          // ����� �������� ������ � �������������
   ) : DWORD; stdcall; external 'ICMP.DLL' name 'IcmpSendEcho';

function GetURLOnly (AURL : String) : String;
  function AAA(S : String; var Res : String) : boolean;
  var i : integer;
  begin
    Res := '';
    Result := false;
    i := Pos(UpperCase(S), UpperCase(AURL));
    if i > 0 then
    begin
      Res := Copy(AURL, 1, i + Length(S) - 1);
      Result := true;
    end;
  end;
begin
  if not AAA('.ru', Result) then
    if not AAA('.com', Result) then

end;

function Ping(Address : string) : DWORD;
var
  hIP : THandle;
  PingBuffer : array [0..31] of Char;
  pIpe : ^icmp_echo_reply;
  pHostEn : PHostEnt;
  wVersionRequested : WORD;
  lwsaData : WSAData;
  DestAddress : In_Addr;
begin
//  Address := GetURLOnly(Address);
  // ������� handle
  hIP := IcmpCreateFile();

  GetMem(pIpe, sizeof(icmp_echo_reply) + sizeof(PingBuffer));
  pIpe.Data := @PingBuffer;
  pIpe.DataSize := SizeOf(PingBuffer);

  wVersionRequested := MakeWord(1,1);
  Result := WSAStartup(wVersionRequested,lwsaData);
  if Result = 0 then
    begin
    pHostEn := GetHostByName(PChar(Address));
    Result := GetLastError();

    if (Result = 0) then
      begin
      DestAddress := PInAddr(pHostEn^.h_addr_list^)^;

      // �������� ping-�����
    {  Memo1.Lines.Add('Pinging ' +
                      pHostEn^.h_name+' ['+
                      inet_ntoa(DestAddress)+'] '+
                      ' with '+
                      IntToStr(sizeof(PingBuffer)) +
                      ' bytes of data:');}

      IcmpSendEcho(hIP,
                   DestAddress.S_addr,
                   @PingBuffer,
                   sizeof(PingBuffer),
                   Nil,
                   pIpe,
                   sizeof(icmp_echo_reply) + sizeof(PingBuffer),
                   5000);

      Result := GetLastError();
      end;
    end;


  IcmpCloseHandle(hIP);
  WSACleanup();
  FreeMem(pIpe);
end;

end.
