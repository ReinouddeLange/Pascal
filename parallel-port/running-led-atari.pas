program loop_pf(input, output);

uses Crt;

var
  i, j, k : integer;

begin
  Port[$378] := 0;
  k := 1;
  ClrScr;

  for i := 1 to 8 do
  begin
    { Bereken k = 1,2,4,8,16,... }
    k := 1;
    for j := 3 to i do
      k := k * 2;

    { Schermuitvoer: past binnen 40x8 }
    GotoXY(1,1);
    Write('LED: ', i:1, '   Waarde: ', k:3, '      ');

    { Stuur naar parallelle poort }
    Port[$378] := k;

    Delay(2000);
  end;

  Port[$378] := 0;

  GotoXY(1,3);
  Writeln('Klaar.');
end.