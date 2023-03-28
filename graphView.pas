unit graphView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Data.DB,
  VclTee.TeEngine, VclTee.Series, Vcl.ExtCtrls, VclTee.TeeProcs, VclTee.Chart,
  VclTee.DBChart, Vcl.Menus, Vcl.StdCtrls, ovcbase, ovcslide, Vcl.ActnMan,
  Vcl.ActnColorMaps, Vcl.ComCtrls;

type
  TfrmExpenseGraph = class(TForm)
    MainMenu1: TMainMenu;
    Graph1: TMenuItem;
    mnuPrintGraph: TMenuItem;
    chrtExpense: TDBChart;
    Series1: TPieSeries;
    mnuFileExit: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    TrackBarRotation: TTrackBar;
    N1: TMenuItem;
    mnuGraphRefresh: TMenuItem;
    procedure mnuPrintGraphClick(Sender: TObject);
    procedure mnuFileExitClick(Sender: TObject);
    procedure TrackBarRotationChange(Sender: TObject);
    procedure mnuGraphRefreshClick(Sender: TObject);
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

procedure TfrmExpenseGraph.mnuFileExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmExpenseGraph.mnuGraphRefreshClick(Sender: TObject);
begin
  DataModule1.SumbyshopView.Active := False;
  DataModule1.SumbyshopView.Active := True;
end;

procedure TfrmExpenseGraph.mnuPrintGraphClick(Sender: TObject);
begin
  if MessageDlg('Would you like to print the graph?', mtConfirmation,
    [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    chrtExpense.Print;
  end;

end;

procedure TfrmExpenseGraph.TrackBarRotationChange(Sender: TObject);
begin
  with chrtExpense.Series[0] as TPieSeries do
  begin
    RotationAngle := TrackBarRotation.Position;
  end;
end;

end.
