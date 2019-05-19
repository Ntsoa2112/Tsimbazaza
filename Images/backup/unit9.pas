unit Unit9;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm9 }

  TForm9 = class(TForm)
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
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
    procedure Edit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public
    f,comptEnfEtr,comptAduEtr:integer;
  end;

var
  Form9: TForm9;
  Etr, App, Prix:integer;
  f:integer=0;
  comptEnfEtr:integer=0;
  comptAduEtr:integer=0;

implementation

{$R *.lfm}

{ TForm9 }
Uses Unit8, Unit2;

Function opPrix(prix,f:integer):integer;
     begin

          f:=f+prix;
          opPrix:=f;
       end;

procedure TForm9.Button6Click(Sender: TObject);
begin
  Form9.Hide;
  Form8.Show;
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
  if (Etr=1000) then
     begin
       Prix:=Etr;
                       if (App=1000) then
                          begin
                            Prix:=Etr+App;
                          end;
     end
     else
     begin
       if (Etr=2000) then
     begin
       Prix:=Etr;
                       if (App=1000) then
                          begin
                            Prix:=Etr+App;
                          end;

     end;
     end;

  f:= opPrix(Prix,f);
  Form9.Label6.Caption:=IntToStr(Prix);
  Form9.label6.Visible:=True;
  App:=0;
  Etr:=0;
end;

procedure TForm9.Button5Click(Sender: TObject);
begin
  Form9.Label7.Caption:=IntToStr(f);
  Form9.label7.Visible:=True;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
  Form9.label6.Caption:=' ';
  Etr:=1000;
  Form9.label7.Caption:='';
  Form9.label6.Caption:='';
  comptEnfEtr:=comptEnfEtr+1;
  Form9.Label6.Visible:=False;
  Form9.Label7.Visible:=False;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
  App:=1000;
  Form9.Label7.Caption:='';
  Form9.Label6.Caption:='';
  Form9.Label6.Visible:=False;
  Form9.Label7.Visible:=False;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
  Form9.Label6.Caption:=' ';
  Etr:=2000;
  Form9.Label7.Caption:='';
  Form9.Label6.Caption:='';
  comptAduEtr:=comptAduEtr+1;
  Form9.label6.Visible:=False;
  Form9.label7.Visible:=False;
end;

procedure TForm9.Button7Click(Sender: TObject);
begin
  Form9.Hide;
  Form2.Show;
end;

procedure TForm9.Button8Click(Sender: TObject);
begin
  Form9.label7.Caption:='';
  Form9.label6.Caption:='';
  Form9.label6.Visible:=False;
  Form9.Label7.Visible:=False;
  Form9.RadioButton1.Checked:=False;
  Form9.RadioButton2.Checked:=False;
  Form9.CheckBox1.Checked:=False;
  App:=0;
  Etr:=0;
end;

procedure TForm9.CheckBox1Change(Sender: TObject);
begin
  App:=1000;
  Form9.Label7.Caption:='';
  Form9.Label6.Caption:='';
  Form9.Label6.Visible:=False;
  Form9.Label7.Visible:=False;
end;

procedure TForm9.Edit1Change(Sender: TObject);
begin

end;

procedure TForm9.Edit3Change(Sender: TObject);
begin

end;

procedure TForm9.FormCreate(Sender: TObject);
begin
  Form9.Label6.Visible:=False;
  Form9.Label7.Visible:=False;

end;

procedure TForm9.Image1Click(Sender: TObject);
begin

end;

procedure TForm9.Label2Click(Sender: TObject);
begin

end;

procedure TForm9.Label4Click(Sender: TObject);
begin

end;

procedure TForm9.RadioButton1Change(Sender: TObject);
begin
  Form9.label6.Caption:=' ';
  Etr:=1000;
  Form9.Label7.Caption:='';
  Form9.Label6.Caption:='';
  comptEnfEtr:=comptEnfEtr+1;
  Form9.Label6.Visible:=False;
  Form9.Label7.Visible:=False;
  Form9.CheckBox1.Checked:=False;
end;

procedure TForm9.RadioButton2Change(Sender: TObject);
begin
  Form9.label6.Caption:=' ';
  Etr:=2000;
  Form9.Label7.Caption:='';
  Form9.label6.Caption:='';
  comptAduEtr:=comptAduEtr+1;
  Form9.label6.Visible:=False;
  Form9.label7.Visible:=False;
  Form9.CheckBox1.Checked:=False;
end;

procedure TForm9.Timer1Timer(Sender: TObject);
begin
  Form9.Label4.Caption:=DateTimeToStr(Now);
end;

end.

