unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
    procedure FormActivate(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  dr: boolean;
  f_x, f_y:integer;

implementation

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
     dr:= true;
     Canvas.Pen.Width:=12;
end;

procedure TForm1.FormDblClick(Sender: TObject);
begin
    if not dr then
    begin
      Canvas.Pen.Color:= RGB(random(255), random(255),random(255));
      Canvas.LineTo(f_x, f_y);
      dr:=true;
    end;
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if dr then
     begin
       Canvas.MoveTo(X, Y);
       dr:=false;
       f_x:=X;
       f_y:=Y;
     end
     else
     begin
       Canvas.Pen.Color:= RGB(random(255), random(255),random(255));
       Canvas.LineTo(X, Y);
     end;
end;

end.
