object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 541
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SBCriar: TSpeedButton
    Left = 24
    Top = 332
    Width = 105
    Height = 34
    Caption = 'Criar'
    OnClick = SBCriarClick
  end
  object SBConsultar: TSpeedButton
    Left = 160
    Top = 332
    Width = 105
    Height = 34
    Caption = 'Consultar'
    OnClick = SBConsultarClick
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 72
    Width = 545
    Height = 241
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object EFiltro: TEdit
    Left = 296
    Top = 332
    Width = 273
    Height = 34
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 384
    Width = 545
    Height = 149
    Caption = 'GroupBox1'
    TabOrder = 2
    object LCODTipoEstrutura: TLabel
      Left = 48
      Top = 32
      Width = 87
      Height = 13
      Caption = 'CODTipoEstrutura'
    end
    object LDESTipoEstrutura: TLabel
      Left = 224
      Top = 32
      Width = 84
      Height = 13
      Caption = 'DESTipoEstrutura'
    end
    object DBComboBox: TLabel
      Left = 48
      Top = 85
      Width = 64
      Height = 13
      Caption = 'DBComboBox'
    end
    object DBLookupComboBox: TLabel
      Left = 224
      Top = 85
      Width = 98
      Height = 13
      Caption = 'DBLookupComboBox'
    end
    object DBEdit1: TDBEdit
      Left = 48
      Top = 51
      Width = 145
      Height = 21
      DataField = 'idTipoEstrutura'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 224
      Top = 51
      Width = 145
      Height = 21
      DataField = 'desTipoEstrutura'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBComboBox1: TDBComboBox
      Left = 48
      Top = 104
      Width = 145
      Height = 21
      DataField = 'desTipoEstrutura'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 224
      Top = 104
      Width = 145
      Height = 21
      KeyField = 'idTipoEstrutura'
      ListField = 'desTipoEstrutura'
      ListSource = DataSource1
      TabOrder = 3
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 'FILE NAME=C:\Vss\Sgk\SI\Sgk.udl'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From CRP_TipoEstrutura')
    Left = 120
    Top = 16
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'Select * From CRP_TipoEstrutura'#13#10
    Parameters = <>
    Left = 608
    Top = 16
  end
  object ADOSP: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Sp_CRP_TipoEstrutura_IncSeq;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@idTipoEstrutura'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
      end
      item
        Name = '@desTipoEstrutura'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
      end
      item
        Name = '@Atualizacao'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
      end
      item
        Name = '@idUsuarioAtualizacao'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@Auditoria'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 184
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 240
    Top = 16
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ADODataSet1
    Left = 608
    Top = 72
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 608
    Top = 128
    object ClientDataSet1idTipoEstrutura: TIntegerField
      FieldName = 'idTipoEstrutura'
    end
    object ClientDataSet1desTipoEstrutura: TStringField
      FieldName = 'desTipoEstrutura'
      Size = 40
    end
    object ClientDataSet1Atualizacao: TIntegerField
      FieldName = 'Atualizacao'
    end
    object ClientDataSet1idUsuarioAtualizacao: TIntegerField
      FieldName = 'idUsuarioAtualizacao'
    end
    object ClientDataSet1dthDataAtualizacao: TDateTimeField
      FieldName = 'dthDataAtualizacao'
    end
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet1
    Left = 608
    Top = 184
  end
end
