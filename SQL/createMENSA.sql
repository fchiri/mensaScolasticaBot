
--
-- Struttura della tabella `MENSA`
--

CREATE TABLE `MENSA` (
  `ID_ISTITUTO` int(11) DEFAULT NULL,
  `SETTIMANA` int(10) NOT NULL,
  `GIORNO` varchar(50) CHARACTER SET utf8 NOT NULL,
  `N_PORTATA` int(11) NOT NULL,
  `PIATTO` varchar(100) CHARACTER SET utf8 NOT NULL,
  `RICETTA` text CHARACTER SET utf8 NOT NULL,
  `DATA_VALIDITA_DAL` date NOT NULL,
  `DATA_VALIDITA_AL` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `MENSA`
--
ALTER TABLE `MENSA`
  ADD PRIMARY KEY (`SETTIMANA`,`GIORNO`,`PIATTO`),
  ADD KEY `indIDIst` (`ID_ISTITUTO`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `MENSA`
--
ALTER TABLE `MENSA`
  ADD CONSTRAINT `idist` FOREIGN KEY (`ID_ISTITUTO`) REFERENCES `MENSA_ISTITUTO` (`ID`);
