unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids,
  StrUtils;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    btnBereken: TButton;
    cbOperator: TComboBox;
    edGetal1: TEdit;
    edGetal2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    sgResultaat: TStringGrid;
    procedure btnBerekenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  frmMain: TfrmMain;

implementation

{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  sgResultaat.Cells[0,1] := '1e getal';
  sgResultaat.Cells[0,2] := '2e getal';
  sgResultaat.Cells[0,3] := 'Resultaat';
end;

procedure TfrmMain.btnBerekenClick(Sender: TObject);
var
  o,x,y,z: Integer;
  s1,s2,s3,s4,s5,s6: string;
begin
  x := StrToInt(edGetal1.Text);
  y := StrToInt(edGetal2.Text);
  s1 := IntToBin(x,8);
  s4 := IntToHex(x);
  s2 := IntToBin(y,8);
  s5 := IntToHex(y);
  o := cbOperator.ItemIndex;
  case o of
    0: z := x and y;
    1: z := x or y;
    2: z := x xor y;
  end;
  s3 := IntToBin(z,8);
  s6 := IntToHex(z);
  sgResultaat.Cells[1,1] := x.ToString;
  sgResultaat.Cells[1,2] := y.ToString;
  sgResultaat.Cells[1,3] := z.ToString;
  sgResultaat.Cells[2,1] := s1;
  sgResultaat.Cells[2,2] := s2;
  sgResultaat.Cells[2,3] := s3;
  sgResultaat.Cells[3,1] := s4;
  sgResultaat.Cells[3,2] := s5;
  sgResultaat.Cells[3,3] := s6;
end;

end.

