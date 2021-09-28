program Project1;
(*
Орловский ПМ-12 вариант 15
Дана квадратная матрица A(nхn). Найти количество положительных элементо
в матрицы в заданной области: {Элементы ниже главной и побочной диагонали}
*)
{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, winapi.Windows;

var
  n, i, j, sum: integer;

var
  matrix: array of array of integer;

begin
  writeln('Введите размер квадратной матрицы');
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
  for i := 0 to n - 1 do
    for j := 0 to n - 1 do
      if ((i > j) and (i + j > n - 1)) then
      begin
        sum := sum + matrix[i][j];
      end;
  writeln('Введенная матрица: ');
  for i := 0 to n - 1 do
  begin
    for j := 0 to n - 1 do
    begin
      if ((i > j) and (i + j > n - 1)) then
      begin
        SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE),
          FOREGROUND_RED);
        write(matrix[i][j], ' ');
        SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE),
          FOREGROUND_RED or FOREGROUND_GREEN or FOREGROUND_BLUE);
      end
      else
        write(matrix[i][j], ' ');
    end;
    writeln;
  end;
  writeln('Сумма элементов ниже главной и побочной диагонали = ', sum);
  readln;

end.
