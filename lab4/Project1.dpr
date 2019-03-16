program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils, Unit2;
var
fr, fc, fs: Figure;
p: char;
begin
  fr:= Rectangle.Create(12);
  fc:= Circle.Create(37);
  fs:= Rectangle.Create(12,10);
  fr.Show();
  fc.Show();
  fs.Show();
  readln(p);
end.
