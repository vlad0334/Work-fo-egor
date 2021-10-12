unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.CheckLst,
  Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TForm12 = class(TForm)
    ComboBox1: TComboBox;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    DateTimePicker1: TDateTimePicker;
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
  Form12: TForm12;

implementation

{$R *.dfm}

uses Unit9, Unit11;

procedure TForm12.Button1Click(Sender: TObject);
begin
Form11.ADOQuery1.Edit;
Form11.ADOQuery1.FieldByName('student1').AsString:=Form12.Edit2.Text;
Form11.ADOQuery1.FieldByName('car').AsString:=Form12.ComboBox1.Text;
Form11.ADOQuery1.FieldByName('instryk').AsString:=Form12.Edit3.Text;
Form11.ADOQuery1.FieldByName('otdelgibdd').AsString:=Form12.Edit4.Text;
Form11.ADOQuery1.FieldByName('result').AsString:=Form12.Edit5.Text;
Form11.ADOQuery1.FieldByName('date').AsString:=DateToStr(Form12.DateTimePicker1.Date);
Form11.ADOQuery1.Post;

Form12.Edit2.Text:='';
Form12.Edit3.Text:='';
Form12.Edit4.Text:='';
Form12.Edit5.Text:='';
Form12.Close;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
Form12.Edit2.Text:='';
Form12.Edit3.Text:='';
Form12.Edit4.Text:='';
Form12.Edit5.Text:='';
Form11.ADOQuery1.Cancel;
Form12.Close;
end;

end.
