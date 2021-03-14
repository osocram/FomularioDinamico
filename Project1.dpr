program Project1;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Form1},
  uGenerateObjects in 'uGenerateObjects.pas',
  UForm2 in 'UForm2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
