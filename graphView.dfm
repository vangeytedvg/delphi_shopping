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
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 738
    Height = 563
    Foot.Text.Strings = (
      'DenkaTech Expenses')
    ScrollMouseButton = mbLeft
    Title.Text.Strings = (
      'Expense by shop')
    Legend.Alignment = laBottom
    Legend.FontSeriesColor = True
    Panning.MouseWheel = pmwNone
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    Zoom.MouseButton = mbMiddle
    ZoomWheel = pmwNormal
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 29
    ExplicitTop = 8
    ExplicitWidth = 555
    ExplicitHeight = 415
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 15
    object Series1: TPieSeries
      Legend.Text = 'Shops'
      LegendTitle = 'Shops'
      Marks.Frame.Visible = False
      Marks.Callout.Length = 20
      DataSource = DataModule1.ExpensesTable
      XLabelsSource = 'SHOPID'
      XValues.Order = loAscending
      XValues.ValueSource = 'EXPENSE_ID'
      YValues.Name = 'Pie'
      YValues.Order = loNone
      YValues.ValueSource = 'AMOUNT'
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
      Bevel.Bright = 43
      Bevel.Percent = 90
      BevelPercent = 90
      EdgeStyle = edCurved
      ExplodeBiggest = 25
      OtherSlice.Legend.Visible = False
    end
  end
end
