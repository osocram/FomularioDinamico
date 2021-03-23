unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB, Datasnap.DBClient, uForm2,
  Vcl.ExtCtrls, Vcl.DBCtrls, UCadastro;


type
  TForm1 = class(TForm)
    memoPrincipal: TMemo;
    cdsObjetos: TClientDataSet;
    bCriarForm: TButton;
    Button1: TButton;
    cdsObjetosag_max: TAggregateField;
    btnLista: TButton;
    procedure bCriarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lerArquivo(Sender: TObject);
    procedure bCriarFormClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cdsObjetosAfterPost(DataSet: TDataSet);
    procedure btnListaClick(Sender: TObject);
  private
    dir_base: String;
    arquivo : String;
    procedure generateEdit(aCds: TClientDataSet; aForm: TForm);
    procedure generateMemo(aCds: TClientDataSet; aForm: TForm);
    procedure generateDBEdit(aCds: TClientDataSet; aForm: TForm);
    procedure generateLabel(aCds: TClientDataSet; aForm: TForm);
    procedure generatePanel(aCds: TClientDataSet; aForm: TForm);
    procedure generatePageControl(aCds: TClientDataSet; aForm: TForm);
    procedure generateTabSheet(aCds: TClientDataSet; aForm: TForm);
    procedure criarObjeto(aClasse: String);
    function  buscaPai(aCds: TClientDataSet; aForm: TForm) : TWinControl;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.bCriarFormClick(Sender: TObject);
begin
  Try
    Form2 := Tform2.create(nil);

    cdsObjetos.First;
    while (not cdsObjetos.eof) do
    begin
      criarObjeto(cdsObjetos.FieldByName('ds_class').AsString);
      cdsObjetos.Next;
    end;

    Form2.Showmodal;

  Finally
    Form2.release;
	  Form2 := nil;
  End;
end;

procedure TForm1.btnListaClick(Sender: TObject);
begin
  lerArquivo(Sender);
end;

function TForm1.buscaPai(aCds: TClientDataSet; aForm: TForm) : TWinControl;
var
  pai: string;
  comp: TComponent;
begin
  try
    result := nil;

    pai := AnsiUpperCase(aCds.FieldByName('ds_parent').AsString);
    comp := aForm.FindComponent(pai);
    result := TWinControl(comp);

    if (not Assigned(result)) then
    begin
      result := aForm;
      memoPrincipal.Lines.Add('FindComponent(pai) ' + pai + 'não encontrado');
    end;

  except
    on E : Exception do
    begin
      result := nil;
      memoPrincipal.Lines.Add('Exception ' + E.Message);
    end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  FCadastro := TFCadastro.create(nil);
  Try
    FCadastro.Showmodal;
  Finally
    FCadastro.release;
	  FCadastro := nil;
  End;
end;

procedure TForm1.generatePageControl(aCds: TClientDataSet; aForm: TForm);
var
  meuPc: TPageControl;
begin
  meuPc := TPageControl.Create(aForm);
  meuPc.Parent   := buscaPai(aCds, Form2);
  meuPc.Name     := aCds.FieldByName('ds_nome').AsString;
  meuPc.Left     := aCds.FieldByName('left').AsInteger;
  meuPc.Top      := aCds.FieldByName('top').AsInteger;
  meuPc.Width    := aCds.FieldByName('width').AsInteger;
  meuPc.Height   := aCds.FieldByName('height').AsInteger;
end;

procedure TForm1.generateTabSheet(aCds: TClientDataSet; aForm: TForm);
var
  meuTs: TTabSheet;
begin
  memoPrincipal.Lines.Add('Criando TabSheet');

  meuTs          := TTabSheet.Create(aForm);
  meuTs.Parent   := buscaPai(aCds, Form2);
  meuTs.PageControl := TPageControl(meuTs.Parent);
  meuTs.Name     := aCds.FieldByName('ds_nome').AsString;
  meuTs.Caption  := aCds.FieldByName('ds_caption').AsString;
  TPageControl(meuTs.Parent).ActivePage := meuTs;
  meuTs.Left     := aCds.FieldByName('left').AsInteger;
  meuTs.Top      := aCds.FieldByName('top').AsInteger;
  meuTs.Width    := aCds.FieldByName('width').AsInteger;
  meuTs.Height   := aCds.FieldByName('height').AsInteger;

  memoPrincipal.Lines.Add('Criando TabSheet nome: ' + aCds.FieldByName('ds_nome').AsString);
