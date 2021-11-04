program Lingkaran;
uses crt;
const
  PI = 3.14;

var
  r, keliling, luas : real;

begin
  clrscr;
  writeln('===Program Mengitung Luas Dan Keliling Lingkaran===');
  write('Jari-jari : ');readln(r);
  luas := PI * r * r;
  keliling := PI * r * 2;
  writeln('Luas : ', luas:6:2);
  writeln('Keliling : ', keliling:6:2);
  readln;
end.
