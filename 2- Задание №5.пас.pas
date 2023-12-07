Program z_2_5;

const
  m = 8;
  n = 8;

var
  a: array[1..m, 1..n] of Integer;
  b: array[1..m] of Integer;
  i, j, max, countMax: Integer;

begin
  for i := 1 to m do
    for j := 1 to n do
      a[i, j] := Random(50) + 1; // заполнение случайными числами

  writeln('Исходный массив:');
  for i := 1 to m do
  begin
    for j := 1 to n do
      write(a[i, j]:4);
    writeln;
  end;

  for i := 1 to m do
  begin
    max := a[i, 1]; // максимум
    countMax := 1; // счетчик максимума

    for j := 2 to n do // поиск максимума
    begin
      if a[i, j] > max then
      begin
        max := a[i, j];
        countMax := 1;
      end
      else if a[i, j] = max then
        countMax := countMax + 1;;
    end;

    if countMax = 1 then
      b[i] := 1
    else
      b[i] := -1;
  end;

  writeln('Одномерный массив:');
  for i := 1 to m do
    write(b[i]:4);
end.