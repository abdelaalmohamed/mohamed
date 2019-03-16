program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TStud=class(TObject)
    name:string;
    surname:string;
    group:string;
    heigh:Integer;
    weight:Integer;
    ocen:Integer;
    function Learning():string;
    function Relaxing():string;
  End;

var LS:TStud; RS:TStud; R1, R2:string;

function TStud.Learning():string;
begin
  result:=name + ' is learning';
end;

function TStud.Relaxing():string;
begin
  result:=name + ' is relaxing';
end;

begin
  LS:=TStud.create; RS:=TStud.create;
  Writeln('Input learning student');  Readln(LS.name);
  Writeln('Input relaxing student');  Readln(RS.name);
  R1:=LS.Learning; R2:=RS.Relaxing;
  Writeln(R1); Writeln(R2);
  Readln;
end.
 