program Project1;
 (*

 ��������� ���������, ������� �� ��������� ������ ������� ��� �������� �����
  �������� ��������, ������������ ���������� ��������� ����
   ���������� �������� � �������� ��� ������� �� ���� "#". ������������
    ������ ���� ���������.
	��������� ���������� ��� ��������� �������� ������.
   �� ������ ������ �������� �����, ���������� ���������
    ���� ���������� �������� � ��������������� �����.

 *)
{$APPTYPE CONSOLE}

{$R *.res}

var sLow:set of char = ['�'..'�'];
var sBig:set of char = ['�'..'�'];
var uselessSet:set of char=[' '];
var text : string;
var counter:integer;

begin
  counter:=0;
    text:='dsd�f s������ ���3�� 123';
   for var i := 1 to text.Length do begin
    if text[i] in sBig then inc(counter);
    if text[i] in uselessSet then text[i]:='#';
    end;
    foreach ch:char in sLow do text:=text.Replace(ch,'');
    writeln('���������� ��������� ���� �������� �������� = ',counter);
    writeln('����� ����� ���������:');
    writeln(text);
     readln;

end.
