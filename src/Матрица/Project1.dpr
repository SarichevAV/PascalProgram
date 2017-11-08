program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  size = 10;
type
  matrix = array[1..size,1..size] of Real;
var
  myArray : matrix;
  q : string;

// Заполнение матрицы случайными элементами
procedure setMatrix(var matrixArray : matrix);
var
  i,j : integer;
begin
  randomize;
  for i := 1 to size do
    for j := 1 to size do
      matrixArray[i,j] := random(20)+ 5 + random(100)/10 - 20;
end;

// Вывод матрицы
procedure writeMatrix(var matrixArray : matrix);
var
  i,j : integer;
  temp : real;
begin
  for i := 1 to size do
    begin
      for j := 1 to size do
        begin
          write(FloatToStr(matrixArray[i,j]):5,'  ');
        end;
      writeln('');
    end;
end;

// Сглаживание матрицы
procedure smoothingMatrix(var matrixArray : matrix);
var
  i,j : integer;
  m : matrix;
  sum:real;
  count : integer;
begin
  m := matrixArray;
  for i := 1 to size do
      for j := 1 to size do
        begin
          sum := 0;
          count := 0;
          if i-1 <> 0 then
            begin
              sum := sum + matrixArray[i-1,j];
              count := count + 1;
            end;
          if i+1 <> size+1 then
            begin
               sum := sum + matrixArray[i+1,j];
               count := count + 1;
            end;
          if j-1 <> 0 then
            begin
              sum := sum + matrixArray[i,j-1];
              count := count + 1;
            end;
          if j+1 <> size+1 then
            begin
              sum := sum + matrixArray[i,j+1];
              count := count + 1;
            end;
          if (i-1 <> 0) and (j-1 <> 0) then
            begin
              sum := sum + matrixArray[i-1,j-1];
              count := count + 1;
            end;
          if (i-1 <> 0) and (j+1 <> size+1) then
            begin
              sum := sum + matrixArray[i-1,j+1];
              count := count + 1;
            end;
          if (i+1 <> size+1) and (j-1 <> 0) then
            begin
              sum := sum + matrixArray[i+1,j-1];
              count := count + 1;
            end;
          if (i+1 <> size+1) and (j+1 <> size+1) then
            begin
              sum := sum + matrixArray[i+1,j+1];
              count := count + 1;
            end;
          m[i,j] := Round(sum/count*10)/10;
        end;
  matrixArray := m;
end;

// Получить сумму модулей элементов под нижней диагональю
function getSumUnderDiagonal(matrixArray : matrix) : real;
var
  rightGround : integer;
  i,j : integer;
  sum : real;
begin
  sum := 0;
  rightGround := 1;
  for i := 2 to size do
    begin
      for j := 1 to rightGround do
        begin
          sum := sum + abs(matrixArray[i,j]);
        end;
      rightGround := rightGround + 1;
    end;
    getSumUnderDiagonal := sum;
end;

begin
  setMatrix(myArray);
  writeMatrix(myArray);
  smoothingMatrix(myArray);
  writeln('');
  writeln('');
  writeln('');
  writeMatrix(myArray);
  writeln('');
  writeln('');
  writeln('');
  writeln(getSumUnderDiagonal(myArray):3:2);
  readln(q);
end.
