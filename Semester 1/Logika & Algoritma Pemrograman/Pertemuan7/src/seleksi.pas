program seleksi_dalam_seleksi;
uses crt;
var
  status : char;
  anak, gol : byte;
  nama : string;
  gaBer, gaPok, tunj  : real;

begin
  clrscr;
  writeln('Nama anda = '); readln(nama);
  writeln('Goongan Anda (1, 2, 3, 4) = '); readln(gol);
  writeln('Status [B]:Bujang, [K]:Kawin = '); readln(status);
  writeln('Jumlah anak anda = '); readln(anak);

  case gol of
    1:gaPok := 1000000;
    2:gaPok := 1500000;
    3:gaPok := 2000000;
    4:gaPok := 3000000;
  else
    writeln('input data salah !!!');
  end;

  if status='B' then
    tunj := 0
  else
    if status='K' then
      if anak=0 then
        tunj := 0
      else
        if anak=1 then
          tunj := 100000
        else
          if anak=2 then
            tunj := 200000
          else
            if anak >= 3 then
              tunj := 300000;

          
  gaBer := gaPok + tunj;

  writeln('Nama anda ', nama);
  writeln('Golongan anda ', gol);
  writeln('Status anda ', status);
  writeln('jumlah anak anda ', anak);
  writeln('Gaji pokok anda ', gaPok:7:2);
  writeln('Tunjangan Anak anda ', tunj:6:2);
  writeln('Gaji Bersih anda ', gaBer:6:2);
  readln;
end.
