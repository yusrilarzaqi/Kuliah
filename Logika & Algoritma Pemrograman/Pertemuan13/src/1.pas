program Menapilkan_angka_tanpa_array;
uses crt;

var
  bil : array[1..5] of integer;
  i : integer;

begin
  clrscr;
  for i:=1 to 5 do
    begin
      write('Masukan bilangan : ');
      readln(bil[i]);
    end;

  for i := 1 to 5  do
    write(bil[i], ' ');
  readln;
end.

