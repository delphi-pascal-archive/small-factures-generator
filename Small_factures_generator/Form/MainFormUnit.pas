UNIT MainFormUnit;

INTERFACE

USES
  Windows, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, XPMan, StdCtrls, ExtCtrls, Spin, DBGrids,
  Buttons, DB, DBClient, DBCtrls, IniFiles, QRExport, ExtDlgs,
  Grids;

TYPE
  TIniCreerFermer = (ticfCreer, ticfFermer);

TYPE
  TMainForm = CLASS(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    XPManifest1: TXPManifest;
    groInformationPersonnel: TGroupBox;
    lblmNomPrenom: TLabel;
    edtmNomPrenom: TEdit;
    edtmAdresse: TEdit;
    lblmAdresse: TLabel;
    edtmVille: TEdit;
    lblmVille: TLabel;
    edtmPaye: TEdit;
    lblmPaye: TLabel;
    edtmTelephone: TEdit;
    lblmTelephone: TLabel;
    edtmEmail: TEdit;
    lblmEmail: TLabel;
    edtmAdresseWeb: TEdit;
    lblmAdresseWeb: TLabel;
    grpInformationDuClient: TGroupBox;
    lblsNomPrenom: TLabel;
    lblsAdresse: TLabel;
    lblsVille: TLabel;
    lblsPaye: TLabel;
    lblsTelephone: TLabel;
    lblsEmail: TLabel;
    lblsAdresseWeb: TLabel;
    edtsNomPrenom: TEdit;
    edtsAdresse: TEdit;
    edtsVille: TEdit;
    edtsPaye: TEdit;
    edtsTelephone: TEdit;
    edtsEmail: TEdit;
    edtsAdresseWeb: TEdit;
    grpAutres: TGroupBox;
    pnlImage: TPanel;
    imgEntete: TImage;
    btnAjouterUneImage: TButton;
    btnSuprimerLimage: TButton;
    grpInfoDocument: TGroupBox;
    dtpDate: TDateTimePicker;
    seNumero: TSpinEdit;
    lblGenre: TLabel;
    lblNumero: TLabel;
    lblDate: TLabel;
    cbbGenre: TComboBox;
    pnl1: TPanel;
    lbl: TLabel;
    DataSource1: TDataSource;
    pnl3: TPanel;
    dbtxtMontanTotal: TDBText;
    lblMontantTotal: TLabel;
    shp1: TShape;
    btnSuivantRetour: TSpeedButton;
    lbl1: TLabel;
    lbl2: TLabel;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    dlgSave1: TSaveDialog;
    btnImprimer: TSpeedButton;
    btnApercu: TSpeedButton;
    btnExporter: TSpeedButton;
    btnNouveau: TSpeedButton;
    pnl2: TPanel;
    dbgrdDonnees: TDBGrid;
    Panel1: TPanel;
    btnFirst: TDBNavigator;
    btnPrior: TDBNavigator;
    btnNext: TDBNavigator;
    btnLast: TDBNavigator;
    btnInsert: TDBNavigator;
    btnPost: TDBNavigator;
    btnEdit: TDBNavigator;
    btnDelete: TDBNavigator;
    btnCancel: TDBNavigator;
    btnRefresh: TDBNavigator;
    QRHTMLFilter1: TQRHTMLFilter;
    OpenPictureDialog1: TOpenPictureDialog;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Numero: TAutoIncField;
    ClientDataSet1Description: TStringField;
    ClientDataSet1Quantite: TIntegerField;
    ClientDataSet1PrixUnitaire: TCurrencyField;
    ClientDataSet1Montant: TCurrencyField;
    ClientDataSet1MontantTotal: TAggregateField;
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE Impresion(Sender: TObject);
    PROCEDURE btnSuivantRetourClick(Sender: TObject);
    PROCEDURE FormDestroy(Sender: TObject);
    PROCEDURE ClientDataSet1CalcFields(DataSet: TDataSet);
    PROCEDURE btnNouveauClick(Sender: TObject);
    PROCEDURE btnAjouterUneImageClick(Sender: TObject);
    PROCEDURE btnSuprimerLimageClick(Sender: TObject);
  PRIVATE
    { Déclarations privées }
     IniFile : TIniFile;
     ChemainPlusNom : STRING;
     PROCEDURE CreerFermerFichierIni(QueFaire : TIniCreerFermer); //là on utilse le nouveau type qu'on a créé
     PROCEDURE CreerLaTable; 
  PUBLIC
    { Déclarations publiques }
  END;

VAR
  MainForm: TMainForm;
IMPLEMENTATION
             //si vous voulez distribuer votre application il vous faudra distribuer avec elle midas.dll si non
             //il suffit de declarer MidasLib :)
   USES ReportUnit, ExporterUnit, MidasLib ;
{$R *.dfm}

{......................................................................................}
PROCEDURE TMainForm.FormCreate(Sender: TObject);
VAR
 strTtmp : STRING;
BEGIN
  //-----------------------------------------------------------------------------------------
  // c'est un astuce pour recuperer le chemain de nontre application + le nom de l'executable sans
  //  l'extention exp :  c:/monprogramme.exe  = c:/monprogramme
   strTtmp := ExtractFileName(Application.ExeName);
   ChemainPlusNom := ExtractFilePath(Application.ExeName)+ ChangeFileExt(strTtmp,'' );
  //-----------------------------------------------------------------------------------------
  CreerFermerFichierIni(ticfCreer); // On cree notre fichier ini
  dtpDate.Date := now; // On récupere la date d'aujourd'hui
  PageControl1.ActivePage := TabSheet1;
  IF FileExists(ChemainPlusNom+'.bmp') THEN  // Si l'image se trouve on la charge dans notre TImage
  BEGIN
    imgEntete.Picture.LoadFromFile(ChemainPlusNom+'.bmp');
    btnSuprimerLimage.Enabled := true;
  END;
  if NOT FileExists(ChemainPlusNom+'.xml') THEN // si on trouve pas notre tablle
    CreerLaTable;                              // on crée une nouvelle
  ClientDataSet1.LoadFromFile(ChemainPlusNom+'.xml'); // on charge notre table
  ClientDataSet1.Open;  // on ouvre notre table
END;
{......................................................................................}
PROCEDURE TMainForm.FormClose(Sender: TObject; VAR Action: TCloseAction);
BEGIN
  CreerFermerFichierIni(ticfFermer); // on enregistre tous dans notre fichier ini
  imgEntete.Picture.SaveToFile(ChemainPlusNom+'.bmp'); // on enregistre l'image qui se trouve dans notre Timage
END;
//////////////////////////////////////////////////////////////////////////////
//      la procedure qui va s'occuper de notre fichier ini                 //
/////////////////////////////////////////////////////////////////////////////
PROCEDURE TMainForm.CreerFermerFichierIni(QueFaire: TIniCreerFermer);
CONST
   arrIniSection  : ARRAY[1..3] OF STRING = ('GENERAL', 'MDONNEES', 'SDONNEES'); //Tableau des noms des section
   arrIniIdentGen : ARRAY[1..2] OF STRING = ('Genre','Numero');                  //Premier tableau des clés
   arrIniIdentDon : ARRAY[1..7] OF STRING = ('Nom', 'Adresse', 'Ville', 'Paye',  // Deuxième tableu des clés
                                           'Telephonne', 'Email', 'AdresseWeb');
BEGIN
  IF QueFaire = ticfCreer THEN //savoir quoi faire
  BEGIN
     IniFile:=TIniFile.Create(ChemainPlusNom + '.ini'); // si nontre fichier ini se trouve deja on le charge si non on le crée
     WITH IniFile DO  //pour ne avoir à répéter inifile on utilise with
     BEGIN
       cbbGenre.Text := ReadString(arrIniSection[1], arrIniIdentGen[1], '');
       seNumero.Text := ReadString(arrIniSection[1], arrIniIdentGen[2], '1');
       edtmNomPrenom.Text := ReadString(arrIniSection[2], arrIniIdentDon[1], '');
       edtmAdresse.Text := ReadString(arrIniSection[2], arrIniIdentDon[2], '');
       edtmVille.Text := ReadString(arrIniSection[2], arrIniIdentDon[3], '');
       edtmPaye.Text := ReadString(arrIniSection[2], arrIniIdentDon[4], '');
       edtmTelephone.Text := ReadString(arrIniSection[2], arrIniIdentDon[5], '');
       edtmEmail.Text := ReadString(arrIniSection[2], arrIniIdentDon[6], '');
       edtmAdresseWeb.Text := ReadString(arrIniSection[2], arrIniIdentDon[7], '');
       edtsNomPrenom.Text := ReadString(arrIniSection[3], arrIniIdentDon[1], '');
       edtsAdresse.Text := ReadString(arrIniSection[3], arrIniIdentDon[2], '');
       edtsVille.Text := ReadString(arrIniSection[3], arrIniIdentDon[3], '');
       edtsPaye.Text := ReadString(arrIniSection[3], arrIniIdentDon[4], '');
       edtsTelephone.Text := ReadString(arrIniSection[3], arrIniIdentDon[5], '');
       edtsEmail.Text := ReadString(arrIniSection[3], arrIniIdentDon[6], '');
       edtsAdresseWeb.Text := ReadString(arrIniSection[3], arrIniIdentDon[7], '');
     END;
  END ELSE
  BEGIN
     WITH IniFile DO
     BEGIN             //on enregistre notre fichier ini
       WriteString(arrIniSection[1], arrIniIdentGen[1], cbbGenre.Text);
       WriteString(arrIniSection[1], arrIniIdentGen[2], seNumero.Text);
       WriteString(arrIniSection[2], arrIniIdentDon[1], edtmNomPrenom.Text);
       WriteString(arrIniSection[2], arrIniIdentDon[2], edtmAdresse.Text);
       WriteString(arrIniSection[2], arrIniIdentDon[3], edtmVille.Text);
       WriteString(arrIniSection[2], arrIniIdentDon[4], edtmPaye.Text);
       WriteString(arrIniSection[2], arrIniIdentDon[5], edtmTelephone.Text);
       WriteString(arrIniSection[2], arrIniIdentDon[6], edtmEmail.Text);
       WriteString(arrIniSection[2], arrIniIdentDon[7], edtmAdresseWeb.Text);
       WriteString(arrIniSection[3], arrIniIdentDon[1], edtsNomPrenom.Text);
       WriteString(arrIniSection[3], arrIniIdentDon[2], edtsAdresse.Text);
       WriteString(arrIniSection[3], arrIniIdentDon[3], edtsVille.Text);
       WriteString(arrIniSection[3], arrIniIdentDon[4], edtsPaye.Text);
       WriteString(arrIniSection[3], arrIniIdentDon[5], edtsTelephone.Text);
       WriteString(arrIniSection[3], arrIniIdentDon[6], edtsEmail.Text);
       WriteString(arrIniSection[3], arrIniIdentDon[7], edtsAdresseWeb.Text);
       Free;  //puis on le liber
     END;
  END;
END;
//////////////////////////////////////////////////////////////////////////////
//      la procedure qui va s'occuper de Quickreport                       //
/////////////////////////////////////////////////////////////////////////////
PROCEDURE TMainForm.Impresion(Sender: TObject);
VAR
  b:Byte;
BEGIN
    WITH QuickReport1 DO
    BEGIN
     // on l'initialise
         ReportTitle := cbbGenre.Text+' N_'+seNumero.Text;
         qlbGenreNumero.Caption := Format('%s N° : %s',[cbbGenre.Text,seNumero.Text]); // = cbbGenre.Text +' N° '+ seNumero.Text
         qlbDate.Caption := FormatDateTime('"Date : "dddd d mmmm yyyy',dtpDate.Date);
         qimgEntete.Picture := imgEntete.Picture;
         qlbmNomPrenom.Caption := edtmNomPrenom.Text;
         qlbmAdresse.Caption := edtmAdresse.Text;
         qlbmVille.Caption := edtmVille.Text;
         qlbmPaye.Caption := edtmVille.Text;
         qlbmTelephone.Caption := edtmTelephone.Text;
         qlbmEmail.Caption := edtmEmail.Text;
         qlbmAdresseWeb.Caption := edtmAdresseWeb.Text;
         qlbsNomPrenom.Caption := edtsNomPrenom.Text;
         qlbsAdresse.Caption := edtsAdresse.Text;
         qlbsVille.Caption := edtsVille.Text;
         qlbsPaye.Caption := edtsVille.Text;
         qlbsTelephone.Caption := edtsTelephone.Text;
         qlbsEmail.Caption := edtsEmail.Text;
         qlbsAdresseWeb.Caption := edtsAdresseWeb.Text;
         Refresh;
       CASE (Sender AS TSpeedButton).Tag OF //celon le tag du bouton
         1 : Print;   // Imprimer
         2 : PreviewModal; //aperçu
         3 : BEGIN  //exporter
               Exporter.ShowModal;
               IF Exporter.ModalResult = mrOk THEN
               BEGIN
                 b:=0;
                 IF Exporter.rbCSV.Checked THEN
                 BEGIN
                    dlgsave1.FileName := ReportTitle+'.csv';
                    b:=1;
                 END
                 ELSE IF Exporter.rbHTML.Checked THEN
                 BEGIN
                    dlgsave1.FileName := ReportTitle+'.html';
                    b:=2;
                 END
                 ELSE IF Exporter.rbASCII.Checked THEN
                 BEGIN
                    dlgsave1.FileName := ReportTitle+'.txt';
                    b:=3;
                 END;
                 IF dlgSave1.Execute THEN
                  CASE b OF
                   1 : ExportToFilter(TQRCommaSeparatedFilter.Create(dlgsave1.FileName));
                   2 : ExportToFilter(TQRHTMLDocumentFilter.Create(dlgsave1.FileName));
                   3 : ExportToFilter(TQRAsciiExportFilter.Create(dlgsave1.FileName));
                  END;
              END;
             END;
       END;
    END;
END;
{......................................................................................}
PROCEDURE TMainForm.btnSuivantRetourClick(Sender: TObject);
BEGIN
 IF (cbbGenre.Text = '') OR (seNumero.Text = '') THEN
  Exit;

 IF PageControl1.ActivePageIndex = 0 THEN
 BEGIN
   PageControl1.ActivePageIndex := 1;
   btnSuivantRetour.Caption := '<< Back'
 END
 ELSE
 BEGIN
   PageControl1.ActivePageIndex := 0;
   btnSuivantRetour.Caption := 'Next >>';
 END;
END;
///////////////////////////////////////////////////////////////////////////////////////
//la procedure qui va s'occuper d'extraire notre fichier xml depuis notre executable //
//////////////////////////////////////////////////////////////////////////////////////
PROCEDURE TMainForm.CreerLaTable;
VAR
 ResourceStream:TResourceStream;
 FichierStream :TFileStream;
BEGIN
  ResourceStream:=TResourceStream.Create(hInstance, 'TEMPDB', RT_RCDATA); //notre ressource s'appelle TEMPDB et qui est de type RT_RCDATA
  TRY
    FichierStream:=TFileStream.Create(ChemainPlusNom+'.xml', fmCreate); //on crée un fichier xml
    TRY
      FichierStream.CopyFrom(ResourceStream, 0); // on copy notre ressource dans le fichier créer
    FINALLY
      FichierStream.Free;
    END;
  FINALLY
    ResourceStream.Free;
  END;
END;
{......................................................................................}
PROCEDURE TMainForm.FormDestroy(Sender: TObject);
BEGIN
  ClientDataSet1.SaveToFile(ChemainPlusNom+'.xml',dfXML); //on enregistre notre table
END;
{......................................................................................}
PROCEDURE TMainForm.ClientDataSet1CalcFields(DataSet: TDataSet);
BEGIN  // recalcule les champs calculés. dans notre cas c'est le Montant qui est de type fkCalculated. (Montant = Prix X Quantite)
   ClientDataSet1.FieldByName('Montant').AsCurrency := ClientDataSet1.FieldByName('PrixUnitaire').AsCurrency * ClientDataSet1.FieldByName('Quantite').AsInteger;
END;
{......................................................................................}
PROCEDURE TMainForm.btnNouveauClick(Sender: TObject);
BEGIN
  ClientDataSet1.Close;// on ferme ClientDataSet1
  IF DeleteFile(ChemainPlusNom+'.xml') THEN  //on supprimer notre fichier xml
  BEGIN
    CreerLaTable;   //on le crée de nouveau
    ClientDataSet1.LoadFromFile(ChemainPlusNom+'.xml'); //puis on l'ouvre
    ClientDataSet1.Open;
    seNumero.Value:=seNumero.Value+1;  // on incrémente seNumero
  END;
END;
{......................................................................................}
PROCEDURE TMainForm.btnAjouterUneImageClick(Sender: TObject);
BEGIN
  IF OpenPictureDialog1.Execute THEN
  BEGIN
    imgEntete.Picture.LoadFromFile(OpenPictureDialog1.FileName); //on charge une nouvelle image
    btnSuprimerLimage.Enabled := true;
  END;
END;
{......................................................................................}
PROCEDURE TMainForm.btnSuprimerLimageClick(Sender: TObject);
BEGIN
 IF DeleteFile(ChemainPlusNom+'.bmp') THEN //on supprimer l'image du disque
 BEGIN
    imgEntete.Picture := NIL; //on la libere de notre TImage
    btnSuprimerLimage.Enabled := false;
 END;
END;

END.
