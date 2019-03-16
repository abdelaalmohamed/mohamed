program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Unit1 in 'Unit1.pas';

var Prop:Triangle; l,sd:Integer; ha,hb,hc:Integer;

begin
Prop:=Triangle.Create(3, 4, 5);
Readln(l); Prop.A:=l;
Readln(l); Prop.B:=l;
Readln(l); Prop.C:=l;                                                                   
Writeln('Result - ');
if Prop.q=True then
begin
  writeln(Prop.FA); writeln(Prop.FB); writeln(Prop.FC);

end
  else
    Writeln('It is not triangle');
if Prop.IsRectangular(Prop.FA, Prop.FB, Prop.FC) = True then
  Writeln('true') else Writeln('false');
Prop.Free; 
Readln;
end.
