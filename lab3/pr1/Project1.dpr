﻿program Project1;
(*

  Орловский ПМ-12 Вариант 15
  . Вычислить значение функции f на отрезке [a,b] с заданным шагом h.
  Результаты представить в виде таблицы. Вычисление суммы,
  произведения, максимального или минимального элемента и функции f
  оформить в виде отдельных функций пользователя c передачей параметров.
  f=x*x+tg(x) при x<2
  f = (x-5)/(1+x*x) при 2<=x<=10
  f = (1+x)/(x*x*x)* max(1/x,sqrt(x+5)) при x>10
*)
{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, math;

function Max(a: double; b: double): double;
begin
  if a > b then
    result := a
  else
    result := b;
end;

function F(x: double): double;
var
  F: double;
begin
  if x < 2 then
    F := x * x + tan(x)
  else if x <= 10 then
    F := (x - 5) / (1 + x * x)
  else

    F := (1 + x) / (x * x * x) * Max(1 / x, sqrt(x + 5));

  result := F;
end;

var
  x, b, h: double;

begin
  writeln('Введите нижнюю границу, верхнюю границу, шаг');
  readln(x, b, h);

  writeln('╔══════════════╦═════════════╗');
  writeln('║       x      ║     f(x)    ║');
  writeln('╠══════════════╬═════════════╣');
  while x <= b do
  begin
    writeln('║', x:11:3, '   ║   except    ║');
    writeln('║', x:11:3, '   ║ ', f(x):9:3, '   ║');

    x := x + h;

  end;
  writeln('══════════════════════════════')  ;
  readln;

end.
