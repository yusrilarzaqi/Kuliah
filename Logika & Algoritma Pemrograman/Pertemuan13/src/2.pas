program Contoh_Dengan_Program_Array;
uses crt;

const
  maksimal = 25;

type
  a_real = array[1..25] of real;

var
  nama : array[1..25] of string;
  hrg, jml, tot : a_real;
  n, x : byte;
  grand : real;

begin
  clrscr;
  grand := 0;
  writeln('Pengelolaan Data Penjualan Barang');
  writeln;
  write('Berapa Jumlah Data barnag [max : 25] ? ');readln(n);

  if n > maksimal then
    begin
      writeln('Error:maksimal Jumlah Data : ', maksimal);
      readln;
      halt;
    end;

  for x := 1 to n do
    begin
      writeln('Data Ke = ', x);
      writeln;
      write('Nama Barang    ? ');readln(nama[x]);
      write('Harga Satuan   ? ');readln(hrg[x]);
      write('Jumlah Terjual ? ');readln(jml[x]);

      tot[x] := hrg[x] * jml[x];

      writeln('Total Bayar = ', tot[x]:10:2);
      writeln;
    end;

  writeln('Tekan enter untuk liat daftar ');readln;

  {laopran record data yang di masukan}
  clrscr;
  writeln('Daftar Penjualan Barang');
  writeln;
  writeln('+---+-----------------+----------+-----+---------------+');
  writeln('|No | Namaa Barang    | Harga @  | QTY | Total Bayar   |');
  writeln('+---+-----------------+----------+-----+---------------+');
   
  for x := 1 to n do
    begin
      write('I', x:3);
      write('I', nama[x] :20);
      write('I', hrg[x] :10:0);
      write('I', jml[x] :5:0);
      write('I', tot[x] :12:2);
      writeln('I');

      grand := grand + tot[x];
    end;

  writeln('+---+-----------------+----------+-----+---------------+');
  writeln('I Jumlah Total Bayar                   : ', grand:12:2, 'I');
  writeln('+---+-----------------+----------+-----+---------------+');
  readln;
end.

