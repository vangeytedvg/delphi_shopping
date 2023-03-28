program ShoppExp;

uses
  Vcl.Forms,
  frmMain in 'frmMain.pas' {Form9},
  DataMod in 'DataMod.pas' {DataModule1: TDataModule},
  frmShopEditor in 'frmShopEditor.pas' {FormShopEditor},
  Vcl.Themes,
  Vcl.Styles,
  graphView in 'graphView.pas' {frmExpenseGraph},
  graphByDate in 'graphByDate.pas' {frmGraphByDate},
  grapAvg in 'grapAvg.pas' {FormAVG},
  graphPeriods in 'graphPeriods.pas' {FormPeriods};

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
  Application.CreateForm(TfrmGraphByDate, frmGraphByDate);
  Application.CreateForm(TFormAVG, FormAVG);
  Application.CreateForm(TFormPeriods, FormPeriods);
  Application.Run;
end.
