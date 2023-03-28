unit grapAvg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Data.DB,
  VclTee.TeEngine, VclTee.Series, Vcl.ExtCtrls, VclTee.TeeProcs, VclTee.Chart,
  VclTee.DBChart, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Menus;

type
  TFormAVG = class(TForm)
    chrtExpense: TDBChart;
    Series1: TPieSeries;
    Panel1: TPanel;
    Label1: TLabel;
    TrackBarRotation: TTrackBar;
    MainMenu1: TMainMenu;
    Graph1: TMenuItem;
    Graph2: TMenuItem;
    Exit1: TMenuItem;
    Refresh1: TMenuItem;
    procedure TrackBarRotationChange(Sender: TObject);
    procedure Graph2Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAVG: TFormAVG;

implementation

uses
  DataMod;

{$R *.dfm}

procedure TFormAVG.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAVG.Graph2Click(Sender: TObject);
begin
  if MessageDlg('Would you like to print the graph?', mtConfirmation,
    [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    chrtExpense.Print;
  end;
end;

procedure TFormAVG.Refresh1Click(Sender: TObject);
begin
    DataModule1.AVGByShop.Active := False;
  DataModule1.AVGByShop.Active := True;
end;

procedure TFormAVG.TrackBarRotationChange(Sender: TObject);
begin
  with chrtExpense.Series[0] as TPieSeries do
  begin
    RotationAngle := TrackBarRotation.Position;
  end;
end;

end.
