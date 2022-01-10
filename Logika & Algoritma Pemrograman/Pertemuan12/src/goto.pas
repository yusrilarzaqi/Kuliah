program Contoh_label;
uses crt;
label
	100, selesai;

begin
	clrscr;
	writeln('Bahasa Permrograman');
	goto 100;
		writeln('Visual Basic');
		writeln('Visual Foxpro');

	100 :
		writeln('Turbo Pascal');

	goto selesai;
		writeln('Delphi');

	selesai:
	readln;
end.
