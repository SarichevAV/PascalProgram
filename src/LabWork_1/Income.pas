(*
 * Project: PascalProgramm
 * User: andrej
 * Date: 25.02.17
 *)
program Income;
    uses crt;
    var
          Summa: Real; { Сумма на которую начисляется доход }
        Procent: Real; { Процентная ставка %годовых }
            Day: Integer; { Время хранения }
       DohodDay: Real; { Доход в день}
           Year: Real; { Дней в году }
          Dohod: Real; { Общий доход }

    begin
        Year := 365;
        clrscr;
        WriteLn('Введите процентную ставку в % годовых'); ReadLn(Procent);
        WriteLn('Введите время хранения в днях'); ReadLn(Day);
        WriteLn('Введите сумму на которую будет начисляться доход'); ReadLn(Summa);

        { Величина дохода в день }
        DohodDay := Procent / (Year * 100);

        { Величина дохода }
        Dohod := Summa * Day * DohodDay;

        WriteLn('Величина дохода составляет ', Dohod:6:2, 'руб.');
    end. { Конец программы }