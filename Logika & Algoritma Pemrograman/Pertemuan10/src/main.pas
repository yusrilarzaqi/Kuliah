program looping;
uses crt;

var
  i, j : integer;

begin
  clrscr;
  i := 1;
  while i <= 5 do
    begin
      j := 1;
      while j <= 5 do
        begin
          write(i, j ,' ' );
          j := j + 1;
        end;
      writeln;
      i:= i + 1;
    end;

end.
