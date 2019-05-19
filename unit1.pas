unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, ComCtrls,Unit2, Types,Dos;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure ProgressBar1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
  private

  public

  end;



var
  Form1: TForm1;



implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin

  form1.Hide;
  form2.Show;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Image2Click(Sender: TObject);
begin

end;

procedure TForm1.Image3Click(Sender: TObject);
begin

end;

procedure TForm1.Image6Click(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.ProgressBar1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Form1.Button1.Visible:=True;
  Form1.ProgressBar1.Visible:=False;
  Form1.Label2.Visible:=False;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  ProgressBar1.Position:=ProgressBar1.Position+1;
end;


procedure TForm1.Timer3Timer(Sender: TObject);
begin
  Label1.Caption:=DateTimeToStr(Now);
end;


end.

