# mensaScolasticaBot

DataBase

Esiste una tabella che si chiama `MENSA_ISTITUTO` che ha le colonne `ID`, `COMUNE`, `ISTITUTO`, `SCUOLA`.

ID : è numerico, autoincrementale e chiave primaria.
COMUNE : il comune di appartenenza ("Francavilla Fontana", "San Pancrazio", "Roma")
ISTITUTO : istituto di riferimento ("PRIMO CIRCOLO", "SECONDO CIRCOLO" ...)
SCUOLA : il livello della scuola ("MATERNA", "ELEMENTARE", "NIDO")

La tabella `MENSA` ha le seguenti colonne `ID_ISTITUTO`, `SETTIMANA`, `GIORNO`, `N_PORTATA`, `PIATTO`, `RICETTA`, `DATA_VALIDITA_DAL`, `DATA_VALIDITA_AL`.

ID_ISTITUTO : punta alla chiave primaria della tabella MENSA_ISTITUTO e quindi identifica la scuola, e l'istituto.
SETTIMANA : settimana del mese "1", "2", "3", "4", "5"
GIORNO : della settimana ("LUNEDI", "MARTEDI"... senza accenti)
N_PORTATA : numero della portata : "1" è il primo, "2" il secondo ... in base a questo numero verranno restituiti ordinate le portate del giorno
PIATTO : nome della portata "Risotto di verdure"
RICETTA : gli ingredienti con le eventuali quantità in grammi o in numero 
DATA_VALIDITA_DAL : data inizio validità
DATA_VALIDITA_AL : data fine validità

Quindi il data-entry per Grottaglie, che nella tabella degli istituti è configurata come:


ID   COMUNE         ISTITUTO             SCUOLA

17, GROTTAGLIE, TUTTI I CIRCOLI, MATERNA

18, GROTTAGLIE, TUTTI I CIRCOLI, ELEMENTARE

19, GROTTAGLIE, TUTTI I CIRCOLI, MEDIA


consisterebbe nel preparare le righe come segue l'esempio della scuola ELEMENTARE, prima settimana,  lunedì (è un esempio), per la prima portata :


(18, 1, 'LUNEDI', 1, 'Pasta al ragù', 'Penne, 50g\r\nRagù di pomodoro 10g\r\nOlio extraverg. d’oliva, 5g', '2017-06-21', '2017-09-21'),
