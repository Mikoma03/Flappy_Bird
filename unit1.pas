unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Menus, LCLType;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Shape1: TShape;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Timer5: TTimer;
    Timer6: TTimer;
    Timer7: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
  private
    x,summe, zahl1: integer;
    p: TPanel;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  x := 10;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if key = VK_ESCAPE then
  begin
    timer1.Enabled := True;
    timer7.Enabled := True;
    label2.Caption := ' ';
  end;
  if key = VK_SPACE then
  begin
    image1.top := image1.top - 20;
  end;
end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin

  begin
    panel3.Left := panel3.Left - x;
    panel4.Left := panel4.Left - x;
    if (panel3.Left < -80) and (panel4.Left < -80) then
    begin
      timer1.Enabled := False;
      timer6.Enabled := True;
      panel3.left := 1080;
      panel3.top := 0;
      panel4.left := 1080;
      panel14.top := clientheight - panel14.Height;
    end;
  end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  begin

    panel5.Left := panel5.Left - x;
    panel6.Left := panel6.Left - x;
    if (panel5.Left < -80) and (panel6.Left < -80) then
    begin
      timer2.Enabled := False;
      timer3.Enabled := True;
      panel5.left := 1081;
      panel5.top := 0;
      panel6.left := 1081;
      panel6.top := clientheight - panel6.Height;

    end;
  end;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
  begin
    panel7.Left := panel7.Left - x;
    panel8.Left := panel8.Left - x;
    if (panel7.Left < -80) and (panel8.Left < -80) then
    begin
      timer3.Enabled := False;
      timer4.Enabled := True;
      panel7.left := 1082;
      panel7.top := 0;
      panel8.left := 1082;
      panel8.top := clientheight - panel8.Height;
    end;
  end;

end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
  begin
    panel9.Left := panel9.Left - x;
    panel10.Left := panel10.Left - x;
    if (panel9.Left < -80) and (panel10.Left < -80) then
    begin
      timer4.Enabled := False;
      timer5.Enabled := True;
      panel9.left := 1083;
      panel9.top := 0;
      panel10.left := 1083;
      panel10.top := clientheight - panel10.Height;

    end;
  end;
end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin
  begin
    panel11.Left := panel11.Left - x;
    panel12.Left := panel12.Left - x;
    if (panel11.Left < -80) and (panel12.Left < -80) then
    begin
      timer5.Enabled := False;
      timer6.Enabled := True;
      panel11.left := 1084;
      panel11.top := 0;
      panel12.left := 1084;
      panel12.top := clientheight - panel12.Height;
    end;
  end;
end;

procedure TForm1.Timer6Timer(Sender: TObject);
begin
  begin
    begin
      panel13.Left := panel13.Left - x;
      panel14.Left := panel14.Left - x;
    end;
    if (panel13.Left < -80) and (panel14.Left < -80) then
    begin
      timer6.Enabled := False;
      timer1.Enabled := True;
      panel13.left := 1085;
      panel13.top := 0;
      panel14.left := 1085;
      panel14.top := clientheight - panel14.Height;
    end;
  end;
end;

procedure TForm1.Timer7Timer(Sender: TObject);
var
  i: integer;
begin
  image1.top := image1.Top + 3;
  for i := 3 to 14 do
  begin
    p := FindComponent('panel' + i.tostring) as tpanel;
    if Image1.BoundsRect.IntersectsWith(p.BoundsRect) then
    begin
      label1.Caption := '0';
      image1.top := 248;
      image1.left := 421;
    end;
    if (p.Left <= image1.left-p.width)
    and (p.Left > image1.left-p.width-10) then
    begin
      zahl1:=1;
      summe :=summe+1;
      label1.Caption := ' ' + summe.toString ;
      break;
    end;

  end;
end;


end.



