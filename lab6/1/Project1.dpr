program Project1;
(*
  ������� ��������� ���� F, ������ �������� �������� ����� �����.
  ���������� ���� ��������� �������: ���������� ���������� ������������� �����
  � ��������� �� �����. ��������� ��������� � ���� G.
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
  textFile,g: text;

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

procedure AddToFile();
begin
  var
    count: integer;
  writeln('������� ���������� ���������, ������� ������ ��������');
  Readln(count);
  append(textFile);

  for var i := 1 to count do
  begin
    writeln('������� ������� ��� ������� ', i);
    var
      number: integer;
    Readln(number);
    writeln(textFile, number);
  end;
  close(textFile);
end;

procedure FindCountAndSumOfPositiveNumber();
begin
  var
    sum: integer := 0;
  var
    count: integer := 0;
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

  close(textFile);
  rewrite(g);
   writeln(g,'����� - ',sum);
   writeln(g,'���������� - ',count);
   close(g);
end;

procedure ShowFile();
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

begin
  assign(textFile, 'file.txt');
  assign(g,'g.txt');
  while not run do
  begin

    writeln('�������� �����');
    writeln('1 - �������� �����');
    writeln('2 - ���������� �����');
    writeln('3 - ���������');
    writeln('4 - ����� �����');
    writeln('5 - �����');
    Readln(choseHandler);
    clrscr();
    case choseHandler of
      1:rewrite(textFile);
      2:AddToFile();
      3:FindCountAndSumOfPositiveNumber();
      4:ShowFile();
      5:run := not run;
    end;

  end;

end.
