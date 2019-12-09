unit uMaquina;

interface

uses
  uIMaquina, Classes, SysUtils, uTroco, TypInfo, Dialogs;

type

  TMaquina = class(TInterfacedObject, IMaquina)
  public
    function MontarTroco(aTroco: Double): TStringList;
  end;

implementation

function TMaquina.MontarTroco(aTroco: Double): TStringList;
var
  pTroco : TTroco;
  pValorRecebido : Double;
  i, j : Integer;
begin
  pValorRecebido := aTroco;

  Result := TStringList.Create;
  Result.Clear;


  i := 0;
  while (pValorRecebido > 100) do
    begin
      pValorRecebido := pValorRecebido -100;
      Inc(i);
    end;
  if (i > 0) then
    begin
      pTroco := TTroco.Create(i, ceNota100);
      Result.Add(pTroco.Resultado + ' - ' + pTroco.ClassName + '(ceNota100, ' + IntToStr(i) + ')');
      pTroco.Free;
    end;

  i := 0;
  while (pValorRecebido > 50) do
    begin
      pValorRecebido := pValorRecebido -50;
      Inc(i);
    end;
  if (i > 0) then
    begin
      pTroco := TTroco.Create(i, ceNota50);
      Result.Add(pTroco.Resultado + ' - ' + pTroco.ClassName + '(ceNota50, ' + IntToStr(i) + ')');
      pTroco.Free;
    end;

  i := 0;
  while (pValorRecebido > 20) do
    begin
      pValorRecebido := pValorRecebido -20;
      Inc(i);
    end;
  if (i > 0) then
    begin
      pTroco := TTroco.Create(i, ceNota20);
      Result.Add(pTroco.Resultado + ' - ' + pTroco.ClassName + '(ceNota20, ' + IntToStr(i) + ')');
      pTroco.Free;
    end;

  i := 0;
  while (pValorRecebido > 5) do
    begin
      pValorRecebido := pValorRecebido -5;
      Inc(i);
    end;
  if (i > 0) then
    begin
      pTroco := TTroco.Create(i, ceNota5);
      Result.Add(pTroco.Resultado + ' - ' + pTroco.ClassName + '(ceNota5, ' + IntToStr(i) + ')');
      pTroco.Free;
    end;

  i := 0;
  while (pValorRecebido > 2) do
    begin
      pValorRecebido := pValorRecebido -2;
      Inc(i);
    end;
  if (i > 0) then
    begin
      pTroco := TTroco.Create(i, ceNota2);
      Result.Add(pTroco.Resultado + ' - ' + pTroco.ClassName + '(ceNota2, ' + IntToStr(i) + ')');
      pTroco.Free;
    end;

  i := 0;
  while (pValorRecebido > 1) do
    begin
      pValorRecebido := pValorRecebido -1;
      Inc(i);
    end;
  if (i > 0) then
    begin
      pTroco := TTroco.Create(i, ceMoeda100);
      Result.Add(pTroco.Resultado + ' - ' + pTroco.ClassName + '(ceMoeda100, ' + IntToStr(i) + ')');
      pTroco.Free;
    end;

  i := 0;
  while (pValorRecebido > 0.50) do
    begin
      pValorRecebido := pValorRecebido -0.50;
      Inc(i);
    end;
  if (i > 0) then
    begin
      pTroco := TTroco.Create(i, ceMoeda50);
      Result.Add(pTroco.Resultado + ' - ' + pTroco.ClassName + '(ceMoeda50, ' + IntToStr(i) + ')');
      pTroco.Free;
    end;

  i := 0;
  while (pValorRecebido > 0.25) do
    begin
      pValorRecebido := pValorRecebido -0.25;
      Inc(i);
    end;
  if (i > 0) then
    begin
      pTroco := TTroco.Create(i, ceMoeda25);
      Result.Add(pTroco.Resultado + ' - ' + pTroco.ClassName + '(ceMoeda25, ' + IntToStr(i) + ')');
      pTroco.Free;
    end;

  i := 0;
  while (pValorRecebido > 0.10) do
    begin
      pValorRecebido := pValorRecebido -0.10;
      Inc(i);
    end;
  if (i > 0) then
    begin
      pTroco := TTroco.Create(i, ceMoeda10);
      Result.Add(pTroco.Resultado + ' - ' + pTroco.ClassName + '(ceMoeda10, ' + IntToStr(i) + ')');
      pTroco.Free;
    end;

  i := 0;
  while (pValorRecebido > 0.05) do
    begin
      pValorRecebido := pValorRecebido -0.05;
      Inc(i);
    end;
  if (i > 0) then
    begin
      pTroco := TTroco.Create(i, ceMoeda5);
      Result.Add(pTroco.Resultado + ' - ' + pTroco.ClassName + '(ceMoeda5, ' + IntToStr(i) + ')');
      pTroco.Free;
    end;

  i := 0;
  while (pValorRecebido > 0.01) do
    begin
      pValorRecebido := pValorRecebido -0.01;
      Inc(i);
    end;
  if (i > 0) then
    begin
      pTroco := TTroco.Create(i, ceMoeda1);
      Result.Add(pTroco.Resultado + ' - ' + pTroco.ClassName + '(ceMoeda1, ' + IntToStr(i) + ')');
      pTroco.Free;
    end;
end;

end.

