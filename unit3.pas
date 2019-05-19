unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mssqlconn, FileUtil, RTTICtrls, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, StdCtrls, Buttons, EditBtn,Unit10,Unit9,Unit4, DOS, Unit11;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Timer1: TTimer;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Shape1ChangeBounds(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;
  totale,enfMal,JeuMal,EnfEtrI,JeuEtrGr,totalePrix, prix:integer;
  i: integer =1;
  p: integer =1;
  jour, mois, an, j:word;
  f,h,r:textFile;
  n:integer=1;
  somme:integer=0;
  l:string;

implementation

{$R *.lfm}

{ TForm3 }
uses Unit2, Unit7;

procedure TForm3.Button1Click(Sender: TObject);
begin
 Form3.Hide;
 Form2.Show;
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  begin

     AssignFile(f, 'fichier.txt');
     Reset(f);
     Repeat
      Readln(f, prix);
      somme:= somme + prix;
     until eof(f);
     Form3.Label12.caption:= IntToStr(somme);
     Form3.Label12.Visible:=True;

       Try
         AssignFile(h, 'fichier2.txt');
         Append(h);
         Writeln(h, somme);
         CloseFile(h);
        Except
         AssignFile(h, 'fichier2.txt');
         Rewrite(h);
         Writeln(h, somme);
         CloseFile(h);
        end;



     CloseFile(f);


     end;

  end;


procedure TForm3.Button3Click(Sender: TObject);
begin
  Form3.Label10.caption:='';
  totale:=0;
  Form3.Label9.caption:='';
  Form9.comptAduEtr:=0;
  Form10.comptJeuEtrG:=0;
  JeuEtrGr:=0;
  Form3.Label8.caption:='';
  Form9.comptEnfEtr:=0;
  Form10.comptEnfEtrG:=0;
  EnfEtrI:=0;
  Form3.Label7.caption:='';
  Form7.comptJeuG:=0;
  Form4.comptAduInd:=0;
  JeuMal:=0;
  Form3.Label6.caption:='';
  Form4.comptEnf:=0;
  Form7.comptEnfG:=0;
  enfMal:=0;
  Form3.Label11.caption:='';
  Form10.Gs:=0;
  Form9.f:=0;
  Form4.s:=0;
  Form7.GMs:=0;
  Form3.Label6.Visible:=false;
  Form3.label7.Visible:=false;
  Form3.Label8.Visible:=false;
  Form3.Label9.Visible:=false;
  Form3.Label10.Visible:=false;
  Form3.Label11.Visible:=false;
  Form3.Label12.Visible:=false;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  enfMal:=Form4.comptEnf+Form7.comptEnfG;
  Form3.Label6.caption:=IntToStr(enfMal);
  Form3.label6.Visible:=true;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
  JeuMal:=Form7.comptJeuG+ Form4.comptAduInd;
  Form3.Label7.caption:=IntToStr(JeuMal);
  Form3.label7.Visible:=true;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
  EnfEtrI:=Form9.comptEnfEtr+Form10.comptEnfEtrG;
  Form3.label8.caption:=IntToStr(EnfEtrI);
  Form3.Label8.Visible:=true;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
  JeuEtrGr:=Form9.comptAduEtr+Form10.comptJeuEtrG;
  Form3.Label9.caption:=IntToStr(JeuEtrGr);
  Form3.Label9.Visible:=true;
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
  Form3.Hide;
  Form11.Show;
  Form11.Label3.Visible:=False;
  Form11.Label4.Visible:=False;

  end;



procedure TForm3.Edit1Change(Sender: TObject);
begin

end;

procedure TForm3.Edit7Change(Sender: TObject);
begin

end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  Form3.Label6.Visible:=false;
  Form3.Label7.Visible:=false;
  Form3.Label8.Visible:=false;
  Form3.Label9.Visible:=false;
  Form3.Label10.Visible:=false;
  Form3.Label11.Visible:=false;
  Form3.Label12.Visible:=false;
  Form3.Button8.Visible:=false;
  GetDate(an, mois, jour, j);
  if (jour=30) then
  begin
     Form3.Button2.Visible:=True;


  end
  else
  begin
     Form3.Button2.Visible:=False;

  end;
end;

procedure TForm3.Image1Click(Sender: TObject);
begin

end;

procedure TForm3.Image2Click(Sender: TObject);
begin

end;

procedure TForm3.Image5Click(Sender: TObject);
begin

end;

procedure TForm3.Label1Click(Sender: TObject);
begin

end;

procedure TForm3.Label2Click(Sender: TObject);
begin

end;

procedure TForm3.Label3Click(Sender: TObject);
begin
    totalePrix:=Form10.Gs+Form9.f+Form4.s+Form7.GMs;

    

    try
     AssignFile(f, 'fichier.txt');
     Append(f);
     Writeln(f, totalePrix);
     CloseFile(f);

    except
     AssignFile(f, 'fichier.txt');
     Rewrite(f);
     Writeln(f, totalePrix);
     CloseFile(f);
    end;




    Form3.Label11.caption:=IntToStr(totalePrix);
    Form3.Label11.Visible:=true;
    Form3.Button8.Visible:=True;
end ;

procedure TForm3.Label4Click(Sender: TObject);
begin
  totale:=enfMal+JeuMal+JeuEtrGr+EnfEtrI;
  Form3.Label10.caption:=IntToStr(totale);
  Form3.Label10.Visible:=true;
end;

procedure TForm3.Shape1ChangeBounds(Sender: TObject);
begin

end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
    Form3.Label2.Caption:=DateTimeToStr(Now);
end;

end.

