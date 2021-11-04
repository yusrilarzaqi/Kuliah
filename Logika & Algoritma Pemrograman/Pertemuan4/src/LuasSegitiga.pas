program Luas_segitiga;
uses crt;
var
  alas, tinggi : Integer;
  hasil : Real;

begin
  clrscr;
  writeln('===Program Menghitung Luas Segitiga===');
  write('Alas : ');readln(alas);
  write('tinggi : ');readln(tinggi);
  hasil := alas*tinggi*0.5;
  writeln('Hasil luas dari ', alas, ' * ', tinggi, ' / 2, adalah : ', hasil:6:2);
  readln;
end.
