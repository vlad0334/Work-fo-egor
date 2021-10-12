object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 'Form12'
  ClientHeight = 236
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
  end
  object Label2: TLabel
    Left = 24
    Top = 43
    Width = 81
    Height = 13
    Caption = #1060#1048#1054' '#1091#1095#1072#1097#1077#1075#1086#1089#1103
  end
  object Label3: TLabel
    Left = 24
    Top = 70
    Width = 40
    Height = 13
    Caption = #1052#1072#1096#1080#1085#1072
  end
  object Label4: TLabel
    Left = 24
    Top = 97
    Width = 91
    Height = 13
    Caption = #1060#1048#1054' '#1080#1085#1089#1090#1088#1091#1082#1090#1086#1088#1072
  end
  object Label5: TLabel
    Left = 24
    Top = 124
    Width = 95
    Height = 13
    Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077' '#1043#1048#1041#1044#1044
  end
  object Label6: TLabel
    Left = 24
    Top = 151
    Width = 53
    Height = 13
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
  end
  object ComboBox1: TComboBox
    Left = 128
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 128
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 128
    Top = 94
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 128
    Top = 121
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 128
    Top = 148
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object DateTimePicker1: TDateTimePicker
    Left = 128
    Top = 13
    Width = 121
    Height = 21
    Date = 44482.184911226850000000
    Time = 44482.184911226850000000
    TabOrder = 5
  end
  object Button1: TButton
    Left = 160
    Top = 192
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 192
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 7
    OnClick = Button2Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\snickers\D' +
      'esktop\Database11.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 65520
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ekzamen order by cod')
    Left = 136
    Top = 65520
  end
end
