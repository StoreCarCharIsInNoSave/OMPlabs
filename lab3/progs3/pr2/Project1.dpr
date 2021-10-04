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
  type IntVector = array of integer;
var
  A, B: IntVector;

var
  size: integer;

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

procedure FillArray(var vector1: IntVector; n:integer);
begin
 setlength(vector1,n);
for var i := 0 to n - 1 do
  begin
    write('Vector[', i, '] = ');
    readln(vector1[i]);
  end;
end;


procedure ShowArray(var vector1: IntVector; n:integer);
begin
for var i := 0 to n - 1 do
  begin
    write(vector1[i],' ');
  end;
end;

begin
  writeln('������� ������ ��������');
  readln(size);
    FillArray(A,size);
    FillArray(B,size);

    ShowArray(A,size);
    writeln;
    ShowArray(B,size);
    writeln;
    EqualArrays(A, B, size);
  readln;

end.
