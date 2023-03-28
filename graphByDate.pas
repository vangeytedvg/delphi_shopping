unit graphByDate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Data.DB,
  VclTee.TeEngine, VclTee.Series, Vcl.ExtCtrls, VclTee.TeeProcs, VclTee.Chart,
  VclTee.DBChart, Vcl.Menus;

type
  TfrmGraphByDate = class(TForm)
    chrtExpense: TDBChart;
    MainMenu1: TMainMenu;
    Graph1: TMenuItem;
    mnuGraphPrint: TMenuItem;
    Series1: TBarSeries;
    Exit1: TMenuItem;
    Refresh1: TMenuItem;
    procedure mnuGraphPrintClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGraphByDate: TfrmGraphByDate;

implementation

uses
  DataMod;

{$R *.dfm}

procedure TfrmGraphByDate.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmGraphByDate.mnuGraphPrintClick(Sender: TObject);
begin
  if MessageDlg('Would you like to print the graph?', mtConfirmation,
    [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    chrtExpense.Print;
  end;

end;

procedure TfrmGraphByDate.Refresh1Click(Sender: TObject);
begin
   DataModule1.SumbydateView.Active := False;
  DataModule1.SumbydateView.Active := True;
end;

end.
