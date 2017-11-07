--
-- Struttura della tabella `MENSA_ISTITUTO`
--

CREATE TABLE `MENSA_ISTITUTO` (
  `ID` int(11) NOT NULL,
  `COMUNE` varchar(100) NOT NULL,
  `ISTITUTO` varchar(100) NOT NULL,
  `SCUOLA` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `MENSA_ISTITUTO`
--
ALTER TABLE `MENSA_ISTITUTO`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `MENSA_ISTITUTO`
--
ALTER TABLE `MENSA_ISTITUTO`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
