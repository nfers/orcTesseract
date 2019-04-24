program delphi_console_simple;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  tesseractocr in '..\..\tesseractocr.pas';

begin
  Tesseract := TTesseractOCR4.Create;
  try
    if Tesseract.Initialize('tessdata' + PathDelim, 'por') then
    begin
      Tesseract.SetImage('samples' + PathDelim + 'a.png');
      WriteLn(Tesseract.RecognizeAsText);
      ReadLn;

    end;
  finally
    Tesseract.Free;
  end;
end.