end;

procedure TForm1.generateEdit(aCds: TClientDataSet; aForm: TForm);
var
  meuEdt: TEdit;
begin
  meuEdt := TEdit.Create(aForm);
  meuEdt.Name     := aCds.FieldByName('ds_nome').AsString;
  meuEdt.Parent   := buscaPai(aCds, Form2);
  meuEdt.Left     := acds.FieldByName('left').AsInteger;
  meuEdt.Top      := acds.FieldByName('top').AsInteger;
  meuEdt.Width    := acds.FieldByName('Width').AsInteger;
  meuEdt.Height   := acds.FieldByName('height').AsInteger;
end;

procedure TForm1.generateMemo(aCds: TClientDataSet; aForm: TForm);
var
  meuMemo: TMemo;
begin
  meuMemo := TMemo.Create(aForm);
  meuMemo.Name       := aCds.FieldByName('ds_nome').AsString;
  meuMemo.Parent     := buscaPai(aCds, Form2);
  meuMemo.Left       := acds.FieldByName('left').AsInteger;
  meuMemo.Top        := acds.FieldByName('top').AsInteger;
  meuMemo.Width      := acds.FieldByName('Width').AsInteger;
  meuMemo.Height     := acds.FieldByName('height').AsInteger;
end;

procedure TForm1.generateDBEdit(aCds: TClientDataSet; aForm: TForm);
var
  meuDBEdt: TDBEdit;
begin
  meuDBEdt := TDBEdit.Create(aForm);
  meuDBEdt.Name       := aCds.FieldByName('ds_nome').AsString;
  meuDBEdt.Parent     := buscaPai(aCds, Form2);
  meuDBEdt.Left       := acds.FieldByName('left').AsInteger;
  meuDBEdt.Top        := acds.FieldByName('top').AsInteger;
  meuDBEdt.Width      := acds.FieldByName('Width').AsInteger;
  meuDBEdt.Height     := acds.FieldByName('height').AsInteger;
  meuDBEdt.DataField  := acds.FieldByName('data_field').AsString;
  meuDBEdt.DataSource := TDataSource(acds.FieldByName('data_source').AsInteger);
end;

procedure TForm1.generateLabel(aCds: TClientDataSet; aForm: TForm);
var
  meuLbl: TLabel;
begin
  meuLbl := TLabel.Create(aForm);
  meuLbl.Name     := aCds.FieldByName('ds_nome').AsString;
  meuLbl.Caption  := aCds.FieldByName('ds_caption').AsString;
  meuLbl.Parent   := buscaPai(aCds, Form2);
  meuLbl.Left     := acds.FieldByName('left').AsInteger;
  meuLbl.Top      := acds.FieldByName('top').AsInteger;
  meuLbl.Width    := acds.FieldByName('Width').AsInteger;
  meuLbl.Height   := acds.FieldByName('height').AsInteger;
end;

procedure TForm1.generatePanel(aCds: TClientDataSet; aForm: TForm);
var
  meuPn: TPanel;
begin
  meuPn := TPanel.Create(aForm);
  meuPn.Name     := aCds.FieldByName('ds_nome').AsString;
  meuPn.Caption  := aCds.FieldByName('ds_caption').AsString;
  meuPn.Parent   := buscaPai(aCds, Form2);
  meuPn.Left     := acds.FieldByName('left').AsInteger;
  meuPn.Top      := acds.FieldByName('top').AsInteger;
  meuPn.Width    := acds.FieldByName('Width').AsInteger;
  meuPn.Height   := acds.FieldByName('height').AsInteger;
  meuPn.Align    := alClient;
end;

procedure TForm1.cdsObjetosAfterPost(DataSet: TDataSet);
begin
  cdsObjetos.SaveToFile(dir_base + arquivo, dfBinary);
end;

