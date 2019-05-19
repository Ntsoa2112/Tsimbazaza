unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls,Unit3, Unit5, Unit8;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }
uses Unit1;

procedure TForm2.Button3Click(Sender: TObject);
begin
  form2.Hide;
  form3.Show;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form2.Hide;
  Form5.Show;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form2.Hide;
  Form8.Show;
end;
procedure TForm2.Button4Click(Sender: TObject);
begin
  Form2.Hide;
  Form1.Show;
end;

end.

