program Project1;
(*
  ��������� ��-12 ������� 15
  4.	���� ���������� ������� A(n�n).
  ����� ���������� ������� ����� �������
  �� ������� � �������� ���������� � ��������
  ��� ������� � ���������, ������� �� ����������� ���� ����������.
*)
{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  n, i, j,tempVaribleHandler, max,maxIndexI, maxIndexJ: integer;

var
  matrix: array of array of integer;

begin
  writeln('������� ������ ���������� �������');
  readln(n);
  setlength(matrix, n);
  for i := 0 to n - 1 do
  begin
    setlength(matrix[i], n);
  end;

  for i := 0 to n - 1 do
  begin
    for j := 0 to n - 1 do
    begin
       write('Matrix[', i, '] = ');
       readln(matrix[i][j]);

    end;
  end;

  writeln('������� �� ��������������');
  for i := 0 to n - 1 do
  begin
    for j := 0 to n - 1 do
    begin
      write(matrix[i][j], ' ');
    end;
    writeln;
  end;


  max := matrix[0, 0];
  for i := 0 to n - 1 do
    for j := 0 to n - 1 do
      if ((i = j) or (i + j = n - 1)) and (max < matrix[i][j]) then begin
        maxIndexI:=i;
        maxIndexJ:=j;
        max:=matrix[i][j];
      end;


  writeln('������������ ������� ������� � �������� ��������� = ',matrix[maxindexi,maxindexj]);
  if n mod 2 = 0 then writeln('� ������� � ������ ������������ �� ����� ���� �����������') else begin

       tempVaribleHandler:=matrix[round(n/2)][round(n/2)];
        matrix[round(n/2)][round(n/2)]:=matrix[maxindexi,maxindexj];
         matrix[maxIndexI][maxIndexJ]:=tempVaribleHandler;

      writeln('������� ����� ��������������');
  for i := 0 to n - 1 do
  begin
    for j := 0 to n - 1 do
    begin
      write(matrix[i][j], ' ');
    end;
    writeln;
  end;
  end;


  readln;

end.