object Form7: TForm7
  Left = 0
  Top = 0
  Caption = #1059#1095#1080#1090#1077#1083#1103' '
  ClientHeight = 299
  ClientWidth = 635
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
    Width = 635
    Height = 299
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'surname'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = #1048#1084#1103
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'middlename'
        Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idpasss'
        Title.Caption = #8470' '#1087#1072#1089#1087#1086#1088#1090#1072
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'colproect'
        Title.Caption = #1050#1086#1083#1074#1086'. '#1079#1072#1074#1077#1088#1096#1086#1085#1099#1093' '#1101#1082#1079#1072#1084#1077#1085#1086#1074
        Width = 170
        Visible = True
      end>
  end
  object MainMenu1: TMainMenu
    Left = 328
    Top = 128
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
    Left = 272
    Top = 216
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from techer order by cod')
    Left = 208
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 424
    Top = 168
  end
end
