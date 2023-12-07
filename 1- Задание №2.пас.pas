program z_1_2;

const
  N = 5;
  
type
  IntArray = array[1..N] of Integer;
  
var
  a: IntArray;
  i, maxelement, number: integer;
  
begin
  for i := 1 to N do 
  begin
    write('Введите элемент ' ,i ,': ');
    readln(a[i]);
    
    maxelement := a[i];
    number := 1;
    
    end;
    
    for i := 2 to N do 
    begin
      if a[i] > maxelement then 
      begin
        maxelement := a[i];
        number := i;
      end;
    end;
    writeln('Максимальный элемент массива: ', maxelement);
    writeln('Номер максимального элемента массива: ', number);
end.