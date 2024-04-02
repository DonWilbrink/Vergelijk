program vergelijkwin;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes,
  StrUtils, SysUtils
  { you can add units after this };

var
  x,y,z: Integer;
  s1,s2,s3: string;
begin
  x := 135;
  y := 113;
  s1 := IntToBin(x,8);
  s2 := IntToBin(y,8);
  z := x xor y;
  s3 := IntToBin(z,8);
  WriteLn(IntToStr(x) + ' ' + s1);
  WriteLn(IntToStr(y) + ' ' + s2);
  WriteLn(IntToStr(z) + ' ' + s3);
  ReadLn;

end.

