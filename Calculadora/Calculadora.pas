unit Calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Resultado: TEdit;
    Botao4: TButton;
    Botao1: TButton;
    Botao0: TButton;
    Botao5: TButton;
    Botao2: TButton;
    Botao6: TButton;
    Botao3: TButton;
    BotaoMult: TButton;
    BotaoSub: TButton;
    BotaoDiv: TButton;
    Botao7: TButton;
    Botao8: TButton;
    Botao9: TButton;
    BotaoSoma: TButton;
    BotaoIgual: TButton;
    Memo1: TMemo;
    Resetar: TButton;
    Deletar: TButton;
    virgula: TButton;
    SBProxTela: TButton;
    procedure SBProxTelaClick(Sender: TObject);
    procedure BotaoDivClick(Sender: TObject);
    procedure BotaoMultClick(Sender: TObject);
    procedure BotaoSubClick(Sender: TObject);
    procedure BotaoSomaClick(Sender: TObject);
    procedure BotaoIgualClick(Sender: TObject);
    procedure DeletarClick(Sender: TObject);
    procedure ResetarClick(Sender: TObject);
    procedure virgulaClick(Sender: TObject);
  private
    { Private declarations }
    procedure BotaoResultado(Sender: TObject; Operador: String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  valor1: String;
  valor2: String;
  Operacao: String;
  decimal: Boolean;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.BotaoResultado(Sender: TObject; Operador: String);
begin
  valor2:=Resultado.Text;
  decimal:=False;
  if Operador = '/' then
    Resultado.Text:=floatToStr(strToFloat(valor1)/strToFloat(valor2))
  else if Operador = '*' then
    Resultado.Text:=floatToStr(strToFloat(valor1)*strToFloat(valor2))
  else if Operador = '+' then
    Resultado.Text:=floatToStr(strToFloat(valor1)+strToFloat(valor2))
  else if Operador = '-' then
    Resultado.Text:=floatToStr(strToFloat(valor1)-strToFloat(valor2))
  else
    Resultado.Text:='ERRO';

  Memo1.Lines.Add(valor1+Operador+valor2+'='+Resultado.Text);

end;

procedure TForm1.BotaoDivClick(Sender: TObject);
begin
  valor1:=Resultado.Text;
  decimal:=False;
  Resultado.Text:= '';
  Operacao:= '/';
end;

procedure TForm1.BotaoMultClick(Sender: TObject);
begin
  valor1:=Resultado.Text;
  decimal:=False;
  Resultado.Text:= '';
  Operacao:= '*';
end;

procedure TForm1.BotaoSomaClick(Sender: TObject);
begin
  valor1:=Resultado.Text;
  decimal:=False;
  Resultado.Text:= '';
  Operacao:= '+';
end;

procedure TForm1.BotaoSubClick(Sender: TObject);
begin
  valor1:=Resultado.Text;
  decimal:=False;
  Resultado.Text:= '';
  Operacao:= '-';
end;

procedure TForm1.BotaoIgualClick(Sender: TObject);
begin
   BotaoResultado(Sender, Operacao)
end;

procedure TForm1.SBProxTelaClick(Sender: TObject);
begin
  Resultado.Text:=Resultado.Text+(sender as TButton).Caption;
  //Form2.ShowModal;
end;

procedure TForm1.DeletarClick(Sender: TObject);
begin
  Resultado.Text:=Copy(Resultado.Text, 1, Length(Resultado.Text)-1);
end;

procedure TForm1.ResetarClick(Sender: TObject);
begin
  Resultado.Text:= '';
  decimal:=False;
  valor1:= '';
  valor2:= '';
end;

procedure TForm1.virgulaClick(Sender: TObject);
begin
  if decimal = False then
    begin
      Resultado.Text:=Resultado.Text+(sender as TButton).Caption;
      decimal:= True;
    end
end;

end.
