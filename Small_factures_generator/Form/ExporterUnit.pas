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
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Exporter: TExporter;

implementation

{$R *.dfm}

end.
