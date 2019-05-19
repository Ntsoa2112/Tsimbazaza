unit Unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Unit2;

type

  { TForm7 }

  TForm7 = class(TForm)
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
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public
   GMs,comptEnfG,comptJeuG:integer;
  end;

var
  Form7: TForm7;
  GMal,GApp,GPrix,NbrMal,NbrMalAd, NbrApp:integer;
  GMs:integer=0;
  ComptEnfG:integer=0;
  comptJeuG:integer=0;
implementation

{$R *.lfm}

{ TForm7 }
Uses Unit5;

Function GopPrix(Gprix,GMs:integer):integer;
     begin

          GMs:=GMs+Gprix;
          GopPrix:=GMs;
       end;

procedure TForm7.Button5Click(Sender: TObject);
begin
  Form7.Hide;
  Form5.Show;
end;

procedure TForm7.Edit1Change(Sender: TObject);
begin
  if (Form7.Edit1.Text='') then
     begin
           NbrMal:=0;
           GMal:=0;
     end
     else
     begin
          NbrMal:=StrToInt(Form7.Edit1.Text);
          GMal:= NbrMal*300;
     end;

end;

procedure TForm7.Edit2Change(Sender: TObject);
begin
  if (Form7.Edit2.Text='') then
     begin
      NbrApp:=0;
     end
     else
     begin
      NbrApp:=StrToInt(Form7.Edit2.Text);
      GApp:= NbrApp*1000;
     end;
end;

procedure TForm7.Edit3Change(Sender: TObject);
begin

end;

procedure TForm7.Edit4Change(Sender: TObject);
begin
  if (Form7.Edit4.Text='') then
     begin
      NbrMalAd:=0;
      GMal:=0;

     end
     else
     begin
      NbrMalAd:=StrToInt(Form7.Edit4.Text);
      GMal:= NbrMalAd*600;

     end;
end;

procedure TForm7.Edit5Change(Sender: TObject);
begin

end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  Form7.Label7.Visible:=False;
  Form7.Label5.Visible:=False;
end;

procedure TForm7.Image1Click(Sender: TObject);
begin

end;

procedure TForm7.Label1Click(Sender: TObject);
begin
  Form7.Edit1.Text:='';
  Form7.Edit2.Text:='';
  Form7.Edit4.Text:='';
  Form7.Label7.Caption:='';
  Form7.Label5.Caption:='';
  Form7.Label7.Visible:=False;
  Form7.Label5.Visible:=False;

end;

procedure TForm7.Label2Click(Sender: TObject);
begin
  Form7.Edit2.Text:=IntToStr(0);
  Form7.Edit4.Text:=IntToStr(0);
  Form7.Edit1.Text:=IntToStr(0);
  Form7.Label7.Caption:='';
  Form7.Label5.Caption:='';
  Form7.Label7.Visible:=False;
  Form7.Label5.Visible:=False;
end;

procedure TForm7.Label3Click(Sender: TObject);
begin

end;

procedure TForm7.Label4Click(Sender: TObject);
begin
  Form7.Edit4.Text:='';
  Form7.Edit1.Text:='';
  Form7.Edit2.Text:='';
  Form7.label7.Caption:='';
  Form7.Label5.Caption:='';
  Form7.label7.Visible:=False;
  Form7.Label5.Visible:=False;
end;

procedure TForm7.Timer1Timer(Sender: TObject);
begin
    Form7.Label3.Caption:=DateTimeToStr(Now);
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  Form7.Hide;
  Form2.Show;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
  Form7.label5.Caption:=IntToStr(GMs);
  Form7.Label5.Visible:=True;
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
  Form7.Edit4.Text:='';
  Form7.Edit1.Text:='';
  Form7.Edit2.Text:='';
  Form7.Label7.Caption:='';
  Form7.Label5.Caption:='';
  Form7.Label7.Visible:=False;
  Form7.label5.Visible:=False;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin

     if (GMal=NbrMal*300) then
           begin
             GPrix:=GMal;
                             if (GApp=NbrApp*1000) then
                                begin
                                  GPrix:=GMal+GApp;
                                end;
           end
     else
     begin
       if (GMal=NbrMalAd*600) then
           begin
             GPrix:=GMal;
                             if (GApp=NbrApp*1000) then
                                begin
                                  GPrix:=GMal+GApp;
                                end;

           end;
     end;

     if(NbrMal*300<>0) then
      begin
      if(NbrMalAd*600<>0) then
         begin
            GPrix:=NbrMalAd*600 + NbrMal*300;
            if (NbrApp*1000<>0) then
               begin
                GPrix:=NbrMalAd*600 + NbrMal*300 + NbrApp*1000;
               end;
         end;

      end;

  GMs := GopPrix(GPrix,GMs);
  Form7.label7.Caption:=IntToStr(GPrix);
  if (Form7.Edit1.Text<>'') then comptEnfG:=comptEnfG+StrToInt(Form7.Edit1.Text);
  if (Form7.Edit4.Text<>'') then comptJeuG:=comptJeuG+StrToInt(Form7.Edit4.Text);
  Form7.Label7.Visible:=True;
  GApp:=0;
  GMal:=0;

end;

end.

