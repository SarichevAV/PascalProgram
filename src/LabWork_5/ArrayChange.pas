program ArrayChange;
uses crt;
const
    n = 10;
type
    tArray = array[1..n] of Real;
var
    i, j, resultFindBinary : Integer;
    myArray, sortedArray : tArray;
    positionFirstNegativeElement : Integer;
    a, b, number, summaModulElements : Real;


{ Заполнение массива }
procedure inArray(var myArray : tArray);
begin
    for i := 1 to n do
    begin
        Read(myArray[i]);
    end;
end;

{ Вывод содержимого массива }
procedure outArray(var myArray : tArray);
begin
    for i := 1 to n do
    begin
        Write(myArray[i]:2:0, ' ');
    end;
    WriteLn();
end;

{ Нахождение позиции первого отрицательного элемента}
procedure findPositionNegativeNumber(myArray : tArray; var position : Integer);
var
    i : Integer;
begin
    i := 1;
    position := 0;
    while (position = 0) do
    begin
        if (myArray[i] < 0) then
        begin
            position := i;
        end;
        Inc(i);
    end;
end;

{ Подсчёт суммы модулей элементов идущих после firstPos}
procedure summModuleElements(myArray : tArray; firstPos : Integer; var summ : Real);
begin
    summ := 0;
    for i := firstPos + 1 to n do
    begin
        summ := summ + Abs(myArray[i]);
    end;
end;

{ Сортировка выборкой элементов в диапазоне от a до b }
procedure sortingArray(myArray : tArray; a,b : Real; var sortedArray : tArray);
var
    count : Integer;
begin
    if (b <= a) then
    begin
        WriteLn('Недопустимые границы');
    end
    else
    begin
        count := 1;
        for i := 1 to n do
        begin
            if ((myArray[i] < a) and (myArray[i] < b)) or ((myArray[i] > a) and (myArray[i] > b)) then
            begin
                sortedArray[count] := myArray[i];
                Inc(count);
            end;
        end;
        for i := count+1 to n do
        begin
            sortedArray[i] := 0;
        end;
    end;
//    myArray := sortedArray;
end;

{ Сортировка пузырьком}
procedure bubbleSorting(Var myArray : tArray);
var
    buf : Real;
begin
    for i := 1 to n do
    begin
        for j := n - 1 downto i do
        begin
            if (myArray[j] > myArray[j + 1]) then
            begin
                buf := myArray[j];
                myArray[j] := myArray[j + 1];
                myArray[j + 1] := buf;
            end;
        end;
    end;
end;

procedure binarySearchElement(myArrat : tArray; searchElement : Real; var findIndexSearchElement : Integer);
var
    currentIndex : Integer;
    leftBorder   : Integer;
    rightBorder  : Integer;
begin
    findIndexSearchElement := -1;
    leftBorder := 1;
    rightBorder := n;
    while (findIndexSearchElement = -1) and ( rightBorder > leftBorder) do
    begin
        currentIndex := (leftBorder + rightBorder) div 2;
        if (searchElement = myArray[currentIndex]) then
        begin
            findIndexSearchElement := currentIndex;
        end;
        if (searchElement > myArray[currentIndex]) then
        begin
                leftBorder := currentIndex + 1;
        end;
        if (searchElement < myArray[currentIndex]) then
        begin
            rightBorder := currentIndex - 1;
        end;
    end;
end;


begin
    clrscr;
    WriteLn('Введите элементы массива');
    inArray(myArray);
    WriteLn('Исходный массив:');
    outArray(myArray);
    findPositionNegativeNumber(myArray, positionFirstNegativeElement); {нашли позицию первого отр эл}
    summModuleElements(myArray, positionFirstNegativeElement, summaModulElements); {нашли сумму ёлементов после отр числа}
    WriteLn('Сумма элементов после отрицательного числа ',summaModulElements:2:2);
    writeln('Введите интервал для сжатия : ');
    readln(a,b);
    sortingArray(myArray, a, b, sortedArray);
    myArray := sortedArray;
    WriteLn('Сжатый массив : ');
    outArray(myArray);
    bubbleSorting(myArray);
    WriteLn('Упорядоченный массив : ');
    outArray(myArray);
    WriteLn('Введите элемент для поиска : ');
    ReadLn(number);
    binarySearchElement(myArray, number, resultFindBinary);
    WriteLn('Элемент в позиции : ', resultFindBinary,'   элемент : ',myArray[resultFindBinary]:2:0);
end.