unit ReportUnit;

interface

uses Classes, Controls,
  ExtCtrls, QuickRpt, QRCtrls;

type
  TQuickReport1 = class(TQuickRep)
    qbndTitle: TQRBand;
    qshp2: TQRShape;
    qimgEntete: TQRImage;
    qlbmNomPrenom: TQRLabel;
    qlbmAdresse: TQRLabel;
    qlbmPaye: TQRLabel;
    qlbmVille: TQRLabel;
    qlbmAdresseWeb: TQRLabel;
    qlbmEmail: TQRLabel;
    qlbmTelephone: TQRLabel;
    qshp3: TQRShape;
    qlbGenreNumero: TQRLabel;
    qshp4: TQRShape;
    qlbDate: TQRLabel;
    qlbsPaye: TQRLabel;
    qlbsVille: TQRLabel;
    qlbsAdresse: TQRLabel;
    qlbsNomPrenom: TQRLabel;
    qshp5: TQRShape;
    qshp6: TQRShape;
    qshp7: TQRShape;
    qshp8: TQRShape;
    qshp9: TQRShape;
    qlbMonatant: TQRLabel;
    qlbQuantite: TQRLabel;
    qlbPrixUnitaire: TQRLabel;
    qlbDescription: TQRLabel;
    qlbNumero: TQRLabel;
    qrshp1: TQRShape;
    qlbsTelephone: TQRLabel;
    qlbsAdresseWeb: TQRLabel;
    qlbsEmail: TQRLabel;
    PageFooterBand1: TQRBand;
    qshp17: TQRShape;
    qrsysdtPage: TQRSysData;
    qlbPage: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    qshp10: TQRShape;
    qshp11: TQRShape;
    qshp12: TQRShape;
    qshp13: TQRShape;
    qshp14: TQRShape;
    qshp15: TQRShape;
    qdbtxtNumeroDesignation: TQRDBText;
    qdbtxtNumeroQuantite: TQRDBText;
    qdbtxtNumeroPrix: TQRDBText;
    qdbtxtNumeroMontant: TQRDBText;
    qdbtxtNumeroNumero: TQRDBText;
    qbndSummary: TQRBand;
    qshp16: TQRShape;
    qlbMontantTotal: TQRLabel;
    QRDBText1: TQRDBText;
  private

  public

  end;

var
  QuickReport1: TQuickReport1;

implementation
    
{$R *.DFM}

end.
