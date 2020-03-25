INSERT INTO adresy VALUES (1, 'Starachowice','Ostrowiecka', 23, NULL, '27-200');
INSERT INTO adresy VALUES (2, 'Starachowice','Armi Krajowej', 15, 5, '27-200');
INSERT INTO adresy VALUES (3, 'Ostrowiec Swietokrzyski','Kopalniana', 2, NULL, '27-400');
INSERT INTO adresy VALUES (4, 'Skarzysko-Kamienna','Kreta', 12, 12, '27-100');
INSERT INTO adresy VALUES (5, 'Starachowice','Szkolna', 9, 88, '27-200');
INSERT INTO adresy VALUES (6, 'Starachowice','Gorna', 8, 36, '27-200');
INSERT INTO adresy VALUES (7, 'Wachock','Starachowicka', 24, NULL, '27-215');
INSERT INTO adresy VALUES (8, 'Wachock','Mlynarska', 36, NULL, '27-215');
INSERT INTO adresy VALUES (9, 'Starachowice','Opatowa', 5, 15, '27-200');

INSERT INTO parki_rozrywki VALUES (1, 'Super Park Rozrywki',50000, 82, '123456789', 'super_park_rozrywki@costam.pl', 1);

INSERT INTO stanowiska VALUES (1, 'kasa', 'Pracuje na kasie nr.1');
INSERT INTO stanowiska VALUES (2, 'atrakcja', 'Obsluguje atrakcje dla mlodziezy Dziki waz');
INSERT INTO stanowiska VALUES (3, 'atrakcja', 'Obsluguje atrakcje dla dzieci Ciuchcia');
INSERT INTO stanowiska VALUES (4, 'atrakcja', 'Obsluguje atrakcje dla dzieci Koniki');
INSERT INTO stanowiska VALUES (5, 'kasa', 'Pracuje na kasie nr.2');
INSERT INTO stanowiska VALUES (6, 'atrakcja', 'Obsluguje atrakcje dla doroslych Wielki mlot');
INSERT INTO stanowiska VALUES (7, 'atrakcja', 'Obsluguje atrakcje dla doroslych Smoczy oddech');
INSERT INTO stanowiska VALUES (8, 'atrakcja', NULL);

INSERT INTO pracownicy VALUES (1, 'Piotr', 'Majecki', 'M', '1998/01/02', '98010212345', '2018/06/12', 'AZT12A345', '12345678912345678912345678', '111111111', 'piomaj@costam.pl', 1, 2, 1);
INSERT INTO pracownicy VALUES (2, 'Mateusz', 'Laguna', 'M', '1998/05/09','98050912345','2018/06/12', 'XYZ12B345', '13245678912345678912345678', '222222222', 'mlaguna@costam.pl', 1, 3, 2);
INSERT INTO pracownicy VALUES (3, 'Agata', 'Taka', 'K', '1989/04/12','89041212345', '2016/04/10', 'ABC12A345', '12435678912345678912345678', '333333333', 'agataka@costam.pl', 1, 4, 3);
INSERT INTO pracownicy VALUES (4, 'Jan', 'Kowalski', NULL, '1996/08/09', '96080912345', '2017/12/12', 'POI12A345', '12354768912345678912345678', '444444444', 'kowal@costam.pl', 1, 5, 4);
INSERT INTO pracownicy VALUES (5, 'Martyna', 'Fonta', 'K', '1992/12/01', '92120112345', '2015/03/18', 'TRA12A345', '12345679812345678912345678', '555555555', 'Martyna.fonta@costam.pl', 1, 6, 5);
INSERT INTO pracownicy VALUES (6, 'Arkadiusz', 'Fila', 'M', '1986/09/22', '86092212345','2015/06/27', 'TAT12A345', '12345678921345678912345678', '666666666', 'arekf@costam.pl', 1, 7, 6);
INSERT INTO pracownicy VALUES (7, 'Marlena', 'Faja', 'K', '1995/08/09', '95080912345','2017/07/18', 'RAK12A345', '12345678912354678912345678', '777777777',' fajamarlena@costam.pl', 1, 8, 7);
INSERT INTO pracownicy VALUES (8, 'Filip', 'Kubek', 'M', '1985/05/18', NULL, '2018/09/19', 'NIG12A345', '12345678912345678912435678', '888888888', NULL, 1, 9, 8);

INSERT INTO wlasciciele VALUES (1, 'Marek','Materac','987654321',1);

INSERT INTO wynagrodzenia VALUES (1, '2019/12/03', 3920, 800, 1);
INSERT INTO wynagrodzenia VALUES (2, '2019/12/03', 3920, 600, 2);
INSERT INTO wynagrodzenia VALUES (3, '2019/12/03', 5700, NULL, 3);
INSERT INTO wynagrodzenia VALUES (4, '2019/12/03', 5700, 1200, 4);
INSERT INTO wynagrodzenia VALUES (5, '2019/12/03', 6200, NULL, 5);
INSERT INTO wynagrodzenia VALUES (6, '2019/12/03', 6200, NULL, 6);
INSERT INTO wynagrodzenia VALUES (7, '2019/12/03', 5700, 800, 7);
INSERT INTO wynagrodzenia VALUES (8, '2019/12/03', 2890, NULL, 8);

