program GenerateurDesFactures;

uses
  Forms,
  MainFormUnit in 'Form\MainFormUnit.pas' {MainForm},
  ExporterUnit in 'Form\ExporterUnit.pas' {Exporter},
  ReportUnit in 'Form\ReportUnit.pas' {QuickReport1: TQuickRep};

{$R *.res}
{$R TempDB.RES}

begin
  Application.Initialize;
  Application.Title:='Factures generator';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TQuickReport1, QuickReport1);
  Application.CreateForm(TExporter, Exporter);
  Application.Run;
end.
