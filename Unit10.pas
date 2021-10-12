unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm10 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses Unit9;

procedure TForm10.Button1Click(Sender: TObject);
begin
Form10.Edit1.Text:='';
Form10.Edit2.Text:='';
Form10.Edit3.Text:='';
Form10.Edit4.Text:='';

Form9.ADOQuery1.Cancel;
Form10.Close;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
Form9.ADOQuery1.Edit;
Form9.ADOQuery1.FieldByName('nomer').AsString:=Form10.Edit1.Text;
Form9.ADOQuery1.FieldByName('marka').AsString:=Form10.Edit2.Text;
Form9.ADOQuery1.FieldByName('status').AsString:=Form10.Edit3.Text;
Form9.ADOQuery1.FieldByName('colvoproec').AsString:=Form10.Edit4.Text;
Form9.ADOQuery1.Post;

Form10.Edit1.Text:='';
Form10.Edit2.Text:='';
Form10.Edit3.Text:='';
Form10.Edit4.Text:='';

Form10.Close;
end;

end.
