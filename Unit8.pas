unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm8 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit7;

procedure TForm8.Button1Click(Sender: TObject);
begin
Form7.ADOQuery1.Edit;
Form7.ADOQuery1.FieldByName('surname').AsString:=Form8.Edit1.Text;
Form7.ADOQuery1.FieldByName('name').AsString:=Form8.Edit2.Text;
Form7.ADOQuery1.FieldByName('middlename').AsString:=Form8.Edit3.Text;
Form7.ADOQuery1.FieldByName('idpasss').AsString:=Form8.Edit4.Text;
Form7.ADOQuery1.FieldByName('colproect').AsString:=Form8.Edit5.Text;
Form7.ADOQuery1.Post;
Form8.Edit1.Text:='';
Form8.Edit2.Text:='';
Form8.Edit3.Text:='';
Form8.Edit4.Text:='';
Form8.Edit5.Text:='';
Form8.Close;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
Form8.Edit1.Text:='';
Form8.Edit2.Text:='';
Form8.Edit3.Text:='';
Form8.Edit4.Text:='';
Form8.Edit5.Text:='';
Form7.ADOQuery1.Cancel;
Form8.Close;
end;

end.
