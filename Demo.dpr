program Demo;

uses
  Vcl.Forms,
  Form.Animation in 'Form.Animation.pas' {formAnimation},
  UCL.IntAnimation.Collection in 'UCL.IntAnimation.Collection.pas',
  UCL.IntAnimation.Helpers in 'UCL.IntAnimation.Helpers.pas',
  UCL.IntAnimation in 'UCL.IntAnimation.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutDown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformAnimation, formAnimation);
  Application.Run;
end.
