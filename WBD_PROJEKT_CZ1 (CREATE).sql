/*
Created: 05.12.2019
Modified: 12.12.2019
Project: WBD
Model: Logical_model
Author: Piotr Majecki
Database: Oracle 19c
*/


-- Create sequences section -------------------------------------------------

CREATE SEQUENCE ParkRozrywkiSeq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20;

CREATE SEQUENCE WlascicielSeq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20;

CREATE SEQUENCE AdresSeq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20;

CREATE SEQUENCE PracownikSeq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20;

CREATE SEQUENCE StanowiskoSeq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20;

CREATE SEQUENCE WynagrodzenieSeq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20;

CREATE SEQUENCE AtrakcjaSeq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20;

CREATE SEQUENCE WagonikSeq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20;

CREATE SEQUENCE DlaDoroslychSeq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20;

CREATE SEQUENCE DlaMlodziezySeq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20;

CREATE SEQUENCE DlaDzieciSeq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20;

CREATE SEQUENCE BiletSeq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20;

CREATE SEQUENCE KlientSeq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20;

CREATE SEQUENCE KasaSeq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20;

CREATE SEQUENCE PrzekaskiSeq
 INCREMENT BY 1
 START WITH 1
 NOMAXVALUE
 NOMINVALUE
 CACHE 20;

-- Create tables section -------------------------------------------------

-- Table Parki_rozrywki

CREATE TABLE Parki_rozrywki(
  Id_parku_rozrywki Integer NOT NULL,
  Nazwa_parku Varchar2(30 ) NOT NULL,
  Powierzchnia Integer NOT NULL,
  Ilosc_atrakcji Integer NOT NULL,
  Numer_telefonu_parku Varchar2(9 ) NOT NULL,
  Adres_mailowy_parku Varchar2(60 ) NOT NULL,
  Id_adresu Integer NOT NULL
);

-- Create indexes for table Parki_rozrywki

CREATE INDEX Znajduje_sie ON Parki_rozrywki (Id_adresu);

-- Add keys for table Parki_rozrywki

ALTER TABLE Parki_rozrywki ADD CONSTRAINT Unique_Identifier1 PRIMARY KEY (Id_parku_rozrywki);

-- Table and Columns comments section

COMMENT ON COLUMN Parki_rozrywki.Id_parku_rozrywki IS 'Unikatowy numer parku rozrywki';
COMMENT ON COLUMN Parki_rozrywki.Nazwa_parku IS 'Nazwa parku rozrywki';
COMMENT ON COLUMN Parki_rozrywki.Powierzchnia IS 'Powierzchnia parku rozrywki';
COMMENT ON COLUMN Parki_rozrywki.Ilosc_atrakcji IS 'Ilosc atrakcji w parku rozrywki';
COMMENT ON COLUMN Parki_rozrywki.Numer_telefonu_parku IS 'Numer telefonu do parku rozrywki';
COMMENT ON COLUMN Parki_rozrywki.Adres_mailowy_parku IS 'Adres e-mail do parku rozrywki';
COMMENT ON COLUMN Parki_rozrywki.Id_adresu IS 'Klucz obcy Id adresu';


-- Table Pracownicy

CREATE TABLE Pracownicy(
  Id_pracownika Integer NOT NULL,
  Imie_pracownika Varchar2(20 ) NOT NULL,
  Nazwisko_pracownika Varchar2(30 ) NOT NULL,
  Plec_pracownika Char(1 ),
  Data_urodzenia_pracownika Date NOT NULL,
  PESEL Char(11 ),
  Data_zatrudnienia Date NOT NULL,
  Numer_dokument Char(9 ) NOT NULL,
  Numer_konta Char(26 ) NOT NULL,
  Numer_telefonu_pracownika Varchar2(9 ) NOT NULL,
  Adres_mailowy_pracownika Varchar2(60 ),
  Id_parku_rozrywki Integer NOT NULL,
  Id_adresu Integer NOT NULL,
  Id_stanowiska Integer NOT NULL
);

-- Create indexes for table Pracownicy

CREATE INDEX Jest_zatrudniany ON Pracownicy (Id_parku_rozrywki);
CREATE INDEX Mieszka ON Pracownicy (Id_adresu);
CREATE INDEX Pracuje_na ON Pracownicy (Id_stanowiska);

