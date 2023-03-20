object frmExpenseGraph: TfrmExpenseGraph
  Left = 0
  Top = 0
  Caption = 'Expense Graph'
  ClientHeight = 563
  ClientWidth = 738
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
    Width = 738
    Height = 563
    Foot.Text.Strings = (
      'DenkaTech Expenses')
    ScrollMouseButton = mbLeft
    Title.Text.Strings = (
      'Shopping Expenses')
    Chart3DPercent = 78
    Legend.FontSeriesColor = True
    Panning.MouseWheel = pmwNone
    View3DOptions.Elevation = 346
    View3DOptions.HorizOffset = 14
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 83
    View3DOptions.Rotation = 334
    View3DOptions.VertOffset = 14
    View3DOptions.Zoom = 93
    Zoom.MouseButton = mbMiddle
    ZoomWheel = pmwNormal
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 29
    ExplicitTop = 8
    ExplicitWidth = 555
    ExplicitHeight = 415
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      28
      15
      28)
    ColorPaletteIndex = 21
    object Series1: TBarSeries
      Legend.Text = 'Shops'
      LegendTitle = 'Shops'
      BarPen.Color = 7028779
      ColorEachPoint = True
      ConePercent = 59
      Marks.Frame.Visible = False
      DataSource = DataModule1.ExpensesTable
      RoundSize = 21
      Transparency = 13
      XLabelsSource = 'SHOPID'
      BarRound = brBothEnds
      BarStyle = bsCone
      GradientRelative = True
      MultiBar = mbNone
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'EXPENSE_ID'
      YValues.Name = 'Bar'
      YValues.Order = loNone
      YValues.ValueSource = 'AMOUNT'
    end
  end
  object MainMenu1: TMainMenu
    Left = 104
    Top = 112
    object Graph1: TMenuItem
      Caption = '&Graph'
      object mnuPrintGraph: TMenuItem
        Caption = '&Print'
        OnClick = mnuPrintGraphClick
      end
    end
  end
end
