program delphi_console_pdfconvert;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  tesseractocr in '..\..\tesseractocr.pas';

var
  inputFileName,
  outputFileName: String;
begin
  Tesseract := TTesseractOCR4.Create;
  try
    if Tesseract.Initialize('tessdata' + PathDelim, 'eng') then
    begin
      inputFileName := 'samples' + PathDelim + 'SS.png';
      outputFileName := 'Teste.pdf';

      if Tesseract.CreatePDF(inputFileName, outputFileName) then
      begin
        WriteLn('PDF Foi Salvo com sucesso no diretorio %s ' + outputFileName);
        ReadLn;
      end;
    end;
  finally
    Tesseract.Free;
  end;
end.
