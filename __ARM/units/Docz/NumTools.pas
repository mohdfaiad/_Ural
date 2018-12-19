//******************************************************************************
// (�) ����� �����������, �����������, 1997-1999 �.
// www.geocities.com/SiliconValley/Sector/7819/
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// ����� �� ��������� ������ ������������� ���� ��������� ��� ��������� ��
// ������������� ������ � � ��������� ��������� � ���� ������������.
//
// ��������� ������������ � ������� ��������� ����������� � 1997 ���� �� ��� ����
// � ���������� ���� � ����� ���������� ����� ���������� ���-���-���-��������.
// ������ ��� �� ���� ��� ������� �������� �� ������� ������, ��������� ���
// ���������������� ������������, �� ���� �����.
//
// ����������� ��������
// ~~~~~~~~~~~~~~~~~~~~
//    o  ������� ��� ������ ������������ ��������
//       �� 0 �� 999 ������������ (X*10^25);
//
//       ������:
//               NumeralToPhrase('456')   -->   '��������� ��������� �����'
//
//    o  ������� ��� �������� �����, ���������� � ������������ (��� �������
//       ���������) � ��������������� �����.
//
//       ������:
//               GeniCase('10', '�����','�����','����')   -->   '����'
//               GeniCase('1', '�����','�����','����')    -->   '�����'
//               GeniCase('11', '�����','�����','����')   -->   '����'
//               GeniCase('21', '�����','�����','����')   -->   '�����'
//
//    o  ������� ��� ��������� ���������� � ����������� ��������,
//       ����������� ��������� ����������� ������� FoxPro.
//
//       ������:
//               Trim(#10+'  ����� �����������  '+#13)  -->  '����� �����������'
//
// ��� ��������� � ������� ������ ������������ � ���� �����, ���������
// ������������� ������������� � D����� ��-�������� ����� ������� �����������,
// ��� ����������� �������� ���.   ;))
// (��� ��,  '2147483647' < '999999999999999999999999999').
//******************************************************************************
// ...������ ������:
unit NumTools;

interface
uses SysUtils;

function GeniCase(const S : String; C1,C2,C3 : String): String;
function NumeralToPhrase(const S : String): String;
function Trim(const  S : String): String;
function NumeralToPhraseAdv(SSS : Extended) : String;

implementation

