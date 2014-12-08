object OrgPoliceForm: TOrgPoliceForm
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'OrgPoliceForm'
  ClientHeight = 403
  ClientWidth = 566
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
    Width = 566
    Height = 403
    ActivePage = TabSheet1
    Align = alClient
    UseColoredTabs = True
    TabIndex = 0
    TabOrder = 0
    TabStyle = tsDoubleSlant
    ExplicitHeight = 374
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = #35686#21592#20449#24687
      ExplicitHeight = 351
      object rzpnl1: TRzPanel
        Left = 0
        Top = 0
        Width = 562
        Height = 380
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 351
      end
    end
    object TabSheet2: TRzTabSheet
      Color = clMedGray
      Caption = #32452#32455#26426#26500
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 655
      ExplicitHeight = 410
      object rzpnl2: TRzPanel
        Left = 0
        Top = 0
        Width = 562
        Height = 351
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 655
        ExplicitHeight = 410
      end
    end
  end
end
