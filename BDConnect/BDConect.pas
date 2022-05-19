unit BDConect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Datasnap.DBClient, Datasnap.Provider;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADODataSet1: TADODataSet;
    ADOSP: TADOStoredProc;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    SBCriar: TSpeedButton;
    SBConsultar: TSpeedButton;
    EFiltro: TEdit;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource2: TDataSource;
    ClientDataSet1idTipoEstrutura: TIntegerField;
    ClientDataSet1desTipoEstrutura: TStringField;
    ClientDataSet1Atualizacao: TIntegerField;
    ClientDataSet1idUsuarioAtualizacao: TIntegerField;
    ClientDataSet1dthDataAtualizacao: TDateTimeField;
    GroupBox1: TGroupBox;
    LCODTipoEstrutura: TLabel;
    DBEdit1: TDBEdit;
    LDESTipoEstrutura: TLabel;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox: TLabel;
    DBComboBox: TLabel;
    procedure SBCriarClick(Sender: TObject);
    procedure SBConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SBConsultarClick(Sender: TObject);
var sql: String;
begin
   sql:='Select * From CRP_TipoEstrutura WHERE desTipoEstrutura LIKE ''%'+ EFiltro.Text + '%''';
   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add(sql);
   ADOQuery1.Open;
end;

procedure TForm1.SBCriarClick(Sender: TObject);
begin
   ADOSP.Prepared;
   ADOSP.Parameters.ParamByName('@desTipoEstrutura').Value:='TipoEstrutura';
   ADOSP.Parameters.ParamByName('@idUsuarioAtualizacao').Value:=5;
   ADOSP.ExecProc;
end;

end.