const
     Space = [#0..#32];

//******************************************************************************
// ������� ��� �������� �����, ���������� � ������������ � ��������������� �����
function GeniCase(const S : String; C1,C2,C3 : String): String;
var
    Det1,Det2:Integer;
begin
     Det2:=StrToIntDef(Copy(S,Length(S)-1,2),0);
     Det1:=Det2 mod 10;
     if (Det1=1) and not(Det2=11) then
        GeniCase:=C1
     else
         if (Det1>1) and (Det1<5) and not( (Det2>11) and (Det2<15) ) then
            GeniCase:=C2
         else
            GeniCase:=C3;
end;

//******************************************************************************
// ������� ��� ������������� ����� ��������.
// ����� ������������ �������� �� 0 �� 999 ������������.
function NumeralToPhraseAdv(SSS : Extended) : String;
begin
  Result := NumeralToPhrase('0' + IntToStr(Trunc(SSS))) +
           ' ������ ' +
           FormatFloat('00', Frac(SSS) * 100) +
           ' ������';
  Result := StringReplace(Result, '  ', ' ', [rfReplaceAll, rfIgnoreCase]);
end;

function NumeralToPhrase(const S : String) : String;
const
     DigitsF: array[1..10] of String = (
                                        '',
                                        '���� ',
                                        '��� ',
                                        '��� ',
                                        '������ ',
                                        '���� ',
                                        '����� ',
                                        '���� ',
                                        '������ ',
                                        '������ '
                                       );
     DigitsM: array[1..3] of String = (
                                       '',
                                       '���� ',
                                       '��� '
                                      );
     Teens: array[1..10] of String = (
                                      '������ ',
                                      '����������� ',
                                      '���������� ',
                                      '���������� ',
                                      '������������ ',
                                      '���������� ',
                                      '����������� ',
                                      '���������� ',
                                      '������������ ',
                                      '������������ '
                                     );
     Tens: array[1..10] of String = (
                                     '',
                                     '',
                                     '�������� ',
                                     '�������� ',
                                     '����� ',
                                     '��������� ',
                                     '���������� ',
                                     '��������� ',
                                     '����������� ',
                                     '��������� '
                                    );
     Hundreds: array[1..10] of String = (
                                         '',
                                         '��� ',
                                         '������ ',
                                         '������ ',
                                         '��������� ',
                                         '������� ',
                                         '�������� ',
                                         '������� ',
                                         '��������� ',
                                         '��������� '
                                        );
var
   I,
   L,
   R,
   V,
   P :Integer;
   C, tmpS : String;
begin
     C:=S;
     L:=Length(C);
     P:=0;
     Result:='';
     for I:=1 to L do
         begin
              R:=(L - I + 1) mod 3;
              tmpS := Copy(C, I, 1);
              V:=StrToIntDef(tmpS, 0);
              case R of
                   0:
                     begin
                          Result:=Result + Hundreds[V+1];
                          if (V>0) then
                             Inc(P);
                     end;
                   1:
                     begin
                          if (V>0) then
                             Inc(P);
                          if (V > 2) then
                             Result := Result + DigitsF[V+1]
                          else
                              if ((L - i) = 3) then
                                 Result := Result + DigitsF[V+1]
                              else
                                  Result := Result + DigitsM[V+1];
                          if P > 0 then
                             case (L - I + 1) of
                                   4: Result:= Result +
                                               GeniCase( C[I],
                                                             '������ ',
                                                             '������ ',
                                                             '����� ');
                                   7: Result:= Result +
                                               GeniCase( C[I],
                                                             '������� ',
                                                             '�������� ',
                                                             '��������� ');
                                  10: Result:= Result +
                                               GeniCase( C[I],
                                                             '�������� ',
                                                             '��������� ',
                                                             '���������� ');
                                  13: Result:= Result +
                                               GeniCase( C[I],
                                                             '�������� ',
                                                             '��������� ',
                                                             '���������� ');
                                  16: Result:= Result +
                                               GeniCase( C[I],
                                                             '����������� ',
                                                             '������������ ',
                                                             '������������� ');
                                  19: Result:= Result +
                                               GeniCase( C[I],
                                                             '����������� ',
                                                             '������������ ',
                                                             '������������ ');
                                  22: Result:= Result +
                                               GeniCase( C[I],
                                                             '����������� ',
                                                             '������������ ',
                                                             '������������� ');
                                  25: Result:= Result +
                                               GeniCase( C[I],
                                                             '���������� ',
                                                             '����������� ',
                                                             '������������ ');
                             end;
                          P:=0;
                     end;
                   2:
                     begin
                          if (V <> 1) then
                             Result:= Result + Tens[V+1]
                          else
                              begin
                                   Result:= Result +
                                            Teens[StrToIntDef(Copy(C,I+1,1),0)+1];
                                   Delete(C,I+1,1);
                                   Insert('0',C,I+1);
                              end;
                          if (V>0) then
                             Inc(P);
                     end;
              end;
         end;
     Result:=Trim(Result);
     if (Result='') then
        Result:='����';
     Result:=AnsiUpperCase(Result[1])+Copy(Result,2,Length(Result)-1);
end;

//******************************************************************************
// ��������� ������ ������� - ������ �����, ��� � FoxPro.
//
function Trim(const S: string): string;
var
   Index: Integer;
begin
     Index:=1;
     while (Index <= Length(S)) and (S[Index] in Space) do
           Index:=Index + 1;
     Result:=Copy(S, Index, Length(S));
     Index:=Length(Result);
     while (Index > 0) and not (Result[Index] in Space) do
           Index:=Index - 1;
     Result:=Copy(Result, 1, Index);
end;

end.
