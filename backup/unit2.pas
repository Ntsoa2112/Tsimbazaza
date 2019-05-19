unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Unit8, Unit3, Unit6;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
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
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }
Uses unit1, Unit5;

procedure TForm2.Button3Click(Sender: TObject);
begin
  form2.Hide;
  form3.Show;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
 Close;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  Form2.Hide;
  Form6.Show;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

procedure TForm2.Image1Click(Sender: TObject);
begin

end;

procedure TForm2.Image3Click(Sender: TObject);
begin

end;

procedure TForm2.Image6Click(Sender: TObject);
begin

end;

procedure TForm2.Label2Click(Sender: TObject);
begin

end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  Label2.Caption:=DateTimeToStr(Now);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form2.Hide;
  Form8.Show;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form2.Hide;
  Form5.Show;
end;

end.