-- Add keys for table Pracownicy

ALTER TABLE Pracownicy ADD CONSTRAINT Unique_Identifier2 PRIMARY KEY (Id_pracownika);
ALTER TABLE Pracownicy ADD CONSTRAINT Plec_pracownika CHECK (Plec_pracownika IN ('K','M'));

-- Table and Columns comments section

COMMENT ON COLUMN Pracownicy.Id_pracownika IS 'Unikatowy numer pracownika';
COMMENT ON COLUMN Pracownicy.Imie_pracownika IS 'Imie pracownika';
COMMENT ON COLUMN Pracownicy.Nazwisko_pracownika IS 'Nazwisko pracownika';
COMMENT ON COLUMN Pracownicy.Plec_pracownika IS 'Plec pracownika';
COMMENT ON COLUMN Pracownicy.Data_urodzenia_pracownika IS 'Data urodzenia pracownika';
COMMENT ON COLUMN Pracownicy.PESEL IS 'PESEL pracownika';
COMMENT ON COLUMN Pracownicy.Data_zatrudnienia IS 'Data zatrudnienia pracownika';
COMMENT ON COLUMN Pracownicy.Numer_dokument IS 'Numer dokumentu pracownika';
COMMENT ON COLUMN Pracownicy.Numer_konta IS 'Numer konta bankowego pracownika';
COMMENT ON COLUMN Pracownicy.Numer_telefonu_pracownika IS 'Numer telefonu pracownika';
COMMENT ON COLUMN Pracownicy.Adres_mailowy_pracownika IS 'Adres e-mail pracownika';
COMMENT ON COLUMN Pracownicy.Id_parku_rozrywki IS 'Klucz obcy Id praku rozrywki';
COMMENT ON COLUMN Pracownicy.Id_adresu IS 'Klucz obcy Id adresu';
COMMENT ON COLUMN Pracownicy.Id_stanowiska IS 'Klucz obcy Id stanowiska';


-- Table Wynagrodzenia

CREATE TABLE Wynagrodzenia(
  Id_wynagrodzenia Integer NOT NULL,
  Data_wyplacania Date NOT NULL,
  Wysokosc Number(10,2) NOT NULL,
  Dodatki Number(10,2),
  Id_pracownika Integer NOT NULL
);

-- Create indexes for table Wynagrodzenia

CREATE INDEX Jest_wyplacane ON Wynagrodzenia (Id_pracownika);

-- Add keys for table Wynagrodzenia

ALTER TABLE Wynagrodzenia ADD CONSTRAINT Unique_Identifier3 PRIMARY KEY (Id_wynagrodzenia);

-- Table and Columns comments section

COMMENT ON COLUMN Wynagrodzenia.Id_wynagrodzenia IS 'Unikatowy numer wynagrodzenia';
COMMENT ON COLUMN Wynagrodzenia.Data_wyplacania IS 'Data wyplacania wynagrodzenia';
COMMENT ON COLUMN Wynagrodzenia.Wysokosc IS 'Wysokosc wynagrodzenia';
COMMENT ON COLUMN Wynagrodzenia.Dodatki IS 'Dodatki do wynagrodzenia';
COMMENT ON COLUMN Wynagrodzenia.Id_pracownika IS 'Klucz obcy Id pracownika';


-- Table Klienci

CREATE TABLE Klienci(
  Id_klienta Integer NOT NULL,
  Imie_klienta Varchar2(20 ) NOT NULL,
  Nazwisko_klienta Varchar2(30 ) NOT NULL,
  Plec_klienta Char(1 ),
  Data_urodzenia_klienta Date,
  Wzrost Integer,
  Adres_mailowy_klienta Varchar2(60 ),
  Id_parku_rozrywki Integer NOT NULL
);

-- Create indexes for table Klienci

CREATE INDEX Jest_zabawiany ON Klienci (Id_parku_rozrywki);

-- Add keys for table Klienci

ALTER TABLE Klienci ADD CONSTRAINT Unique_Identifier4 PRIMARY KEY (Id_klienta);
ALTER TABLE Klienci ADD CONSTRAINT Plec_klienta CHECK (Plec_klienta IN ('K','M'));

-- Table and Columns comments section

