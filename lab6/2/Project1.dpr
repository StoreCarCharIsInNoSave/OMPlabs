program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

(*
  � ��������� ���������� ������� �� ������������ ������ �3
  �� ��� ����-���� ��� ���������: ������ ������� � ���� � ������ ������� �� �����.
  ���-������ ������ ��������� ���������� ��������� ����
  ��������� �� ������� 15
  1 � ���� ������� � ������
  2 � ������ ������� � ����
  3 � ������ ��������� �������
  �� �����
  4 � ����������
  5 � ����� ����������� �������
  �� �����
  6 � ������ ����������� �������
  � ����
  7 � �����
  �������� �����>

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
    writeln('1 � ���� ������� � ������');
    writeln('2 � ������ ������� � ����');
    writeln('3 � ������ ��������� ������� �� �����');
    writeln('4 � ����������');
    writeln('5 � ����� ����������� ������� �� �����');
    writeln('6 � ������ ����������� ������� � ����');
    writeln('7 � �����');
    writeln('�������� �����:');
    readln(input);

    case input of
      1:
        begin
          writeln('������� �����������');
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
