unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
if Edit1.text = 'admin' then
begin
   form1.mm1.items[1].visible:= true;
   form1.mm1.items[2].visible:= false;
   form1.mm1.items[3].visible:= false;
   end else if Edit1.Text = 'kasir' then
   begin
   form1.mm1.items[1].visible:= false;
   form1.mm1.items[2].visible:= true;
   form1.mm1.items[3].visible:= false;
   end else if Edit1.Text = 'pemilik' then
   begin
   form1.mm1.items[1].visible:= false;
   form1.mm1.items[2].visible:= false;
   form1.mm1.items[3].visible:= true;
end;
    Form2.Close;
end;
end.
