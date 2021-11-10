program Hitung_luas_Lingkaran;
uses crt;
const
  phi = 3.14;

var
  r : integer;
  luas, keliling: real;

begin
  clrscr;
  write('Masukan Jari-jari dari lingkaran : '); readln(r);
  
  luas := phi * r * r;
  keliling := 2 * phi * r;

  writeln('Hasil luas lingkaran dari jari-jari ', r, ' adalah : ', luas:4:2);
  writeln('Hasil keliling lingkaran dari jari-jari ', r, ' adalah : ', keliling:4:2);
  readln;
end.
