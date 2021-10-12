unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Menus,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm9 = class(TForm)
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
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Unit10, Unit6;

procedure TForm9.N2Click(Sender: TObject);
begin
Form10.Show;
Form10.Caption:='Изменить';
Form10.Edit1.Text:=Form9.ADOQuery1.FieldByName('nomer').AsString;
Form10.Edit2.Text:=Form9.ADOQuery1.FieldByName('marka').AsString;
Form10.Edit3.Text:=Form9.ADOQuery1.FieldByName('status').AsString;
Form10.Edit4.Text:=Form9.ADOQuery1.FieldByName('colvoproec').AsString;
end;

procedure TForm9.N3Click(Sender: TObject);
begin
Form9.ADOQuery1.Append;
Form10.Show;
Form10.Caption:='Добавить';
end;

procedure TForm9.N4Click(Sender: TObject);
begin
Form6.Show;
Mesagedelete:='cardb';
end;

end.
