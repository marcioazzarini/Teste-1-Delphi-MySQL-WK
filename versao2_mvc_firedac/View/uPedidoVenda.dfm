object frmPedidoVenda: TfrmPedidoVenda
  Left = 0
  Top = 0
  Caption = 'Pedido de Venda - Marcio Azzarini v2 - Firedac'
  ClientHeight = 494
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 129
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label6: TLabel
      Left = 27
      Top = 7
      Width = 69
      Height = 13
      Caption = 'Num. Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnBuscaPedido: TSpeedButton
      Left = 106
      Top = 13
      Width = 31
      Height = 29
      Flat = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000620B0000620B00000000000000000000FF00FFFF00FF
        636B73636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF3973A52173B51B5A8F636B73FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF3973A539A5FF218CEF2173B51B5A8F636B73FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4AB5FF5ABDFF42A5FF218CEF2173
        B51B5A8F636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF52BDFF
        5ABDFF42A5FF218CEF2173B51B5A8F636B73FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF31A5FF52BDFF5ABDFF42A5FF218CEF2173B51B5A8F636B73FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF52BDFF5ABDFF42A5FF218CEF21
        73B51B5A8F636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF52BD
        FF5ABDFF42A5FF218CEF4A4239636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF31A5FF52BDFF5ABDFFA59C8C8C8C8C4A4239FF00FFFF00FFC69C
        94B58C84CEA59CD6B5A5D6ADA5CE9C9CC69494FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF31A5FFAFAFAFA59C8C6B6B6B
        846B6BAD8C84E7D6BDF4EABBFAEEBEFDF1C1FFF3C2FFF4C4EFDEC6CEA59CFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFC3C3C34A4239CEA594F0E5B8F9ECBDFCF5DFFCF5DFFCF5DFFCF5DFFCF5DF
        FCF5DFFFF4C6D6B5A5D6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFC6ADADCEA594FFEFBDF8ECBCFCF5DFFFF6C4FFF7C6FF
        F8C8FFF9C8FFFCC9FFFAC8FCF5DFFFF4C3C6A5A5FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8C8CEFDEB5F3E7B8FEF0C0FFF2
        C2FFF3C3FFF4C3FFF5C4FFF7C5FFF8C6FFFBC8FFFBC8FCF5DFF7EFDED6ADA5FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD6B5A5E8DDB1
        F8EABCFDEFC0FFF0C1FFF1C1FFF2C2FFF3C3FFF5C4FFF6C5FFF8C6FFFAC7FFFB
        C8FFF6C6BDA594FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD6
        ADA5E7CEADECE0B4FAECBDFCEDBEFFF1C1FFF1C1FFF1C1FFF1C1FFF1C1FFF1C1
        FFF1C1FFF7C6FFFAC8FFF6C8D6C6ADD6ADA5FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFC79795EFD6B5EEE1B5EFE3B6FAECBDFFF1C1FFFAC8FFFAC8FF
        FAC8FFFAC8FFFAC8FFFAC8FFF6C4FFF8C6FFF5C6E7D6BDBD9C8CFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFC79795EFD6B5ECDFB3EFE3B6FCF0CDFFF1
        C1FFFAC8FFFAC8FFFAC8FFFAC8FFF1C1FFF1C1FFF4C5FFF6C6FDF1C2E7D6BDBD
        9C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD6ADA5E7CEADE6DAAF
        F3E6B8EFE3B6FCF0CDFCF5DFFCF0CDFCEDC0FDEEC1FEF0C2FFF1C2FFF3C3FDF0
        C0F7EBBED6C6ADD6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFD6ADA5DED4ADEADEB3F3E6B9EFE3B6FCF0CDF9EBBFFAECBDFBEDBFFCEEC0
        FDEFC0FBEEBEF6EABBEFE4B7BD9C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFBD8C8CEFDEB5E2D8B3EBDFB6F3E6BAF5E7BAF6E8BBF7
        EABBF9EBBCFAECBDF8EABBF4E8B9EFE3B6EFDEC6D6ADA5FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC69C8CFCF0CDE3DAB9E8DD
        B5ECE0B5EEE2B5EFE3B6EFE2B5EEE2B5ECE1B4EADEB2FFEFC6BD9C8CFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        BD9C9CFCF0CDE0D9BCE1D8B4E2D7AFE2D7ADE0D5ABDFD4ABDDD3AAF7E7BDC69C
        94FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFC69C94D6BDA5F7E7BDFFEFBDFFEFBDFFEFBDF7E7BD
        E7C6ADC69494FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD6ADA5C69C8CCE
        A59CCEA59CC69C94FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnBuscaPedidoClick
    end
    object GroupBox1: TGroupBox
      Left = 17
      Top = 50
      Width = 361
      Height = 73
      Caption = 'Cliente'
      TabOrder = 0
      object Label1: TLabel
        Left = 10
        Top = 17
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 112
        Top = 17
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object btnBuscaCliente: TSpeedButton
        Left = 75
        Top = 30
        Width = 31
        Height = 29
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000620B0000620B00000000000000000000FF00FFFF00FF
          636B73636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF3973A52173B51B5A8F636B73FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF3973A539A5FF218CEF2173B51B5A8F636B73FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4AB5FF5ABDFF42A5FF218CEF2173
          B51B5A8F636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF52BDFF
          5ABDFF42A5FF218CEF2173B51B5A8F636B73FF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF31A5FF52BDFF5ABDFF42A5FF218CEF2173B51B5A8F636B73FF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF52BDFF5ABDFF42A5FF218CEF21
          73B51B5A8F636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF52BD
          FF5ABDFF42A5FF218CEF4A4239636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF31A5FF52BDFF5ABDFFA59C8C8C8C8C4A4239FF00FFFF00FFC69C
          94B58C84CEA59CD6B5A5D6ADA5CE9C9CC69494FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF31A5FFAFAFAFA59C8C6B6B6B
          846B6BAD8C84E7D6BDF4EABBFAEEBEFDF1C1FFF3C2FFF4C4EFDEC6CEA59CFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFC3C3C34A4239CEA594F0E5B8F9ECBDFCF5DFFCF5DFFCF5DFFCF5DFFCF5DF
          FCF5DFFFF4C6D6B5A5D6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFC6ADADCEA594FFEFBDF8ECBCFCF5DFFFF6C4FFF7C6FF
          F8C8FFF9C8FFFCC9FFFAC8FCF5DFFFF4C3C6A5A5FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8C8CEFDEB5F3E7B8FEF0C0FFF2
          C2FFF3C3FFF4C3FFF5C4FFF7C5FFF8C6FFFBC8FFFBC8FCF5DFF7EFDED6ADA5FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD6B5A5E8DDB1
          F8EABCFDEFC0FFF0C1FFF1C1FFF2C2FFF3C3FFF5C4FFF6C5FFF8C6FFFAC7FFFB
          C8FFF6C6BDA594FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD6
          ADA5E7CEADECE0B4FAECBDFCEDBEFFF1C1FFF1C1FFF1C1FFF1C1FFF1C1FFF1C1
          FFF1C1FFF7C6FFFAC8FFF6C8D6C6ADD6ADA5FF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFC79795EFD6B5EEE1B5EFE3B6FAECBDFFF1C1FFFAC8FFFAC8FF
          FAC8FFFAC8FFFAC8FFFAC8FFF6C4FFF8C6FFF5C6E7D6BDBD9C8CFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFC79795EFD6B5ECDFB3EFE3B6FCF0CDFFF1
          C1FFFAC8FFFAC8FFFAC8FFFAC8FFF1C1FFF1C1FFF4C5FFF6C6FDF1C2E7D6BDBD
          9C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD6ADA5E7CEADE6DAAF
          F3E6B8EFE3B6FCF0CDFCF5DFFCF0CDFCEDC0FDEEC1FEF0C2FFF1C2FFF3C3FDF0
          C0F7EBBED6C6ADD6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFD6ADA5DED4ADEADEB3F3E6B9EFE3B6FCF0CDF9EBBFFAECBDFBEDBFFCEEC0
          FDEFC0FBEEBEF6EABBEFE4B7BD9C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFBD8C8CEFDEB5E2D8B3EBDFB6F3E6BAF5E7BAF6E8BBF7
          EABBF9EBBCFAECBDF8EABBF4E8B9EFE3B6EFDEC6D6ADA5FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC69C8CFCF0CDE3DAB9E8DD
          B5ECE0B5EEE2B5EFE3B6EFE2B5EEE2B5ECE1B4EADEB2FFEFC6BD9C8CFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          BD9C9CFCF0CDE0D9BCE1D8B4E2D7AFE2D7ADE0D5ABDFD4ABDDD3AAF7E7BDC69C
          94FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFC69C94D6BDA5F7E7BDFFEFBDFFEFBDFFEFBDF7E7BD
          E7C6ADC69494FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD6ADA5C69C8CCE
          A59CCEA59CC69C94FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = btnBuscaClienteClick
      end
      object edtCodCliente: TEdit
        Left = 10
        Top = 36
        Width = 59
        Height = 21
        TabOrder = 0
        OnExit = edtCodClienteExit
        OnKeyPress = edtCodClienteKeyPress
      end
      object edtNomeCliente: TEdit
        Left = 112
        Top = 36
        Width = 241
        Height = 21
        Color = clMenu
        ReadOnly = True
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 384
      Top = 49
      Width = 313
      Height = 74
      Caption = 'Produto'
      TabOrder = 1
      object Label3: TLabel
        Left = 10
        Top = 21
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object btnBuscaProduto: TSpeedButton
        Left = 75
        Top = 34
        Width = 31
        Height = 29
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000620B0000620B00000000000000000000FF00FFFF00FF
          636B73636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF3973A52173B51B5A8F636B73FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF3973A539A5FF218CEF2173B51B5A8F636B73FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4AB5FF5ABDFF42A5FF218CEF2173
          B51B5A8F636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF52BDFF
          5ABDFF42A5FF218CEF2173B51B5A8F636B73FF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF31A5FF52BDFF5ABDFF42A5FF218CEF2173B51B5A8F636B73FF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF52BDFF5ABDFF42A5FF218CEF21
          73B51B5A8F636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF52BD
          FF5ABDFF42A5FF218CEF4A4239636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF31A5FF52BDFF5ABDFFA59C8C8C8C8C4A4239FF00FFFF00FFC69C
          94B58C84CEA59CD6B5A5D6ADA5CE9C9CC69494FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF31A5FFAFAFAFA59C8C6B6B6B
          846B6BAD8C84E7D6BDF4EABBFAEEBEFDF1C1FFF3C2FFF4C4EFDEC6CEA59CFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFC3C3C34A4239CEA594F0E5B8F9ECBDFCF5DFFCF5DFFCF5DFFCF5DFFCF5DF
          FCF5DFFFF4C6D6B5A5D6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFC6ADADCEA594FFEFBDF8ECBCFCF5DFFFF6C4FFF7C6FF
          F8C8FFF9C8FFFCC9FFFAC8FCF5DFFFF4C3C6A5A5FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8C8CEFDEB5F3E7B8FEF0C0FFF2
          C2FFF3C3FFF4C3FFF5C4FFF7C5FFF8C6FFFBC8FFFBC8FCF5DFF7EFDED6ADA5FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD6B5A5E8DDB1
          F8EABCFDEFC0FFF0C1FFF1C1FFF2C2FFF3C3FFF5C4FFF6C5FFF8C6FFFAC7FFFB
          C8FFF6C6BDA594FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD6
          ADA5E7CEADECE0B4FAECBDFCEDBEFFF1C1FFF1C1FFF1C1FFF1C1FFF1C1FFF1C1
          FFF1C1FFF7C6FFFAC8FFF6C8D6C6ADD6ADA5FF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFC79795EFD6B5EEE1B5EFE3B6FAECBDFFF1C1FFFAC8FFFAC8FF
          FAC8FFFAC8FFFAC8FFFAC8FFF6C4FFF8C6FFF5C6E7D6BDBD9C8CFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFC79795EFD6B5ECDFB3EFE3B6FCF0CDFFF1
          C1FFFAC8FFFAC8FFFAC8FFFAC8FFF1C1FFF1C1FFF4C5FFF6C6FDF1C2E7D6BDBD
          9C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD6ADA5E7CEADE6DAAF
          F3E6B8EFE3B6FCF0CDFCF5DFFCF0CDFCEDC0FDEEC1FEF0C2FFF1C2FFF3C3FDF0
          C0F7EBBED6C6ADD6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFD6ADA5DED4ADEADEB3F3E6B9EFE3B6FCF0CDF9EBBFFAECBDFBEDBFFCEEC0
          FDEFC0FBEEBEF6EABBEFE4B7BD9C8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFBD8C8CEFDEB5E2D8B3EBDFB6F3E6BAF5E7BAF6E8BBF7
          EABBF9EBBCFAECBDF8EABBF4E8B9EFE3B6EFDEC6D6ADA5FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC69C8CFCF0CDE3DAB9E8DD
          B5ECE0B5EEE2B5EFE3B6EFE2B5EEE2B5ECE1B4EADEB2FFEFC6BD9C8CFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          BD9C9CFCF0CDE0D9BCE1D8B4E2D7AFE2D7ADE0D5ABDFD4ABDDD3AAF7E7BDC69C
          94FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFC69C94D6BDA5F7E7BDFFEFBDFFEFBDFFEFBDF7E7BD
          E7C6ADC69494FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD6ADA5C69C8CCE
          A59CCEA59CC69C94FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = btnBuscaProdutoClick
      end
      object Label4: TLabel
        Left = 112
        Top = 21
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
      object Label5: TLabel
        Left = 184
        Top = 21
        Width = 64
        Height = 13
        Caption = 'Valor Unit'#225'rio'
      end
      object btnAddProduto: TSpeedButton
        Left = 260
        Top = 31
        Width = 31
        Height = 29
        Hint = 'Adiciona Produto'
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000130B0000130B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF0FA5280FA5280FA5280FA5280FA5280FA528FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0FA5287EE09E37B55E37B55E37B55E0FA528FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA5287EE09E38C27338C2
          7337B55E0FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA528
          7EE09E38C27338C27337B55E0FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF0FA5287EE09E38C27338C27337B55E0FA528FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0FA5287EE09E38C27338C27337B55E0FA528FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA5287EE09E38C27338C2
          7337B55E0FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF0FA5280FA5280FA5280FA5280FA5280FA5280FA5280FA528
          7EE09E38C27338C27337B55E0FA5280FA5280FA5280FA5280FA5280FA5280FA5
          280FA528FF00FFFF00FFFF00FFFF00FF0FA5287EE09E37B55E37B55E37B55E37
          B55E37B55E37B55E37B55E38C27338C27337B55E37B55E37B55E37B55E37B55E
          37B55E37B55E37B55E0FA528FF00FFFF00FFFF00FFFF00FF0FA5287EE09E38C2
          7338C27338C27338C27338C27338C27338C27338C27338C27338C27338C27338
          C27338C27338C27338C27338C27337B55E0FA528FF00FFFF00FFFF00FFFF00FF
          0FA5287EE09E38C27338C27338C27338C27338C27338C27338C27338C27338C2
          7338C27338C27338C27338C27338C27338C27338C27337B55E0FA528FF00FFFF
          00FFFF00FFFF00FF0FA52852CE8452CE8452CE8452CE8452CE8452CE8452CE84
          7EE09E38C27338C27337B55E52CE8452CE8452CE8452CE8452CE8452CE8452CE
          840FA528FF00FFFF00FFFF00FFFF00FF0FA5280FA5280FA5280FA5280FA5280F
          A5280FA5280FA5287EE09E38C27338C27337B55E0FA5280FA5280FA5280FA528
          0FA5280FA5280FA5280FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0FA5287EE09E38C27338C27337B55E0FA528FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA5287EE09E38C27338C2
          7337B55E0FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA528
          7EE09E38C27338C27337B55E0FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF0FA5287EE09E38C27338C27337B55E0FA528FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0FA5287EE09E38C27338C27337B55E0FA528FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA52852CE8452CE8452CE
          8452CE840FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0FA528
          0FA5280FA5280FA5280FA5280FA528FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = btnAddProdutoClick
      end
      object edtCodProduto: TEdit
        Left = 10
        Top = 40
        Width = 59
        Height = 21
        TabOrder = 0
        OnExit = edtCodProdutoExit
        OnKeyPress = edtCodProdutoKeyPress
      end
      object edtQtde: TEdit
        Left = 112
        Top = 40
        Width = 56
        Height = 21
        TabOrder = 1
        OnKeyPress = edtQtdeKeyPress
      end
      object edtValorUnit: TEdit
        Left = 190
        Top = 40
        Width = 64
        Height = 21
        TabOrder = 2
        OnKeyPress = edtValorUnitKeyPress
      end
    end
    object edtNumPedido: TEdit
      Left = 28
      Top = 23
      Width = 60
      Height = 21
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 432
    Width = 757
    Height = 62
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnGravarPedido: TSpeedButton
      Left = 20
      Top = 17
      Width = 127
      Height = 29
      Caption = 'Gravar Pedido'
      Flat = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000720B0000720B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF484848484848B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B95959596161616666666666
        663B3B3BFF00FFFF00FFFF00FFFF00FFFF00FF4D4D4D686868545454BBBBBB60
        60606C6C6C777777525252C8C8C8CECECED3D3D3D6D6D6DCDCDCDCDCDC505050
        5959596161616666663E3E3E3B3B3BFF00FFFF00FFFF00FF4C4C4C6D6D6D6A6A
        6A545454B9B9B95858586060606C6C6C525252C2C2C2C5C5C5CBCBCBD0D0D0D6
        D6D6DCDCDC4A4A4A5050505959595D5D5D4040403E3E3EFF00FFFF00FFFF00FF
        4D4D4D7171716E6E6E545454B7B7B7545454585858606060525252C0C0C0C2C2
        C2C5C5C5CBCBCBD0D0D0D6D6D64747474A4A4A4C4C4C5454544343433D3D3DFF
        00FFFF00FFFF00FF4E4E4E737373717171545454B4B4B4505050545454565656
        525252BEBEBEC0C0C0C2C2C2C5C5C5CBCBCBD0D0D04343434747474848484C4C
        4C4646463E3E3EFF00FFFF00FFFF00FF4F4F4F767676737373545454B2B2B24B
        4B4B505050525252525252BCBCBCBEBEBEC0C0C0C2C2C2C5C5C5C8C8C8404040
        4343434545454848484848483F3F3FFF00FFFF00FFFF00FF4F4F4F7979797676
        76545454B0B0B04747474B4B4B4D4D4D525252BABABABCBCBCBDBDBDBFBFBFC1
        C1C1C3C3C33D3D3D3F3F3F4242424545454C4C4C3F3F3FFF00FFFF00FFFF00FF
        5050507B7B7B7A7A7A545454AEAEAEB0B0B0B2B2B2B4B4B4B6B6B6B7B7B7B9B9
        B9BBBBBBBDBDBDBFBFBFC1C1C13A3A3A3B3B3B3F3F3F4242424F4F4F404040FF
        00FFFF00FFFF00FF5151517F7F7F7D7D7D545454545454545454545454545454
        5454545454545454545454545454545454545454545454545454545454545454
        54515151424242FF00FFFF00FFFF00FF5252528282827F7F7F7D7D7D7A7A7A77
        77777575757272726F6F6F6E6E6E6C6C6C6969696666666464646161615E5E5E
        5C5C5C595959575757545454424242FF00FFFF00FFFF00FF535353848484E7E7
        E5F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7E7E7E5585858434343FF00FFFF00FFFF00FF
        555555898989F7F7F7F8F8F8F8F8F8F8F8F8F9F9F9F9F9F9F9F9F9F9F9F9FAFA
        FAFBFBFBFBFBFBFCFCFCFDFDFDFDFDFDFEFEFEFFFFFFFFFFFF5B5B5B444444FF
        00FFFF00FFFF00FF575757919191F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FEFEFEFFFF
        FF5D5D5D454545FF00FFFF00FFFF00FF595959969696F7F7F7F7F7F7D9D9D89A
        9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A
        D9D9D8FDFDFDFEFEFE606060464646FF00FFFF00FFFF00FF5B5B5B9B9B9BF7F7
        F7F7F7F7F7F7F7F7F7F7F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9F9F9F9F9F9F9FA
        FAFAFAFAFAFBFBFBFCFCFCFDFDFDFDFDFD626262474747FF00FFFF00FFFF00FF
        5C5C5CA0A0A0F7F7F7F6F6F6F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFCFCFC666666484848FF
        00FFFF00FFFF00FF5E5E5EA6A6A6F7F7F7F6F6F6D9D9D89A9A9A9A9A9A9A9A9A
        9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9AD9D9D8FBFBFBFBFB
        FB696969484848FF00FFFF00FFFF00FF616161ADADADF7F7F7F6F6F6F6F6F6F6
        F6F6F7F7F7F7F7F7F7F7F7F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
        F6F6F6F6F6F6FBFBFB6C6C6C4A4A4AFF00FFFF00FFFF00FF626262B3B3B3F7F7
        F7F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
        F6F6F6F6F6F6F6F6F6F6F6F6F6F6FAFAFA6E6E6E4B4B4BFF00FFFF00FFFF00FF
        646464B8B8B8F7F7F7F5F5F5F5F5F5F6F6F6F6F6F6F6F6F6F7F7F7F7F7F7F7F7
        F7F7F7F7F8F8F8F8F8F8F8F8F8F9F9F9F9F9F9F9F9F9F9F9F97171714B4B4BFF
        00FFFF00FFFF00FF666666BDBDBDEE9332E98E2EE78C2CE28728DD8224D97E20
        D77C1ED4791BD27719CF7417CC7115CA6F13C76C11C4690FC2670DBF640BBE63
        0A7575754C4C4CFF00FFFF00FFFF00FFFF00FF666666F59937F09534EB9030E7
        8C2CE28728DD8224D97E20D77C1ED4791BD27719CF7417CC7115CA6F13C86D12
        C66B10C3680EC0650C4E4E4EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnGravarPedidoClick
    end
    object lblValorTotalPedido: TLabel
      Left = 513
      Top = 24
      Width = 125
      Height = 13
      Caption = 'Valor Total do Pedido: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 644
      Top = 24
      Width = 65
      Height = 17
      DataField = 'ValorTotalPedido'
      DataSource = dtsProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnNovoPedido: TSpeedButton
      Left = 142
      Top = 17
      Width = 127
      Height = 29
      Caption = 'Novo Pedido'
      Flat = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000620B0000620B00000000000000000000FF00FFFF00FF
        FF00FFA3A5A7999C9D999C9E9A9D9E9A9D9E9A9D9E9A9D9F9A9D9F9A9E9F9B9E
        A09B9EA09B9EA09B9FA09B9FA19C9FA19C9FA19CA0A29CA0A29CA0A2FF00FFFF
        00FFFF00FFFF00FFFF00FFA3A6A7F6F6F6F4F4F4F3F3F3F2F2F2F0F0F0EFEFEF
        EDEDEDECECECEAEAEAE9E9E9E7E7E7E4E4E4E1E1E1DFDFDFDCDCDCD9D9D9D7D7
        D79CA0A2FF00FFFF00FFFF00FFFF00FFFF00FFA4A6A7F8F8F8F6F6F6F4F4F4F3
        F3F3F2F2F2F0F0F0EFEFEFEDEDEDECECECEAEAEAE9E9E9E7E7E7E4E4E4E1E1E1
        DFDFDFDCDCDCD9D9D99C9FA1FF00FFFF00FFFF00FFFF00FFFF00FFA4A7A8F9F9
        F9F8F8F8F6F6F6F4F4F4F3F3F3F2F2F2F0F0F0EFEFEFEDEDEDECECECEAEAEAE9
        E9E90FA5280FA5280FA528DFDFDFDCDCDC9B9FA1FF00FFFF00FFFF00FFFF00FF
        FF00FFA5A7A8FBFBFBF9F9F9F8F8F8F6F6F6F4F4F4F3F3F3F2F2F2F0F0F0EFEF
        EFEDEDEDECECECEAEAEA7EE09E38C27337B55EE1E1E1DFDFDF9B9EA0FF00FFFF
        00FFFF00FFFF00FFFF00FFA6A8A9FCFCFCFBFBFBF9F9F9F8F8F8F6F6F6F4F4F4
        F3F3F3F2F2F2F0F0F0EFEFEFEDEDEDECECEC7EE09E38C27337B55EE4E4E4E1E1
        E19B9EA0FF00FFFF00FFFF00FFFF00FFFF00FFA6A8A9FCFCFCFCFCFCFBFBFBF9
        F9F9F8F8F8F6F6F6F4F4F4F3F3F3F2F2F2F0F0F0EFEFEFEDEDED7EE09E38C273
        37B55EE7E7E7E4E4E49A9E9FFF00FFFF00FFFF00FFFF00FFFF00FFA6A8A9FCFC
        FCFCFCFCFCFCFCFBFBFBF9F9F9F8F8F8F6F6F6F4F4F40FA52837B55E37B55E37
        B55E37B55E38C27337B55E37B55E37B55E37B55E0FA528FF00FFFF00FFFF00FF
        FF00FFA7A9A9FCFCFCFCFCFCFCFCFCFCFCFCFBFBFBF9F9F9F8F8F8F6F6F60FA5
        2838C27338C27338C27338C27338C27338C27338C27338C27338C2730FA528FF
        00FFFF00FFFF00FFFF00FFA8A9AAFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFBFB
        F9F9F9F8F8F80FA52852CE8452CE8452CE847EE09E38C27337B55E52CE8452CE
        8452CE840FA528FF00FFFF00FFFF00FFFF00FFA9AAABFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFBFBFBF9F9F9F8F8F8F6F6F6F4F4F4F3F3F37EE09E38C273
        37B55EEDEDEDECECEC999C9DFF00FFFF00FFFF00FFFF00FFFF00FFAAABABFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFBFBF9F9F9F8F8F8F6F6F6F4
        F4F47EE09E38C27337B55EEFEFEFEDEDED999C9DFF00FFFF00FFFF00FFFF00FF
        FF00FFAAABACFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFB
        FBF9F9F9F8F8F8F6F6F67EE09E38C27337B55EF0F0F0EFEFEF989B9CFF00FFFF
        00FFFF00FFFF00FFFF00FFABACACFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFBFBFBF9F9F9F8F8F80FA5280FA5280FA528F2F2F2F0F0
        F0989B9CFF00FFFF00FFFF00FFFF00FFFF00FFACACADFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFBFBF9F9F9F8F8F8F6F6F6
        F4F4F4F3F3F3E6E6E6989A9BFF00FFFF00FFFF00FFFF00FFFF00FFADADADFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFB
        FBFBF9F9F9F8F8F8F6F6F6E6E6E6CFCFCF979A9BFF00FFFF00FFFF00FFFF00FF
        FF00FFAEAEAEFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFBFBFBCFCFCFC5C5C5BBBBBBB1B1B197999AFF00FFFF
        00FFFF00FFFF00FFFF00FFAFAFAFFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCA7A9A99697989698999698999799
        9A97999AFF00FFFF00FFFF00FFFF00FFFF00FFAFAFAFFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCA8A9AAFFFFFF
        FFFFFFFFFFFFDCDCDC97999AFF00FFFF00FFFF00FFFF00FFFF00FFAFAFAFFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCA9AAAAFFFFFFFFFFFFDCDCDC9B9D9EFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFAFAFAFFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCAAABABFFFFFFDCDCDC9B9D9EFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFAFAFAFFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCABABACDCDCDC9B9D9DFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFAFAF9B9B9B9B9B9B9B9B9B9B
        9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9C9B9B9C9B9C9C9B9C9C9B9C9C
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnNovoPedidoClick
    end
  end
  object dbgrdProdutos: TDBGrid
    Left = 0
    Top = 129
    Width = 757
    Height = 303
    Align = alClient
    DataSource = dtsProdutos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = dbgrdProdutosKeyDown
    OnKeyPress = dbgrdProdutosKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'ProdutoId'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ValorUnitario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ValorTotal'
        Visible = True
      end>
  end
  object cdsProdutos: TClientDataSet
    PersistDataPacket.Data = {
      950000009619E0BD01000000180000000600000000000300000095000654656D
      70496404000100000000000950726F6475746F496404000100000000000A5175
      616E74696461646504000100000000000D56616C6F72556E69746172696F0800
      0400000000000A56616C6F72546F74616C080004000000000009446573637269
      63616F01004900000001000557494454480200020064000000}
    Active = True
    Aggregates = <
      item
        Active = True
        AggregateName = 'ValorTotalPedido'
        Expression = 'SUM(ValorTotal)'
        IndexName = 'idValTotPed'
        Visible = False
      end>
    AggregatesActive = True
    Params = <>
    BeforeDelete = cdsProdutosBeforeDelete
    Left = 120
    Top = 144
    object cdsProdutosTempId: TIntegerField
      FieldName = 'TempId'
    end
    object cdsProdutosProdutoId: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'ProdutoId'
    end
    object cdsProdutosQuantidade: TIntegerField
      FieldName = 'Quantidade'
    end
    object cdsProdutosValorUnitario: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'ValorUnitario'
      currency = True
    end
    object cdsProdutosValorTotal: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'ValorTotal'
      currency = True
    end
    object cdsProdutosDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Size = 100
    end
    object cdsProdutosValorTotalPedido: TAggregateField
      FieldName = 'ValorTotalPedido'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(ValorTotal)'
    end
  end
  object dtsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 192
    Top = 144
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    Params.Strings = (
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver270.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver270.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'MaxBlobSize=-1'
      'DriverName=MySQL'
      'HostName=localhost'
      'User_Name=root'
      'Password=root'
      'ServerCharSet='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'ConnectTimeout=60'
      'Database=mydb'
      
        'ConnectionString=DriverUnit=Data.DBXMySQL,DriverPackageLoader=TD' +
        'BXDynalinkDriverLoader,DbxCommonDriver270.bpl,DriverAssemblyLoad' +
        'er=Borland.Data.TDBXDynalinkDriverLoader,Borland.Data.DbxCommonD' +
        'river,Version=24.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b' +
        '0d1b1b,MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,Dbx' +
        'MySQLDriver270.bpl,MetaDataAssemblyLoader=Borland.Data.TDBXMySql' +
        'MetaDataCommandFactory,Borland.Data.DbxMySQLDriver,Version=24.0.' +
        '0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b,GetDriverFun' +
        'c=getSQLDriverMYSQL,LibraryName=dbxmys.dll,LibraryNameOsx=libsql' +
        'mys.dylib,VendorLib=LIBMYSQL.dll,VendorLibWin64=libmysql.dll,Ven' +
        'dorLibOsx=libmysqlclient.dylib,MaxBlobSize=-1,DriverName=MySQL,H' +
        'ostName=localhost,User_Name=root,Password=root,ServerCharSet=,Bl' +
        'obSize=-1,ErrorResourceFile=,LocaleCode=0000,Compressed=False,En' +
        'crypted=False,ConnectTimeout=60,Database=mydb')
    Left = 736
    Top = 506
  end
end