program Input_nilai;
uses crt;
var
  angka1, angka2, penjumlahan, pengurangan : Integer;
  perkalian, pembagian : Real;

begin
  clrscr;
  writeln('===Progam Aritmatika===');
  write('Angka pertama : ');readln(angka1);
  write('Angka kedua : ');readln(angka2);
  penjumlahan := angka1 + angka2;
  pengurangan := angka1 - angka2;
  perkalian := angka1 * angka2;
  pembagian := angka1 / angka2;
  writeln('===Hasil===');
  writeln('Penjumlahan : ', penjumlahan);
  writeln('Pengurangan : ', pengurangan);
  writeln('Perkalian   : ', perkalian:6:2);
  writeln('Pembagian   : ', pembagian:6:2);
  readln;
end.
