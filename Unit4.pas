unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit3;

procedure TForm4.Button1Click(Sender: TObject);
begin

Form3.ADOQuery1.Edit;
Form3.ADOQuery1.FieldByName('surname').AsString:=Form4.Edit1.Text;
Form3.ADOQuery1.FieldByName('name').AsString:=Form4.Edit2.Text;
Form3.ADOQuery1.FieldByName('middlename').AsString:=Form4.Edit3.Text;
Form3.ADOQuery1.FieldByName('adres').AsString:=Form4.Edit4.Text;
Form3.ADOQuery1.FieldByName('phone').AsString:=Form4.Edit5.Text;
Form3.ADOQuery1.FieldByName('birthday').AsString:=DateToStr(Form4.DateTimePicker1.Date);
Form3.ADOQuery1.Post;

Form4.Edit1.Text:='';
Form4.Edit2.Text:='';
Form4.Edit3.Text:='';
Form4.Edit4.Text:='';
Form4.Edit5.Text:='';
//ShowMessage(Form3.ADOQuery1.FieldByName('birthday').AsString);
Form4.Close;

end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Form4.Edit1.Text:='';
Form4.Edit2.Text:='';
Form4.Edit3.Text:='';
Form4.Edit4.Text:='';
Form4.Edit5.Text:='';
Form3.ADOQuery1.Cancel;
Form4.Close;
end;

end.
