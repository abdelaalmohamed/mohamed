unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
      //Form1.Color:=RGB(Random(256),Random(256),Random(256));
  //Canvas.Pen.Color:=ClRed;
  //Canvas.Pen.Style:=PsDash;
  //Canvas.MoveTo(10,10);
  //Canvas.LineTo(300,300);
procedure TForm1.Button1Click(Sender: TObject);
begin
   Canvas.Pen.Color:=RGB(Random(256),Random(256),Random(256));
   Canvas.Pen.Width:=12;
   Canvas.MoveTo(10,10);
   Canvas.LineTo(50,50);
   Canvas.Pen.Color:=RGB(Random(256),Random(256),Random(256));
   Canvas.LineTo(100,100);
   Canvas.Pen.Color:=RGB(Random(256),Random(256),Random(256));
   Canvas.LineTo(150,150);
   Canvas.Pen.Color:=RGB(Random(256),Random(256),Random(256));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.Color:= clWhite;
end;

end.
