object frmSearch: TfrmSearch
  Left = 0
  Top = 0
  Caption = 'Busca'
  ClientHeight = 296
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 236
    Width = 651
    Height = 41
    Align = alBottom
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = -6
    object btnConsultar: TSpeedButton
      Left = 8
      Top = 6
      Width = 98
      Height = 29
      Caption = 'Selecionar'
      Flat = True
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000D30E0000D30E00000001000000010000104A1000108C
        180039CE3900428C420042C6420042CE420042D642004AD64A005AD65A005ADE
        5A0063AD630063DE630073DE73006BE7730073E7730073DE7B0073E77B0084EF
        8C0094F79C00A5F7A500BDFFBD00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00151515151515
        1515151515151515151515151515151515151515151515151515151515151515
        1515151515151515151515151515151515151500000000151515151515151515
        15151515151515151515000102020A0315151515151515151515151515151515
        1501010202020A01151515151515151515151515151515151501020505020A01
        1515151515151515151515151515151501020C0B0807040A0115151515151515
        1515151515151503010C0C0C0C0B080201151515151515151515151515150301
        0C0F0C0C020C0C0C0201151515151515151515151501031212110C0201020C0C
        0C0115151515151515151515010C12121212020115010C0C0C0C011515151515
        151515150A0C12120C0103151503020F110C020315151515151515150A020C02
        011515151515010C12120C0A1515151515151515150A0A0A1515151515151501
        1212120C01151515151515151515151515151515151515150A1212120C031515
        15151515151515151515151515151515150A121211020A151515151515151515
        1515151515151515151502121312020A15151515151515151515151515151515
        15151502141412020A1515151515151515151515151515151515151502141412
        0A151515151515151515151515151515151515151502140C0A15151515151515
        1515151515151515151515151515020A15151515151515151515151515151515
        1515151515151515151515151515151515151515151515151515151515151515
        1515151515151515151515151515151515151515151515151515}
    end
  end
  object grdDados: TDBGrid
    Left = 0
    Top = 0
    Width = 651
    Height = 236
    Align = alClient
    Ctl3D = True
    DataSource = dtsBusca
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = grdDadosDblClick
    OnKeyPress = grdDadosKeyPress
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 277
    Width = 651
    Height = 19
    Panels = <>
  end
  object dtsBusca: TDataSource
    DataSet = cdsBusca
    Left = 232
    Top = 136
  end
  object cdsBusca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBusca'
    Left = 232
    Top = 96
  end
end
