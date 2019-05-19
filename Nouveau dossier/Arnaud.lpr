program Arnaud;
type
    Tab= array[1..100] of real;
var
  A,B: Tab;
  i,j,s:integer;
begin
  begin
    for j:=1 to 4 do
       begin

       B[j]:=0;
       for i:=1 to 7 do
          begin
              write('A[',i,']= ');
              read(A[i]);

              B[j]:=B[j]+A[i]
          end;

       writeln('total de la semaine : ','+', B[j]:2:2);
       writeln('Semaine suivante');
        writeln('#############################################################');
       end;

  end;
readln;
readln;
end.

