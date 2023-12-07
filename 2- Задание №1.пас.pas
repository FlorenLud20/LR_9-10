program z_2_1;

const
  n = 6;
  m = 8;

var
  a: array[1..n, 1..m] of Integer; // создание матриц
  b: array[1..m] of Integer;
  i, z: Integer;

begin
  Randomize;

  for i := 1 to m do
    for z := 1 to n do
      a[z, i] := Random(8) - 1; // заполнение матрицы случайными элементами

  writeln('Двумерный массив: ');
  for i := 1 to n do
  begin
    for z := 1 to m do
      write(a[i, z]:4); // вывод матрицы
    writeln;
  end;

  writeln('Одномерный массив: ');
  for i := 1 to m do
  begin
    b[i] := 0;

    for z := 1 to n do
    begin
      if Abs(a[z, i]) > 4 then // если разность z и i больше 4
      begin
        b[i] := a[z, i]; // обновляем массив б
        break;
      end;
    end;
writeln(b[i]:4); // вывод с модулем 4
  end;
end.