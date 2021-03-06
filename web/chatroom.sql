DROP DATABASE IF EXISTS chatroom;

CREATE DATABASE chatroom DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;

USE chatroom;

CREATE TABLE `user` (
  `id` INTEGER PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
INSERT INTO user(username,email,password) VALUES
('test1','test1@test.pl','test1'),
('patryk','test11@test.pl','patryk'),
('admin','test111@test.pl','admin');

CREATE TABLE `post` (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  `id_user` INTEGER NOT NULL,
  `text` varchar(1000) NOT NULL,
  `date` datetime NOT NULL,
  FOREIGN KEY (id_user) REFERENCES user(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
INSERT INTO post(id_user,text,date) VALUES
(1,'Witam jestem uczniem który dopiero co zaczyna swoją przygode z tworzeniem stron. W szkole dostałem zadanie nad którym już siedzę tydzień i nie mam pojęcia jak sie za to zabrać. Zadanie brzmi: "Po wejściu na strone wyświetla się input, do którego należy podać długość tablicy (wartość liczbowa) - zabezpieczyć przed wpisywaniem tekstu. Po wpisaniu prawidłowej zostanie stworzona tablica, do której zostaną przypisane losowe wartości z przedziału -100 : 100. Finalnie funkcja ma zwrócić sumę wszystkich liczb." Prosił bym o jakąś pomoc z stworzeniem takiej aplikacji lub chociaż podpowiedziec jak się za to zabrać bo nie mam pojęcia od czego zacząć.','2019-05-29 23:18:38'),
(1,'Planuję stworzyć laptopa na bazie RaspberryPi. Chciałbym go używać m.in. do programowania. Aktualnie piszę bloga, w GatsbyJS. I tu moje pytanie. Czy będę mógł kontynuować pisanie na RaspberryPi na Raspbianie? Jest w ogóle możliwe uruchomienie tam tej biblioteki? I jeżeli będzie to możliwe, czy będą wynikały z tego jakieś problemy gdybym kontynuował pracę na Ubuntu? Jestem również zainteresowany pisaniem w innych rzeczach - czysty JS, React, React-native, Python. Czy będzie możliwe pracowanie z tymi językami, frameworkami na Raspbianie?','2019-06-30 23:18:38'),
(2,'Napisz program, który wyswietla 100 losowych liczb naturalnych z zakresu podanego przez uzytkownika. Np. gdy uzytkownik poda liczby 13 i 67, to program powinien wyswietlic 100 losowych wartosci mieszczacych sie w zakresie od 13 do 67 (włacznie).','2019-07-29 03:18:38'),
(2,'Palindrom to wyrazenie brzmiace tak samo czytane od lewej do prawej i od prawej do lewej. Przykłady palindromów to: ”Kobyła ma mały bok.” i ”Zakopane chce na pokaz.”. Napisz program, który pobiera od uzytkownika 2 linijki tekstu - 2 wyrazenia (bez polskich znaków) i zwraca informacje, czy sa one wzajemnymi palindromami. Programistyczne uwagi: zauwaz, ze liczba słów/spacji nie ma znaczenia (tylko kolejnosc liter w wyrazeniu) oraz takie same duze i małe litery sa ze soba utozsamiane. Znaki interpunkcyjne równiez pomijamy przy ustalaniu, czy dane wyrazenie jest palindromem (jak kropka na koncu zdania).','2019-08-29 23:18:38'),
(3,'Weźmy liczbę 2^128-1 i pomnóżmy ją razy 1,5 oraz dodajmy 0,5. Powtórzmy operację 128 razy. Ile zajmie komputerowi obliczenie końcowej liczby? Zaznaczę tylko, że nie chodzi mi o matematyczne rozwiązanie, bo wiem, że będzie to 3^128-1. Chcę wiedzieć ile zajmują operacje na tak dużych liczbach i czy są to jakieś rozsądne czasy.','2019-09-29 21:18:38'),
(3,'Hej!<br/>Na internecie pełno rankingów najbardziej popularnych bądź porządanych języków programowania na świecie. Ja bym chciał w tym temacie skupic się na polskiej scenie i poznać wasze top 5 najbardziej porządanych języków programowania w Polsce w 2020. W miarę możliwości proszę uzasadnijcie swoje wybory.<br/>Z góry dzięki wielkie za wszystkie opinie! :)','2019-10-29 12:18:38');
