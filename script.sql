-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Feb 13, 2020 alle 20:59
-- Versione del server: 10.1.44-MariaDB-0ubuntu0.18.04.1
-- Versione PHP: 7.2.24-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stbressa-PR`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Abbonamento`
--

CREATE TABLE `Abbonamento` (
  `CF_Cliente` varchar(16) NOT NULL,
  `ID` int(11) NOT NULL,
  `Inizio` date DEFAULT NULL,
  `Fine` date DEFAULT NULL,
  `Entrate_Rimaste` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Abbonamento`
--

INSERT INTO `Abbonamento` (`CF_Cliente`, `ID`, `Inizio`, `Fine`, `Entrate_Rimaste`) VALUES
('BJRHFT40A01O840I', 17, NULL, NULL, 10),
('BSSCHR30A01X842E', 11, '2020-02-05', '2021-02-05', NULL),
('BTTVNR20A01G840O', 13, NULL, NULL, 3),
('CSNRMN99M42A703P', 8, '2020-01-21', '2020-07-21', NULL),
('FCCJHN80A01N840A', 18, '2020-02-01', '2021-02-01', NULL),
('HLLEDD90A01A840O', 16, '2020-01-01', '2021-01-01', NULL),
('LCECRS30A01B840U', 15, NULL, NULL, 10),
('MRPRBC80A01W840E', 10, '2020-02-03', '2020-08-03', NULL),
('MRSMRC98A01A703O', 9, '2020-02-26', '2020-05-26', NULL),
('MSSSTF80A01V521I', 5, '2020-01-05', '2020-03-05', NULL),
('NPPJFF80A01T360E', 4, '2020-01-01', '2020-03-01', NULL),
('NVEGVN60A01Y840O', 14, NULL, NULL, 20),
('RMLCSR63A01B840E', 12, '2020-02-10', '2020-08-10', NULL),
('RNDDRR96A01L846U', 3, '2020-01-01', '2020-06-01', NULL),
('SEDJFF89A01O842A', 2, '2020-01-01', '2021-01-01', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `Accesso`
--

CREATE TABLE `Accesso` (
  `CF_Cliente` varchar(16) NOT NULL,
  `Entrata` datetime NOT NULL,
  `Uscita` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Accesso`
--

INSERT INTO `Accesso` (`CF_Cliente`, `Entrata`, `Uscita`) VALUES
('FCCJHN80A01N840A', '2020-02-02 17:00:00', '2020-02-02 19:57:00'),
('FCCJHN80A01N840A', '2020-02-09 19:59:00', '2020-02-09 21:28:00'),
('HLLEDD90A01A840O', '2020-02-06 18:01:00', '2020-02-06 20:30:00'),
('HLLEDD90A01A840O', '2020-02-09 18:56:00', '2020-02-09 21:26:00'),
('MRSMRC98A01A703O', '2020-02-02 17:01:00', '2020-02-02 19:56:00'),
('RMLCSR63A01B840E', '2020-03-15 09:10:22', '2020-03-15 10:00:00'),
('SEDJFF89A01O842A', '2020-02-01 18:00:00', '2020-02-01 20:17:00'),
('SEDJFF89A01O842A', '2020-02-09 18:59:00', '2020-02-09 21:29:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `Body_Check`
--

CREATE TABLE `Body_Check` (
  `CF_Cliente` varchar(16) NOT NULL,
  `DataOra` datetime NOT NULL,
  `Peso` float NOT NULL,
  `Body_Fat_pct` float NOT NULL,
  `Muscle_Mass_pct` float NOT NULL,
  `Water_pct` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Body_Check`
--

INSERT INTO `Body_Check` (`CF_Cliente`, `DataOra`, `Peso`, `Body_Fat_pct`, `Muscle_Mass_pct`, `Water_pct`) VALUES
('BJRHFT40A01O840I', '2020-02-09 16:02:00', 193.7, 24, 60, 60.7),
('BTTVNR20A01G840O', '2020-01-19 17:01:01', 50.1, 26, 38.6, 60),
('BTTVNR20A01G840O', '2020-02-19 18:00:01', 51.1, 18, 38.6, 60),
('CSNRMN99M42A703P', '2020-02-13 18:01:01', 50.9, 23, 40.6, 60),
('HLLEDD90A01A840O', '2020-02-09 13:04:00', 160.6, 24, 60, 60.7),
('MRSMRC98A01A703O', '2020-02-13 18:09:55', 62.9, 12, 53.5, 55),
('MSSSTF80A01V521I', '2020-01-19 17:39:55', 80, 12, 53.5, 55),
('NVEGVN60A01Y840O', '2020-02-26 18:09:06', 77.3, 16, 49, 60.5),
('RMLCSR63A01B840E', '2020-02-23 18:09:00', 60.7, 16, 32.6, 60.5),
('RNDDRR96A01L846U', '2020-01-19 17:32:55', 70.9, 18, 49, 60),
('RNDDRR96A01L846U', '2020-02-03 17:30:55', 76.7, 17, 46.7, 60.4),
('SEDJFF89A01O842A', '2020-02-06 18:09:00', 90.2, 7, 55, 60.7),
('SEDJFF89A01O842A', '2020-02-23 18:09:00', 92.4, 9, 56.6, 60.5);

-- --------------------------------------------------------

--
-- Struttura della tabella `Cliente`
--

CREATE TABLE `Cliente` (
  `CF` varchar(16) NOT NULL,
  `Nome` varchar(40) NOT NULL,
  `Cognome` varchar(40) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Email` varchar(190) DEFAULT NULL,
  `Scad_Cert_Med` date DEFAULT NULL,
  `Altezza` float DEFAULT NULL,
  `User_App` varchar(16) DEFAULT NULL,
  `Psw_App` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Cliente`
--

INSERT INTO `Cliente` (`CF`, `Nome`, `Cognome`, `Telefono`, `Email`, `Scad_Cert_Med`, `Altezza`, `User_App`, `Psw_App`) VALUES
('BJRHFT40A01O840I', 'Hafthor', 'Bjornsson', '33347445285', 'hafthor@got.com', '2020-01-06', 210, 'themountain,', 'DBT26QEE5MG'),
('BSSCHR30A01X842E', 'Chiara', 'Bassani', '36542136998', 'chiarabassani@gmail.com', '2020-07-01', 158, 'QuintoFM', 'ERT75UOS4TE'),
('BTTVNR20A01G840O', 'Venere', 'Botticelli', '357158645', 'lavenere@Nullatempor.edu', '2020-01-18', 162, 'venus', 'YOV92SLW7PO'),
('CSNRMN99M42A703P', 'Romina', 'Casonina', '3398963524', 'rominacasonina@gmail.com', '2020-08-07', 162, 'romi', 'MR24123'),
('FCCJHN80A01N840A', 'Johnny', 'Facchinetti', '3314455533', 'johnnyfacc@cas.com', '2021-02-03', 165, 'johnnolo', 'TBP53ZUH4GX'),
('HLLEDD90A01A840O', 'Eddie', 'Hall', '998796314', 'eddiehall@strong.edu', '2020-05-08', 200, 'eddiethebeasthal', 'DRB82YLD6UD'),
('LCECRS30A01B840U', 'Cristina', 'Luce', '84651031835', 'criluce@eu.edu', '2021-05-25', 165, 'cristinaluce', 'MOO37IKY8CN'),
('MRPRBC80A01W840E', 'Rebecca', 'Murphy', '36364123546', 'rebeccamrph@gmail.com', '2021-01-01', 172, 'Reb', 'JVA57OJL1ZG'),
('MRSMRC98A01A703O', 'Marco', 'Marostegan', '3317461724', 'marcomarostegan@gmail.com', '2020-09-07', 165, 'marcus', 'YGP24PWA0AS'),
('MSSSTF80A01V521I', 'Stefano', 'Massello', '3313478963', 'steMassel@gmail.com', '2021-03-27', 179, 'nattyste', 'EGZ62MZO2JC'),
('NPPJFF80A01T360E', 'Jeff', 'Nippard', '3165464321', 'Vivamus.nisi@Donec.net', '2020-05-11', 198, 'jffnippard', 'GXY57NEH4PP'),
('NVEGVN60A01Y840O', 'Giovanni', 'Neve', '1235684984', 'john@got.com', '2020-03-01', 170, 'idontwantit', 'NIK31JJW5YJ'),
('RMLCSR63A01B840E', 'Gaio Giulio', 'Cesare', '3968651358', 'senzacoltello@senato.spqr', '0000-00-00', 154, 'Rome', 'DBR44GSC6TV'),
('RNDDRR96A01L846U', 'Damiano', 'Arnoldo', '3218654351', 'congue.In@auctornunc.edu', '2020-12-04', 172, 'dam', 'SBV92GMU1HW'),
('SEDJFF89A01O842A', 'Jeff', 'Seid', '123654936', 'jeffseid@jeffseid.com', '2021-09-28', 184, 'trensetter', 'XUV41JUC0MO');

-- --------------------------------------------------------

--
-- Struttura della tabella `Contiene`
--

CREATE TABLE `Contiene` (
  `CF_Cliente` varchar(16) NOT NULL,
  `Num_Scheda` smallint(6) NOT NULL,
  `ID_Esercizio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Contiene`
--

INSERT INTO `Contiene` (`CF_Cliente`, `Num_Scheda`, `ID_Esercizio`) VALUES
('BJRHFT40A01O840I', 1, 7),
('BJRHFT40A01O840I', 1, 19),
('BSSCHR30A01X842E', 1, 10),
('BSSCHR30A01X842E', 1, 13),
('CSNRMN99M42A703P', 1, 5),
('CSNRMN99M42A703P', 1, 12),
('CSNRMN99M42A703P', 1, 21),
('FCCJHN80A01N840A', 1, 15),
('HLLEDD90A01A840O', 1, 8),
('HLLEDD90A01A840O', 1, 14),
('LCECRS30A01B840U', 1, 11),
('MSSSTF80A01V521I', 1, 4),
('MSSSTF80A01V521I', 1, 16),
('MSSSTF80A01V521I', 1, 23),
('NPPJFF80A01T360E', 1, 9),
('NPPJFF80A01T360E', 1, 17),
('NVEGVN60A01Y840O', 1, 6),
('RNDDRR96A01L846U', 1, 18),
('RNDDRR96A01L846U', 1, 20),
('RNDDRR96A01L846U', 1, 22),
('RNDDRR96A01L846U', 1, 24),
('SEDJFF89A01O842A', 1, 1),
('SEDJFF89A01O842A', 1, 2),
('SEDJFF89A01O842A', 1, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `Esercizio`
--

CREATE TABLE `Esercizio` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(40) NOT NULL,
  `Attrezzo` int(20) NOT NULL,
  `Serie` tinyint(4) NOT NULL,
  `Ripetizioni` tinyint(4) NOT NULL,
  `Recupero` smallint(4) NOT NULL,
  `RPE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Esercizio`
--

INSERT INTO `Esercizio` (`ID`, `Nome`, `Attrezzo`, `Serie`, `Ripetizioni`, `Recupero`, `RPE`) VALUES
(1, 'Barbell Bench Press', 0, 5, 5, 180, 8.5),
(2, 'Barbell Bench Press', 0, 4, 8, 120, 9),
(3, 'Incline Barbell Bench Press', 0, 4, 8, 120, 9),
(4, 'Incline Dumbbell Bench Press', 0, 4, 8, 120, 9),
(5, 'Chest Press', 0, 4, 10, 120, 9),
(6, 'Dumbell Flys', 0, 4, 12, 90, 9),
(7, 'Low Cable Flys', 0, 4, 12, 90, 9),
(8, 'Dumbell Flys', 0, 4, 12, 90, 9),
(9, 'High To Low Cable Flys', 0, 4, 12, 90, 9),
(10, 'French Press', 0, 4, 12, 90, 9),
(11, 'Cable Pushdown', 0, 4, 12, 120, 9),
(12, 'Barbell Curl', 0, 4, 8, 120, 9),
(13, 'Hammer Curl', 0, 4, 12, 90, 9),
(14, 'Overhead Press', 0, 4, 8, 90, 9),
(15, 'Lateral Raise', 0, 4, 12, 90, 9),
(16, 'Bent Over Raise', 0, 4, 12, 90, 9),
(17, 'Deadlift', 0, 4, 4, 180, 9.5),
(18, 'Lat Pulldown', 0, 4, 8, 90, 9),
(19, 'Pulley', 0, 4, 8, 90, 9),
(20, 'Bent Over Row', 0, 4, 6, 120, 9),
(21, 'Crunch', 0, 4, 4, 180, 9),
(22, 'Squat', 0, 4, 20, 180, 9),
(23, 'Squat', 0, 4, 4, 180, 9.5),
(24, 'Romanian Deadlift', 0, 4, 10, 180, 8.5);

-- --------------------------------------------------------

--
-- Struttura della tabella `Include`
--

CREATE TABLE `Include` (
  `CF_Cliente` varchar(16) NOT NULL,
  `Num_Scheda` smallint(6) NOT NULL,
  `Muscolo_Carente` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Include`
--

INSERT INTO `Include` (`CF_Cliente`, `Num_Scheda`, `Muscolo_Carente`) VALUES
('BSSCHR30A01X842E', 1, 'Addominali'),
('BSSCHR30A01X842E', 1, 'Bicipite Femorale'),
('CSNRMN99M42A703P', 1, 'Tricipite'),
('MRPRBC80A01W840E', 1, 'Brachio-Radiale'),
('MRSMRC98A01A703O', 1, 'Bicipite'),
('MSSSTF80A01V521I', 1, 'Deltoide'),
('NPPJFF80A01T360E', 1, 'Trapezio'),
('RNDDRR96A01L846U', 1, 'Gran Dorsale'),
('RNDDRR96A01L846U', 1, 'Quadricipite'),
('SEDJFF89A01O842A', 1, 'Gluteo'),
('SEDJFF89A01O842A', 1, 'Gran Pettorale'),
('SEDJFF89A01O842A', 1, 'Polpaccio');

-- --------------------------------------------------------

--
-- Struttura della tabella `Macch_Card`
--

CREATE TABLE `Macch_Card` (
  `ID_Ses` int(11) NOT NULL,
  `Inizio` datetime NOT NULL,
  `Fine` datetime NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Potenza_Med` float NOT NULL,
  `Heart_Rate_Med` smallint(6) NOT NULL,
  `Heart_Rate_Max` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Macch_Card`
--

INSERT INTO `Macch_Card` (`ID_Ses`, `Inizio`, `Fine`, `Nome`, `Potenza_Med`, `Heart_Rate_Med`, `Heart_Rate_Max`) VALUES
(2, '2020-02-07 17:17:00', '2020-02-02 19:57:00', 'Tapis Roulant', 40, 90, 130),
(4, '2020-02-07 17:56:00', '2020-02-02 19:56:00', 'Tapis Roulant', 70, 90, 130),
(5, '2020-02-07 17:01:00', '2020-02-09 19:56:00', 'Tapis Roulant', 70, 90, 130);

-- --------------------------------------------------------

--
-- Struttura della tabella `Macch_Res`
--

CREATE TABLE `Macch_Res` (
  `ID_Ses` int(11) NOT NULL,
  `Inizio` datetime NOT NULL,
  `Fine` datetime NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Esercizio` varchar(40) NOT NULL,
  `Ripetizioni` tinyint(4) NOT NULL,
  `Carico` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Macch_Res`
--

INSERT INTO `Macch_Res` (`ID_Ses`, `Inizio`, `Fine`, `Nome`, `Esercizio`, `Ripetizioni`, `Carico`) VALUES
(1, '2020-02-07 18:01:00', '2020-02-07 18:03:00', 'Bench', 'Barbell Bench Press', 10, 60),
(1, '2020-02-07 18:06:00', '2020-02-07 18:08:00', 'Bench', 'Barbell Bench Press', 10, 60),
(1, '2020-02-07 18:11:00', '2020-02-07 18:13:00', 'Bench', 'Barbell Bench Press', 6, 100),
(1, '2020-02-07 18:16:00', '2020-02-07 18:18:00', 'Bench', 'Barbell Bench Press', 4, 140),
(2, '2020-02-07 18:02:00', '2020-02-07 18:04:00', 'Barbell', 'Squat', 10, 45),
(3, '2020-02-07 18:03:00', '2020-02-07 18:05:00', 'Bench', 'Barbell Bench Press', 10, 60),
(3, '2020-02-07 18:08:00', '2020-02-07 18:09:00', 'Bench', 'Barbell Bench Press', 6, 70),
(3, '2020-02-07 18:13:00', '2020-02-07 18:14:00', 'Bench', 'Barbell Bench Press', 4, 87.5),
(4, '2020-02-07 18:04:00', '2020-02-07 18:06:00', 'Barbell', 'Deadlift', 1, 500),
(4, '2020-02-07 19:04:00', '2020-02-07 19:06:00', 'Barbell', 'Deadlift', 8, 80),
(5, '2020-02-07 18:07:00', '2020-02-07 18:09:00', 'Barbell', 'Deadlift', 9, 70),
(5, '2020-02-07 19:05:00', '2020-02-07 19:07:00', 'Barbell', 'Deadlift', 5, 90);

-- --------------------------------------------------------

--
-- Struttura della tabella `Muscolo_Carente`
--

CREATE TABLE `Muscolo_Carente` (
  `Nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Muscolo_Carente`
--

INSERT INTO `Muscolo_Carente` (`Nome`) VALUES
('Addominali'),
('Bicipite'),
('Bicipite Femorale'),
('Brachio-Radiale'),
('Deltoide'),
('Gluteo'),
('Gran Dorsale'),
('Gran Pettorale'),
('Polpaccio'),
('Quadricipite'),
('Trapezio'),
('Tricipite');

-- --------------------------------------------------------

--
-- Struttura della tabella `Scheda`
--

CREATE TABLE `Scheda` (
  `CF_Cliente` varchar(16) NOT NULL,
  `Numero` smallint(6) NOT NULL,
  `Obiettivo` varchar(20) NOT NULL,
  `Inizio` date NOT NULL,
  `Fine` date NOT NULL,
  `Freq_Sett` tinyint(4) NOT NULL,
  `PT` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Scheda`
--

INSERT INTO `Scheda` (`CF_Cliente`, `Numero`, `Obiettivo`, `Inizio`, `Fine`, `Freq_Sett`, `PT`) VALUES
('BJRHFT40A01O840I', 1, 'Forza', '2020-01-10', '2020-06-10', 4, 'Dwayne Johnson'),
('BSSCHR30A01X842E', 1, 'Massa', '2020-01-25', '2020-05-25', 4, 'Anllela Sagra'),
('BTTVNR20A01G840O', 1, 'Tonificazione', '2020-01-25', '2020-05-25', 3, 'Anllela Sagra'),
('CSNRMN99M42A703P', 1, 'Tonificazione', '2020-01-25', '2020-05-25', 4, 'Anllela Sagra'),
('FCCJHN80A01N840A', 1, 'Massa', '2020-02-24', '2020-05-24', 4, 'Dwayne Johnson'),
('HLLEDD90A01A840O', 1, 'Forza', '2020-01-10', '2020-06-10', 4, 'Dwayne Johnson'),
('LCECRS30A01B840U', 1, 'Tonificazione', '2020-01-25', '2020-05-25', 3, 'Anllela Sagra'),
('MRPRBC80A01W840E', 1, 'Tonificazione', '2020-01-25', '2020-05-25', 4, 'Dwayne Johnson'),
('MRSMRC98A01A703O', 1, 'Definizione', '2020-02-24', '2020-05-24', 4, 'Dwayne Johnson'),
('MSSSTF80A01V521I', 1, 'Massa', '2019-09-01', '2020-02-21', 5, 'Greg Doucette'),
('NPPJFF80A01T360E', 1, 'Ricomposizione', '2020-01-23', '2020-05-23', 4, 'Greg Doucette'),
('NVEGVN60A01Y840O', 1, 'Massa', '2020-02-24', '2020-05-24', 4, 'Dwayne Johnson'),
('RMLCSR63A01B840E', 1, 'Massa', '2020-01-25', '2020-05-25', 4, 'Greg Doucette'),
('RNDDRR96A01L846U', 1, 'Forza', '2020-01-10', '2020-06-10', 4, 'Dwayne Johnson'),
('SEDJFF89A01O842A', 1, 'Massa', '2020-02-23', '2020-03-23', 5, 'Hany Rambod');

-- --------------------------------------------------------

--
-- Struttura della tabella `Sessione`
--

CREATE TABLE `Sessione` (
  `CF_Cliente` varchar(16) NOT NULL,
  `ID` int(11) NOT NULL,
  `Inizio` datetime NOT NULL,
  `Fine` datetime DEFAULT NULL,
  `Volume` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `Sessione`
--

INSERT INTO `Sessione` (`CF_Cliente`, `ID`, `Inizio`, `Fine`, `Volume`) VALUES
('FCCJHN80A01N840A', 2, '2020-02-07 18:02:00', '2020-02-02 19:57:00', 20170.9),
('HLLEDD90A01A840O', 4, '2020-02-07 18:04:00', '2020-02-06 19:56:00', 500),
('HLLEDD90A01A840O', 5, '2020-02-07 18:05:00', '2020-02-09 19:56:00', 17000),
('MRSMRC98A01A703O', 3, '2020-02-07 18:03:00', '2020-02-02 19:56:00', 44564.9),
('SEDJFF89A01O842A', 1, '2020-02-07 18:01:00', '2020-02-01 20:17:00', 19200);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Abbonamento`
--
ALTER TABLE `Abbonamento`
  ADD PRIMARY KEY (`CF_Cliente`,`ID`);

--
-- Indici per le tabelle `Accesso`
--
ALTER TABLE `Accesso`
  ADD PRIMARY KEY (`CF_Cliente`,`Entrata`);

--
-- Indici per le tabelle `Body_Check`
--
ALTER TABLE `Body_Check`
  ADD PRIMARY KEY (`CF_Cliente`,`DataOra`);

--
-- Indici per le tabelle `Cliente`
--
ALTER TABLE `Cliente`
  ADD PRIMARY KEY (`CF`),
  ADD UNIQUE KEY `User_App` (`User_App`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indici per le tabelle `Contiene`
--
ALTER TABLE `Contiene`
  ADD PRIMARY KEY (`CF_Cliente`,`Num_Scheda`,`ID_Esercizio`),
  ADD KEY `ContieneEsercizio` (`ID_Esercizio`);

--
-- Indici per le tabelle `Esercizio`
--
ALTER TABLE `Esercizio`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `Include`
--
ALTER TABLE `Include`
  ADD PRIMARY KEY (`CF_Cliente`,`Num_Scheda`,`Muscolo_Carente`),
  ADD KEY `IncludeMuscolo` (`Muscolo_Carente`);

--
-- Indici per le tabelle `Macch_Card`
--
ALTER TABLE `Macch_Card`
  ADD PRIMARY KEY (`ID_Ses`,`Inizio`);

--
-- Indici per le tabelle `Macch_Res`
--
ALTER TABLE `Macch_Res`
  ADD PRIMARY KEY (`ID_Ses`,`Inizio`);

--
-- Indici per le tabelle `Muscolo_Carente`
--
ALTER TABLE `Muscolo_Carente`
  ADD PRIMARY KEY (`Nome`);

--
-- Indici per le tabelle `Scheda`
--
ALTER TABLE `Scheda`
  ADD PRIMARY KEY (`CF_Cliente`,`Numero`);

--
-- Indici per le tabelle `Sessione`
--
ALTER TABLE `Sessione`
  ADD PRIMARY KEY (`CF_Cliente`,`ID`),
  ADD KEY `SerieRes` (`ID`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `Abbonamento`
--
ALTER TABLE `Abbonamento`
  ADD CONSTRAINT `Possiede` FOREIGN KEY (`CF_Cliente`) REFERENCES `Cliente` (`CF`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `Accesso`
--
ALTER TABLE `Accesso`
  ADD CONSTRAINT `Effettua` FOREIGN KEY (`CF_Cliente`) REFERENCES `Cliente` (`CF`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `Body_Check`
--
ALTER TABLE `Body_Check`
  ADD CONSTRAINT `Misurazione` FOREIGN KEY (`CF_Cliente`) REFERENCES `Cliente` (`CF`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `Contiene`
--
ALTER TABLE `Contiene`
  ADD CONSTRAINT `Scheda_Contiene` FOREIGN KEY (`CF_Cliente`,`Num_Scheda`) REFERENCES `Scheda` (`CF_Cliente`, `Numero`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `Esercizio`
--
ALTER TABLE `Esercizio`
  ADD CONSTRAINT `Contiene_Esercizio` FOREIGN KEY (`ID`) REFERENCES `Contiene` (`ID_Esercizio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `Include`
--
ALTER TABLE `Include`
  ADD CONSTRAINT `Scheda_Include` FOREIGN KEY (`CF_Cliente`,`Num_Scheda`) REFERENCES `Scheda` (`CF_Cliente`, `Numero`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `Macch_Card`
--
ALTER TABLE `Macch_Card`
  ADD CONSTRAINT `Serie_Card` FOREIGN KEY (`ID_Ses`) REFERENCES `Sessione` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `Macch_Res`
--
ALTER TABLE `Macch_Res`
  ADD CONSTRAINT `Serie_Res` FOREIGN KEY (`ID_Ses`) REFERENCES `Sessione` (`ID`);

--
-- Limiti per la tabella `Muscolo_Carente`
--
ALTER TABLE `Muscolo_Carente`
  ADD CONSTRAINT `Include_Muscolo` FOREIGN KEY (`Nome`) REFERENCES `Include` (`Muscolo_Carente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `Scheda`
--
ALTER TABLE `Scheda`
  ADD CONSTRAINT `Riceve` FOREIGN KEY (`CF_Cliente`) REFERENCES `Cliente` (`CF`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `Sessione`
--
ALTER TABLE `Sessione`
  ADD CONSTRAINT `Allenamento` FOREIGN KEY (`CF_Cliente`) REFERENCES `Cliente` (`CF`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


/*
	Query
*/
/*
QUERY 1
*/
SELECT C.Nome, C.Cognome, SUM(Ripetizioni*Carico) AS Volume
FROM Cliente C, Sessione S, Macch_Res MR
WHERE C.CF = S.CF_Cliente
	AND S.ID = MR.ID_Ses
    AND MR.Inizio > '2020-02-07 18:00:00'
    AND MR.Fine < '2020-02-07 19:00:00'
    GROUP BY C.CF  
ORDER BY `Volume`  DESC


/*
QUERY 2
*/
SELECT C.Nome, C.Cognome, (BC.Peso*((100-BC.Body_Fat_pct)/100))  / ((C.Altezza/100)*(C.Altezza/100)) AS FFMI
FROM Cliente C, Body_Check BC
WHERE C.CF = BC.CF_Cliente
	HAVING FFMI > 25
    	ORDER BY FFMI


/*
QUERY 3
*/
SELECT Nome, Cognome, BC1.DataOra AS Giorno1, BC2.DataOra AS Giorno2, BC1.Peso*BC1.Body_Fat_pct/100 AS KGGrassoPrima, BC2.Peso*BC2.Body_Fat_pct/100 AS KGGrassoDopo, ((BC2.Peso*BC2.Body_Fat_pct/100)-(BC1.Peso*BC1.Body_Fat_pct/100))*-1 AS KGGrassoPerso
FROM Cliente C, Body_Check BC1, Body_Check BC2
WHERE C.CF = BC1.CF_Cliente
	AND BC1.CF_Cliente = BC2.CF_Cliente
    AND BC1.DataOra < BC2.DataOra


/*
QUERY 4
*/
SELECT S.Obiettivo, COUNT(*) AS Quantità, (COUNT(*)/(
      SELECT COUNT(*)
    FROM Cliente C, Scheda S
    WHERE C.CF = S.CF_Cliente)*100) AS Percentuale
FROM Cliente C, Scheda S
WHERE C.CF = S.CF_Cliente
  GROUP BY S.Obiettivo
ORDER BY Percentuale DESC


/*
QUERY 5 - Affluenza pomeridiana per inserire corsi
*/
SELECT COUNT(*) as NumeroAccPom, COUNT(*)/(SELECT COUNT(*) FROM Accesso)*100 as PercentualeAccessiPom
FROM Accesso
WHERE EXTRACT(HOUR FROM Entrata) >= 12 AND EXTRACT(HOUR FROM Entrata) <20


/*
QUERY 6 -  Abbonati senza accessi
*/
SELECT C.Nome, C.Cognome, C.CF
FROM Abbonamento as A JOIN Cliente as C ON A.CF_Cliente = C.CF
WHERE (A.Fine > CURDATE() OR A.Fine IS NULL)
      AND A.CF_Cliente NOT IN (SELECT CF_Cliente
                          FROM Accesso)
