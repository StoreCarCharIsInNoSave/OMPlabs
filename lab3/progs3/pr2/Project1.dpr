program Project1;
(*
  ��������� ��-12 ������� 15.
  5.	���� ��� ������������� ������� �(n), B(n). ���������� ���������� ����� i,
  ��� ������� : �) � [i] < � [i]; �) � [i]=� [i]; �) � [i]>� [i].
*)
{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

procedure EqualArrays(var vector1: array of integer;
  var vector2: array of integer; const size: integer);
var
  less, more, equal: integer;
begin
  less := 0;
  more := 0;
  equal := 0;
  for var i := 0 to size - 1 do
  begin
    if vector1[i] < vector2[i] then
      inc(less)
    else if vector1[i] = vector2[i] then
      inc(equal)
    else
      inc(more);

  end;
  writeln('���������� i, ��� A[i]<B[i] = ', less);
  writeln('���������� i, ��� A[i]=B[i] = ', equal);
  writeln('���������� i, ��� A[i]>B[i] = ', more);
end;

var
  A, B: array of integer;

var
  size: integer;

begin
  writeln('������� ������ ��������');
  readln(size);
  setlength(A, size);
  setlength(B, size);
  for var i := 0 to size - 1 do
  begin
    write('A[', i, '] = ');
    readln(A[i]);
  end;

  for var i := 0 to size - 1 do
  begin
    write('B[', i, '] = ');
    readln(B[i]);
  end;
  EqualArrays(A, B, size);
  readln;

end.
