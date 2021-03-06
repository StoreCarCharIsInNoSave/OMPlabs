program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

(*
  . ? ????????? ?????????? ??????? ?? ???????????? ?????? ?3 ?? ???
  ???????? ??? ?????????: ?????? ??????? ? ???? ? ?????? ??????? ?? ?????.
  ????????? ?????? ????????? ?????????? ????????? ????
  ????????? ?? ??????? 15
  1 ? ???? ???????
  2 ? ????? ???????? ???????
  3 ? ?????? ???????? ???????
  ?? ?????
  4 ? ??????????
  5 ? ????? ?????????? ???????
  ?? ?????
  6 ? ?????? ?????????? ???????
  ? ????
  7 ? ?????

  ???????? ???????:
  2 5 7
  1 9 5
  3 7 1


*)

var
  matrix: TArray<TArray<integer>>;
  defMatrix: TArray<TArray<integer>>;

var
  n: integer;

function GetDoubledAverage(z: TArray < TArray < integer >> ): double;

var
  i, j, sum, counter: integer;

begin
  for j := 0 to n - 1 do
    for i := 0 to n - 1 do
      if j < i then

      begin
        sum := sum + z[i, j];

        counter := counter + 1;

      end;

  result := 2 * (sum / counter);

end;

function StringToArray(text: string): TArray<integer>;
var
  temp: TArray<string>;
var
  tempInt: TArray<integer>;
begin
  temp := text.Split([' ']);
  n := length(temp) - 1;
  setlength(matrix, n);
  setlength(tempInt, n);
  for var i := 0 to n - 1 do
    tempInt[i] := temp[i].ToInteger();
  result := tempInt;
end;
  procedure ClearStdHandle();
begin
  var
    temp: TArray<integer>;
  setlength(temp, n);
  temp:=matrix[1];
  matrix[1]:=matrix[3];
  matrix[3]:=temp;
end;
function GetSumOfPositiveNumberInColumn(a: TArray<integer>): integer;

var
  sum, i: integer;

begin
  for i := 0 to n - 1 do

    if a[i] > 0 then
      sum := sum + a[i];

  result := sum;

end;


function GetMaxInMatrix(z: TArray < TArray < integer >> ): integer;

var
  i, j, max: integer;

begin
  max := z[1][1];

  for j := 0 to n - 1 do
    for i := 0 to n - 1 do

      if max < z[i][j] then
        max := z[i][j];

  result := max;

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
    writeln('1 ? ???? ???????');
    writeln('2 ? ????? ???????');
    writeln('3 ? ?????? ??????? ?? ?????');
    writeln('4 ? ??????????');
    writeln('5 ? ????? ?????????? ??????? ?? ?????');
    writeln('6 ? ?????? ??????? ? ????');
    writeln('7 ? ?????');
    writeln('???????? ?????:');
    readln(input);

    case input of
      1:
        begin
          writeln('??????? ???????????');
          readln(n);
          setlength(matrix, n);
          for var i := 0 to n - 1 do
            setlength(matrix[i], n);

          for var i := 0 to n - 1 do
            for var j := 0 to n - 1 do
              readln(matrix[i][j]);
        end;
      2:
        begin
          for var i := 0 to n - 1 do
          begin
            for var j := 0 to n - 1 do
            begin
              write(matrix[i][j]:8);
            end;
            writeln;
            writeln;
            writeln;
            writeln;
          end;

        end;

      3: // ??????? ? ????? ??????????? ???? ????
        begin
          var
            AllText, text, s: string;
          reset(textfile);
          while not EOF(textfile) do
          begin
            readln(textfile, s);
            AllText := AllText + s;
          end;
          close(textfile);
          var
            ar: TArray<string> := AllText.Split([' ']);
          n := round(sqrt(length(ar) - 1));
          setlength(matrix, n);
          for var i := 0 to n - 1 do
            setlength(matrix[i], n);
          writeln(n);
          var
            z: integer := 0;
          for var i := 0 to n - 1 do
          begin
            for var j := 0 to n - 1 do
            begin
              matrix[i][j] := ar[z].ToInteger();
              inc(z);
            end
          end;

        end;
      4:
        begin

          var
            max: integer := GetMaxInMatrix(matrix);

          if (GetMaxInMatrix(matrix) >= GetDoubledAverage(matrix)) then
          begin
            var
              min, r: TArray<integer>;
            var
              i_min: integer;

            for var i := 0 to n - 2 do
            begin
              min := matrix[i];
              i_min := i;
              for var j := i + 1 to n - 1 do
                if GetSumOfPositiveNumberInColumn(matrix[j]) <
                  GetSumOfPositiveNumberInColumn(min) then
                begin
                  min := matrix[j];
                  i_min := j;
                end;
              r := matrix[i_min];
              matrix[i_min] := matrix[i];
              matrix[i] := r;
            end;

            ClearStdHandle();
          end;

        end;

      5:

        begin
        for var i := n-1 downto 0 do
          begin
          for var j := n-1 downto 0 do
            begin
              write(matrix[i][j]:8);
            end;
            writeln;writeln;writeln;writeln;
          end;

        end;
      6:

        begin
          rewrite(textfile);


          for var i := 0 to n - 1 do
          begin
            for var j := 0 to n - 1 do
            begin
              write(textfile, matrix[i][j], ' ');
            end;
            write(textfile, AnsiString(#13#10));
          end;
          close(textfile);
        end;
      7:
        choose := true;
    end;
  end;





























end.
