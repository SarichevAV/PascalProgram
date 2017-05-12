(*
 * Project: PascalProgramm
 * User: andrej
 * Date: 27.04.17
 *)
program v4;
Var
    x,y:real;
    i:Integer;
begin
    Readln(x);
    If x > 3
    Then
        If x > 6
        Then y := x - 9
        Else y := - 2 * x + 9
    else
        If x < -3
        Then y := 3
        Else y := -(sqrt(9 - sqr(x))-3);
    Writeln(x:3:5  ,' ',y:3:5)
end.