COMMENT ON COLUMN Klienci.Id_klienta IS 'Unikatowy numer klienia';
COMMENT ON COLUMN Klienci.Imie_klienta IS 'Imie klienta';
COMMENT ON COLUMN Klienci.Nazwisko_klienta IS 'Nazwisko klienta';
COMMENT ON COLUMN Klienci.Plec_klienta IS 'Plec klienta';
COMMENT ON COLUMN Klienci.Data_urodzenia_klienta IS 'Data urodzenia klienta';
COMMENT ON COLUMN Klienci.Wzrost IS 'Wzrost klienta';
COMMENT ON COLUMN Klienci.Adres_mailowy_klienta IS 'Adres e-mail klienta';
COMMENT ON COLUMN Klienci.Id_parku_rozrywki IS 'Klucz obcy Id parku rozrywki';


-- Table Atrakcje

CREATE TABLE Atrakcje(
  Id_atrakcji Integer NOT NULL,
  Nazwa_atrakcji Varchar2(30 ) NOT NULL,
  Rodzaj_atrakcji Varchar2(20 ) NOT NULL,
  Ilosc_wagonikow Integer NOT NULL,
  Czas_trwania Integer NOT NULL,
  Id_parku_rozrywki Integer NOT NULL
);

-- Create indexes for table Atrakcje

CREATE INDEX Jest_zapewniana ON Atrakcje (Id_parku_rozrywki);

-- Add keys for table Atrakcje

ALTER TABLE Atrakcje ADD CONSTRAINT Unique_Identifier5 PRIMARY KEY (Id_atrakcji);
ALTER TABLE Atrakcje ADD CONSTRAINT Rodzaj_atrakcji CHECK (Rodzaj_atrakcji IN ('dla_dzieci','dla_mlodziezy','dla_doroslych'));

-- Table and Columns comments section

COMMENT ON COLUMN Atrakcje.Id_atrakcji IS 'Unikatowy numer atrakcji';
COMMENT ON COLUMN Atrakcje.Nazwa_atrakcji IS 'Nazwa atrakcji';
COMMENT ON COLUMN Atrakcje.Rodzaj_atrakcji IS 'Rodzaj atrakcji';
COMMENT ON COLUMN Atrakcje.Ilosc_wagonikow IS 'Ilosc wagonikow w danej atrakcji';
COMMENT ON COLUMN Atrakcje.Czas_trwania IS 'Czas trwania atrakcji';
COMMENT ON COLUMN Atrakcje.Id_parku_rozrywki IS 'Klucz obcy Id parku rozrywki';


-- Table Bilety

CREATE TABLE Bilety(
  Id_biletu Integer NOT NULL,
  Rodzaj_biletu Varchar2(20 ) NOT NULL,
  Cena_biletu Number(10,2) NOT NULL,
  Data Date NOT NULL,
  Id_klienta Integer NOT NULL,
  Id_kasy Integer NOT NULL
);

-- Create indexes for table Bilety

CREATE INDEX Sa_kupowane ON Bilety (Id_klienta);
CREATE INDEX Sa_sprzedawana ON Bilety (Id_kasy);

-- Add keys for table Bilety

ALTER TABLE Bilety ADD CONSTRAINT Unique_Identifier10 PRIMARY KEY (Id_biletu);
ALTER TABLE Bilety ADD CONSTRAINT Rodzaj_biletu CHECK (Rodzaj_biletu IN ('jednodniowy','trzydniowy'));

-- Table and Columns comments section

COMMENT ON COLUMN Bilety.Id_biletu IS 'Unikatowy numer biletu';
COMMENT ON COLUMN Bilety.Rodzaj_biletu IS 'Rodzaj biletu';
COMMENT ON COLUMN Bilety.Cena_biletu IS 'Cena biletu';
COMMENT ON COLUMN Bilety.Data IS 'Data sprzedazy biletu';
COMMENT ON COLUMN Bilety.Id_klienta IS 'Klucz obcy Id klienta';
COMMENT ON COLUMN Bilety.Id_kasy IS 'Klucz obcy Id kasy';


-- Table Wagoniki

CREATE TABLE Wagoniki(
  Id_wagonika Integer NOT NULL,
  Marka Varchar2(30 ) NOT NULL,
  Model Varchar2(30 ) NOT NULL,
  Rodzaj_wagonika Varchar2(20 ) NOT NULL,
  Id_atrakcji Integer NOT NULL
);

