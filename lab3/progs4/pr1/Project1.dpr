program Project1;
(*
  ��������� ��-12 ������� 15
  24. ���� ���������� �������. ��������� ������, ������ i-�� ������� ��������
  ����� ���-���������� �������� i-�� ������ �������.
*)
{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

type
  IntMatrix = array of array of integer;

var
  matrix: IntMatrix;

var
  size: integer;
  vector: array of integer;

Procedure ShowMatrix();
begin
  for var i := 0 to size - 1 do
  begin
    for var j := 0 to size - 1 do
    begin
      write(matrix[i][j], ' ');
    end;
    writeln;
  end;
end;

Procedure FillMatrix();
begin
  writeln('������� ����������� ���������� �������');
  readln(size);
    setlength(vector, size);
  setlength(matrix, size);

  for var i := 0 to size - 1 do
    setlength(matrix[i], size);

  for var i := 0 to size - 1 do
  begin
    for var j := 0 to size - 1 do
    begin
            write('Matrix[', i, '][', j, '] = ');
      readln(matrix[i][j]);
    end;
  end;
end;


Procedure ShowArray();
begin
 for var i := 0 to size - 1 do
  begin
    write(vector[i], ' ');
  end;
end;


procedure FindMaxInLineAndFillArray();
begin
  var max: integer;
  for var i := 0 to size - 1 do
  begin
    max := matrix[i][0];
    for var j := 0 to size - 1 do
    begin
      if matrix[i][j] > max then
        max := matrix[i][j];
    end;
    vector[i] := max;
  end;
end;




begin

  FillMatrix();
    writeln('��������� �������');
  ShowMatrix();
  FindMaxInLineAndFillArray();
  writeln('���������� ������');
  ShowArray();
  readln;

end.
