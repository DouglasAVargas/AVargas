unit uMaquinaTroco;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, uMaquina;

type

  { TForm1 }

  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var
  pTroco : TMaquina;
begin
  try
  pTroco := TMaquina.Create;
  ShowMessage(pTroco.MontarTroco(288.87).Text);

  finally
    pTroco.Free;
    Application.Terminate;
  end;
end;

end.

