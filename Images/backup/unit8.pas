unit Unit8;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Unit9, Unit10;

type

  { TForm8 }

  TForm8 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button5: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form8: TForm8;

implementation

{$R *.lfm}

{ TForm8 }
uses Unit2, Unit1;

procedure TForm8.Button5Click(Sender: TObject);
begin
  Form8.Hide;
  Form2.Show;
end;

procedure TForm8.Image1Click(Sender: TObject);
begin

end;

procedure TForm8.Label2Click(Sender: TObject);
begin

end;

procedure TForm8.Timer1Timer(Sender: TObject);
begin
   Form8.Label2.Caption:=DateTimeToStr(Now);
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
  Form8.Hide;
  Form10.Show;
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
  Form8.Hide;
  Form1.Show;
end;

procedure TForm8.Button1Click(Sender: TObject);
begin
  Form8.Hide;
  Form9.show;
end;

end.

