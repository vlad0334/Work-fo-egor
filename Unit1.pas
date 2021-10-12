unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Menus;

type
  TForm1 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure N6Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit7, Unit9, Unit11;

procedure TForm1.N1Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Form7.Show;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
Form11.Show;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
Form9.Show;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
Form2.Show;
end;

end.