-- Create indexes for table Wagoniki

CREATE INDEX Jest_przypisany ON Wagoniki (Id_atrakcji);

-- Add keys for table Wagoniki

ALTER TABLE Wagoniki ADD CONSTRAINT Unique_Identifier11 PRIMARY KEY (Id_wagonika);
ALTER TABLE Wagoniki ADD CONSTRAINT Rodzaj_wagonika CHECK (Rodzaj_wagonika IN ('szynowy','latajacy','plywajacy','gokart'));

-- Table and Columns comments section

COMMENT ON COLUMN Wagoniki.Id_wagonika IS 'Unikatowy numer wagonika';
COMMENT ON COLUMN Wagoniki.Marka IS 'Marka wagonika';
COMMENT ON COLUMN Wagoniki.Model IS 'Model wagonika';
COMMENT ON COLUMN Wagoniki.Rodzaj_wagonika IS 'Rodzaj wagonika w danej atrakcji';
COMMENT ON COLUMN Wagoniki.Id_atrakcji IS 'Klucz obcy Id atrakcji';


-- Table Przekaski

CREATE TABLE Przekaski(
  Id_przekaski Integer NOT NULL,
  Nazwa_przekaski Varchar2(30 ) NOT NULL,
  Cena_przekaski Number(10,2) NOT NULL,
  Sklad Varchar2(400 ) NOT NULL,
  Id_parku_rozrywki Integer NOT NULL
);

-- Create indexes for table Przekaski

CREATE INDEX Jest_dostepna ON Przekaski (Id_parku_rozrywki);

-- Add keys for table Przekaski

ALTER TABLE Przekaski ADD CONSTRAINT Unique_Identifier12 PRIMARY KEY (Id_przekaski);

-- Table and Columns comments section

COMMENT ON COLUMN Przekaski.Id_przekaski IS 'Unikatowy numer przekaski';
COMMENT ON COLUMN Przekaski.Nazwa_przekaski IS 'Nazwa przekaski';
COMMENT ON COLUMN Przekaski.Cena_przekaski IS 'Cena przekaski';
COMMENT ON COLUMN Przekaski.Sklad IS 'Opis skladnikow znajdujacych sie w przekasce';
COMMENT ON COLUMN Przekaski.Id_parku_rozrywki IS 'Klucz obcy Id parku rozrywki';


-- Table Dla_doroslych

CREATE TABLE Dla_doroslych(
  Id_atrakcji Integer NOT NULL,
  Wymagany_wiek Integer NOT NULL,
  Wymagany_wzrost Integer NOT NULL,
  Strasznosc Varchar2(20 ) NOT NULL,
  Choroby_serca Varchar2(3 ) NOT NULL
);

-- Add keys for table Dla_doroslych

ALTER TABLE Dla_doroslych ADD CONSTRAINT Unique_Identifier14 PRIMARY KEY (Id_atrakcji);
ALTER TABLE Dla_doroslych ADD CONSTRAINT Strasznosc CHECK (Strasznosc IN ('wcale','troche','straszna','bardzo_straszna'));
ALTER TABLE Dla_doroslych ADD CONSTRAINT Choroby_serca CHECK (Choroby_serca IN ('tak','nie'));

-- Table and Columns comments section

COMMENT ON COLUMN Dla_doroslych.Id_atrakcji IS 'PFK (primary foreign key) Id atrakcji';
COMMENT ON COLUMN Dla_doroslych.Wymagany_wiek IS 'Wymagany wiek aby skorzystac z atrakcji';
COMMENT ON COLUMN Dla_doroslych.Wymagany_wzrost IS 'Wymagany wzrost aby skorzystac z atrakcji';
COMMENT ON COLUMN Dla_doroslych.Strasznosc IS 'Sztrasznosc atrakcji';
COMMENT ON COLUMN Dla_doroslych.Choroby_serca IS 'Czy klient posiada choroby serca';


-- Table Dla_mlodziezy

CREATE TABLE Dla_mlodziezy(
  Id_atrakcji Integer NOT NULL,
  Wymagany_wiek Integer NOT NULL,
  Wymagany_wzrost Integer NOT NULL,
  Strasznosc Varchar2(20 ) NOT NULL
);

