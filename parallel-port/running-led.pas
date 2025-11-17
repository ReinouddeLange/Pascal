program loop(input, output);

uses Crt;

var
  i : integer;
  j : integer;
  k : integer;

begin
  Port[$378] := 0;
  k := 1;
  ClrScr;
  GotoXY(15, 9);
  Writeln(' ____________________________________________');
  GotoXY(15, 10);
  Writeln('|                                              |');
  GotoXY(15, 11);
  Writeln(' --------------------------------------------');

  for i := 1 to 8 do
  begin
    for j := 1 to i do
    begin
      if (j > 2) then
        k := k * 2;
    end;

    GotoXY(20, 10);
    write('LED');
    GotoXY(30, 10);
    write(i);
    GotoXY(40, 10);
    write(k);

    Port[$378] := k;
    Delay(2000);

    k := 2;
  end;

  Port[$378] := 0;
end.