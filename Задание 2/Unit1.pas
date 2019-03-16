unit Unit1;

interface
type
  Triangle=class(TObject)
      FA:Real; FB:Real; FC:Real; max:Real;
      m:string; q:Boolean;
      function IsRectangular(a, b, c:Real):Boolean;
      function GetA():Real; procedure SetA(a:Real);
      function GetB():Real; procedure SetB(a:Real);
      function GetC():Real; procedure SetC(a:Real);
  public
      property A:Real read GetA write SetA;
      property B:Real read GetB write SetB;
      property C:Real read GetC write SetC;
      constructor create(a, b, c:Real);
  end;

implementation

function Triangle.IsRectangular(a, b, c:Real):Boolean;
begin
  if m='a' then
    if FA*FA=FB*FB+FC*FC then
      Result:=True
    else Result:=False;
  if m='b' then
    if FB*FB=FA*FA+FC*FC then
      Result:=True
    else Result:=False;
  if m='c' then
    if FC*FC=FB*FB+FA*FA then
      Result:=True
    else Result:=False;
end;

constructor Triangle.create(a, b, c:Real);
begin
  FA:=a;
  FB:=b;
  FC:=c;
end;

function Triangle.GetA():Real;
begin
  GetA:=FA;
end;

procedure Triangle.SetA(a:Real);
begin
  q:=True;
  if a>0 then
  begin
    FA:=a;
    max:=FA;
    m:='a';
  end
   else
    q:=False;
end;

function Triangle.GetB():Real;
begin
  GetB:=FB;
end;

procedure Triangle.SetB(a:Real);
begin
  if a>0 then
  begin
    FB:=a;
    if FB>max then begin
       max:=FB;
       m:='b';
    end;
      
  end
   else
    q:=False;
end;

function Triangle.GetC():Real;
begin
  GetC:=FC;
end;

procedure Triangle.SetC(a:Real);
begin
  if a>0 then
  begin
    if a>max then begin
       max:=a;
       m:='c';
    end;
    if m='c' then
      if max<FA+FB then
        FC:=a  else q:=False;
    if m='a' then
      if max<a+FB then
        FC:=a else q:=False;
    if m='b' then
      if max<a+FA then
        FC:=a else q:=False;
  end
   else
    q:=False;
end;
end.
 