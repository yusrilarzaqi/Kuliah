program for_do;
uses crt;

var
  i,j : integer;


begin
  clrscr;

  for i:=1 to 5 do
    begin
      for j:=1 to 3 do
        begin
          write(i, j);
          write(' ');
        end;
    end;
  readln;
end.

