unit graphPeriods;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Data.DB,
  VclTee.TeEngine, VclTee.Series, Vcl.ExtCtrls, VclTee.TeeProcs, VclTee.Chart,
  VclTee.DBChart, Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Printers;

type
  TFormPeriods = class(TForm)
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    Graph1: TMenuItem;
    Graph2: TMenuItem;
    Exit1: TMenuItem;
    Print1: TMenuItem;
    PrintDialog: TPrintDialog;
    procedure Graph2Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPeriods: TFormPeriods;

implementation

uses
  DataMod;

{$R *.dfm}

procedure TFormPeriods.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPeriods.Graph2Click(Sender: TObject);
begin
  DataModule1.PeriodQuery.Active := False;
  DataModule1.PeriodQuery.Active := True;
end;

procedure TFormPeriods.Print1Click(Sender: TObject);
// Print the contents of the grid (A4)
var
  sText: string;
  sReportHeader: string;
  image1: TBitmap;
  i: Integer;
  iTop: Integer;
begin
  if PrintDialog.Execute then
  begin

  end;

end;

end.