procedure TForm1.criarObjeto(aClasse: String);
begin
  aClasse := AnsiUpperCase(aClasse);
  memoPrincipal.Lines.Add('                Ordem: ' + cdsObjetos.FieldByName('id_order').AsString);
  memoPrincipal.Lines.Add('Criando a classe ' + aClasse);
  if (aClasse = 'TPAGECONTROL') then
     generatePageControl(cdsObjetos, Form2)
  else
  if (aClasse = 'TTABSHEET') then
     generateTabSheet(cdsObjetos, Form2)
  else
    if (aClasse = 'TEDIT') then
     generateEdit(cdsObjetos, Form2)
  else
    if (aClasse = 'TLABEL') then
     generateLabel(cdsObjetos, Form2)
  else
    if (aClasse = 'TPANEL') then
     generatePanel(cdsObjetos, Form2)
  else
    if (aClasse = 'TDBEDIT') then
     generateDBEdit(cdsObjetos, Form2)
  else
    if (aClasse = 'TMEMO') then
     generateMemo(cdsObjetos, Form2)
  else
     ShowMessage('Classe não tratada: ' + aClasse);
end;

procedure TForm1.bCriarClick(Sender: TObject);
begin
  cdsObjetos.First;
  while (not cdsObjetos.eof) do
  begin
    criarObjeto(cdsObjetos.FieldByName('ds_class').AsString);
    cdsObjetos.Next;
  end;
end;

procedure TForm1.lerArquivo(Sender: TObject);
var
  script: TStrings;
  arquivo: TextFile;
  linha: String;
  nmarquivo, linhaMemo: String;
  i : integer;

