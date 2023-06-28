unit view.main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, md5;

type

  { TForm1 }

  TForm1 = class(TForm)
    FlowPanel1: TFlowPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    memo1: TMemo;
    memo2: TMemo;
    btnGerar: TPanel;
    checkMD5: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    procedure btnGerarClick(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnGerarClick(Sender: TObject);
begin
  if checkMD5.Checked = true then
    memo2.Text := MD5Print(MD5String(memo1.Text));
end;

end.

