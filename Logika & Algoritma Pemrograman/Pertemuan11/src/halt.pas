program Fungsi_exit_keluar_dari_block_proses_secara_paksa;
uses crt;
var
  n1 : longint;

begin
  clrscr;
  n1 := 1;
  repeat
    if n1 = 1000 then
      halt
    else
      writeln(n1);
    n1 := n1 + 1;
  until n1 > 5000;
  readln;
end.

