program konversi_suhu;
uses crt;
var
  C, F, R : Real;

begin
  clrscr;
  write('masukan suhu Celcius : ');readln(C);
  R := 4/5*C;
  F := (9/5*C)+32;
  writeln('===Konversi===');
  writeln('Reamur : ', R:6:2);
  writeln('Fahrenheit : ', F:6:2);
  readln;
end.
