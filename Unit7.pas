unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Menus,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm7 = class(TForm)
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit8, Unit6;

procedure TForm7.N2Click(Sender: TObject);
begin
Form8.Show;
Form8.Caption:='Изменить';
Form8.Edit1.Text:=Form7.ADOQuery1.FieldByName('surname').AsString;
Form8.Edit2.Text:=Form7.ADOQuery1.FieldByName('name').AsString;
Form8.Edit3.Text:=Form7.ADOQuery1.FieldByName('middlename').AsString;
Form8.Edit4.Text:=Form7.ADOQuery1.FieldByName('idpasss').AsString;
Form8.Edit5.Text:=Form7.ADOQuery1.FieldByName('colproect').AsString;
end;

procedure TForm7.N3Click(Sender: TObject);
begin
Form7.ADOQuery1.Append;
Form8.Show;
Form8.Caption:='Добавить';
end;

procedure TForm7.N4Click(Sender: TObject);
begin
Form6.Show;
Mesagedelete:='teachdb';
end;

end.
