program Project1;
(*
  ��������� ������� 15
  ��� �����, ����� �������� ���������� ���� �� ����� ���������.
  �����, ��-����� ������������� ��� �� ������, ��� � ������ �����,
  ���� ��� �����-������� �� �����, ��������� � ����� ������.
  ����������� �������� �����, ������ �����,
  ���� ��� ������������ �� �����, � ���������� �����.

*)
{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

  type TStringArray=array of string;
var
  arr: TArray<string>;

begin

  var
    text: string :=
      '������������ ����� ����� �������� ���������� ���� �� ����� ���������';
  arr := text.Split([' ']);
  var
    max: string := arr[0];

  for var i := 0 to length(arr) - 1 do
    if max.length < arr[i].length then
      max := arr[i];

  if max <> arr[0] then
  begin
    writeln('������ ����� �� �������� ������������');
    writeln(text);

  end
  else
  begin
    writeln('������ ����� �������� ������������');
     var counter:integer:=0;
    for var i := 0 to length(arr) - 1 do
    begin
      if arr[i][arr[i].length] = arr[0][arr[0].length] then
         inc(counter);
    end;
    var tempArray:TStringArray;
    setlength(tempArray,counter);
    var indexator:integer:=0;
     for var i := 1 to length(arr) - 1 do  // i=1 - ���������� 1 �����
    begin
      if arr[i][arr[i].length] = arr[0][arr[0].length] then begin
         tempArray[indexator]:=arr[i];
         inc(indexator);
         arr[i]:='';
      end;
    end;
    writeln('-------�� ���������-------') ;
    writeln(text);
    text:='';

    for var i := 0 to length(arr)-1 do text:=text+arr[i]+' ';
    for var i := 0 to indexator-1 do text:=text+temparray[i]+' ';
     writeln('-------����� ���������-------');
        writeln(text);
         writeln('-------������ �����-------');
            writeln(arr[0]);
  end;

  readln;

end.
