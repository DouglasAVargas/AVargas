unit uResolucao;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, uSubstitui;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    pSubstitui : TSubstitui;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  pSubstitui.Create;
  ShowMessage(pSubstitui.Substituir('O rato roeu a roupa do rei de roma','ro','teste'));
end;

end.