-- Add keys for table Dla_mlodziezy

ALTER TABLE Dla_mlodziezy ADD CONSTRAINT Unique_Identifier15 PRIMARY KEY (Id_atrakcji);
ALTER TABLE Dla_mlodziezy ADD CONSTRAINT Strasznosc_mlodzez CHECK (Strasznosc IN ('wcale','troche','straszna','bardzo_straszna'));

-- Table and Columns comments section

COMMENT ON COLUMN Dla_mlodziezy.Id_atrakcji IS 'PFK (primary foreign key) Id atrakcji';
COMMENT ON COLUMN Dla_mlodziezy.Wymagany_wiek IS 'Wymagany wiek aby skorzystac z atrakcji';
COMMENT ON COLUMN Dla_mlodziezy.Wymagany_wzrost IS 'Wymagany wzrost aby skorzystac z atrakcji';
COMMENT ON COLUMN Dla_mlodziezy.Strasznosc IS 'Sztrasznosc atrakcji';


-- Table Dla_dzieci

CREATE TABLE Dla_dzieci(
  Id_atrakcji Integer NOT NULL,
  Nadzor_rodzica Varchar2(3 ) NOT NULL,
  Dla_jakich Varchar2(20 ) NOT NULL
);

-- Add keys for table Dla_dzieci

ALTER TABLE Dla_dzieci ADD CONSTRAINT Unique_Identifier16 PRIMARY KEY (Id_atrakcji);
ALTER TABLE Dla_dzieci ADD CONSTRAINT Nadzor_rodzica CHECK (Nadzor_rodzica IN ('tak','nie'));
ALTER TABLE Dla_dzieci ADD CONSTRAINT Dla_jakich CHECK (Dla_jakich IN ('niemowlak','dziecko','duze_dziecko'));

-- Table and Columns comments section

COMMENT ON COLUMN Dla_dzieci.Id_atrakcji IS 'PFK (primary foreign key) Id atrakcji';
COMMENT ON COLUMN Dla_dzieci.Nadzor_rodzica IS 'Czy wymagany jest nadzor rodzica';
COMMENT ON COLUMN Dla_dzieci.Dla_jakich IS 'Dla jakich dzieci przeznaczona jest atrakcja';


-- Table Kasy

CREATE TABLE Kasy(
  Id_kasy Integer NOT NULL,
  Numer_kasy Varchar2(2 ) NOT NULL,
  Otwarta Timestamp(0 ) NOT NULL,
  Zamknieta Timestamp(0 ) NOT NULL,
  Id_parku_rozrywki Integer NOT NULL
);

-- Create indexes for table Kasy

CREATE INDEX Jest_w ON Kasy (Id_parku_rozrywki);

-- Add keys for table Kasy

ALTER TABLE Kasy ADD CONSTRAINT Unique_Identifier17 PRIMARY KEY (Id_kasy);

-- Table and Columns comments section

COMMENT ON COLUMN Kasy.Id_kasy IS 'Unikatowy numer kasy';
COMMENT ON COLUMN Kasy.Numer_kasy IS 'Numer kasy';
COMMENT ON COLUMN Kasy.Otwarta IS 'Czas otwarcia kasy';
COMMENT ON COLUMN Kasy.Zamknieta IS 'Czas zamkniecia kasy';
COMMENT ON COLUMN Kasy.Id_parku_rozrywki IS 'Klucz obcy Id parku rozrywki';


-- Table Pracownicy_Atrakcje

CREATE TABLE Pracownicy_Atrakcje(
  Id_pracownika Integer NOT NULL,
  Id_atrakcji Integer NOT NULL,
  Data_Od Date NOT NULL,
  Data_Do Date
);

-- Table and Columns comments section

COMMENT ON COLUMN Pracownicy_Atrakcje.Id_pracownika IS 'PFK (primary foreign key) Id pracownika';
COMMENT ON COLUMN Pracownicy_Atrakcje.Id_atrakcji IS 'PFK (primary foreign key) Id atrakcji';
COMMENT ON COLUMN Pracownicy_Atrakcje.Data_Od IS 'Pracownik pracuje przy atrakcji od danej daty';
COMMENT ON COLUMN Pracownicy_Atrakcje.Data_Do IS 'Pracownik pracuje przy atrakcji do danej daty';


