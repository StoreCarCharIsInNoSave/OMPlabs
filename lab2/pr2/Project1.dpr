program Project1;
(*
  ��������� ��-12 ������� 15
  ��� ������������� ������ A(n).
  ����� ����������� �������� ������������� ���������,
  ������������� ������ ������� ��������, �������� ����.
*)

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  i, min, size, adres, minpol: integer;

var
  vector: array of integer;

var
  flag: Boolean;

begin
  flag := False;
  writeln('������� �����������');
  readln(size);
  setlength(vector, size);
  // ����� ������
  for i := 0 to size - 1 do
  begin
    write('Vector[', i, '] = ');
    readln(vector[i]);
  end;
  // ������ ������ ������� �������� �������� 2
  for i := 0 to size - 2 do
    if vector[i] mod 2 = 0 then
    begin
      adres := i;
      flag := True;
      break;
    end;
  // ���� ��� ������ ���� 1 ������� ������� 2
  if flag then
  begin
    flag := False;
    // �������� �� ������� ������������� ��������� ����� ������� �������� �������� 2
    for i := adres + 1 to size - 1 do
      if (vector[i] >= 0) then begin

        flag:=true;
        min := vector[i];
      end;
    if flag then begin
      for i := adres + 1 to size - 1 do
        if (vector[i] >= 0) and (vector[i] < min) then
          min := vector[i];
           writeln('����������� ������������� ������� ������� ������� ����� ������� ������� ����� = ',min)
    end
        else
          writeln('������������� ��������� ����� ������� �������� 2 �� �������');
  end
  else
    writeln('�� ������� ��������� ������ 2 � ������� �� � ����� �����');
  readln;

end.
