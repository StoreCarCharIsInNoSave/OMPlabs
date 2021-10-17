program Project1;
 (*

 Составить программу, которая во введенном тексте удаляет все строчные буквы
  русского алфавита, подсчитывает количество прописных букв
   латинского алфавита и заменяет все пробелы на знак "#". Использовать
    данные типа множество.
	Программу просчитать для различных исходных данных.
   На печать выдать исходный текст, количество прописных
    букв латинского алфавита и преобразованный текст.

 *)
{$APPTYPE CONSOLE}

{$R *.res}

var sLow:set of char = ['а'..'я'];
var sBig:set of char = ['А'..'Я'];
var uselessSet:set of char=[' '];
var text : string;
var counter:integer;

begin
  counter:=0;
    text:='dsdАf sбЯяАаБ лаб3ла 123';
   for var i := 1 to text.Length do begin
    if text[i] in sBig then inc(counter);
    if text[i] in uselessSet then text[i]:='#';
    end;
    foreach ch:char in sLow do text:=text.Replace(ch,'');
    writeln('Количество прописных букв русского алфавита = ',counter);
    writeln('Текст после изменения:');
    writeln(text);
     readln;

end.