begin
  script := TStringList.Create;

  //está sendo usado em vários lugares
  dir_base := ExtractFilePath(ParamStr(0));
  nmarquivo  := 'log.txt';

  AssignFile(arquivo,dir_base + nmarquivo);
  Reset(arquivo);

  cdsObjetos.First;
  while not eof (arquivo) do
  begin
    Readln(arquivo, linha);
    script.Delimiter := ';';
    script.DelimitedText := linha;

    if linha <> '' then
    begin
      cdsObjetos.Insert;
      cdsObjetos.FieldByName('id_order').AsInteger  := StrToInt(script[0]);
      cdsObjetos.FieldByName('ds_nome').AsString    := script[1];
      cdsObjetos.FieldByName('ds_class').AsString   := script[2];
      cdsObjetos.FieldByName('ds_parent').AsString  := script[3];
      cdsObjetos.FieldByName('left').AsInteger      := StrToInt(script[4]);
      cdsObjetos.FieldByName('height').AsInteger    := StrToInt(script[5]);
      cdsObjetos.FieldByName('top').AsInteger       := StrToInt(script[6]);
      cdsObjetos.FieldByName('width').AsInteger     := StrToInt(script[7]);
      cdsObjetos.FieldByName('ds_caption').AsString := script[8];
      cdsObjetos.FieldByName('data_source').AsString  := script[9];
      cdsObjetos.FieldByName('data_field').AsString   := script[10];
      cdsObjetos.Post;


      memoPrincipal.Lines.Add(cdsObjetos.FieldByName('id_order').AsString);
      memoPrincipal.Lines.Add(cdsObjetos.FieldByName('ds_nome').AsString);
      memoPrincipal.Lines.Add(cdsObjetos.FieldByName('ds_class').AsString);
    end;

    cdsObjetos.Next;
  end;

  CloseFile(arquivo);

 {
  //script.LoadFromFile(dir_base + arquivo);
  script.Delimiter := ';';
  script.DelimitedText := ('"id_order";"ds_nome";"ds_class";"ds_parent";"left";"left";"top";"width";"ds_caption";"data_source";"data_field"');
  memoPrincipal.Lines.AddStrings(script);
  }
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  dir_base := ExtractFilePath(ParamStr(0));
  arquivo  := 'Objetos.dat';


   {object cdsObjetosag_max: TAggregateField
    FieldName = 'ag_max'
    Active = True
    DisplayName = ''
    Expression = 'max(id_order)'
    end}

  //Fields
  cdsObjetos.FieldDefs.Add('id_order',ftInteger);
  cdsObjetos.FieldDefs.Add('ds_nome',ftString,60);
  cdsObjetos.FieldDefs.Add('ds_caption',ftString,60);
  cdsObjetos.FieldDefs.Add('ds_class',ftString,60);
  cdsObjetos.FieldDefs.Add('ds_parent',ftString,60);
  cdsObjetos.FieldDefs.Add('top',ftInteger);
  cdsObjetos.FieldDefs.Add('left',ftInteger);
  cdsObjetos.FieldDefs.Add('width',ftInteger);
  cdsObjetos.FieldDefs.Add('height',ftInteger);
  cdsObjetos.FieldDefs.Add('data_source',ftString,60);
  cdsObjetos.FieldDefs.Add('data_sourceParent',ftString,60);
  cdsObjetos.FieldDefs.Add('data_field',ftString,60);

  if FileExists(dir_base + arquivo) then
    cdsObjetos.LoadFromFile(dir_base + arquivo)
  else
  begin
    cdsObjetos.CreateDataSet;
    {
    //TPageControl
    cdsObjetos.Insert;
    cdsObjetos.FieldByName('id_order').AsInteger := 1;
    cdsObjetos.FieldByName('ds_nome').AsString := 'pg';
    cdsObjetos.FieldByName('ds_caption').AsString := 'AbaExemplo';
    cdsObjetos.FieldByName('ds_class').AsString := 'TPageControl';
    cdsObjetos.FieldByName('ds_parent').AsString := 'Panel1';
    cdsObjetos.FieldByName('top').AsInteger := 216;
    cdsObjetos.FieldByName('left').AsInteger := 144;
    cdsObjetos.FieldByName('width').AsInteger := 289;
    cdsObjetos.FieldByName('height').AsInteger := 193;
    cdsObjetos.Post;

    //TTabSheet
    cdsObjetos.Insert;
    cdsObjetos.FieldByName('id_order').AsInteger := 2;
    cdsObjetos.FieldByName('ds_nome').AsString := 'tsAux';
    cdsObjetos.FieldByName('ds_caption').AsString := 'PCExemplo';
    cdsObjetos.FieldByName('ds_class').AsString := 'TTabSheet';
    cdsObjetos.FieldByName('ds_parent').AsString := 'pg';
    cdsObjetos.FieldByName('top').AsInteger := 216;
    cdsObjetos.FieldByName('left').AsInteger := 144;
    cdsObjetos.FieldByName('width').AsInteger := 289;
    cdsObjetos.FieldByName('height').AsInteger := 193;
    cdsObjetos.Post;

    //TEdit
    cdsObjetos.Insert;
    cdsObjetos.FieldByName('id_order').AsInteger := 3;
    cdsObjetos.FieldByName('ds_nome').AsString := 'edtAux';
    cdsObjetos.FieldByName('ds_caption').AsString := 'EdtExemplo';
    cdsObjetos.FieldByName('ds_class').AsString := 'TEdit';
    cdsObjetos.FieldByName('ds_parent').AsString := 'tsAux';
    cdsObjetos.FieldByName('top').AsInteger := 10;
    cdsObjetos.FieldByName('left').AsInteger := 10;
    cdsObjetos.FieldByName('width').AsInteger := 60;
    cdsObjetos.FieldByName('height').AsInteger := 20;
    cdsObjetos.Post;

    //TLabel
    cdsObjetos.Insert;
    cdsObjetos.FieldByName('id_order').AsInteger := 4;
    cdsObjetos.FieldByName('ds_nome').AsString := 'lblAux';
    cdsObjetos.FieldByName('ds_caption').AsString := 'LblExemplo';
    cdsObjetos.FieldByName('ds_class').AsString := 'TLabel';
    cdsObjetos.FieldByName('ds_parent').AsString := 'tsAux';
    cdsObjetos.FieldByName('top').AsInteger := 10;
    cdsObjetos.FieldByName('left').AsInteger := 100;
    cdsObjetos.FieldByName('width').AsInteger := 31;
    cdsObjetos.FieldByName('height').AsInteger := 13;
    cdsObjetos.Post;

    //TGroupBox
    cdsObjetos.Insert;
    cdsObjetos.FieldByName('id_order').AsInteger := 5;
    cdsObjetos.FieldByName('ds_nome').AsString := 'gBox';
    //cdsObjetos.FieldByName('align').AsString := 'alTop';
    cdsObjetos.Post;

    //TPanel
    cdsObjetos.Insert;
    cdsObjetos.FieldByName('id_order').AsInteger := 6;
    cdsObjetos.FieldByName('ds_nome').AsString := 'Panel';
    //cdsObjetos.FieldByName('align').AsString := 'alClient';
    cdsObjetos.Post;}
  end;

  cdsObjetos.IndexFieldNames := 'id_order';
end;

end.
