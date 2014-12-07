object CompareDeptAndPersonForm: TCompareDeptAndPersonForm
  Left = 0
  Top = 0
  Caption = 'CompareDeptAndPersonForm'
  ClientHeight = 387
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 619
    Height = 387
    ActivePage = TabSheet2
    Align = alClient
    UseColoredTabs = True
    TabIndex = 1
    TabOrder = 0
    TabStyle = tsDoubleSlant
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = #21333#20301#20449#24687
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object rzpnl1: TRzPanel
        Left = 0
        Top = 0
        Width = 615
        Height = 364
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet2: TRzTabSheet
      Color = clMedGray
      Caption = #20154#21592#20449#24687
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object rzpnl2: TRzPanel
        Left = 0
        Top = 0
        Width = 615
        Height = 364
        Align = alClient
        TabOrder = 0
      end
    end
  end
end
