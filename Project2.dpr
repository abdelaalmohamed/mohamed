program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Unit2 in 'Unit2.pas';

var x,y,z:MatrixType;   var i,j: Integer; var f: Real;

begin
  Writeln('Input x - ');
  For i:=1 to 3 do
        For j:= 1 to 3 do
            ReadLn(x.m[i,j]);
  Outp(x); Writeln('Input y - ');
  For i:=1 to 3 do
        For j:= 1 to 3 do
            ReadLn(y.m[i,j]);
  Outp(y);
  z:=Add(x,y);   Writeln; Writeln;
  Writeln('Add x and y - ');
  Outp(z); Writeln; Writeln;
  Writeln('Multiply x and y - ');
  z:=Multiply(x,y);
  Outp(z); Writeln; Writeln;
  Writeln('Input a number - ');
  Readln(f);
  Writeln('ScalarMultiply x and f number - ');
  z:=ScalarMultiplyM(x,f);
  Outp(z);
Readln;
end.
