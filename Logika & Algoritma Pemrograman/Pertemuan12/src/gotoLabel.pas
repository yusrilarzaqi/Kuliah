program Goto_dalam_label;
uses crt;
label
  Atas;

var
  nil1, nil2 : integer;
  nilRata    : real;
  lagi       : char;

begin
  Atas:
		clrscr;
		writeln('Program Hitung Nilai');
		writeln('====================');
		writeln;
		write('Masukan Nilai 1 : '); readln(nil1);
		write('Masukan Nilai 2 : '); readln(nil2);

		nilRata := (nil1 + nil2)/2;

		writeln('Nilai Rerata : ', nilRata:5:2);

		writeln;
		write('Ingin hitung lagi [y/n] : ');readln(lagi);

  if (lagi='y') or (lagi='Y') then
    goto Atas;
end.

