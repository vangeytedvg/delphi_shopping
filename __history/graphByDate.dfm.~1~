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
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 695
    Height = 520
    Title.Text.Strings = (
      'TDBChart')
    Chart3DPercent = 43
    Legend.Visible = False
    View3DOptions.Zoom = 83
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 16
    ExplicitTop = 32
    ExplicitWidth = 641
    ExplicitHeight = 433
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      DataSource = DataModule1.SumbydateView
      XLabelsSource = 'DATEEXPENSE'
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'AMOUNT'
      YValues.Name = 'Bar'
      YValues.Order = loNone
      YValues.ValueSource = 'AMOUNT'
    end
  end
end