-- Table Atrakcje_Bilety

CREATE TABLE Atrakcje_Bilety(
  Id_atrakcji Integer NOT NULL,
  Id_biletu Integer NOT NULL
);

-- Table and Columns comments section

COMMENT ON COLUMN Atrakcje_Bilety.Id_atrakcji IS 'PFK (primary foreign key) Id atrakcji';
COMMENT ON COLUMN Atrakcje_Bilety.Id_biletu IS 'PFK (primary foreign key) Id biletu';


-- Table Wlasciciele

CREATE TABLE Wlasciciele(
  Id_wlasciciela Integer NOT NULL,
  Imie_wlasciciela Varchar2(20 ) NOT NULL,
  Nazwisko_wlasciciela Varchar2(30 ) NOT NULL,
  Numer_telefonu_wlasciciela Varchar2(9 ) NOT NULL,
  Id_parku_rozrywki Integer NOT NULL
);

-- Create indexes for table Wlasciciele

CREATE INDEX Zarzadza ON Wlasciciele (Id_parku_rozrywki);

-- Add keys for table Wlasciciele

ALTER TABLE Wlasciciele ADD CONSTRAINT PK_Wlasciciele PRIMARY KEY (Id_wlasciciela);

-- Table and Columns comments section

COMMENT ON COLUMN Wlasciciele.Id_wlasciciela IS 'Unikatowy numer wlasciciela';
COMMENT ON COLUMN Wlasciciele.Imie_wlasciciela IS 'Imie wlasciciela';
COMMENT ON COLUMN Wlasciciele.Nazwisko_wlasciciela IS 'Nazwisko wlasciciela';
COMMENT ON COLUMN Wlasciciele.Numer_telefonu_wlasciciela IS 'Numer telefonu do wlasciciela';
COMMENT ON COLUMN Wlasciciele.Id_parku_rozrywki IS 'Klucz obcy Id parku rozrywki';


-- Table Adresy

CREATE TABLE Adresy(
  Id_adresu Integer NOT NULL,
  Miejscowosc Varchar2(40 ) NOT NULL,
  Ulica Varchar2(80 ) NOT NULL,
  Numer_budynku Varchar2(8 ) NOT NULL,
  Numer_mieszkania Varchar2(8 ),
  Kod_pocztowy Char(6 ) NOT NULL
);

-- Add keys for table Adresy

ALTER TABLE Adresy ADD CONSTRAINT PK_Adresy PRIMARY KEY (Id_adresu);

-- Table and Columns comments section

COMMENT ON COLUMN Adresy.Id_adresu IS 'Unikatowy numer adresu';
COMMENT ON COLUMN Adresy.Miejscowosc IS 'Miejscowosc adresu';
COMMENT ON COLUMN Adresy.Ulica IS 'Ulica adresu';
COMMENT ON COLUMN Adresy.Numer_budynku IS 'Numer budynku adresu';
COMMENT ON COLUMN Adresy.Numer_mieszkania IS 'Numer mieszkania adresu';
COMMENT ON COLUMN Adresy.Kod_pocztowy IS 'Kod pocztowy miejscowosci adresu';


-- Table Pracownicy_Kasy

CREATE TABLE Pracownicy_Kasy(
  Id_pracownika Integer NOT NULL,
  Id_kasy Integer NOT NULL,
  Data_Od Date NOT NULL,
  Data_Do Date
);

-- Add keys for table Pracownicy_Kasy

ALTER TABLE Pracownicy_Kasy ADD CONSTRAINT PK_Pracownicy_Kasy PRIMARY KEY (Id_pracownika,Id_kasy,Data_Od);

-- Table and Columns comments section

COMMENT ON COLUMN Pracownicy_Kasy.Id_pracownika IS 'PFK (primary foreign key) Id pracownika';
COMMENT ON COLUMN Pracownicy_Kasy.Id_kasy IS 'PFK (primary foreign key) Id kasy';
COMMENT ON COLUMN Pracownicy_Kasy.Data_Od IS 'Pracownik pracuje na kasie od danej daty';
COMMENT ON COLUMN Pracownicy_Kasy.Data_Do IS 'Pracownik pracuje na kasie do danej daty';


-- Table Stanowiska

