program Hitung_Luas_Segi_Tiga;
uses crt;

var
  alas, tinggi : integer;
  luas : real;

procedure luas_segitiga;
begin
  luas := alas*tinggi/2;
  writeln('Luas Segi tiga adalah : ', luas:4:2);
end;

begin
  clrscr;
  write('Masukan berapa Alasnya : ');readln(alas);
  write('Masukan berapa Tingginya : ');readln(tinggi);
  luas_segitiga;
end.

