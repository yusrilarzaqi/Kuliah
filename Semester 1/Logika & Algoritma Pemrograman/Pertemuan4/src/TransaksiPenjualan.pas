program Transaksi_Penjualan;
uses crt;
var
  namaBar : String;
  hargaBar, total : Real;
  jumlahBar : Integer;

begin
 clrscr;
 write('Nama Barang .....=');readln(namaBar);
 write('Harga Barang ....=');readln(hargaBar);
 write('Jumlah Barang ....=');readln(jumlahBar);
 total := hargaBar * jumlahBar;
 writeln('Total Bayarnya adalah ....= ', total:6:2);
 readln;
end.
