(*
 * Project: PascalProgram
 * User: andrej
 * Date: 25.02.17
 *)

program AreaShaded;
    uses crt, math;

    var
              a: Real; { Длина сторон квадрата }
        RCircle: Real; { Радиус круга, вписанного в квадрат }
        SSquare: Real; { Площадь квадрата }
        SCircle: Real; { Площадь круга }
        SShaded: Real; { Площадь заштрихованой части }
    begin
        clrscr;
        textbackground (7);
        writeLn('Введите длину сторон квадрата');
        write('a = '); readLn(a);

        { Вычислим площадь квадрата }
        SSquare := a * a;

        { Вычслим радиус круга }
        RCircle := a / 2;

        { Вычислим площадь круга }
        SCircle := PI * power(RCircle, 2);

        { Вычислим площадь заштрихованой части }
        SShaded := (SSquare - SCircle) / 2;

        { Вывод результата }
        writeLn('Площадь заштрихованой части:', Sshaded:6:2,' кв.см.')
    end. { Конец программы }