unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm5 = class(TForm)
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit3;

procedure TForm5.Button1Click(Sender: TObject);
begin
Form3.ADOQuery2.Edit;
Form3.ADOQuery2.FieldByName('idinfo').AsString:=Form3.DBEdit1.Text;
Form3.ADOQuery2.FieldByName('status').AsString:=Form5.Edit2.Text;
Form3.ADOQuery2.FieldByName('date').AsString:=DateToStr(Form5.DateTimePicker1.Date);
Form3.ADOQuery2.FieldByName('dop').AsString:=Form5.Edit1.Text;
Form3.ADOQuery2.Post;
Form5.Edit2.Text:='';
Form5.Edit1.Text:='';
Form5.Close;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
Form5.Edit2.Text:='';
Form5.Edit1.Text:='';
Form3.ADOQuery2.Cancel;
Form5.Close;
end;

end.
