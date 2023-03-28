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
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object chrtExpense: TDBChart
    Left = 0
    Top = 0
    Width = 738
    Height = 520
    Foot.Color = 9917212
    Foot.Font.Color = clBlack
    Foot.Font.Height = -9
    Foot.Text.Strings = (
      'by DenkaTech')
    ScrollMouseButton = mbMiddle
    Title.Font.Height = -21
    Title.Text.Strings = (
      'Expenses by Shop')
    Chart3DPercent = 11
    ClipPoints = False
    Panning.InsideBounds = True
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    Align = alClient
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      16
      15
      16)
    ColorPaletteIndex = 15
    object Series1: TPieSeries
      DataSource = DataModule1.SumbyshopView
      SeriesColor = 16776176
      XLabelsSource = 'SHOPNAME'
      XValues.Order = loAscending
      YValues.Name = 'Pie'
      YValues.Order = loNone
      YValues.ValueSource = 'sum(AMOUNT)'
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
      Bevel.Bright = 58
      Bevel.Percent = 35
      BevelPercent = 35
      Dark3D = False
      DarkPen = 220
      EdgeStyle = edCurved
      ExplodeBiggest = 25
      OtherSlice.Legend.Visible = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 520
    Width = 738
    Height = 43
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 736
      Height = 13
      Align = alTop
      Caption = 'Rotation'
      ExplicitLeft = 0
      ExplicitTop = 6
      ExplicitWidth = 45
    end
    object TrackBarRotation: TTrackBar
      Left = 1
      Top = 14
      Width = 736
      Height = 28
      Align = alClient
      Max = 360
      TabOrder = 0
      TickMarks = tmTopLeft
      OnChange = TrackBarRotationChange
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
      object mnuGraphRefresh: TMenuItem
        Caption = '&Refresh'
        OnClick = mnuGraphRefreshClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnuFileExit: TMenuItem
        Caption = 'E&xit'
        OnClick = mnuFileExitClick
      end
    end
  end
end
