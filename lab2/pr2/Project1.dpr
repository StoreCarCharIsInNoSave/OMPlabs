program Project1;
(*
  ��������� ��-12 ������� 15
  ��� ������������� ������ A(n).
  ����� ����������� �������� ������������� ���������,
  ������������� ������ ������� ��������, �������� ����.
*)
// ��� � 2 � -1 -1 -1 -1 ....
{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  i, min, size, adres: integer;

var
  vector: array of integer;

var
  flag: Boolean;

begin
  flag := False;
  writeln('������� �����������');
  readln(size);
  setlength(vector,size);
  //����� ������
  for i := 0 to size - 1 do
  begin
    write('Vector[', i, '] = ');
    readln(vector[i]);
  end;
    //������ ������ ������� �������� �������� 2
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
    min := vector[adres];
    for i := adres to size - 1 do
      if (vector[i] > 0)  and (min > vector[i]) then
        min := vector[i];
        writeln('����������� ������������� �������, ������������� ����� ������� �������� 2 = ', min);
  end
  else
    writeln('�� ������� ��������� ������ 2 � ������� �� � ����� �����') ;
    readln;
end.
