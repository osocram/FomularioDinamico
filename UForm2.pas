unit UForm2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
    eu:string;
  end;

var
  Form2: TForm2;
  //teste

implementation

{$R *.dfm}

end.
