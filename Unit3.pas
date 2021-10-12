unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Label2: TLabel;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit4, Unit5, Unit6;

procedure TForm3.DBEdit1Change(Sender: TObject);
var h1, h2:string;
begin
  h1:=''+Form3.DBEdit1.Text;
  h2:=QuotedStr(h1);
  with Form3.ADOQuery2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from info where idinfo like'+h2+' order by id');
    Open;
  end;
end;

procedure TForm3.Edit1Change(Sender: TObject);
var help1, help2:string;
begin
  help1:='%'+Form3.Edit1.Text+'%';
  help2:=QuotedStr(help1);
  with Form3.ADOQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from students where surname like'+help2+' or name like'+help2+' or middlename like'+help2+' or birthday like'+help2+' or adres like'+help2+' or phone like'+help2+' order by id');
    Open;
  end;

end;

procedure TForm3.N2Click(Sender: TObject);
begin
Form4.Edit1.Text:=Form3.ADOQuery1.FieldByName('surname').AsString;
Form4.Edit2.Text:=Form3.ADOQuery1.FieldByName('name').AsString;
Form4.Edit3.Text:=Form3.ADOQuery1.FieldByName('middlename').AsString;
Form4.Edit4.Text:=Form3.ADOQuery1.FieldByName('adres').AsString;
Form4.Edit5.Text:=Form3.ADOQuery1.FieldByName('phone').AsString;
Form4.DateTimePicker1.Date:=StrToDate(Form3.ADOQuery1.FieldByName('birthday').AsString);
Form4.Show;
Form4.Caption:='Изменить';
end;

procedure TForm3.N3Click(Sender: TObject);
begin
Form3.ADOQuery1.Append;
Form4.Show;
Form4.Caption:='Добавить';
end;

procedure TForm3.N4Click(Sender: TObject);
begin
Form6.Show;
Mesagedelete:='maindb';
end;

procedure TForm3.N6Click(Sender: TObject);
begin
Form5.Show;
Form5.Caption:='Изменить';
Form5.Edit2.Text:=Form3.ADOQuery2.FieldByName('status').AsString;
Form5.DateTimePicker1.Date:=StrToDate(Form3.ADOQuery2.FieldByName('date').AsString);
Form5.Edit1.Text:=Form3.ADOQuery2.FieldByName('dop').AsString;

end;

procedure TForm3.N7Click(Sender: TObject);
begin
Form3.ADOQuery2.Append;
Form5.Show;
Form5.Caption:='Добавить';
end;

procedure TForm3.N8Click(Sender: TObject);
begin
Form6.Show;
Mesagedelete:='podmaindb';
end;

end.
