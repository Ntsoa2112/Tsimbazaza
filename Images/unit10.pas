unit Unit10;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm10 }

  TForm10 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public
   var
    Gs,comptEnfEtrG,comptJeuEtrG:integer;

  end;

var
  Form10: TForm10;
  GEtr,GApp,GPrix,NbrEtr,NbrEtrEnf,NbrApp:integer;
  Gs:integer=0;
  comptJeuEtrG:integer=0;
  comptEnfEtrG:integer=0;

implementation

{$R *.lfm}

{ TForm10 }
Uses Unit8, Unit2;

Function GopPrix(Gprix,Gs:integer):integer;
     begin

          Gs:=Gs+Gprix;
          GopPrix:=Gs;
       end;

procedure TForm10.Button5Click(Sender: TObject);
begin
  Form10.Hide;
  Form8.show;
end;

procedure TForm10.Edit1Change(Sender: TObject);
begin
  if (Form10.Edit1.Text='') then
  begin
  NbrEtrEnf:=0;
  end
  else
  begin
  NbrEtrEnf:=StrToInt(Form10.Edit1.Text);
  GEtr:= NbrEtrEnf*1000;

  end;

end;

procedure TForm10.Edit2Change(Sender: TObject);
begin
  if (Form10.Edit2.Text='') then
  begin
   NbrApp:=0;
  end
  else
  begin
  NbrApp:=StrToInt(Form10.Edit2.Text);
  GApp:= NbrApp*1000;

  end;
end;

procedure TForm10.Edit3Change(Sender: TObject);
begin

end;

procedure TForm10.Edit4Change(Sender: TObject);
begin
  if (Form10.Edit4.Text='') then
  begin
   NbrEtr:=0;
  end
  else
  begin
  NbrEtr:=StrToInt(Form10.Edit4.Text);
  GEtr:= NbrEtr*2000;

  end;
end;

procedure TForm10.Edit5Change(Sender: TObject);
begin

end;

procedure TForm10.FormCreate(Sender: TObject);
begin
  Form10.Label6.Visible:=False;
  Form10.Label7.Visible:=False;
end;

procedure TForm10.Image1Click(Sender: TObject);
begin

end;

procedure TForm10.Label1Click(Sender: TObject);
begin
  Form10.Edit1.Caption:='';
  Form10.Edit4.Caption:='';
  Form10.Edit2.Caption:='';
  Form10.label6.Caption:='';
  Form10.Label7.Caption:='';
  Form10.Label6.Visible:=False;
  Form10.Label7.Visible:=False;
end;

procedure TForm10.Label2Click(Sender: TObject);
begin
  Form10.Edit1.Caption:='';
  Form10.Edit4.Caption:='';
  Form10.Edit2.Caption:='';
  Form10.Label6.Caption:='';
  Form10.Label7.Caption:='';
  Form10.label6.Visible:=False;
  Form10.label7.Visible:=False;
end;

procedure TForm10.Label4Click(Sender: TObject);
begin
  Form10.Edit1.Caption:='';
  Form10.Edit4.Caption:='';
  Form10.Edit2.Caption:='';
  Form10.Label6.Caption:='';
  Form10.Label7.Caption:='';
  Form10.label6.Visible:=False;
  Form10.label7.Visible:=False;
end;

procedure TForm10.Label5Click(Sender: TObject);
begin

end;

procedure TForm10.Label7Click(Sender: TObject);
begin

end;

procedure TForm10.Timer1Timer(Sender: TObject);
begin
   Label5.Caption:=DateTimeToStr(Now);
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
  Form10.Hide;
  Form2.Show;
end;

procedure TForm10.Button3Click(Sender: TObject);
begin
  Form10.Edit1.Caption:='';
  Form10.Edit4.Caption:='';
  Form10.Edit2.Caption:='';
  Form10.Label6.Caption:='';
  Form10.label7.Caption:='';
  Form10.label6.Visible:=False;
  Form10.label7.Visible:=False;
end;

procedure TForm10.Button4Click(Sender: TObject);
begin

  if (GEtr=NbrEtrEnf*1000) then
  begin
        if (NbrEtr*2000=0) then
        begin
              GPrix:=GEtr;
              if (GApp= NbrApp*1000) then
                begin
                  GPrix:=GEtr+GApp;
                end;
        end;
  end
  else
  begin
        if (GEtr=NbrEtr*2000) then
              begin
                if (NbrEtrEnf*1000=0) then
                    begin
                      GPrix:=GEtr;
                          if (GApp= NbrApp*1000) then
                          begin
                            GPrix:=GEtr+GApp;
                          end;
                    end;

              end;
  end;

  if(NbrEtrEnf*1000<>0) then
      begin
      if(NbrEtr*2000<>0) then
         begin
            GPrix:=NbrEtrEnf*1000 + NbrEtr*2000;
            if (NbrApp*1000<>0) then
               begin
                GPrix:=NbrEtrEnf*1000 + NbrEtr*2000 + NbrApp*1000;
               end;
         end;

  end;

  Gs := GopPrix(GPrix,Gs);
  Form10.Label6.Caption:=IntToStr(GPrix);
  if(Form10.Edit1.Text<>'') then comptEnfEtrG:=comptEnfEtrG+StrToInt(Form10.Edit1.Text);
  if (Form10.Edit4.Text<>'') then comptJeuEtrG:=comptJeuEtrG+StrToInt(Form10.Edit4.Text);
  Form10.Label6.Visible:=True;
  GApp:=0;
  GEtr:=0;
end;

procedure TForm10.Button1Click(Sender: TObject);
begin
  Form10.Label7.Caption:=IntToStr(Gs);
  Form10.Label7.Visible:=True;
end;

end.

