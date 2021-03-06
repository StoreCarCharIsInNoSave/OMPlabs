program Project1;
(*
  ????????? ??-12 ??????? 15
  4.	???? ????????????? ????????????? ??????? A(nxn).
  ??????? ?????????? ??? ????? i ?? 1 ?? 5, ??? ??????? ?[i,j] = 0
  ??? ????????? j ?? 1 ?? 5.

*)
{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

type
  IntMatrix = array of array of integer;

Function CreateAndFillMatrix(const size: integer): IntMatrix;
var
  matrix: IntMatrix;
begin
  setlength(matrix, size);
  for var i := 0 to size - 1 do
  begin
    setlength(matrix[i], size);
    for var j := 0 to size - 1 do
    begin
      write('matrix[', i, '][', j, '] = ');
      readln(matrix[i][j]);
    end;
  end;
  result := matrix;
end;

procedure ShowArray(var matrix: IntMatrix; const size: integer);
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

Function CountOfLinesWithZeros(var matrix: IntMatrix; const size: integer):Integer;
var linesCount:integer;
begin
linesCount:=0;
  for var i := 0 to size - 1 do
  begin
    for var j := 0 to size - 1 do
    begin
      if matrix[i][j]=0 then begin
      inc(linesCount);
      break;
      end;
    end;

  end;
  result:=linesCount;
end;

var
  matrix: IntMatrix;
  var n:integer;
begin
    writeln('??????? ???????????');
    readln(n);
  matrix := CreateAndFillMatrix(n);
  writeln('????????? ??????');
  ShowArray(matrix, n);
   writeln('?????????? ?????, ??? ???? ??????? ??????? = ',CountOfLinesWithZeros(matrix,n) );




  readln;

end.
