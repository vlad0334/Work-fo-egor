object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1059#1095#1077#1085#1080#1082#1080
  ClientHeight = 401
  ClientWidth = 729
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
  object Label1: TLabel
    Left = 8
    Top = 221
    Width = 151
    Height = 13
    Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 729
    Height = 191
    Align = alTop
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
        FieldName = 'surname'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = #1048#1084#1103
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'middlename'
        Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'birthday'
        Title.Caption = #1044#1077#1085#1100' '#1088#1086#1078#1076#1077#1085#1080#1103
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adres'
        Title.Caption = #1052#1077#1089#1090#1086' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'phone'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Width = 110
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 240
    Width = 729
    Height = 161
    Align = alBottom
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'status'
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'date'
        Title.Caption = #1044#1072#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dop'
        Title.Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
        Width = 200
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 592
    Top = 217
    Width = 129
    Height = 21
    DataField = 'Id'
    DataSource = DataSource1
    TabOrder = 2
    Visible = False
    OnChange = DBEdit1Change
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 729
    Height = 25
    Align = alTop
    TabOrder = 3
    ExplicitLeft = -8
    object Label2: TLabel
      Left = 8
      Top = 6
      Width = 77
      Height = 13
      Caption = #1041#1099#1089#1090#1088#1099#1081' '#1087#1086#1080#1089#1082
    end
  end
  object Edit1: TEdit
    Left = 93
    Top = 2
    Width = 197
    Height = 21
    TabOrder = 4
    OnChange = Edit1Change
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\snickers\D' +
      'esktop\Database11.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 320
    Top = 176
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from students order by id')
    Left = 392
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 464
    Top = 144
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from info order by id')
    Left = 392
    Top = 192
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 464
    Top = 192
  end
  object MainMenu1: TMainMenu
    Left = 528
    Top = 168
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
    object N5: TMenuItem
      Caption = #1044#1086#1087' '#1076#1072#1085#1085#1099#1077
      object N6: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        OnClick = N8Click
      end
    end
  end
end
