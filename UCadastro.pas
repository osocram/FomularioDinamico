unit UCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask;


type
  TFCadastro = class(TForm)
    DBNavigator1: TDBNavigator;
    dsCadastro: TDataSource;
    DBGrid1: TDBGrid;
    gbPosicao: TGroupBox;
    lblTop: TLabel;
    dbedtTop: TDBEdit;
    dbedtLeft: TDBEdit;
    lblLeft: TLabel;
    dbedtWidth: TDBEdit;
    lblWidth: TLabel;
    lblHeight: TLabel;
    dbedtHeight: TDBEdit;
    GroupBox1: TGroupBox;
    lblClasse: TLabel;
    dbcbDsClasse: TDBComboBox;
    lblDsnome: TLabel;
    dbedtDsnome: TDBEdit;
    lblDscaption: TLabel;
    dbedtDsCaption: TDBEdit;
    lblDataField: TLabel;
    dbedtNomeBd: TDBEdit;
    lblPai: TLabel;
    dbcbPai: TDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure dbcbDsClasseChange(Sender: TObject);
  private
    max_id: integer;
    procedure carregaCadastroRapido;
    procedure carregaListaClasseCB;
    procedure carregaDataField;
    procedure BuscarPaiCadastrado(aCds: TClientDataSet;aItems: TSTrings);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastro: TFCadastro;

implementation

{$R *.dfm}

uses UPrincipal;

procedure TFCadastro.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = nbInsert then
  begin
    Form1.cdsObjetos.FieldByName('id_order').AsInteger := max_id;
    max_id := Form1.cdsObjetos.FieldByName('id_order').AsInteger + 1;
    BuscarPaiCadastrado(form1.cdsObjetos,dbcbPai.Items);
  end;
end;

{
procedure TFCadastro.desabilitaCampos(aAtivo: Boolean);
begin
  dbedtDsnome.Enabled    := aAtivo;
  dbedtDsCaption.Enabled := aAtivo;
  dbedtTop.Enabled       := aAtivo;
  dbedtLeft.Enabled      := aAtivo;
  dbedtWidth.Enabled     := aAtivo;
  dbedtHeight.Enabled    := aAtivo;
  dbcbDsClasse.Enabled   := aAtivo;
  dbedtNomeBd.Enabled    := aAtivo;
  DBComboBox1.Enabled    := aAtivo;
end;
}

procedure TFCadastro.carregaCadastroRapido;
begin
  case dbcbDsClasse.ItemIndex of

    0 : begin //TEdit
          dsCadastro.DataSet.FieldByName('top').AsInteger := 10;
          dsCadastro.DataSet.FieldByName('left').AsInteger := 10;
          dsCadastro.DataSet.FieldByName('width').AsInteger := 60;
          dsCadastro.DataSet.FieldByName('height').AsInteger := 21;
          dsCadastro.DataSet.FieldByName('ds_nome').AsString := 'dbedt';
          dsCadastro.DataSet.FieldByName('data_field').AsString := 'ds_';
          dbedtDsCaption.Clear;
          dbedtDsCaption.Enabled := false;
        end;

    1 : begin //TPageControl
          dsCadastro.DataSet.FieldByName('top').AsInteger := 20;
          dsCadastro.DataSet.FieldByName('left').AsInteger := 20;
          dsCadastro.DataSet.FieldByName('width').AsInteger := 100;
          dsCadastro.DataSet.FieldByName('height').AsInteger := 50;
          dsCadastro.DataSet.FieldByName('ds_nome').AsString := 'pg';
          dsCadastro.DataSet.FieldByName('data_field').AsString := 'pg_';
          dbedtDsCaption.Clear;
          dbedtDsCaption.Enabled := false;
        end;

    2 : begin //TTabSheet
          dsCadastro.DataSet.FieldByName('top').AsInteger := 30;
          dsCadastro.DataSet.FieldByName('left').AsInteger := 30;
          dsCadastro.DataSet.FieldByName('width').AsInteger := 80;
          dsCadastro.DataSet.FieldByName('height').AsInteger := 40;
          dsCadastro.DataSet.FieldByName('ds_nome').AsString := 'ts';
          dsCadastro.DataSet.FieldByName('data_field').AsString := 'ts_';
          dbedtDsCaption.Enabled := true;
          dsCadastro.DataSet.FieldByName('ds_caption').AsString := 'Aba 1';
        end;

    3 : begin //TLabel
          dsCadastro.DataSet.FieldByName('top').AsInteger := 15;
          dsCadastro.DataSet.FieldByName('left').AsInteger := 10;
          dsCadastro.DataSet.FieldByName('width').AsInteger := 30;
          dsCadastro.DataSet.FieldByName('height').AsInteger := 26;
          dsCadastro.DataSet.FieldByName('ds_nome').AsString := 'lbl';
          dsCadastro.DataSet.FieldByName('data_field').AsString := 'lbl_';
          dbedtDsCaption.Enabled := true;
          dsCadastro.DataSet.FieldByName('ds_caption').AsString := 'Descrição';
        end;
  end;
end;

procedure TFCadastro.carregaListaClasseCB;
begin
  dbcbDsClasse.Clear;
  dbcbDsClasse.Items.Add('TEdit');
  dbcbDsClasse.Items.Add('TPageControl');
  dbcbDsClasse.Items.Add('TTabSheet');
  dbcbDsClasse.Items.Add('TLabel');
end;

procedure TFCadastro.dbcbDsClasseChange(Sender: TObject);
begin
  carregaCadastroRapido;
end;

procedure TFCadastro.BuscarPaiCadastrado(aCds: TClientDataSet;aItems: TSTrings);
var cdsClone:TclientDataSet;
begin
  cdsClone := TClientDataSet.Create(nil);
  try
    cdsClone.CloneCursor(aCds,false);
    aItems.Clear;
    cdsclone.First;
    while not cdsClone.Eof do
    begin
      if cdsClone.FieldByName('ds_nome').AsString <> '' then
        aItems.Add(cdsClone.FieldByName('ds_nome').AsString);
      cdsClone.Next;
    end;

  finally
    FreeAndNil(cdsclone);
  end;
end;

procedure TFCadastro.carregaDataField;
begin
{
  cdsObjetos.FieldDefs.Add('ds_parent',ftString,60);
  cdsObjetos.FieldDefs.Add('data_source',ftString,60);
  cdsObjetos.FieldDefs.Add('data_sourceParent',ftString,60);
  cdsObjetos.FieldDefs.Add('data_field',ftString,60);
}
  dbedtDsnome.DataField    := 'ds_nome';
  dbedtDsCaption.DataField := 'ds_caption';
  dbedtTop.DataField       := 'top';
  dbedtLeft.DataField      := 'left';
  dbedtWidth.DataField     := 'width';
  dbedtHeight.DataField    := 'height';
  dbcbDsClasse.DataField   := 'ds_class';
  dbedtNomeBd.DataField    := 'data_field';
  dbcbPai.DataField    := 'ds_parent';
end;

procedure TFCadastro.FormCreate(Sender: TObject);
begin
  if (not Form1.cdsObjetos.IsEmpty) then
  begin
    Form1.cdsObjetos.Last;
    max_id := Form1.cdsObjetos.FieldByName('id_order').AsInteger + 1;
  end
  else
    max_id := 1;

  carregaListaClasseCB;
  carregaDataField;
  BuscarPaiCadastrado(form1.cdsObjetos,dbcbPai.Items);
end;

end.
