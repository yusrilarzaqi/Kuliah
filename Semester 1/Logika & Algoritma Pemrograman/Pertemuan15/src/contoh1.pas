program Contoh_Prosedur;
uses crt;

procedure Coba;
begin
  writeln('Saya ada dalam Procedure Coba');
  readln;
end;

{Program Utama}
begin
  clrscr;
  writeln('Alu diluar procedure, di dalam Program Utama');
  Coba;
end.
