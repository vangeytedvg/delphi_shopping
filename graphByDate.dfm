object frmGraphByDate: TfrmGraphByDate
  Left = 0
  Top = 0
  Caption = 'frmGraphByDate'
  ClientHeight = 520
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object chrtExpense: TDBChart
    Left = 0
    Top = 0
    Width = 695
    Height = 520
    Title.Text.Strings = (
      'Expenses')
    Chart3DPercent = 43
    Legend.Visible = False
    View3DOptions.Zoom = 83
    Align = alClient
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      BarBrush.BackColor = clDefault
      BarPen.Color = 10708548
      ColorEachPoint = True
      DataSource = DataModule1.FDQuery1
      XLabelsSource = 'ed'
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'EXPENSE_ID'
      YValues.Name = 'Bar'
      YValues.Order = loNone
      YValues.ValueSource = 'sum(AMOUNT)'
    end
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 32
    object Graph1: TMenuItem
      Caption = 'Graph'
      object Refresh1: TMenuItem
        Caption = '&Refresh'
        OnClick = Refresh1Click
      end
      object mnuGraphPrint: TMenuItem
        Caption = '&Print'
        OnClick = mnuGraphPrintClick
      end
      object Exit1: TMenuItem
        Caption = 'E&xit'
        OnClick = Exit1Click
      end
    end
  end
end
