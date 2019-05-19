unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Unit4, Unit7;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button5: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;

implementation

{$R *.lfm}

{ TForm5 }
Uses Unit2, Unit1;

procedure TForm5.Button3Click(Sender: TObject);
begin

end;

procedure TForm5.Button4Click(Sender: TObject);
begin
  Form5.Hide;
  Form1.Show;
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
  Form5.Hide;
  Form2.Show;
end;

procedure TForm5.Label2Click(Sender: TObject);
begin

end;

procedure TForm5.Timer1Timer(Sender: TObject);
begin
    Form5.Label2.Caption:=DateTimeToStr(Now);
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
  Form5.Hide;
  Form4.Show;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  Form5.Hide;
  Form7.Show;
end;

end.

