object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 216
  Width = 442
  object ShopperConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Shopper')
    Connected = True
    LoginPrompt = False
    Left = 44
    Top = 26
  end
  object ShopsTable: TFDQuery
    Active = True
    Connection = ShopperConnection
    SQL.Strings = (
      'SELECT * FROM shops ORDER BY SHOPID')
    Left = 146
    Top = 23
    object ShopsTableSHOPID: TWideStringField
      FieldName = 'SHOPID'
      Origin = 'SHOPID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object ShopsTableSHOPNAME: TWideStringField
      FieldName = 'SHOPNAME'
      Origin = 'SHOPNAME'
      Required = True
      Size = 50
    end
    object ShopsTableLOCATION: TWideStringField
      FieldName = 'LOCATION'
      Origin = 'LOCATION'
      Size = 50
    end
  end
  object DS_Shops: TDataSource
    DataSet = ShopsTable
    Left = 144
    Top = 80
  end
  object ExpensesTable: TFDQuery
    Active = True
    Connection = ShopperConnection
    SQL.Strings = (
      'select * from expenses')
    Left = 225
    Top = 24
    object ExpensesTableEXPENSE_ID: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'EXPENSE_ID'
      Origin = 'EXPENSE_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ExpensesTableAMOUNT: TBCDField
      DisplayWidth = 20
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      DisplayFormat = '#.00'
      currency = True
      Precision = 5
      Size = 2
    end
    object ExpensesTableSHOPID: TWideStringField
      DisplayWidth = 6
      FieldName = 'SHOPID'
      Origin = 'SHOPID'
      Size = 5
    end
    object ExpensesTableEXPDATE: TIntegerField
      FieldName = 'EXPDATE'
      Origin = 'EXPDATE'
    end
  end
  object DS_Expense: TDataSource
    DataSet = ExpensesTable
    Left = 224
    Top = 80
  end
  object SumbyshopView: TFDQuery
    Active = True
    Connection = ShopperConnection
    SQL.Strings = (
      'SELECT * FROM sumbyshop')
    Left = 339
    Top = 29
  end
  object SumbydateView: TFDQuery
    Active = True
    Connection = ShopperConnection
    SQL.Strings = (
      'SELECT * FROM sumbydate')
    Left = 356
    Top = 84
  end
end
