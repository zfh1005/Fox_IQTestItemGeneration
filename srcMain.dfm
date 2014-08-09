object Form3: TForm3
  Left = 309
  Top = 140
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'IQLite Test Script Generator v2.1 2011/10/21'
  ClientHeight = 502
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  DesignSize = (
    767
    502)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 78
    Width = 753
    Height = 82
    Caption = 'Test Item'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label7: TLabel
      Left = 23
      Top = 21
      Width = 84
      Height = 13
      Caption = 'Test Item Tx / Rx'
    end
    object Label8: TLabel
      Left = 170
      Top = 21
      Width = 75
      Height = 13
      Caption = 'Channel(2g/5g)'
    end
    object Label9: TLabel
      Left = 274
      Top = 21
      Width = 52
      Height = 13
      Caption = 'Modulation'
    end
    object Label10: TLabel
      Left = 363
      Top = 21
      Width = 50
      Height = 13
      Caption = 'Bandwidth'
    end
    object Label11: TLabel
      Left = 434
      Top = 21
      Width = 71
      Height = 13
      Caption = 'Power level(#)'
    end
    object Label12: TLabel
      Left = 519
      Top = 21
      Width = 59
      Height = 13
      Caption = 'EVM spec($)'
    end
    object Label13: TLabel
      Left = 591
      Top = 21
      Width = 68
      Height = 13
      Caption = 'Rx packets(&&)'
    end
    object Label14: TLabel
      Left = 674
      Top = 21
      Width = 59
      Height = 13
      Caption = 'Antenna(@)'
    end
    object m_TestItem: TComboBox
      Left = 5
      Top = 40
      Width = 167
      Height = 27
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'TX_VERIFY_EVM'
      Items.Strings = (
        'TX_VERIFY_EVM'
        'TX_VERIFY_POWER'
        'TX_VERIFY_MASK'
        'RX_VERIFY_PER')
    end
    object m_Modulation: TComboBox
      Left = 255
      Top = 40
      Width = 89
      Height = 27
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'DSSS-1'
      Items.Strings = (
        'DSSS-1'
        'DSSS-2'
        'CCK_5_5'
        'CCK-11'
        'PBCC-2'
        'OFDM-6'
        'OFDM-9'
        'OFDM-12'
        'OFDM-18'
        'OFDM-24'
        'OFDM-36'
        'OFDM-48'
        'OFDM-54'
        'MCS0'
        'MCS1'
        'MCS2'
        'MCS3'
        'MCS4'
        'MCS5'
        'MCS6'
        'MCS7'
        'MCS8'
        'MCS9'
        'MCS10'
        'MCS11'
        'MCS12'
        'MCS13'
        'MCS14'
        'MCS15'
        'MCS16'
        'MCS17'
        'MCS18'
        'MCS19'
        'MCS20'
        'MCS21'
        'MCS22'
        'MCS23'
        'MCS24'
        'MCS25'
        'MCS26'
        'MCS27'
        'MCS28'
        'MCS29'
        'MCS30'
        'MCS31')
    end
    object m_PowerLevel: TComboBox
      Left = 434
      Top = 40
      Width = 66
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = '0'
      Items.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20'
        '21'
        '22'
        '23'
        '24'
        '25'
        '26'
        '27')
    end
    object m_Channel: TComboBox
      Left = 179
      Top = 40
      Width = 66
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      Sorted = True
      TabOrder = 3
      Text = '2412'
      Items.Strings = (
        '2412'
        '2417'
        '2422'
        '2427'
        '2432'
        '2437'
        '2442'
        '2447'
        '2452'
        '2457'
        '2462'
        '2467'
        '2472'
        '2484'
        '4920'
        '4940'
        '4960'
        '4980'
        '5040'
        '5060'
        '5080'
        '5170'
        '5180'
        '5190'
        '5200'
        '5210'
        '5220'
        '5230'
        '5240'
        '5260'
        '5280'
        '5300'
        '5320'
        '5500'
        '5520'
        '5540'
        '5560'
        '5580'
        '5600'
        '5620'
        '5640'
        '5660'
        '5680'
        '5745'
        '5755'
        '5765'
        '5785'
        '5795'
        '5805'
        '5825'
        '5845'
        '5865'
        '5885'
        '5905'
        '5925'
        '5945')
    end
    object m_Bandwidth: TComboBox
      Left = 353
      Top = 40
      Width = 70
      Height = 27
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = 'HT20'
      Items.Strings = (
        'HT20'
        'HT40')
    end
    object m_RxPackets: TComboBox
      Left = 590
      Top = 40
      Width = 74
      Height = 27
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 5
      Text = '200'
      Items.Strings = (
        '200'
        '500'
        '1000'
        '1500'
        '2000'
        '5000'
        '10000')
    end
    object m_EvmLimit: TComboBox
      Left = 511
      Top = 40
      Width = 66
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 6
      Text = '-5'
      Items.Strings = (
        '-5'
        '-7'
        '-25'
        '-28')
    end
    object m_Antenna: TComboBox
      Left = 674
      Top = 40
      Width = 58
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Text = '3'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7')
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 753
    Height = 73
    Caption = 'Specification'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object GroupBox3: TGroupBox
      Left = 16
      Top = 20
      Width = 229
      Height = 44
      Caption = '2.4G Power'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 23
        Width = 34
        Height = 14
        Caption = 'Lower'
      end
      object Label2: TLabel
        Left = 122
        Top = 23
        Width = 33
        Height = 14
        Caption = 'Upper'
      end
      object m_PowerLow2g: TComboBox
        Left = 53
        Top = 19
        Width = 49
        Height = 22
        TabOrder = 0
        Text = '1.5'
        Items.Strings = (
          '1.5'
          '2.0'
          '2.5'
          '3')
      end
      object m_PowerUpper2g: TComboBox
        Left = 157
        Top = 19
        Width = 49
        Height = 22
        TabOrder = 1
        Text = '1.5'
        Items.Strings = (
          '1.5'
          '2.0'
          '2.5'
          '3')
      end
    end
    object GroupBox4: TGroupBox
      Left = 270
      Top = 20
      Width = 212
      Height = 44
      Caption = '5G Power'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label3: TLabel
        Left = 16
        Top = 22
        Width = 34
        Height = 14
        Caption = 'Lower'
      end
      object Label4: TLabel
        Left = 114
        Top = 21
        Width = 33
        Height = 14
        Caption = 'Upper'
      end
      object m_PowerLow5g: TComboBox
        Left = 53
        Top = 18
        Width = 49
        Height = 22
        TabOrder = 0
        Text = '1.5'
        Items.Strings = (
          '1.5'
          '2.0'
          '2.5'
          '3')
      end
      object m_PowerUpper5g: TComboBox
        Left = 149
        Top = 17
        Width = 49
        Height = 22
        TabOrder = 1
        Text = '1.5'
        Items.Strings = (
          '1.5'
          '2.0'
          '2.5'
          '3')
      end
    end
    object GroupBox5: TGroupBox
      Left = 510
      Top = 20
      Width = 96
      Height = 44
      Caption = 'Mask'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label5: TLabel
        Left = 18
        Top = 19
        Width = 12
        Height = 14
        Caption = '%'
      end
      object m_MaskLimit: TComboBox
        Left = 39
        Top = 17
        Width = 49
        Height = 22
        ItemIndex = 0
        TabOrder = 0
        Text = '2'
        Items.Strings = (
          '2'
          '5')
      end
    end
    object GroupBox6: TGroupBox
      Left = 637
      Top = 20
      Width = 96
      Height = 44
      Caption = 'Freqency Error'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label6: TLabel
        Left = 16
        Top = 20
        Width = 17
        Height = 14
        Caption = '+/-'
      end
      object m_FreqLimit: TComboBox
        Left = 40
        Top = 17
        Width = 49
        Height = 22
        ItemIndex = 0
        TabOrder = 0
        Text = '20'
        Items.Strings = (
          '20'
          '25')
      end
    end
  end
  object m_ListBox: TListBox
    Left = 2
    Top = 197
    Width = 753
    Height = 300
    Anchors = [akTop, akBottom]
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Fixedsys'
    Font.Style = []
    MultiSelect = True
    ParentFont = False
    TabOrder = 2
  end
  object m_ledtFilePath: TLabeledEdit
    Left = 157
    Top = 166
    Width = 322
    Height = 24
    EditLabel.Width = 144
    EditLabel.Height = 16
    EditLabel.Caption = 'Destination file path : '
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    LabelPosition = lpLeft
    ParentFont = False
    TabOrder = 3
  end
  object m_btnBrowse: TButton
    Left = 485
    Top = 166
    Width = 64
    Height = 25
    Caption = 'Browse...'
    TabOrder = 4
    OnClick = m_btnBrowseClick
  end
  object m_btnAdd: TButton
    Left = 607
    Top = 166
    Width = 50
    Height = 25
    Caption = 'Add'
    TabOrder = 5
    OnClick = m_btnAddClick
  end
  object m_btnDelete: TButton
    Left = 662
    Top = 166
    Width = 50
    Height = 25
    Caption = 'Delete'
    TabOrder = 6
    OnClick = m_btnDeleteClick
  end
  object m_btnSave: TButton
    Left = 551
    Top = 166
    Width = 50
    Height = 25
    Caption = 'Save'
    TabOrder = 7
    OnClick = m_btnSaveClick
  end
  object UpDown1: TUpDown
    Left = 718
    Top = 166
    Width = 41
    Height = 25
    Max = 1000
    Orientation = udHorizontal
    Position = 500
    TabOrder = 8
    OnChangingEx = UpDown1ChangingEx
  end
  object m_SaveDlg: TSaveDialog
    DefaultExt = '.ini'
    FileName = 'LP_Script'
    Filter = '(Configuration File)|*.ini'
    InitialDir = 'c:\'
    Left = 24
    Top = 200
  end
end
