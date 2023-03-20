unit DataMod;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Dialogs;

type
  TDataModule1 = class(TDataModule)
    ShopperConnection: TFDConnection;
    ShopsTable: TFDQuery;
    ShopsTableSHOPID: TWideStringField;
    ShopsTableSHOPNAME: TWideStringField;
    ShopsTableLOCATION: TWideStringField;
    DS_Shops: TDataSource;
    ExpensesTable: TFDQuery;
    DS_Expense: TDataSource;
    ExpensesTableEXPENSE_ID: TFDAutoIncField;
    ExpensesTableAMOUNT: TBCDField;
    ExpensesTableDATEEXPENSE: TWideStringField;
    ExpensesTableSHOPID: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  ShopperConnection.Connected := true;
  ShopsTable.Active := true;
  ExpensesTable.Active := true;
end;

end.
