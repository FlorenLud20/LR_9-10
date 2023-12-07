const n = 5;
type arn = array[1..n] of integer;

procedure max(var ar: arn);
var maxi, k: integer;
begin
  maxi:=1;
  for k:=2 to n do //индекс макс элемента
  begin
    if ar[k]>ar[maxi] then
    begin
      maxi:=k;
    end;
  end;
  ar[maxi]:=0; //замена на ноль
end;

procedure min(var ar: arn);
var mini,k: integer;
begin
  mini:=1;
  for k:=2 to n do //индекс мин элемента
  begin
    if ar[k]<ar[mini] then
    begin
      mini:=k;
    end;
  end;
  for k:=mini+1 to n do //умн на 2 после мин
  begin
    ar[k]:=ar[k]*2;
  end;
end;


var a,b: arn; i: integer;
begin
  writeln('Введите массив 1:');
  for i := 1 to n do read(a[i]);
  writeln('Введите массив 2:');
  for i := 1 to n do read(b[i]);
  
  i := 1;
  while (i<=n) do //проверка на первый элемент, кратный пяти
  begin
    if (a[i] mod 5 = 0) or (b[i] mod 5 = 0) then
    begin
      if (a[i] mod 5 = 0) and (b[i] mod 5 <> 0) then
      begin
        max(a); min(b);
      end
      else if (a[i] mod 5 <> 0) and (b[i] mod 5 = 0) then
      begin
        max(b); min(a);
      end;
      break;
    end;
    i:=i+1;
  end;

  writeln('Массив 1 после изменений:');
  for i:=1 to n do
  begin
    write(a[i], ' ');
  end;
  writeln;
  writeln('Массив 2 после изменений:');
  for i:=1 to n do
  begin
    write(b[i], ' ');
  end;
end.