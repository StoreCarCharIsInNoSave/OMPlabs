program project1;
// ????????? ???????? ?????????  ??????? 15
// f(x,y) = sin(x)+sin(y) ??? x*y<0; (x^2+24)/(1+y)^2 ??? x*y=2; cos(y)+1/sqrt(x*y) ??? x*y>2;
// g(x,y) = x-y-1 ??? x*y<0; sin((x*y+1-x*x)/(1+x)) ??? x*y=2; abs(2*x*y*x*y-1-x) ??? x*y>2;
// ???????????? ????? case ? ???????? divide by zero exception ????? ?????
{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  f, g, x, y: integer;

var
  flagF, FlagG: byte;

var
  i, j: integer;

begin

  writeln('??????? x,y');
  readln(x, y);
  flagF := 1;
  FlagG := 1;
  case x * y of

    - maxint .. 1:

      begin
        f := round(cos(x) * cos(y));
        if x - y - 1 = 0 then
          FlagG := 0
        else
          g := 1 div (x - y - 1);

      end;
    2:
      begin
        if (1 + y) * (1 + y) = 0 then
          flagF := 0
        else
          f := (x * x + 24) div ((1 + y) * (1 + y));
        if 1 + x = 0 then
          FlagG := 0
        else
          g := round(sin((x * y + 1 - x * x) div (1 + x)));

      end;
    3 .. maxint:
      begin
        if sqrt(x * y) <= 0 then
          flagF := 0
        else
          f := round(cos(y)) + 1 div round(sqrt(x * y));
        g := abs(2 * x * x * y * y - 1 - x); // ????????? Integer overflow
      end;
  end;
  case flagF of
    0:

      writeln('divide by zero exception in f(x,y)');

    1:
      writeln('f(x,y) = ', f);
  end;
  case FlagG of
    0:
      writeln('divide by zero exception in g(x,y)');

    1:
      writeln('g(x,y) = ', g);
  end;
  readln;

end.
