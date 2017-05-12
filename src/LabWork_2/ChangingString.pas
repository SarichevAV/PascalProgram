(*
 * Project: PascalProgramm
 * User: andrej
 * Date: 16.03.17
 *)
program ChangingString;
    var
        S:string[20];
        a:Char;
        pos1:Integer;
        copy1:string;
        copy2:string;
begin
    write('Введите строку :'); ReadLn(S);
    write('Введите символ'); ReadLn(a);
    // Определить позицию искомого символа
    pos1 := Pos(a,S);
    // Скопировать тетрады
    copy1 := Copy(S,pos1-4,4);
    copy2 := Copy(S,pos1+1,4);
    // Удалить тетрады
    Delete(S,pos1+1,4);
    Delete(S,pos1-4,4);
    // Определение позиции искомого символа
    pos1 := Pos(a,S);
    // Вставка тетрад на другое место
    Insert(copy1,S,pos1+1);
    Insert(copy2,S,pos1-1);
    // Удаление последних 10 символов строки
    Delete(S,11,10);
    write(S);
end.