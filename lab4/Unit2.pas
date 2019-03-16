unit Unit2;

interface
Type
  Figure = class
    procedure Show(); virtual;
  end;
  Circle = class(Figure)
    private
    r: integer;
    S: real;
    procedure Set_r(r:integer);
    function Get_r():integer;
    function Get_s():real;
    public
    procedure Show(); override;
    procedure Area();
    constructor Create(r:integer);
    property rad: integer read Get_r write Set_r;
    property sqr: real read Get_s;
  end;
  Rectangle = class(Figure)
    procedure Show(); override;
    procedure Area();
    constructor Create(a:integer; b:integer=0);
    function Get_st(t: boolean): integer;
    procedure Set_st(a:integer; b:integer=0);
    private
    st: array of integer;
    S: integer;
  end;
implementation
    procedure Figure.Show;
    begin
      writeln('Function class: Figure');
    end;
    procedure Circle.Show;
    begin
      writeln('Figure - krug.');
      writeln('Radius = ', Self.r, '.');
      writeln('Sqr = ', Self.S, '.');
    end;
    procedure Circle.Area;
    begin
      writeln('Sqr = ', Self.S, '.');
    end;
    procedure Circle.Set_r(r: Integer);
    begin
        if r > 0 then
          begin
          Self.r:= r;
          Self.S:= r*r*3.14159265358979;
        end
        else
          writeln('Error, parametr be must positive!');
    end;
    constructor Circle.Create(r: Integer);
    begin
        if r > 0 then
        begin
          Self.r:= r;
          Self.s:= r*r*3.14159265358979;
        end
        else
          writeln('Error, rad must be positive!');
    end;
    function Circle.Get_r;
    begin
      result:= Self.r;
    end;
    function Circle.Get_s;
    begin
      result:= Self.S;
    end;
    /////////////////////////////////////////
    constructor Rectangle.Create(a: Integer; b: Integer);
    begin
      if a > 0 then
      begin
         if b > 0 then
         begin
           if Length(Self.st) <> 2 then SetLength(Self.st, 2);
           Self.st[0]:=a;
           Self.st[1]:=b;
           Self.S:=a*b;
         end
         else
         begin
           if Length(Self.st) <> 1 then SetLength(Self.st, 1);
           Self.st[0]:=a;
           Self.S:=a*a;
         end;
      end
      else
      begin
         writeln('Error, parametr be must positive!');
      end;
    end;
    procedure Rectangle.Show;
    begin
       if Length(Self.st)=0 then
       begin
         writeln('Not create');
       end
       else
       begin
         if Length(Self.st) = 1 then
         begin
            writeln('Figure - kvadrat');
            writeln('Str = ', Self.st[0], '.');
            writeln('Sqr = ', Self.S, '.');
         end
         else
         begin
            writeln('Figure - rectangle.');
            writeln('a = ', Self.st[0], '.');
            writeln('b = ', Self.st[1], '.');
            writeln('Sqr = ', Self.S, '.');
         end;
       end;
    end;
    procedure Rectangle.Area;
    begin
       writeln('Sqr = ', Self.S, '.');
    end;
    procedure Rectangle.Set_st(a: Integer; b: Integer);
    begin
      if a > 0 then
      begin
         if b > 0 then
         begin
           if Length(Self.st) <> 2 then SetLength(Self.st, 2);
           Self.st[0]:=a;
           Self.st[1]:=b;
           Self.S:=a*b;
         end
         else
         begin
           if Length(Self.st) <> 1 then SetLength(Self.st, 1);
           Self.st[0]:=a;
           Self.S:=a*a;
         end;
      end
      else
      begin
         writeln('Error, parametr be must positive!');
      end;
    end;
    function Rectangle.Get_st(t: Boolean):integer;
    begin
      if t then
      begin
        result:= Self.st[0];
      end
      else
      begin
        if Length(Self.st) <> 1 then
        begin
          result:=Self.st[1];
        end
        else
        begin
          result:=Self.st[0];
        end;
      end;
    end;
end.
