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
    lblClasse: TLabel;
    lblDsnome: TLabel;
    dbedtDsnome: TDBEdit;
    lblDscaption: TLabel;
    dbedtDsCaption: TDBEdit;
    dbcbDsClasse: TDBComboBox;
    lblDataField: TLabel;
    dbedtDataField: TDBEdit;
    gbPosicao: TGroupBox;
    lblTop: TLabel;
    dbedtTop: TDBEdit;
    dbedtLeft: TDBEdit;
    lblLeft: TLabel;
    dbedtWidth: TDBEdit;
    lblWidth: TLabel;
    lblHeight: TLabel;
    dbedtHeight: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    max_id: integer;
    procedure carregaListaClasseCB;
    procedure carregaDataField;
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

procedure TFCadastro.carregaDataField;
begin
{
  cdsObjetos.FieldDefs.Add('ds_parent',ftString,60);
  cdsObjetos.FieldDefs.Add('data_source',ftString,60);
  cdsObjetos.FieldDefs.Add('data_sourceParent',ftString,60);
  cdsObjetos.FieldDefs.Add('data_field',ftString,60);
}

  dbedtDsnome.DataField := 'ds_nome';
  dbedtDsCaption.DataField := 'ds_caption';
  dbedtTop.DataField := 'top';
  dbedtLeft.DataField := 'left';
  dbedtWidth.DataField := 'width';
  dbedtHeight.DataField := 'height';
  dbcbDsClasse.DataField := 'ds_class';
  dbedtDataField.DataField := 'data_field';
end;

procedure TFCadastro.FormCreate(Sender: TObject);
begin
  Form1.cdsObjetos.Last;
  max_id := Form1.cdsObjetos.FieldByName('id_order').AsInteger + 1;

  carregaListaClasseCB;
  carregaDataField;
end;

end.
