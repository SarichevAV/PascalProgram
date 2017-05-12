(*
 * Project: PascalProgramm
 * User: andrej
 * Date: 29.03.17
 *)
program v3;
uses math;
var
    s1,s2:string[10];
    z:string;
    x:integer;
begin
    s1:='12345';
    s2:='1a2d34do5g';

    z:=Copy(s1,1,1);
    x:=pos(z,s2);
    delete(s2,x,1);
    insert(' ',s2,x);

    z:=Copy(s1,2,1);
    x:=pos(z,s2);
    delete(s2,x,1);
    insert(' ',s2,x);

    z:=Copy(s1,3,1);
    x:=pos(z,s2);
    delete(s2,x,1);
    insert(' ',s2,x);

    z:=Copy(s1,4,1);
    x:=pos(z,s2);
    delete(s2,x,1);
    insert(' ',s2,x);

    z:=Copy(s1,5,1);
    x:=pos(z,s2);
    delete(s2,x,1);
    insert(' ',s2,x);

    P:=1;
    for i:= 1 to 5 do begin
        P:=P * (J/i);
        end;
end.