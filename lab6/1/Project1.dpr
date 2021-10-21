program Project1;
(*
  Создать текстовый файл F, строки которого содержат целые числа.
  Обработать файл следующим образом: определить количество положительных чисел
  и вычислить их сумму. Результат поместить в файл G.
*)
{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, Windows;

var
  run: boolean;

var
  choseHandler: integer;

var
  textFile: text;

procedure clrscr;
var
  cursor: COORD;
  r: cardinal;
begin
  r := 300;
  cursor.X := 0;
  cursor.Y := 0;
  FillConsoleOutputCharacter(GetStdHandle(STD_OUTPUT_HANDLE), ' ', 80 * r,
    cursor, r);
  SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), cursor);
end;

begin
  assign(textFile, 'file.txt');
  while not run do
  begin

    writeln('Сделайте выбор');
    writeln('1 - создание файла');
    writeln('2 - дополнение файла');
    writeln('3 - обработка');
    writeln('4 - вывод файла');
    writeln('5 - выход');
    Readln(choseHandler);
    clrscr();
    case choseHandler of
      1:
        rewrite(textFile);
      2:
        begin
          var
            count: integer;
          writeln('Введите количество элементов, которое хотите добавить');
          Readln(count);
          append(textFile);

          for var i := 1 to count do
          begin
            writeln('Введите элемент под номером ', i);
            var
              number: integer;
            Readln(number);
            writeln(textFile, number);
          end;
          close(textFile);
        end;
      3:
        begin
          var
            sum: integer := 0;
            var count:integer:=0;
          var
            text: string;
          reset(textFile);
          while not eof(textFile) do
          begin
            Readln(textFile, text);
            if strtoint(text) >= 0 then
            begin
              sum := sum + strtoint(text);
              inc(count);
            end;


          end;
          writeln('Количество положительных чисел = ',count);
            writeln('Сумма положительных чисел = ',sum);
          close(textFile);
        end;
      4:
        begin
          var
            text: string;
          reset(textFile);
          while not eof(textFile) do
          begin
            Readln(textFile, text);
            writeln(text);
          end;
          close(textFile);

        end;

      5:
        run := not run;
    end;

  end;

end.
