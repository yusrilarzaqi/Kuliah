program Hitung_Luas_Segi_Empat;
uses crt;

var
  panjang, lebar, luas : integer;

begin
  clrscr;
  write('Masukan Panjang Segi Empat : '); readln(panjang);
  write('Masukan Lebar Segi Empat : '); readln(lebar);
  luas := panjang * lebar;
  writeln('Hasil dari panjang ', panjang, ' * ', lebar , ' = ', luas);
  readln;
end.
