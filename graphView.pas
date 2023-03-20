unit graphView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Data.DB,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart, Vcl.Menus;

type
  TfrmExpenseGraph = class(TForm)
    chrtExpense: TDBChart;
    MainMenu1: TMainMenu;
    Graph1: TMenuItem;
    mnuPrintGraph: TMenuItem;
    Series1: TPieSeries;
    procedure mnuPrintGraphClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExpenseGraph: TfrmExpenseGraph;

implementation
uses
  DataMod;

{$R *.dfm}

procedure TfrmExpenseGraph.mnuPrintGraphClick(Sender: TObject);
begin
  chrtExpense.Print;
end;

end.
