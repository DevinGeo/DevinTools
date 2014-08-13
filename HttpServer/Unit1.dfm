object Form1: TForm1
  Left = 211
  Top = 115
  Width = 654
  Height = 451
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 498
    Top = 27
    Width = 10
    Height = 13
    Caption = 'IP'
  end
  object Label2: TLabel
    Left = 496
    Top = 56
    Width = 19
    Height = 13
    Caption = 'Port'
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 489
    Height = 417
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImeName = 'Chinese (Simplified) - Microsoft Pinyin IME 3.0'
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
  object Edit1: TEdit
    Left = 520
    Top = 24
    Width = 121
    Height = 21
    ImeName = 'Chinese (Simplified) - Microsoft Pinyin IME 3.0'
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 520
    Top = 54
    Width = 121
    Height = 21
    ImeName = 'Chinese (Simplified) - Microsoft Pinyin IME 3.0'
    TabOrder = 2
    Text = '80'
  end
  object Btn_Start: TBitBtn
    Left = 512
    Top = 112
    Width = 75
    Height = 25
    Caption = 'START'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Btn_StartClick
  end
  object BitBtn1: TBitBtn
    Left = 512
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Clear log'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object CheckBox1: TCheckBox
    Left = 520
    Top = 83
    Width = 97
    Height = 17
    Caption = 'NoResponse'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object IdHTTPServer1: TIdHTTPServer
    Bindings = <>
    OnCommandGet = IdHTTPServer1CommandGet
    Left = 144
    Top = 16
  end
  object IdIPWatch1: TIdIPWatch
    Active = False
    HistoryFilename = 'iphist.dat'
    Left = 504
    Top = 184
  end
  object IdHTTP1: TIdHTTP
    AuthRetries = 0
    AuthProxyRetries = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentRangeInstanceLength = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 296
    Top = 112
  end
end
