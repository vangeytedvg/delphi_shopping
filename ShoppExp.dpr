program ShoppExp;

uses
  Vcl.Forms,
  frmMain in 'frmMain.pas' {Form9},
  DataMod in 'DataMod.pas' {DataModule1: TDataModule},
  frmShopEditor in 'frmShopEditor.pas' {FormShopEditor},
  Vcl.Themes,
  Vcl.Styles,
  graphView in 'graphView.pas' {frmExpenseGraph};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  // Needed to load the datamodule first!
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TFormShopEditor, FormShopEditor);
  Application.CreateForm(TfrmExpenseGraph, frmExpenseGraph);
  Application.Run;
end.
