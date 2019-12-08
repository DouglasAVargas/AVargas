unit uSubstitui;

interface

uses
  uISubstitui;

type

  TSubstitui = class(TInterfacedObject, ISubstitui)
  public
    function Substituir(aStr, aVelho, aNovo: String): String;
  end;

implementation

function TSubstitui.Substituir(aStr, aVelho, aNovo: String): String;
var
  vPassa      : Boolean;
  i, k, f     : integer;
  vTextoFinal : String;
begin
  vTextoFinal := '';
  vPassa      := True;
  i           := 1;

  while i <= Length(aStr) do
     begin
       if (aStr[i] = aVelho[1]) then
         begin
           k := i;

           for f := 1 to Length(aVelho) do
             begin
               if not (aStr[k] = aVelho[f]) then
                 begin
                   vPassa := True;
                   Break;
                 end;

               Inc(k);

               if (f = Length(aVelho)) then
                  begin
                    vTextoFinal := vTextoFinal + aNovo;
                    vPassa := False;
                    i := i + Length(aVelho);
                  end;
             end;

           if vPassa then
              begin
                vTextoFinal := vTextoFinal + aStr[i];
                Inc(i);
              end;
         end
       else
         begin
           vTextoFinal := vTextoFinal + aStr[i];
           Inc(i);
         end;
     end;

  Result := vTextoFinal;
end;

end.
