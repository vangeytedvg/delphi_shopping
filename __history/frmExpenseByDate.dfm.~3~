inherited frmExpensesByDate: TfrmExpensesByDate
  Caption = 'frmExpensesByDate'
  PixelsPerInch = 96
  TextHeight = 13
  inherited chrtExpense: TDBChart
    Title.Text.Strings = (
      'Shopping Expenses by Date')
    PrintMargins = (
      15
      28
      15
      28)
    inherited Series1: TPieSeries
      DataSource = DataModule1.SumbydateView
      XLabelsSource = 'DATEEXPENSE'
      XValues.ValueSource = ''
      YValues.ValueSource = 'AMOUNT'
    end
  end
end
