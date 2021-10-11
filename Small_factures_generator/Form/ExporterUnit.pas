unit ExporterUnit;

interface

uses
  Classes, Controls, Forms,
  StdCtrls;

type
  TExporter = class(TForm)
    btnOk: TButton;
    btnAnnuler: TButton;
    rbHTML: TRadioButton;
    rbASCII: TRadioButton;
    rbCSV: TRadioButton;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Exporter: TExporter;

implementation

{$R *.dfm}

end.
