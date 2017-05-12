program tab;

var

    x, y: real;

    A, b, h, I, n: integer;

begin

    Writeln('Введите шаг');

    Readln(H);

    b := 7;

    a := -9;

    n := (b - a) div H + 1;

    x := A - H;

    Writeln('┌───────────────────┐');

    Writeln('│ Вычисление функции│');

    Writeln('│                   │');

    Writeln('├─────────┬─────────┤');

    Writeln('│    X    │    Y    │');

    Writeln('├─────────┼─────────┤');
    WriteLn()
    WriteLn()

    for I:=1 to n do

begin

x:=x + H;

if (x < -2) then
if (x < -7) then y := 0
else
if (x < -3) then y := x + 7
else
y := 4
else
if (x < 2) then y := x*x
else
if (x < 4) then y := -2*x + 8
else
y := 0;

Writeln('│ ',x:6:2, '  │  ',y:6:2,' │');

Writeln('├─────────┼─────────┤');

end;

end.


