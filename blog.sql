-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 16 Gru 2020, 20:49
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `blog`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `text` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`id`, `text`) VALUES
(1, 'JAVA'),
(2, 'PHP'),
(3, 'JAVASCRIPT'),
(4, 'HTML'),
(5, 'CSS'),
(6, 'C'),
(7, 'C++'),
(8, 'SQL'),
(9, 'RUBY'),
(10, 'PYTHON'),
(11, 'ASEMBLER');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `category` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `body` longtext NOT NULL,
  `author` varchar(50) NOT NULL,
  `keywords` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `posts`
--

INSERT INTO `posts` (`id`, `title`, `category`, `date`, `body`, `author`, `keywords`) VALUES
(1, 'Przykładowy JAVA post', 1, '02.01.2015', '<p>Java (wym. dżawa) – współbieżny, oparty na klasach, obiektowy język programowania ogólnego zastosowania. Został stworzony przez grupę roboczą pod kierunkiem Jamesa Goslinga z firmy Sun Microsystems. Java jest językiem tworzenia programów źródłowych kompilowanych do kodu bajtowego, czyli postaci wykonywanej przez maszynę wirtualną. Język cechuje się silnym typowaniem. Jego podstawowe koncepcje zostały przejęte z języka Smalltalk (maszyna wirtualna, zarządzanie pamięcią) oraz z języka C++ (duża część składni i słów kluczowych).\r\n</p>', 'Krystian', 'JAVA'),
(2, 'Przykładowy PHP post', 2, '01.01.2015', '<p>Poniższy <strong>kurs programowania w języku PHP</strong> ma za zadanie zaznajomić osobę kompletnie nieobeznaną z tym językiem na tyle, aby sama była w stanie napisać skrypt o średnim poziomie złożoności. Pomaga także osobie wcześniej nieprogramującej na zaznajomienie się z technikami programistycznymi. Kurs jest uniwersalny &#8211; można go stosować do dowolnej wersji PHP &#8211; w szczególnych przypadkach, kiedy poszczególne informacje nie dotyczą wszystkich wersji, jest to wyraźniej zaznaczone.</p>\r\n<div align=\"center\">\r\n<!--adsense#content-->\r\n</div>\r\n<p class=\"toc\"><strong>Spis treści</strong></p>\r\n<ol>\r\n<li>    <a>Podstawy</a>\r\n<ul>\r\n<li>Co to jest PHP</li>\r\n<li>Wstawianie skryptów PHP</li>\r\n<li>Błędy i debugowanie</li>\r\n</ul>\r\n</li>\r\n<li>    <a>Składnia języka</a>\r\n<ul>\r\n<li>Oddzielanie instrukcji</li>\r\n<li>Komentarze</li>\r\n<li>Zmienne</li>\r\n<li>Typy zmienych</li>\r\n<li>Zmiana typu</li>\r\n<li>Predefiniowane zmienne</li>\r\n<li>Stałe</li>\r\n</ul>\r\n</li>\r\n<li>    <a>Operatory</a>\r\n<ul>\r\n<li>Co to jest?</li>\r\n<li>Operatory arytmetyczne</li>\r\n<li>Operator przypisania</li>\r\n<li>Operatory operacji bitowych</li>\r\n<li>Operatory porównania</li>\r\n<li>Operator kontroli błędów</li>\r\n<li>Operator wywołania</li>\r\n<li>Operatory inkrementacji i dekrementacji</li>\r\n<li>Operatory logiczne</li>\r\n<li>Operator ciągu</li>\r\n</ul>\r\n</li>\r\n<li>    <a>Struktury kontrolne</a>\r\n<ul>\r\n<li>Instrukcje warunkowe</li>\r\n<li>Pętla FOR</li>\r\n<li>Pętla while</li>\r\n<li>Pętla do&#8230;while</li>\r\n<li>Przerywanie wykonań pętli</li>\r\n<li>Składnia switch</li>\r\n</ul>\r\n</li>\r\n<li>    <a>Tablice</a>\r\n<ul>\r\n<li>Wstęp</li>\r\n<li>Tablica asocjacyjna</li>\r\n<li>Przeglądanie tablic</li>\r\n<li>Sortowanie tablic</li>\r\n<li>Tworzenie ciągów z tablic i odwrotnie</li>\r\n</ul>\r\n</li>\r\n<li>    <a>Ponowne użycie kodu</a>\r\n<ul>\r\n<li>Funkcje</li>\r\n<li>Klasy</li>\r\n<li>Instrukcje include i require</li>\r\n<li>Funkcja readfile()</li>\r\n<li>Zasięg zmiennych</li>\r\n</ul>\r\n</li>\r\n<li>    <a>Przekazywanie zmiennych między stronami</a>\r\n<ul>\r\n<li>Formularze</li>\r\n<li>Upload plików</li>\r\n<li>Odnośniki</li>\r\n<li>Cookies</li>\r\n<li>register_globals</li>\r\n</ul>\r\n</li>\r\n<li>    <a>Obsługa sesji</a></li>\r\n<li>    <a>Obsługa ciągów tekstowych</a>\r\n<ul>\r\n<li>Wyrażenia regularne</li>\r\n<li>Porównywanie ciągów</li>\r\n<li>Wyciąganie fragmentów ciągów</li>\r\n<li>Podmienianie fragmentów ciągów</li>\r\n<li>Podmienianie znaków w ciągach</li>\r\n<li>Inne funkcje</li>\r\n</ul>\r\n</li>\r\n<li>    <a>Odbieranie plików od użytkownika</a></li>\r\n<li>    <a>Operacje na plikach</a>\r\n<ul>\r\n<li>Otwieranie i zamykanie plików</li>\r\n<li>Wewnętrzny wskaźnik pliku</li>\r\n<li>Odczyt z plików</li>\r\n<li>Zapis do pliku</li>\r\n<li>Przycinanie plików</li>\r\n<li>Blokowanie plików</li>\r\n<li>Funkcje informacyjne</li>\r\n<li>Operacje na plikach i katalogach\r\n<ul>\r\n<li>Kopiowanie</li>\r\n<li>Przenoszenie i zmiana nazwy</li>\r\n<li>Usuwanie</li>\r\n<li>Tworzenie katalogów</li>\r\n</ul>\r\n</li>\r\n<li>Prawa dostępu (tylko UNIX)</li>\r\n<li>Przetwarzanie ścieżki</li>\r\n<li>Operacje na katalogach</li>\r\n</ul>\r\n</li>\r\n<li>    <a>Przetwarzanie daty</a>\r\n<ul>\r\n<li>Sprawdzanie poprawności</li>\r\n<li>Pobieranie aktualnej daty</li>\r\n<li>          Konwersja daty do formatu timestamp\r\n<ul>\r\n<li>Część kalendarzowa</li>\r\n<li>Część zegarowa</li>\r\n<li>Strefa czasowa</li>\r\n<li>Część liczbowa</li>\r\n</ul>\r\n</li>\r\n<li>Formatowanie daty</li>\r\n<li>Tworzenie daty względnej do aktualnej (np. ‚za 2 dni’)</li>\r\n<li>Porównywanie dat</li>\r\n</ul>\r\n</li>\r\n</ol>', 'Krystian', 'PHP');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
