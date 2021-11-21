program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

(*
  ¬ программу сортировки вектора из лабораторной работы є3
  по ”¬ѕ вста-вить две процедуры: запись вектора в файл и чтение вектора из файла.
  ѕро-грамма должна содержать простейшее текстовое меню
  ќрловский ј— ¬ариант 15
  1 Ц ввод вектора с экрана
  2 Ц запись вектора в файл
  3 Ц чтение исходного вектора
  из файла
  4 Ц сортировка
  5 Ц вывод полученного вектора
  на экран
  6 Ц запись полученного вектора
  в файл
  7 Ц выход
  ¬ыберите режимЦ>

*)
var
  vector: TArray<integer>;

var
  n: integer;

function StringToArray(text: string): TArray<integer>;
var
  temp: TArray<string>;
var
  tempInt: TArray<integer>;
begin
  temp := text.Split([' ']);
  n := length(temp) - 1;
  setlength(vector, n);
  setlength(tempInt, n);
  for var i := 0 to n - 1 do
    tempInt[i] := temp[i].ToInteger();
  result := tempInt;
end;

begin
  n := 1;
  var
    choose: boolean;
  var
    input: integer;
  var
    textfile: text;
  assign(textfile, 'textfile.txt');
  while not choose do
  begin
    writeln('1 Ц ввод вектора с экрана');
    writeln('2 Ц запись вектора в файл');
    writeln('3 Ц чтение исходного вектора из файла');
    writeln('4 Ц сортировка');
    writeln('5 Ц вывод полученного вектора на экран');
    writeln('6 Ц запись полученного вектора в файл');
    writeln('7 Ц выход');
    writeln('—делайте выбор:');
    readln(input);

    case input of
      1:
        begin
          writeln('¬ведите размерность');
          readln(n);
          setlength(vector, n);
          for var i := 0 to n - 1 do
            readln(vector[i]);
        end;
      2:
        begin
          rewrite(textfile);
          for var i := 0 to n - 1 do
            write(textfile, vector[i], ' ');
          close(textfile);
        end;
      3:
        begin
          var
            AllText, s: string;
          reset(textfile);
          while not Eof(textfile) do
          begin
            readln(textfile, s);
            AllText := AllText + s;
          end;
          close(textfile);
          vector := StringToArray(s)
        end;
      5:begin
        for var i := 0 to n - 1 do
          write(vector[i]:2);
          writeln;
      end;
      4:
        begin
          var i, j, temp: integer;
            for i := 0 to n-1 do
              for j := i + 1 to n-1 do
              begin

                if (vector[i] > vector[j]) then
                begin
                  temp := vector[i];
                  vector[i] := vector[j];
                  vector[j] := temp;
                end;
              end;
         end;
        6:

          begin
            rewrite(textfile);
            for var i := 0 to n - 1 do
              write(textfile, vector[i], ' ');
            close(textfile);
          end;
        7:
          choose := true;
        end;
    end;

end.
