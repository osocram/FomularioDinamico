unit uGenerateObjects;

interface

  uses
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

  Type
    TGenerateObjects = class

    private
    { Private declarations }
    public
      procedure generateEdit(parent: TWinControl);
      procedure generatePageControl(parent: TWinControl);
      procedure generateTabSheet(aParent: TWinControl;aPageControl: TPageControl);
end;

implementation

procedure TGenerateObjects.generateEdit(parent: TWinControl);
var
  meuEdit: TEdit;
begin
  meuEdit := TEdit.Create(Application);
  meuEdit.Name     := 'edit1';
  meuEdit.Parent   := parent;
end;

procedure TGenerateObjects.generatePageControl(parent: TWinControl);
var
  meuPc: TPageControl;
begin
  meuPc := TPageControl.Create(Application);
  meuPc.Parent   := parent;
  meuPc.Name     := 'pageControl1';
  meuPc.Left     := 144;
  meuPc.Top      := 200;
  meuPc.Width    := 321;
  meuPc.Height   := 209;
end;

procedure TGenerateObjects.generateTabSheet(aParent: TWinControl;aPageControl: TPageControl);
var
  meuTs: TTabSheet;
begin
  meuTs := TTabSheet.Create(Application);
  meuTs.Parent := aParent;
  meuTs.PageControl := aPageControl;
  meuTs.Name   := 'tabSheet1';
end;

end.
