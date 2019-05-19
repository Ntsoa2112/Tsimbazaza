unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Menus, Grids, CheckLst, ActnList;

type

  { TForm6 }

  TForm6 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  Form6: TForm6;
  t:Text;
  i:integer;
  texte:String;

implementation

{$R *.lfm}

{ TForm6 }
Uses Unit1,  Unit2;

procedure TForm6.Label1Click(Sender: TObject);
begin

end;

procedure TForm6.ListBox1Click(Sender: TObject);
begin

end;

procedure TForm6.Memo1Change(Sender: TObject);
begin

end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  Form6.Hide;
  Form1.show;
end;

procedure TForm6.ComboBox1Change(Sender: TObject);
begin

end;

procedure TForm6.Button1Click(Sender: TObject);
begin
  Form6.Hide;
  Form2.Show;
end;

procedure TForm6.Image6Click(Sender: TObject);
begin

end;

end.

