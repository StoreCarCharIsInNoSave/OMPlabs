program Project1;

(*
  ????????? ??-12 15 ???????
  ???? ?????????? ??????? A(n?n).
  ????????? ?????? b, ???
  bi, i=1,?,n ? ????????-??? ??????? i-??? ??????? ???????.
*)
{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  n, min, i, j, k: integer;

var
  vector: array of integer;

var
  matrix: array of array of integer;

begin
  writeln('??????? ??????????? ???????');
  readln(n);
  setlength(matrix, n);
  setlength(vector,n);
  // ????????? ?????? ?? ??????????
  for i := 0 to n - 1 do
    setlength(matrix[i], n);
  for i := 0 to n - 1 do
  begin
    for j := 0 to n - 1 do
    begin
      write('matrix[', i, '][', j, '] = ');
      readln(matrix[i][j]);
    end;
    writeln;
  end;

  for j := 0 to n - 1 do
  begin
    min := matrix[0][j];
    for i := 0 to n - 1 do
    begin
      if matrix[i][j] < min then
        min := matrix[i][j];
    end;
    vector[j] := min;
  end;

       writeln('???????? ???????:') ;
  for i := 0 to n-1 do begin
    for j := 0 to n-1 do begin
            write(matrix[i][j],' ');
    end;
    writeln;
  end;
  writeln('?????????? ?????? ? ???????????? ?????????? ???????? ???????:') ;
       for i := 0 to n-1 do write(vector[i],' ') ;

  readln;

end.
