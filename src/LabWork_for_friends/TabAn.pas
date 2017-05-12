program TabAn;
uses crt,math;
var
    S,AstrM,line: string;
    x, y, H, N: real;
    A, B, i,L: integer;
begin


    ClrScr;
    WriteLn('Введите шаг H = ');
    ReadLn(H);
    WriteLn('Начальное значение аргумента A = ');
    ReadLn(A);
    WriteLn('Конечное значение аргумента B = ');
    ReadLn(B);

    WriteLn('Введите длину числа');
    ReadLn(L);
    for i:=1 to L+4 do
    line := line + '─';
    if (A < -3) then
        Write('Функция не определена на интервале (',A,';-3)');
    if (B > 5) then
        WriteLn(', (5;',B,')');

    Writeln('┌',line,'─',line,'┐');
    Writeln('│ Вычисление функции│');
    Writeln('│                   │');
    Writeln('├',line,'┬',line,'┤');
    Writeln('│    X    │    Y    │');
    Writeln('├',line,'┼',line,'┤');

    N := (B - A)/H + 1;
    x := A;
    i := 1;

    while (i < N) do begin
        if (x < -2) then y := -x - 2
        else
            if (x < -1) then y := Sqr(1 - (x + 1)*(x + 1))
            else
                if (x < 1) then y := 1
                else
                    if (x < 2) then y := -2*x + 3
                    else y := -1;



        Writeln('│ ',x:L:2, '  │  ',y:L:2,' │');
        i := i + 1;
        x := x + H;
        if (i < N - 1) then WriteLn('├',line,'┼',line,'┤')
        else;
            Writeln('└',line,'┴',line,'┘');
    end;

end.



