object Form11: TForm11
  Left = 0
  Top = 0
  Caption = #1069#1082#1079#1072#1084#1077#1085#1099
  ClientHeight = 298
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 717
    Height = 298
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
        FieldName = 'date'
        Title.Caption = #1044#1072#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'student1'
        Title.Caption = #1060#1048#1054' '#1089#1090#1091#1076#1077#1085#1090#1072
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'car'
        Title.Caption = #1052#1072#1096#1080#1085#1072
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'instryk'
        Title.Caption = #1060#1048#1054' '#1080#1085#1089#1090#1088#1091#1082#1090#1086#1088
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'otdelgibdd'
        Title.Caption = #1054#1090#1076#1077#1083' '#1043#1048#1041#1044#1044
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'result'
        Title.Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
        Width = 120
        Visible = True
      end>
  end
  object MainMenu1: TMainMenu
    Left = 216
    Top = 160
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
    Left = 288
    Top = 160
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ekzamen order by cod')
    Left = 360
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 424
    Top = 160
  end
end