INSERT INTO przekaski VALUES (1, 'Hot-dog', 6, 'Ciepla bulka typ hot-dog z pyszna parowka z indyka i keczupem ', 1);
INSERT INTO przekaski VALUES (2, 'Hamburger', 12, 'Wypieczona duza bulka, z soczystym miesem wieprzowym, polana sosem 1000 wysp z dodatkiem pomidora, ogorka oraz prazonej cebulki', 1);
INSERT INTO przekaski VALUES (3, 'Zapiekanka', 9, '30cm bulka, z pieczarkami, szynka, serem zoltym, polana keczupem', 1);

INSERT INTO kasy VALUES (1, 1, '2019/12/13 08:00:00', '2019/12/13 14:30:00', 1 );
INSERT INTO kasy VALUES (2, 2, '2019/12/13 14:00:00', '2019/12/13 20:00:00', 1 );

INSERT INTO atrakcje VALUES (1, 'Wielki mlot', 'dla_doroslych', 1, 480, 1);
INSERT INTO atrakcje VALUES (2, 'Koniki', 'dla_dzieci', 5, 300, 1);
INSERT INTO atrakcje VALUES (3, 'Dziki waz', 'dla_mlodziezy', 10 ,300, 1);
INSERT INTO atrakcje VALUES (4, 'Ciuchcia', 'dla_dzieci', 8, 600, 1);
INSERT INTO atrakcje VALUES (5, 'Smoczy oddech', 'dla_doroslych', 10, 360, 1);

INSERT INTO wagoniki VALUES (1, 'Mercedes', 'F2019', 'latajacy', 1);
INSERT INTO wagoniki VALUES (2, 'Floki', 'DOK98', 'gokart', 2);
INSERT INTO wagoniki VALUES (3, 'Dandan', 'T5', 'plywajacy', 3);
INSERT INTO wagoniki VALUES (4, 'Ferari', 'Nitro26', 'szynowy', 4);
INSERT INTO wagoniki VALUES (5, 'Polonus', 'adik2', 'szynowy', 5);

INSERT INTO klienci VALUES (1, 'Franciszek', 'Zawada', 'M', '1972/08/09', 182, 'fransiszawada@costam.pl', 1);
INSERT INTO klienci VALUES (2, 'Anna', 'Maciag', 'K', NULL, 175, 'a.maciag@costam.pl', 1);
INSERT INTO klienci VALUES (3, 'Sylwester', 'Migus', 'M', '1968/10/10', NULL, 'sylwester.migus@costam.pl', 1);
INSERT INTO klienci VALUES (4, 'Krystyna', 'Pajak', NULL, '2002/06/24', 175, 'krysia.pajak@costam.pl', 1);
INSERT INTO klienci VALUES (5, 'Adam', 'Wiercipieta', 'M', '2012/10/02', 145, NULL, 1);

INSERT INTO bilety VALUES (1, 'jednodniowy', 20, '2019/12/10', 1, 1);
INSERT INTO bilety VALUES (2, 'trzydniowy', 40, '2019/12/12', 2, 1);
INSERT INTO bilety VALUES (3, 'jednodniowy', 20, '2019/12/10', 3, 2);
INSERT INTO bilety VALUES (4, 'jednodniowy', 12, '2019/12/10', 4, 1);
INSERT INTO bilety VALUES (5, 'jednodniowy', 8, '2019/12/10', 5, 2);

INSERT INTO atrakcje_bilety VALUES (1, 2);
INSERT INTO atrakcje_bilety VALUES (2, 5);
INSERT INTO atrakcje_bilety VALUES (3, 4);
INSERT INTO atrakcje_bilety VALUES (4, 5);
INSERT INTO atrakcje_bilety VALUES (5, 1);
INSERT INTO atrakcje_bilety VALUES (1, 3);

INSERT INTO dla_doroslych VALUES (1, 18, 170, 'straszna', 'nie');
INSERT INTO dla_doroslych VALUES (5, 18, 180, 'bardzo_straszna', 'nie');

INSERT INTO dla_dzieci VALUES (2, 'tak', 'dziecko');
INSERT INTO dla_dzieci VALUES (4, 'nie', 'duze_dziecko');

INSERT INTO dla_mlodziezy VALUES (3, 12, 160, 'troche');

INSERT INTO pracownicy_atrakcje VALUES (2, 1, '2018/06/12', NULL);
INSERT INTO pracownicy_atrakcje VALUES (3, 2, '2017/01/01', '2020/01/01');
INSERT INTO pracownicy_atrakcje VALUES (4, 3, '2017/12/12', NULL);
INSERT INTO pracownicy_atrakcje VALUES (6, 4, '2016/01/01', '2020/01/01');
INSERT INTO pracownicy_atrakcje VALUES (7, 5, '2017/07/18', NULL);

INSERT INTO pracownicy_kasy VALUES (1, 1, '2018/06/12', NULL);
INSERT INTO pracownicy_kasy VALUES (5, 2, '2016/01/01', NULL);


SELECT * FROM pracownicy;

SELECT * FROM pracownicy
NATURAL JOIN stanowiska where miejsce_pracy = 'atrakcja';

SELECT wysokosc FROM wynagrodzenia
NATURAL JOIN pracownicy WHERE
(pracownicy.imie_pracownika = 'Piotr' AND pracownicy.nazwisko_pracownika = 'Majecki');

SELECT * FROM atrakcje
NATURAL JOIN wagoniki where rodzaj_wagonika IN ('latajacy','szynowy');

SELECT imie_klienta, nazwisko_klienta, data_urodzenia_klienta FROM klienci
WHERE klienci.id_klienta = 4;

SELECT * FROM Dla_doroslych WHERE wymagany_wzrost BETWEEN 165 AND 175;
