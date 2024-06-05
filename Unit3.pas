unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button4: TButton;
    dbgrd1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a : string;

implementation

uses Unit4;


{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
DataModule4.Zkategori.Insert;
DataModule4.Zkategori.SQL.clear;
DataModule4.Zkategori.SQL.Add ('insert into kategori values,"'+Edit1.Text+'"');
DataModule4.Zkategori.ExecSQL;

DataModule4.Zkategori.SQL.clear;
DataModule4.Zkategori.SQL.Add('select * from kategori');
DataModule4.Zkategori.Open;
ShowMessage ('Data Berhasil Disimpan');
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
with DataModule4.Zkategori do
begin
SQL.Clear;
SQL.Add('update kategori set name="'+Edit1.Text+'" where id="'+a+'"');
ExecSQL;

SQL.Clear;
SQL.Add('select * from kategori');
open;
end;
    ShowMessage ('Data berhasil di update');
end;
procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= DataModule4.Zkategori.Fields[1].AsString;
a := DataModule4.Zkategori.Fields[0].AsString;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
with DataModule4.Zkategori do
begin
SQL.Clear;
SQL.Add('delete from kategori where id= "'+a+'"');
ExecSQL;

SQL.Clear;
SQL.Add('select * from kategori');
Open;
end;
    ShowMessage('Data Berhasil Di Delete');
end;

end.
 