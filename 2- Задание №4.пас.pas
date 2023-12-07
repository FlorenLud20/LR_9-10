Program z_2_4;

const 
  m = 8;
  n = 8;

var 
  a: array[1..m, 1..n] of integer;
  b: array[1..m] of integer;
  i, z, s, avg: integer;

begin
  for i := 1 to m do
    for z := 1 to n do 
      a[i, z] := random(-10, 10); // заполнение массива

  writeln('двумерный массив:');
  
  for i := 1 to m do // вывод двумерного массива
  begin
    for z := 1 to n do
      write(a[i, z]:4);
    writeln;
  end;

  writeln('одномерный массив:');

  // Формирование одномерного массива, содержащего минимальные значения из каждой строки
  for i := 1 to m do
  begin
    b[i] := a[i, 1]; // Первый элемент строки как минимальный
    for z := 2 to n do
    begin
      if a[i, z] < b[i] then
        b[i] := a[i, z]; // Если a < b, то присваиваем
    end;
    write(b[i]:4);
  end;

  s := 0;

  // Суммирование элементов одномерного массива
  for i := 1 to m do
    s := s + b[i];

  avg := s div m; // Нахождение среднего арифметического

  writeln;

  // Проверка наличия среднего арифметического в одномерном массиве
  if avg in b then
    writeln('Одномерный массив содержит своё среднее арифметическое: ', avg)
  else
    writeln('Одномерный массив НЕ содержит своё среднее арифметическое: ', avg);
end.