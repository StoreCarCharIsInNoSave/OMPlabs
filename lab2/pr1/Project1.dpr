program Project1;

(*
  ��������� ��-12 ������� 15
  1.	��� ������ A(n). ����� ���������� ��
  ������ � ���������� �������� ��������� �������.
*)

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  size, max, i, count: integer;

var
  vector: array of integer;

begin
  writeln('������� ����������� �������');
  readln(size);
  setlength(vector, size);
   //�������� ������ � ��� ���������� ��������
  for i := 0 to size - 1 do
  begin
    write('vector[', i, ']=');
    readln(vector[i]);
    if vector[i] mod 2 <> 0 then
      inc(count);
  end;
  // ��������� ������ ������ ������� �������
  for i := 0 to size - 1 do
    if vector[i] mod 2 = 0 then
      max := vector[i];
    //��� ������ �������� �������, ������� ������ ���������
  for i := 0 to size - 1 do
    if (vector[i] > max) and (vector[i] mod 2 = 0) then
      max := vector[i];
  writeln('���������� �������� ��������� ������� = ', count);
  if max = 0 then
    writeln('׸���� ��������� �� ����������')
  else
    writeln('���������� ������ ������� ������� = ', max);

  readln;

end.
