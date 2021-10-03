program Project1;
  (*

  Орловский ПМ-12 Вариант 15
Даны действительные числа s, t. Вычислить
      g(1.2,s+t)+g(t,s)-g(2s+1,st)
      где g = (a*a-b*b)/(a*a+b*b+4)
*)
{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
  function G(a,b:double):double;
  begin
    result:= (a*a-b*b)/(a*a+b*b+4);
  end;
   var s,t:double;
begin
    writeln('Введите s,t');
    readln(s,t);
    writeln('f = ',(g(1.2,s+t)+g(t,s)-g(2*s+1,s*t)):5:5);
    readln;
end.
