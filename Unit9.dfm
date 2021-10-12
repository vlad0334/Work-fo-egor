object Form9: TForm9
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1084#1072#1096#1080#1085
  ClientHeight = 262
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 413
    Height = 262
    Align = alClient
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nomer'
        Title.Caption = #1053#1086#1084#1077#1088
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'marka'
        Title.Caption = #1052#1072#1088#1082#1072
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Title.Caption = #1057#1090#1072#1090#1091#1089
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'colvoproec'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1101#1082#1079#1072#1084#1077#1085#1086#1074
        Width = 120
        Visible = True
      end>
  end
  object MainMenu1: TMainMenu
    Left = 120
    Top = 48
    object N1: TMenuItem
      Caption = #1044#1072#1085#1085#1099#1077
      object N2: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        OnClick = N4Click
      end
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\snickers\D' +
      'esktop\Database11.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 120
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from car order by nomer')
    Left = 120
    Top = 120
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = ADOQuery1
    Left = 184
    Top = 120
  end
end
