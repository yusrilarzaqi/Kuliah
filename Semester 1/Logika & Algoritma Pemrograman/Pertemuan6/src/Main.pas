program Hitung_Pembayaran_Kontan;
uses crt;

var
  koBar, namaBar : string;
  hargaBar, total, pot, ppn, bayar: real;
  jml : integer;

begin
  clrscr;
  write('Masukan Kode barang : '); readln(koBar);
  
  if koBar='A-01' then
    begin
      namaBar := 'ATK';
      hargaBar := 3500;
    end
  else
    if koBar='A-02' then
      begin
        namaBar := 'ATS';
        hargaBar := 2500;
      end
    else
      if koBar='B-01' then
        begin
          namaBar := 'Makanan';
          hargaBar := 5000;
        end
      else
        if koBar='B-02' then
          begin
            namaBar := 'Minuman';
            hargaBar := 3500;
          end
        else
          if koBar='C-01' then
            begin
              namaBar := 'Parfum';
              hargaBar := 25000;
            end
          else
            if koBar='C-02' then
              begin
                namaBar := 'Bedak';
                hargaBar := 15000;
              end
            else
              if koBar='C-03' then
                begin
                  namaBar := 'Minuman';
                  hargaBar := 3500;
                end
              else
                writeln('Anda memasukan kode barang yang salah!!!');
  
  writeln('Nama Barang          = ', namaBar);
  writeln('Harga Barang         = ', hargaBar:6:2);
  write('Jumlah Barang        = ');readln(jml);
  write();

  total := hargaBar * jml;

  writeln('Total Harga Adalah   = ', total:6:2);

  if total >= 25000 then
    pot := 0.15 * total
  else
    if total >= 15000 then
      pot := 0.10 * total
    else
      pot := 0;

  ppn := (total * 5)/100;
  bayar := total + ppn - pot;

  writeln('Dapat Potongan Sebesar     = ', pot:5:2);
  writeln('Pajak Pertambahan          = ', ppn:5:2);
  writeln('Total Bayarnya adalah      = ', bayar:6:2);
  readln;
end.

