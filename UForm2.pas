unit UForm2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Datasnap.DBClient;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    cdsCadastroTela: TClientDataSet;
    dsCadastroTela: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  //teste

implementation

{$R *.dfm}

end.
