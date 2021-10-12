program Project1;
(*
  Орловский Вариант 15
  Дан текст, слова которого отделяются друг от друга пробелами.
  Слова, ко-торые заканчиваются той же буквой, что и первое слово,
  если оно макси-мальное по длине, поместить в конец текста.
  Распечатать исходный текст, первое слово,
  если оно максимальное по длине, и полученный текст.

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
      'Данблаблабла текст слова которого отличаются друг от друга пробелами';
  arr := text.Split([' ']);
  var
    max: string := arr[0];

  for var i := 0 to length(arr) - 1 do
    if max.length < arr[i].length then
      max := arr[i];

  if max <> arr[0] then
  begin
    writeln('Первое слово не является максимальным');
    writeln(text);

  end
  else
  begin
    writeln('Первое слово является максимальным');
     var counter:integer:=0;
    for var i := 0 to length(arr) - 1 do
    begin
      if arr[i][arr[i].length] = arr[0][arr[0].length] then
         inc(counter);
    end;
    var tempArray:TStringArray;
    setlength(tempArray,counter);
    var indexator:integer:=0;
     for var i := 1 to length(arr) - 1 do  // i=1 - исключение 1 слова
    begin
      if arr[i][arr[i].length] = arr[0][arr[0].length] then begin
         tempArray[indexator]:=arr[i];
         inc(indexator);
         arr[i]:='';
      end;
    end;
    writeln('-------До изменения-------') ;
    writeln(text);
    text:='';

    for var i := 0 to length(arr)-1 do text:=text+arr[i]+' ';
    for var i := 0 to indexator-1 do text:=text+temparray[i]+' ';
     writeln('-------После изменения-------');
        writeln(text);
         writeln('-------Первое слово-------');
            writeln(arr[0]);
  end;

  readln;

end.
