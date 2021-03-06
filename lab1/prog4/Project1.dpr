program Project1;
   // Орловский Анатолий Сергеевич ПМ-12
   // Вариант 15
   // посчитать значение функции от n до k с шагом h
   // f(x) = (x+1)/(1-x*x) при x<1
   // f(x) = sqrt(abs(x*x*x-1))+ Sum(1,5,(i-2)*(i-2)) при 1<=
   // f(x) = (x+5)/(12+x+x*x) при x>8
   // repeat until
{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  x, k, h, f: double;

var
  flag: byte;

var
  i: integer;





begin
  writeln('Введите x,k,h');

  readln(x, k, h);
  writeln('╔══════════════╦═════════════╗');
  writeln('║       x      ║     f(x)    ║');
  writeln('╠══════════════╬═════════════╣');
  repeat


    flag := 1;
    if x < 1 then
    begin

      if (1 - x * x) = 0 then
        flag := 0
      else
        f := (x + 1) / (1 - x * x);
    end
    else if (x <= 8) then
    begin
      f := sqrt(abs(x * x * x - 1));
      for i := 1 to 5 do
        f := f + (i - 2) * (i - 2);
    end
    else
      f := (x + 5) / (12 + x + x * x);
    case flag of
      1:writeln('║', x:11:3, '   ║ ', f:9:3, '   ║');


      0:
        writeln('║', x:11:3, '   ║   except    ║');
    end;

    x := x + h;
   until (x >= k);
  writeln('╚════════════════════════════╝');
  readln;

end.
