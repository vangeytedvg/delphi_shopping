object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Expenses Periods and amounts'
  ClientHeight = 445
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object chrtExpense: TDBChart
    Left = 0
    Top = 0
    Width = 643
    Height = 445
    Foot.Color = 9917212
    Foot.Font.Color = clBlack
    Foot.Font.Height = -9
    Foot.Text.Strings = (
      'by DenkaTech')
    LeftWall.Visible = False
    ScrollMouseButton = mbMiddle
    Title.Font.Height = -21
    Title.Text.Strings = (
      'Average Expenses by Shop')
    Chart3DPercent = 1
    LeftAxis.Ticks.Width = 0
    Panning.InsideBounds = True
    View3DOptions.Elevation = 315
    View3DOptions.HorizOffset = -14
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    Zoom.Animated = True
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -77
    ExplicitWidth = 720
    ExplicitHeight = 404
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      16
      15
      16)
    ColorPaletteIndex = 15
    object Series2: TLineSeries
      ColorEachPoint = True
      Marks.Transparent = True
      Marks.Visible = True
      Marks.Angle = 17
      Marks.Callout.ArrowHead = ahSolid
      Marks.Callout.Distance = 25
      DataSource = DataModule1.PeriodQuery
      SeriesColor = 16776176
      XLabelsSource = 'sum(amount)'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'sum(amount)'
    end
  end
end
