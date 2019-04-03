unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure FormResize(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key <> 48 and key <> 96 then
      begin
      
      end;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  Canvas.Pen.Color:= clWhite;
  Canvas.Brush.Color:= clWhite;
  Canvas.Rectangle(0,0,Form1.Width, Form1.Height);
  Canvas.Pen.Color:= clBlack;
  Canvas.Rectangle(10,10,Form1.ClientWidth-10,Form1.ClientHeight-10);
end;

end.
