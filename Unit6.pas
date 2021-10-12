unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Mesagedelete: string;
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit3, Unit7, Unit9, Unit11;

procedure TForm6.Button1Click(Sender: TObject);
begin
Form6.Close;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
if Mesagedelete = 'maindb' then Form3.ADOQuery1.Delete;
if Mesagedelete = 'podmaindb' then Form3.ADOQuery2.Delete;
if Mesagedelete = 'teachdb' then Form7.ADOQuery1.Delete;
if Mesagedelete = 'cardb' then Form9.ADOQuery1.Delete;
if Mesagedelete = 'eczdb' then Form11.ADOQuery1.Delete;
Form6.Close;
end;

end.
