program Panggil_Diri_Sendiri;
uses crt;

var
  i : integer;

procedure ulang;
  begin
    writeln('Aku Lagi Belajar Pascal');
    i := i + 2;
    if i <= 10 then
      ulang;
      writeln('aku ada dalam procedure ke ', i);
  end;

begin
  clrscr;
  i := 1;
  ulang;
  readln;
end.

