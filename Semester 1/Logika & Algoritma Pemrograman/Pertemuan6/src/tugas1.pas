program nilai_huruf;
uses crt;

var
  n : integer;
  ket : string;

begin
  clrscr;
  write('Masukan Nilai : '); readln(n);

  if n >= 60 then
    ket := 'Lulus'
  else
    ket := 'Remidi';

  writeln('Keterangna Anda : ', ket);
  readln;
end.
