program Hitung_luas_segi_tiga;
uses crt;

var
  alas, tinggi : integer;
  luas : real;

begin
  clrscr;
  write('Masukan Alas Segitiga : '); readln(alas);
  write('Masukan tinggi Segitiga : '); readln(tinggi);

  luas := alas * tinggi * 0.5;

  writeln('Hasil Luas segi tiga : ', luas:4:2); {4 adalah space ratusan: 2 adalah angka dibelakang koma}
  readln;
end.
