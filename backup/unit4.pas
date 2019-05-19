unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    CheckBox1: TCheckBox;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private


  public
  s, comptEnf,comptAduInd:integer;

  end;

var
  Form4: TForm4;
  Mal, App, Prix:integer;
  s:integer=0;
  comptEnf:integer=0;
  comptAduInd:integer=0;
implementation
{$R *.lfm}

{ TForm4 }
uses Unit5, Unit2;


Function opPrix(prix,s:integer):integer;
     begin

          s:=s+prix;
          opPrix:=s;
       end;



procedure TForm4.FormCreate(Sender: TObject);
begin
  Form4.Label6.Visible:=False;
  Form4.Label7.Visible:=False;

end;
procedure TForm4.Image1Click(Sender: TObject);
begin

end;

procedure TForm4.Edit2Change(Sender: TObject);
begin

end;

procedure TForm4.Button6Click(Sender: TObject);
begin
  Form4.Hide;
  Form5.Show;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Form4.Label6.Caption:=' ';
  Mal:=300;
  Form4.Label6.Caption:='';
  Form4.Label7.Caption:='';
  comptEnf:=comptEnf+1;
  Form4.Label6.Visible:=False;
  Form4.Label7.Visible:=False;

end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  Form4.Label7.Caption:=IntToStr(s);
  Form4.Label7.Visible:=True;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  Form4.Label6.Caption:=' ';
  Mal:=600;
  Form4.Label6.Caption:='';
  Form4.Label7.Caption:='';
  comptAduInd:=comptAduInd+1;
  Form4.Label6.Visible:=False;
  Form4.Label7.Visible:=False;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
  if (Mal=300) then
     begin
       Prix:=Mal;
                       if (App=1000) then
                          begin
                            Prix:=Mal+App;
                          end;
     end
     else
     begin
       if (Mal=600) then
     begin
       Prix:=Mal;
                       if (App=1000) then
                          begin
                            Prix:=Mal+App;
                          end;

     end;
     end;

  s := opPrix(Prix,s);
  Form4.Label6.Caption:=IntToStr(Prix);
  Form4.Label6.Visible:=True;
  App:=0;
  Mal:=0;

end;

procedure TForm4.Button5Click(Sender: TObject);
begin
  Form4.Label6.Caption:='';
  Form4.Label7.Caption:='';
  Form4.Label6.Visible:=False;
  Form4.Label7.Visible:=False;
  Form4.RadioButton1.Checked:=False;
  Form4.RadioButton2.Checked:=False;
  Form4.CheckBox1.Checked:=False;
  Mal:=0;
  App:=0;
end;

procedure TForm4.Button7Click(Sender: TObject);
begin
  Form4.Hide;
  Form2.Show;
end;

procedure TForm4.Button8Click(Sender: TObject);
begin

end;

procedure TForm4.CheckBox1Change(Sender: TObject);
begin
  App:=1000;
  Form4.Label6.Caption:='';
  Form4.Label7.Caption:='';
  Form4.Label6.Visible:=False;
  Form4.Label7.Visible:=False;
end;

procedure TForm4.Edit1Change(Sender: TObject);
begin

end;

procedure TForm4.Edit3Change(Sender: TObject);
begin

end;

procedure TForm4.Image2Click(Sender: TObject);
begin

end;

procedure TForm4.Label2Click(Sender: TObject);
begin

end;

procedure TForm4.RadioButton1Change(Sender: TObject);
begin
  Form4.Label6.Caption:=' ';
  Mal:=300;
  Form4.Label6.Caption:='';
  Form4.Label7.Caption:='';
  comptEnf:=comptEnf+1;
  Form4.Label6.Visible:=False;
  Form4.Label7.Visible:=False;
  Form4.CheckBox1.Checked:=False;
end;

procedure TForm4.RadioButton2Change(Sender: TObject);
begin
  Form4.Label6.Caption:=' ';
  Mal:=600;
  Form4.Label6.Caption:='';
  Form4.Label7.Caption:='';
  comptAduInd:=comptAduInd+1;
  Form4.Label6.Visible:=False;
  Form4.Label7.Visible:=False;
  Form4.CheckBox1.Checked:=False;
end;

procedure TForm4.RadioButton3Change(Sender: TObject);
begin
  App:=1000;
  Form4.Label6.Caption:='';
  Form4.Label7.Caption:='';
  Form4.Label6.Visible:=False;
  Form4.Label7.Visible:=False;
end;

procedure TForm4.Timer1Timer(Sender: TObject);
begin
     Form4.Label2.Caption:=DateTimeToStr(Now);
end;

end.

