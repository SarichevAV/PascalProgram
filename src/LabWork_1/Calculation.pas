(*
 * Project: PascalProgramm
 * User: andrej
 * Date: 25.02.17
 *)
program Calculation;
uses crt;
    var
    a,z1,z2: Real;

begin
    clrscr;
    WriteLn('Вычисление формул');
    WriteLn('Введите a');
    Write('a = '); ReadLn(a);
    { Вычислим значение формулы 1 }
    z1 := 2 * sin(3 * PI - 2 * a) * sin(3 * PI - 2 * a) * cos(2 * PI + 2 * a) * cos(2 * PI + 2 * a);
    { Вычислим значение формулы 2 }
    z2 := 1 / 4 - (1 / 4) * sin(5 * PI / 2 - 8 * a);
    { Вывод результата }
    WriteLn('z1 = ',z1:6:3);
    WriteLn('z2 = ',z2:6:3);
end. { Конец программы }
