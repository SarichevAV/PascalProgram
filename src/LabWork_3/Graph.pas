(*
 * Project: PascalProgramm
 * User: andrej
 * Date: 07.04.17
 *)
program Graph;
uses crt,math;
var
    y,x:Real;
begin
    clrscr;
    x := -5;
    WriteLn('?');
    if (x < -1) then
        if (x < -2) then
            y := x
            else
            y := Sqr(1 - (x + 1) * (x + 1))
        else
        if (x < 1) then
            y := 1
            else
            if (x < 2) then
                y := -2 * x + 3
                else
                y := -1;

end.