Program Cari_Luas_Segi_Tiga;
uses crt;

var
  alas, tinggi : integer;
  luas : real;

begin
  clrscr;
  write('berapa tinggi segi-3...=');
  readln(tinggi);
  write('Berapa alas segi-3...=');
  readln(alas);
  luas := tinggi * alas * 0.5;
  write('jadi luas segi tiga adalah...=', luas:4:2);
  readln;
end.