CREATE TABLE Stanowiska(
  Id_stanowiska Integer NOT NULL,
  Miejsce_pracy Varchar2(20 ) NOT NULL,
  Opis Varchar2(400 )
);

-- Add keys for table Stanowiska

ALTER TABLE Stanowiska ADD CONSTRAINT PK_Stanowiska PRIMARY KEY (Id_stanowiska);
ALTER TABLE Stanowiska ADD CONSTRAINT Miejsce_pracy CHECK (Miejsce_pracy IN ('kasa','atrakcja'));

-- Table and Columns comments section

COMMENT ON COLUMN Stanowiska.Id_stanowiska IS 'Unikatowy numer stanowiska';
COMMENT ON COLUMN Stanowiska.Miejsce_pracy IS 'Miejsce wykonywania danego stanowiska';
COMMENT ON COLUMN Stanowiska.Opis IS 'Opis stanowiska';





-- Create foreign keys (relationships) section ------------------------------------------------- 

ALTER TABLE Pracownicy ADD CONSTRAINT Zatrudnia FOREIGN KEY (Id_parku_rozrywki) REFERENCES Parki_rozrywki (Id_parku_rozrywki);
ALTER TABLE Wynagrodzenia ADD CONSTRAINT Otrzymuje FOREIGN KEY (Id_pracownika) REFERENCES Pracownicy (Id_pracownika);
ALTER TABLE Atrakcje ADD CONSTRAINT Zapewnia FOREIGN KEY (Id_parku_rozrywki) REFERENCES Parki_rozrywki (Id_parku_rozrywki);
ALTER TABLE Klienci ADD CONSTRAINT Zabawia FOREIGN KEY (Id_parku_rozrywki) REFERENCES Parki_rozrywki (Id_parku_rozrywki);
ALTER TABLE Wagoniki ADD CONSTRAINT Posiada FOREIGN KEY (Id_atrakcji) REFERENCES Atrakcje (Id_atrakcji);
ALTER TABLE Bilety ADD CONSTRAINT Kupuje FOREIGN KEY (Id_klienta) REFERENCES Klienci (Id_klienta);
ALTER TABLE Kasy ADD CONSTRAINT Ma FOREIGN KEY (Id_parku_rozrywki) REFERENCES Parki_rozrywki (Id_parku_rozrywki);
ALTER TABLE Przekaski ADD CONSTRAINT Umozliwia FOREIGN KEY (Id_parku_rozrywki) REFERENCES Parki_rozrywki (Id_parku_rozrywki);
ALTER TABLE Wlasciciele ADD CONSTRAINT Jest_zarzadzany_przez FOREIGN KEY (Id_parku_rozrywki) REFERENCES Parki_rozrywki (Id_parku_rozrywki);
ALTER TABLE Pracownicy ADD CONSTRAINT Mieszka_pod FOREIGN KEY (Id_adresu) REFERENCES Adresy (Id_adresu);
ALTER TABLE Pracownicy_Kasy ADD CONSTRAINT Obsluguje FOREIGN KEY (Id_pracownika) REFERENCES Pracownicy (Id_pracownika);
ALTER TABLE Pracownicy_Kasy ADD CONSTRAINT Jest_obslugiwana FOREIGN KEY (Id_kasy) REFERENCES Kasy (Id_kasy);
ALTER TABLE Parki_rozrywki ADD CONSTRAINT Znajduje_sie_pod FOREIGN KEY (Id_adresu) REFERENCES Adresy (Id_adresu);
ALTER TABLE Pracownicy ADD CONSTRAINT Jest_zatrudniony_na FOREIGN KEY (Id_stanowiska) REFERENCES Stanowiska (Id_stanowiska);
ALTER TABLE Bilety ADD CONSTRAINT Sprzedaje FOREIGN KEY (Id_kasy) REFERENCES Kasy (Id_kasy);





/*-- Trigger for sequence ParkRozrywkiSeq for column Id_parku_rozrywki in table Parki_rozrywki ---------
CREATE OR REPLACE TRIGGER ts_Parki_rozrywki_ParkRozrywkiSeq BEFORE INSERT
ON Parki_rozrywki FOR EACH ROW
BEGIN
  :new.Id_parku_rozrywki := ParkRozrywkiSeq.nextval;
END;*/