program Contoh_Array_Dua_Dimensi;
uses crt;

const
  x = 25;
  y = 10;

type
 a_string1 = array[0..x] of string[15];
 a_string2 = array[0..y] of string[10];
 a_real    = array[0..x, 1..y] of real;

var
  nm : a_string1;
  mk : a_string2;
  sc : a_real;
  nx, ny, a, b : byte;
  tot, rt : real;

begin
  clrscr;
  writeln('Pengolahan Data Niliai Mahasiswa');
  writeln;

  write('Beberapa jumlah mahasiswa (max: ', x, ') ? ');readln(nx);
  write('Beberapa jumlah mata kuliah (max: ', y, ') ? ');readln(ny);

  if (nx > x) or (ny > y) then halt;

  writeln;
  writeln(' === Input nama Mahasiswa dulu ===');

  for a:= 1 to nx do
    begin
      write('Nama Mahasiswa ke : ', a, ' ? ');
      readln(nm[a]);
    end;

  writeln;
  writeln(' === Input nama mata kuliah terlebih dahulu ===');

  for b := 1 to ny do
    begin
      write('Nama matakuliah ke :', b, ' ? ');
      readln(mk[b]);
    end;

  writeln;
  writeln(' === Input data-data nilai semua mata kuliah ===');

  for a := 1 to nx do
    begin
      writeln('Data-data nilai untuk mahasiswa bernama : ', nm[a]);
      
      for b := 1 to ny do
        begin
          write( mk[b]:15, ' => Nilai ? ');
          readln( sc[a, b]);
        end;

      writeln;
    end;

  write('Tekan Enter untuk lihat dafar'); readln;

  clrscr;
  writeln('Daftar Nilai Mahasiswa');
  writeln;

  write(':No : Nama Mahasiswa :');
  for b := 1 to ny do
    begin
      write(mk[b]:10, ' :');
      writeln(' Total : Rata :');
    end;

  for a := 1 to nx do
    begin
      write(':', a:2);
      write(':', nm[a]:15);

      tot := 0;

      for b := 1 to ny do
        begin
          write(':', sc[a, b]:10:2);
          tot := tot + sc[a, b];
        end;

      rt := tot / b;
      write(':', tot:6:2);
      write(':', rt:6:2);
    end;
  readln;
end.

