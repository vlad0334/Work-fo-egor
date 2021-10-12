unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Menus,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm11 = class(TForm)
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

uses Unit12, Unit6;

procedure TForm11.N2Click(Sender: TObject);
begin
Form12.ADOQuery1.Close;
Form12.ADOQuery1.SQL.Clear;
Form12.ADOQuery1.SQL.Add('SELECT DISTINCT nomer FROM car');
Form12.ADOQuery1.Open;
Form12.ComboBox1.Items.Clear;

While not Form12.ADOQuery1.Eof do
begin
  Form12.ComboBox1.Items.Add(Form12.ADOQuery1.Fields[0].AsString);
  Form12.ADOQuery1.Next;
end;
Form12.Show;
Form12.Caption:='Изменить';
Form12.DateTimePicker1.Date:=StrToDate(Form11.ADOQuery1.FieldByName('date').AsString);
Form12.Edit2.Text:=Form11.ADOQuery1.FieldByName('student1').AsString;
Form12.ComboBox1.Text:=Form11.ADOQuery1.FieldByName('car').AsString;
Form12.Edit3.Text:=Form11.ADOQuery1.FieldByName('instryk').AsString;
Form12.Edit4.Text:=Form11.ADOQuery1.FieldByName('otdelgibdd').AsString;
Form12.Edit5.Text:=Form11.ADOQuery1.FieldByName('result').AsString;
end;

procedure TForm11.N3Click(Sender: TObject);
begin
Form12.ADOQuery1.Close;
Form12.ADOQuery1.SQL.Clear;
Form12.ADOQuery1.SQL.Add('SELECT DISTINCT nomer FROM car');
Form12.ADOQuery1.Open;
Form12.ComboBox1.Items.Clear;

While not Form12.ADOQuery1.Eof do
begin
  Form12.ComboBox1.Items.Add(Form12.ADOQuery1.Fields[0].AsString);
  Form12.ADOQuery1.Next;
end;
Form11.ADOQuery1.Append;
Form12.Show;
Form12.Caption:='Добавить';
end;

procedure TForm11.N4Click(Sender: TObject);
begin
Form6.Show;
Mesagedelete:='eczdb';
end;

end.
