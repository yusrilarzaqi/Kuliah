program Hitung_Luas_Segi_Empat;
uses crt;

var
  sisi, luas : integer;

begin
  clrscr;
  write('Masukan sisi Segi Empat : '); readln(sisi);
  luas := sisi * sisi;
  writeln('Hasil dari panjang sisi ', sisi, ' * ', sisi, ' = ', luas);
  readln;
end.
