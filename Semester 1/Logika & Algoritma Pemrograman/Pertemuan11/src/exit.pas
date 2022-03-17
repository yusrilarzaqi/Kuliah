program Fungsi_exit_keluar_dari_blok_proses;
uses crt;

var
  n1 : longint;
  
begin
  clrscr;
  n1 := 1;
  while n1 <= 5000 do
    begin
      if keypressed then
        exit
      else
        writeln(n1);
      n1 := n1 + 1;
    end;
  readln;
end.

