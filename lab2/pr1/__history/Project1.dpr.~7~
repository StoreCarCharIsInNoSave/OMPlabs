program Project1;

(*
  Орловский ПМ-12 вариант 15
  1.	Дан вектор A(n). Найти наибольший из
  четных и количество нечетных элементов вектора.
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
  writeln('Введите размерность вектора');
  readln(size);
  setlength(vector, size);
   //заполняю массив и ищу количество нечетных
  for i := 0 to size - 1 do
  begin
    write('vector[', i, ']=');
    readln(vector[i]);
    if vector[i] mod 2 <> 0 then
      inc(count);
  end;
  // определяю первый четный элемент вектора
  for i := 0 to size - 1 do
    if vector[i] mod 2 = 0 then
      max := vector[i];
    //ищу четные элементы вектора, которые больше максимума
  for i := 0 to size - 1 do
    if (vector[i] > max) and (vector[i] mod 2 = 0) then
      max := vector[i];
  writeln('количество нечетных элементов вектора = ', count);
  if max = 0 then
    writeln('Чётных элементов не обнаружено')
  else
    writeln('Наибольший четный элемент вектора = ', max);

  readln;

end.
