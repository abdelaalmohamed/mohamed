unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Math;

type
  TForm1 = class(TForm)
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormPaint(Sender: TObject);
var i:integer;
begin
  Canvas.Pen.Color:=clBlue;
  Canvas.Pen.Width:=1;
  Canvas.MoveTo(0, 100);
  Canvas.LineTo(200, 100);
  Canvas.MoveTo(100,200);
  Canvas.LineTo(100, 0);
  Canvas.Pen.Color:=clRed;
  Canvas.Pen.Width:=2;
  Canvas.MoveTo(90, 0);
  for i:=90 to 110 do
    begin
      Canvas.LineTo(i, -(i-100)*(i-100)+100);
    end;
  Canvas.Pen.Color:=clYellow;
  Canvas.Pen.Width:=1;
  Canvas.MoveTo(0, 100);
  for i:=0 to 200 do
    begin
       Canvas.LineTo(i, -Round(50*Sin(i))+100);
    end;
  Canvas.Pen.Color:=clGreen;
  Canvas.MoveTo(0, 100);
  for i:=0 to 200 do
    begin
       Canvas.LineTo(i, -Round(25*Sin(i)/Cos(i))+100);
    end;
end;

end.
