unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StrUtils, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TButton;
    Edit2: TButton;
    Edit3: TButton;
    Edit4: TButton;
    procedure FormPaint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a,b:integer;
implementation

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
  a:=1;
  b:=1;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (ssShift in Shift) then
     begin
     case key of
     38:
     begin
       Edit1.Caption:= IntToStr(StrtoInt(Edit1.Caption)+1);
       Form1.Height:=Form1.Height-10;
     end;
     40:
     begin
       Edit4.Caption:= IntToStr(StrtoInt(Edit4.Caption)+1);
       Form1.Height:=Form1.Height+10;
     end;
     37:
     begin
       Edit2.Caption:= IntToStr(StrtoInt(Edit2.Caption)+1);
       Form1.Width:=Form1.Width-10;
     end;
     39:
     begin
       Edit3.Caption:= IntToStr(StrtoInt(Edit3.Caption)+1);
       Form1.Width:=Form1.Width+10;
     end;
     end;
     end
     else
     begin
       case key of
     38:
     begin
        Edit1.Caption:= IntToStr(StrtoInt(Edit1.Caption)+1);
       if a<>-1 then a:=a+1 else a:=1;
     end;
     40:
     begin
     Edit4.Caption:= IntToStr(StrtoInt(Edit4.Caption)+1);
       if a<>1 then a:=a-1 else a:=-1;
     end;
     37:
     begin
     Edit2.Caption:= IntToStr(StrtoInt(Edit2.Caption)+1);
       b:=b-1;
     end;
     39:
     begin
     Edit3.Caption:= IntToStr(StrtoInt(Edit3.Caption)+1);
       b:=b+1;
     end;
     end;
     end;
     Form1.Repaint;
end;

procedure TForm1.FormPaint(Sender: TObject);
var i:integer;
begin
  Canvas.Brush.Color:=clWhite;
  Canvas.Rectangle(0,0,Form1.Width, Form1.Height);
  Canvas.MoveTo(0,100);
  Canvas.Brush.Color:= clBlue;
  Canvas.Pen.Width:=3;
  Form1.Caption:= 'Ўирина = ' + IntToStr(Form1.Width)+ ' ƒлина = '+ IntToStr(Form1.Height)+ ' y = ' + IntToStr(b)  + 'sin(x' + ifthen(a>0, '+'+IntToStr(a), ifthen(a<>0, '-'+IntToStr(a), '')) +')'; 
  for i:=1 to 400 do
    begin
        Canvas.LineTo(i, -Round(Sin(i+a))+100+b);
    end;
end;

end.
