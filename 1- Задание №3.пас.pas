program z_1_3;

const 
  N = 5;
  
type
  IntArray = array[1..N] of Integer;
  
var
  a: IntArray;
  i, number, m, k: integer;
  b: boolean;

function nice(var k, m, number: integer): integer;
var
  i: integer; // Объявляем i в блоке функции
begin
  b := False;
  
  for i := 1 to N do 
  begin
    write('Введите элемент массива ', i, ': ');
    readln(a[i]);

    if (not b) and (a[i] > 0) then
    begin
      number := i;
      b := True;
    end;
  end;

  if b then
    writeln('Номер первого положительного элемента массива: ', number)
  else
    writeln('В массиве нет положительных элементов.');

  nice := k + m;
end;

begin
  k := 0; // Инициализация переменных
  m := 0;
  number := 0;
  nice(k, m, number);
end.