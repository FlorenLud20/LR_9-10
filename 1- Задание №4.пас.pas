const n=10;
var
  a, b: array of integer;
  i, sum1, sum2: integer;  
procedure pro10(i, sum1, sum2: integer; var a, b: array of integer);
const n=10;
var aa, bb: array [1..n] of integer;
begin
  writeln('Изначальные массивы:');
  for i:=1 to n do
  begin
    aa[i]:=random(-20, 20);
    bb[i]:=random(-20, 20);
  end;
  writeln(aa);
  writeln(bb);
  writeln;
  for i:=1 to n do
  begin
    if aa[i]>0 then sum1:=sum1+aa[i];
    if bb[i]>0 then sum2:=sum2+bb[i];
  end;
  if sum1<sum2 then
    for i:=1 to n do
      aa[i]:=aa[i]*10
  else
    for i:=1 to n do
      bb[i]:=bb[i]*10;
  writeln('Изменённые массивы:');
  writeln(aa);
  writeln(bb);
end;

begin
  pro10(i, sum1, sum2, a, b);
end.