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
      'Shopping Expenses by Shop')
    Chart3DPercent = 78
    Legend.FontSeriesColor = True
    Panning.MouseWheel = pmwNone
    View3DOptions.Elevation = 315
    View3DOptions.HorizOffset = 14
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DOptions.VertOffset = 14
    View3DOptions.Zoom = 93
    Zoom.MouseButton = mbMiddle
    ZoomWheel = pmwNormal
    Align = alClient
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      28
      15
      28)
    ColorPaletteIndex = 21
    object Series1: TPieSeries
      Legend.Text = 'Shops'
      LegendTitle = 'Shops'
      Marks.Frame.Visible = False
      Marks.Callout.Length = 20
      DataSource = DataModule1.SumbyshopView
      XLabelsSource = 'SHOPID'
      XValues.Order = loAscending
      XValues.ValueSource = 'sum(amount)'
      YValues.Name = 'Pie'
      YValues.Order = loNone
      YValues.ValueSource = 'sum(amount)'
      Frame.InnerBrush.BackColor = clRed
      Frame.InnerBrush.Gradient.EndColor = clGray
      Frame.InnerBrush.Gradient.MidColor = clWhite
      Frame.InnerBrush.Gradient.StartColor = 4210752
      Frame.InnerBrush.Gradient.Visible = True
      Frame.MiddleBrush.BackColor = clYellow
      Frame.MiddleBrush.Gradient.EndColor = 8553090
      Frame.MiddleBrush.Gradient.MidColor = clWhite
      Frame.MiddleBrush.Gradient.StartColor = clGray
      Frame.MiddleBrush.Gradient.Visible = True
      Frame.OuterBrush.BackColor = clGreen
      Frame.OuterBrush.Gradient.EndColor = 4210752
      Frame.OuterBrush.Gradient.MidColor = clWhite
      Frame.OuterBrush.Gradient.StartColor = clSilver
      Frame.OuterBrush.Gradient.Visible = True
      Frame.Width = 4
      OtherSlice.Legend.Visible = False
      PiePen.Color = 7028779
      Transparency = 13
    end
  end
  object MainMenu1: TMainMenu
    Left = 48
    Top = 32
    object Graph1: TMenuItem
      Caption = '&Graph'
      object mnuPrintGraph: TMenuItem
        Caption = '&Print'
        OnClick = mnuPrintGraphClick
      end
    end
  end
end
