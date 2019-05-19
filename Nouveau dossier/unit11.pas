unit Unit11;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm11 }

  TForm11 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private

  public

  end;

var
  Form11: TForm11;

implementation

{$R *.lfm}

{ TForm11 }
Uses Unit3, Unit2;

procedure TForm11.FormCreate(Sender: TObject);
begin
  Form11.Label3.Visible:=False;
  Form11.Label4.Visible:=False;
end;

procedure TForm11.Label4Click(Sender: TObject);
begin

end;

procedure TForm11.Button1Click(Sender: TObject);
begin
  Form11.Label3.Caption  := '';
  AssignFile(r, 'fichier.txt');
  Reset(r);
  Repeat
  Readln(r, l);
  Form11.Label3.Caption:=   Form11.Label3.Caption + IntTosTr(p) + ': ' + l + #13#10;
  p := p + 1;
  Until eof(r);
  if (l='') then
          begin
          Form11.Label3.Caption:='Désolé, on n''est pas'+ #13#10+' encore à la fin de la journée';
          end;
  p:=1;
  CloseFile(r);
  Form11.Label3.Visible:=True;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
  Form11.Label4.Caption:='';
  try
    AssignFile(r, 'fichier2.txt');
    Reset(r);
    Repeat
    Readln(r, l);
    Form11.Label4.Caption:=   Form11.Label4.Caption + IntTosTr(i) + ': ' + l + #13#10;
    i := i + 1
    Until eof(r);
    if (l='') then
            begin
            Form11.Label4.Caption:='Désolé, on n''est pas'+ #13#10+' encore à la fin du mois';
            end;
    i:=1;
    CloseFile(r);

  Except
    AssignFile(r, 'fichier2.txt');
    Rewrite(r);

    Form11.Label4.Caption:='Désolé, on n''est pas'+ #13#10+' encore à la fin du mois';

    CloseFile(r);
  end;

  Form11.Label4.Visible:=True;
end;

procedure TForm11.Button3Click(Sender: TObject);
begin
  Form11.Hide;
  Form2.Show;
end;

procedure TForm11.Button4Click(Sender: TObject);
begin
  Form11.Hide;
  Form3.Show;
end;

end.

