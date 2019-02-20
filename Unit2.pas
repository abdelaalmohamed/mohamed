unit Unit2;

interface
  type
    MatrixType = record
       m: array [1..3, 1..3] of real; end;
      function Outp(a: MatrixType): MatrixType;
      function Add(a,b: MatrixType): MatrixType;
      function Multiply(a,b: MatrixType): MatrixType;
      function ScalarMultiplyM(a: MatrixType; mult: Real): MatrixType;

implementation
    function Outp(a: MatrixType): MatrixType;
    var i,j: Integer;
    begin
      For i:=1 to 3 do  begin
    Writeln;
    for j:=1 to 3 do begin
      Write (a.m[i,j]); Write (' '); end;

   end;
    end;

    function Add(a,b: MatrixType): MatrixType;
    var i,j: Integer;
    begin
       For i:=1 to 3 do
        For j:= 1 to 3 do
            Result.m[i,j]:=a.m[i,j]+b.m[i,j];
    end;

    function Multiply(a,b: MatrixType): MatrixType;
    var i,j: Integer;
    begin
       For i:=1 to 3 do
        For j:= 1 to 3 do
            Result.m[i,j]:=a.m[i,j]*b.m[i,j];
    end;

    function ScalarMultiplyM(a: MatrixType; mult: Real): MatrixType;
    var i,j: Integer;
    begin
       For i:=1 to 3 do
        For j:= 1 to 3 do
            Result.m[i,j]:=a.m[i,j]*mult;
    end;
end.
