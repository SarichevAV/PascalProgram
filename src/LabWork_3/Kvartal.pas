(*
 Составьте программу, которая по номеру введенного месяца
выводит квартал года.
 *)
program Kvartal;
uses crt,math;
var
    month:Integer; { Номер месяца }
begin
    clrscr;
    WriteLn('Введите номер месяца');
    WriteLn('Month = ');
    ReadLn(month); { Ввод номера месяца}
    case month of
        1:WriteLn('Первый квартал');
        2:WriteLn('Первый квартал');
        3:WriteLn('Первый квартал');
        4:WriteLn('Второй квартал');
        5:WriteLn('Второй квартал');
        6:WriteLn('Второй квартал');
        7:WriteLn('Третий квартал');
        8:WriteLn('Третий квартал');
        9:WriteLn('Третий квартал');
        10:WriteLn('Четвёртый квартал');
        11:WriteLn('Четвёртый квартал');
        12:WriteLn('Четвёртый квартал');
    end;
end.