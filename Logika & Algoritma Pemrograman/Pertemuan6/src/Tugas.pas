program Hitung_Gaji_Mingguan;
uses crt;
var 
  nama : string;
  jam : integer;
  total : longint;

begin
  clrscr;
  write('Nama Karyawan      : '); readln(nama);
  write('Jumlah Jam kerja   : '); readln(jam);
  
  if jam < 48 then
    total := 2000 * jam
  else
    total := (48 * 2000) + ((jam - 48) * 3000);

  writeln('Jumlah Gaji dari karyawan ', nama, ' adalah ', total);
  readln;
end.
