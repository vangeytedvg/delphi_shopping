unit graphByDate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Data.DB,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart, Vcl.Menus;

type
  TfrmGraphByDate = class(TForm)
    chrtExpense: TDBChart;
    Series1: TBarSeries;
    MainMenu1: TMainMenu;
    Graph1: TMenuItem;
    mnuGraphPrint: TMenuItem;
    procedure mnuGraphPrintClick(Sender: TObject);
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

procedure TfrmGraphByDate.mnuGraphPrintClick(Sender: TObject);
begin
  chrtExpense.Print;
end;

end.
