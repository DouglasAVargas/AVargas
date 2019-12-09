unit uTroco;

interface

uses
  SysUtils;

type

  TCedula = (ceNota100, ceNota50, ceNota20, ceNota10, ceNota5, ceNota2);
  TMoeda = (ceMoeda100, ceMoeda50, ceMoeda25, ceMoeda10, ceMoeda5, ceMoeda1);

  TTroco = class
  private
    FTipo: TCedula;
    FTipoMoeda: TMoeda;
    FQuantidade: Integer;
    FResultado : String;
  public
    constructor Create(aQuantidade: Integer; aTipo: TCedula);
    constructor Create(aQuantidade: Integer; aTipoMoeda: TMoeda);
	
    property Tipo: TCedula read FTipo;
    property TipoMoeda: TMoeda read FTipoMoeda;
    property Resultado: String read FResultado write FResultado;
    property Quantidade: Integer read FQuantidade write FQuantidade;    
  end;

const
  CValorCedula: array [TCedula] of Double = (100, 50, 20, 10, 5, 2);
  CValorMoeda: array [TMoeda] of Double = (1, 0.5, 0.25, 0.1, 0.05, 0.01);

implementation

constructor TTroco.Create(aQuantidade: Integer; aTipo: TCedula);
begin
  inherited Create;

  FTipo := aTipo;
  FQuantidade := aQuantidade;

  if (aQuantidade = 1) then
    FResultado := IntToStr(aQuantidade) + ' cédula de ' + FormatFloat('0.00', CValorCedula[aTipo])
  else if (aQuantidade > 1) then
    FResultado := IntToStr(aQuantidade) + ' cédulas de ' + FormatFloat('0.00', CValorCedula[aTipo]);

end;

constructor TTroco.Create(aQuantidade: Integer; aTipoMoeda: TMoeda);
begin
  inherited Create;

  FTipoMoeda := aTipoMoeda;
  FQuantidade := aQuantidade;

  if (aQuantidade = 1) then
    FResultado := IntToStr(aQuantidade) + ' moeda de ' + FormatFloat('0.00',CValorMoeda[aTipoMoeda])
  else if (aQuantidade > 1) then
    FResultado := IntToStr(aQuantidade) + ' moedas de ' + FormatFloat('0.00',CValorMoeda[aTipoMoeda]);

end;


end.

