program Project1;

(*
  ��������� ��-12 15 �������
  ���� ���������� ������� A(n�n).
  ��������� ������ b, ���
  bi, i=1,�,n � ��������-��� ������� i-��� ������� �������.
*)
{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  n, min, i, j,k: integer;

var
  vector: array of integer;

var
  matrix: array of array of integer;

function FindMinInVector(vector: array of integer;
  const arraySize: integer): integer;
var
  i, min: integer;
begin
  min := vector[0];
  for i := 0 to arraySize - 1 do
    if vector[i] < min then
      min := vector[i];
  result := min;
end;

begin
  writeln('������� ����������� �������');
  readln(n);
  setlength(matrix, n);
  // ��������� ������ �� ����������
  for i := 0 to n - 1 do
    setlength(matrix[i], n);
  for i := 0 to n - 1 do
  begin
    for j := 0 to n - 1 do
    begin
      write('matrix[', i, '][', j, '] = ');
      readln(matrix[i][j]);
    end;

  end;

  for i := 0 to n - 1 do
  begin

    for j := 0 to n - 1 do
    begin
    min:=matrix[j,i];
       ///etc...

    end;
    writeln;
  end;

  readln;

end.
