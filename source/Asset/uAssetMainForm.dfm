object AssetMainForm: TAssetMainForm
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'AssetMainForm'
  ClientHeight = 433
  ClientWidth = 659
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
    Width = 659
    Height = 433
    ActivePage = TabSheet2
    Align = alClient
    UseColoredTabs = True
    TabIndex = 1
    TabOrder = 0
    TabStyle = tsDoubleSlant
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = #24050#20998#37197#36164#20135
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object rzpnl1: TRzPanel
        Left = 0
        Top = 0
        Width = 655
        Height = 410
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet2: TRzTabSheet
      Color = clMedGray
      Caption = #26410#20998#37197#36164#20135
      object rzpnl2: TRzPanel
        Left = 0
        Top = 0
        Width = 655
        Height = 410
        Align = alClient
        TabOrder = 0
      end
    end
  end
end
