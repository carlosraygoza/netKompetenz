-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2017 a las 22:59:59
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `netkompetenz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `a` int(11) NOT NULL,
  `b` int(11) NOT NULL,
  `c` int(11) NOT NULL,
  `d` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee`
--

CREATE TABLE `employee` (
  `idEmployee` int(11) NOT NULL,
  `nameEmployee` varchar(255) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `idDirectSupervisor` char(10) NOT NULL,
  `namePicture` varchar(255) DEFAULT NULL,
  `typePicture` varchar(255) DEFAULT NULL,
  `sizePicture` varchar(255) DEFAULT NULL,
  `idLocation` char(5) NOT NULL,
  `businessUnit` varchar(10) NOT NULL,
  `discipline` varchar(45) NOT NULL,
  `idTeam` varchar(45) NOT NULL,
  `hiringDate` varchar(45) NOT NULL,
  `pdc` varchar(45) NOT NULL,
  `hide` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `employee`
--

INSERT INTO `employee` (`idEmployee`, `nameEmployee`, `username`, `password`, `idDirectSupervisor`, `namePicture`, `typePicture`, `sizePicture`, `idLocation`, `businessUnit`, `discipline`, `idTeam`, `hiringDate`, `pdc`, `hide`) VALUES
(1, 'development', '00000000', 'development', '0', '0', '0', '0', 'GDN', '000000', '0', 'SW', '0', '0', 0),
(32000042, 'MEJIA GONZALEZ JESUS DAVID', '32000042', '32000042', '0', '0', '0', '0', 'GDN', '0', '0', 'SE', '0', '0', 0),
(32000058, 'SILVA BANUELOS LUIS ADAN', '32000058', '32000058', '0', '0', '0', '0', 'GDN', '0', '0', 'SW', '0', '0', 0),
(32007656, 'ALCARAZ ZAMUDIO ALEJANDRO', '32007656', '32007656', '0', '0', '0', '0', 'GDN', '0', '0', 'CDS', '0', '0', 0),
(32007684, 'NAVARRO LIMON CARLOS EDUARDO', '32007684', '32007684', '0', '0', '0', '0', 'GDN', '0', '0', 'FT', '0', '0', 0),
(32007895, 'OROZCO CHAVEZ JOSE', '32007895', '32007895', '0', '0', '0', '0', 'GDN', '0', '0', 'FT', '0', '0', 0),
(32008179, 'PEREZ ESTEVES JOSUE', '32008179', '32008179', '0', '0', '0', '0', 'GDN', '0', '0', 'CDH', '0', '0', 0),
(32008394, 'NILO RODRIGUEZ MARIELA', '32008394', '32008394', '0', '0', '0', '0', 'GDN', '0', '0', 'SW', '0', '0', 0),
(32008397, 'ORTA CASTILLO DANIEL', '32008397', '32008397', '0', '0', '0', '0', 'GDN', '0', '0', 'FT', '0', '0', 0),
(32008398, 'ALEJO ARTURO', '32008398', '32008398', '0', '0', '0', '0', 'GDN', '0', '0', 'SE', '0', '0', 0),
(32008950, 'GARCIA ESPINOZA SERGIO', '32008950', '32008950', '0', '0', '0', '0', 'GDN', '0', '0', 'CDH', '0', '0', 0),
(32008951, 'GONZALEZ FERNANDEZ MAURICIO', '32008951', '32008951', '0', '0', '0', '0', 'GDN', '0', '0', 'FT', '0', '0', 0),
(32008961, 'CAPISTRAN GARZA JIRASH MAURICIO', '32008961', '32008961', '0', '0', '0', '0', 'GDN', '0', '0', 'SW', '0', '0', 0),
(32009189, 'LA VERDE RODRIGUEZ JOSE NORBERTO', '', '32009189', '0', '0', '0', '0', 'GDN', '0', '0', 'CDS', '0', '0', 0),
(32009190, 'CORREA CHICA JUAN CAMILO', '', '32009190', '0', '0', '0', '0', 'GDN', '0', '0', 'CDS', '0', '0', 0),
(32009476, 'TAPIA HERNANDEZ ALEJANDRO', '', '32009476', '0', '0', '0', '0', 'GDN', '0', '0', 'EE', '0', '0', 0),
(32009701, 'PRECUP TIBERIU', '', '32009701', '0', '0', '0', '0', 'GDN', '0', '0', 'CDS', '0', '0', 0),
(32009937, 'MORIMOTO SANDOVAL HIDEMI', '', '32009937', '0', '0', '0', '0', 'GDN', '0', '0', 'QA', '0', '0', 0),
(32009942, 'SILVA RODRIGUEZ WILFRIDO RIGOBERTO', '', '32009942', '0', '0', '0', '0', 'GDN', '0', '0', 'ME', '0', '0', 0),
(32009947, 'ALVAREZ TEJEDA MIGUEL ANGEL', '', '32009947', '0', '0', '0', '0', 'GDN', '0', '0', 'ME', '0', '0', 0),
(32009950, 'CHAPULA MENDOZA VICTOR RAMON', '', '32009950', '0', '0', '0', '0', 'GDN', '0', '0', 'FT', '0', '0', 0),
(32009953, 'REYNOSO GARCIA OSVALDO JAVIER', '', '32009953', '0', '0', '0', '0', 'GDN', '0', '0', 'FT', '0', '0', 0),
(32010152, 'MEDINA SOTELO SIMON', '', '32010152', '0', '0', '0', '0', 'GDN', '0', '0', 'ME', '0', '0', 0),
(32010153, 'HERNANDEZ REVELES RICARDO', '', '32010153', '0', '0', '0', '0', 'GDN', '0', '0', 'EE', '0', '0', 0),
(32010154, 'LUNA GONZALEZ OSCAR', '', '32010154', '0', '0', '0', '0', 'GDN', '0', '0', 'CDS', '0', '0', 0),
(32010339, 'PAREDES CARDONA DAVID IVAN', '', '32010339', '0', '0', '0', '0', 'GDN', '0', '0', 'SW', '0', '0', 0),
(32010340, 'AGUILAR GUZMAN VICTOR ISAI', '', '32010340', '0', '0', '0', '0', 'GDN', '0', '0', 'SW', '0', '0', 0),
(32010342, 'BARBA ZUBIA JORGE ANTONIO', '', '32010342', '0', '0', '0', '0', 'GDN', '0', '0', 'ME', '0', '0', 0),
(32010345, 'RAMIREZ CAMPOS JUAN SEBASTIAN', '', '32010345', '0', '0', '0', '0', 'GDN', '0', '0', 'CDM', '0', '0', 0),
(32010893, 'MOLINA GARATE PAUL', '', '32010893', '0', '0', '0', '0', 'GDN', '0', '0', 'SW', '0', '0', 0),
(32010899, 'PRECIADO MARTINEZ ERIK FRANCISCO', '', '32010899', '0', '0', '0', '0', 'GDN', '0', '0', 'FT', '0', '0', 0),
(32010903, 'MENDOZA DE LA TORRE ULISES', '', '32010903', '0', '0', '0', '0', 'GDN', '0', '0', 'CDM', '0', '0', 0),
(32011224, 'CONTRERAS GODOY JOSE ANGEL', '', '32011224', '0', '0', '0', '0', 'GDN', '0', '0', 'SW', '0', '0', 0),
(32012247, 'RAMIREZ SANCHEZ EARL ORLANDO', '', '32012247', '0', '0', '0', '0', 'GDN', '0', '0', 'SW', '0', '0', 0),
(32012706, 'QUINTERO CHAVEZ ERIK', '', '32012706', '0', '0', '0', '0', 'GDN', '0', '0', 'ME', '0', '0', 0),
(32012739, 'GARCIA VILCHIS ROBERTO MIGUEL', '', '32012739', '0', '0', '0', '0', 'GDN', '0', '0', 'SW', '0', '0', 0),
(32012812, 'HERNANDEZ TORRES JUAN PABLO', '', '32012812', '0', '0', '0', '0', 'GDN', '0', '0', 'FT', '0', '0', 0),
(32013002, 'VACA PEREIRA GHIRGHI MARCELO', '', '32013002', '0', '0', '0', '0', 'GDN', '0', '0', 'ME', '0', '0', 0),
(32013287, 'COBOS HERNANDEZ ELI DE JESUS', '', '32013287', '0', '0', '0', '0', 'GDN', '0', '0', 'FT', '0', '0', 0),
(32014117, 'ORTIZ MENDOZA ABRAHAM OSIRIS', '', '32014117', '0', '0', '0', '0', 'GDN', '0', '0', 'FT', '0', '0', 0),
(32014119, 'OROZCO MICHEL MARCELA', '', '32014119', '0', '0', '0', '0', 'GDN', '0', '0', 'SE', '0', '0', 0),
(32014120, 'ENCISO PONCE ANHUAR DANIEL', '', '32014120', '0', '0', '0', '0', 'GDN', '0', '0', 'SE', '0', '0', 0),
(32014127, 'LOERA GONZALEZ CARMEN GABRIELA', '', '32014127', '0', '0', '0', '0', 'GDN', '0', '0', 'SE', '0', '0', 0),
(32017688, 'AVALOS BUENO JORDAN ABEL', '', '32017688', '0', '0', '0', '0', 'GDN', '0', '0', 'SW', '0', '0', 0),
(32017692, 'CAMPOS CHAVEZ CARLOS JESUS', '', '32017692', '0', '0', '0', '0', 'GDN', '0', '0', 'SE', '0', '0', 0),
(32020309, 'JIMENEZ JIMENEZ ROSALBA', '', '32020309', '0', '0', '0', '0', 'GDN', '0', '0', 'HR', '0', '0', 0),
(32020939, 'GONZALEZ BARBA PRISCILA', '', '32020939', '0', '0', '0', '0', 'GDN', '0', '0', 'SE', '0', '0', 0),
(32020942, 'RUEDA SANTOS JUAN ANTONIO', '', '32020942', '0', '0', '0', '0', 'GDN', '0', '0', 'FT', '0', '0', 0),
(32021330, 'MERINO NAVARRO LUIS GERARDO', '', '32021330', '0', '0', '0', '0', 'GDN', '0', '0', 'FT', '0', '0', 0),
(32021331, 'MONTUFAR AGUILAR DAVID ISAIAS', '', '32021331', '0', '0', '0', '0', 'GDN', '0', '0', 'SE', '0', '0', 0),
(32022442, 'VALADEZ GARCIA MARTHA JANETT', '', '32022442', '0', '0', '0', '0', 'GDN', '0', '0', 'QA', '0', '0', 0),
(32411050, 'KORTRIGHT BARRERAS LUIS ALFONSO', '', '32411050', '0', '0', '0', '0', 'GDN', '0', '0', 'PM', '0', '0', 0),
(32411318, 'CARRANZA ANGELES ALEJANDRO', '', '32411318', '0', '0', '0', '0', 'GDN', '0', '0', 'SW', '0', '0', 0),
(32411351, 'DOMINGUEZ AGUILAR JORGE ALBERTO', '', '32411351', '0', '0', '0', '0', 'GDN', '0', '0', 'Mgmt', '0', '0', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee_has_role`
--

CREATE TABLE `employee_has_role` (
  `idEmployee` int(11) NOT NULL,
  `idRole` int(11) NOT NULL,
  `isCurrent` int(11) NOT NULL,
  `startDate` varchar(45) NOT NULL,
  `endDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee_has_skill`
--

CREATE TABLE `employee_has_skill` (
  `idEmployee` int(11) NOT NULL,
  `idSkill` int(11) NOT NULL,
  `levelExpertise` varchar(45) NOT NULL,
  `levelInterest` varchar(45) NOT NULL,
  `IsTrainer` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group`
--

CREATE TABLE `group` (
  `idGroup` int(11) NOT NULL,
  `nameGroup` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group_has_employee`
--

CREATE TABLE `group_has_employee` (
  `idGroup` int(11) NOT NULL,
  `idEmployee` int(11) NOT NULL,
  `isAdmin` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group_has_skill`
--

CREATE TABLE `group_has_skill` (
  `idGroup` int(11) NOT NULL,
  `idSkill` int(11) NOT NULL,
  `importance` tinyint(4) NOT NULL,
  `levelRequired` int(11) NOT NULL,
  `skillEveryone` tinyint(4) NOT NULL,
  `peopleRequired` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location`
--

CREATE TABLE `location` (
  `idLocation` char(5) NOT NULL,
  `nameLocation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `location`
--

INSERT INTO `location` (`idLocation`, `nameLocation`) VALUES
('ABH', 'Aubun Hills'),
('BBN', 'Babenhausen'),
('BDN', 'Brandys'),
('CHN', 'Wuhu/Nanjing'),
('GDN', 'Guadalajara Periferico'),
('PNN', 'Penang'),
('SGP', 'Singapore'),
('TSR', 'Timisoara');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE `log` (
  `idLog` int(11) NOT NULL,
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `action` varchar(100) NOT NULL,
  `tableName` varchar(100) NOT NULL,
  `info` text NOT NULL,
  `idEmployee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

CREATE TABLE `role` (
  `idRole` int(11) NOT NULL,
  `nameRole` varchar(255) NOT NULL,
  `informationRole` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_skill`
--

CREATE TABLE `role_has_skill` (
  `idRole` int(11) NOT NULL,
  `idSkill` int(11) NOT NULL,
  `levelExpertise` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill`
--

CREATE TABLE `skill` (
  `idSkill` int(11) NOT NULL,
  `nameSkill` varchar(45) NOT NULL,
  `descriptionSkill` varchar(255) NOT NULL,
  `complexity` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill_has_skill`
--

CREATE TABLE `skill_has_skill` (
  `idSkill_has_Skill` int(11) NOT NULL,
  `idSkill_parent` int(11) NOT NULL,
  `idSkill_child` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill_has_training`
--

CREATE TABLE `skill_has_training` (
  `idSkill` int(11) NOT NULL,
  `idTraining` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `email`) VALUES
(1, 'codigo', 'pass1', 'test1@example.com'),
(2, '2', '2', 'test2@example.com'),
(3, 'test3', 'pass3', 'test3@example.com'),
(4, 'test4', 'pass4', 'test4@example.com'),
(5, 'test5', 'pass5', 'test5@example.com'),
(6, 'test6', 'pass6', 'test6@example.com'),
(7, 'test7', 'pass7', 'test7@example.com'),
(8, 'test8', 'pass8', 'test8@example.com'),
(9, 'test9', 'pass9', 'test9@example.com'),
(11, 'test11', 'pass11', 'test11@example.com'),
(12, 'test12', 'pass12', 'test12@example.com'),
(13, 'test13', 'pass13', 'test13@example.com'),
(14, 'test14', 'pass14', 'test14@example.com'),
(15, 'test15', 'pass15', 'test15@example.com'),
(16, 'test16', 'pass16', 'test16@example.com'),
(17, 'test17', 'pass17', 'test17@example.com'),
(18, 'test18', 'pass18', 'test18@example.com'),
(19, 'test19', 'pass19', 'test19@example.com'),
(20, 'test20', 'pass20', 'test20@example.com'),
(21, 'test21', 'pass21', 'test21@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team`
--

CREATE TABLE `team` (
  `idTeam` varchar(10) NOT NULL,
  `nameTeam` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `team`
--

INSERT INTO `team` (`idTeam`, `nameTeam`) VALUES
('CDH', 'Core EE'),
('CDM', 'Core ME'),
('CDS', 'Core SW'),
('EE', 'EE'),
('FT', 'FT'),
('HR', 'Human Resources'),
('ME', 'ME'),
('Mgmt', 'Mgmt'),
('PM', 'PM'),
('QA', 'QA'),
('SE', 'SE'),
('SW', 'SW');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `training`
--

CREATE TABLE `training` (
  `idTraining` int(11) NOT NULL,
  `nameTraining` varchar(255) NOT NULL,
  `levelTraining` int(11) NOT NULL,
  `learningMode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`a`);

--
-- Indices de la tabla `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`idEmployee`),
  ADD KEY `fk_Employee_Location1_idx` (`idLocation`),
  ADD KEY `idTeam_idx` (`idTeam`);

--
-- Indices de la tabla `employee_has_role`
--
ALTER TABLE `employee_has_role`
  ADD PRIMARY KEY (`idEmployee`,`idRole`),
  ADD KEY `idEmployee_idx` (`idEmployee`),
  ADD KEY `idRole_idx` (`idRole`);

--
-- Indices de la tabla `employee_has_skill`
--
ALTER TABLE `employee_has_skill`
  ADD PRIMARY KEY (`idEmployee`,`idSkill`),
  ADD KEY `idEmployee_idx` (`idEmployee`),
  ADD KEY `idSkill` (`idSkill`);

--
-- Indices de la tabla `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`idGroup`);

--
-- Indices de la tabla `group_has_employee`
--
ALTER TABLE `group_has_employee`
  ADD PRIMARY KEY (`idGroup`,`idEmployee`),
  ADD KEY `fk_Group_has_Employee_Employee1_idx` (`idEmployee`),
  ADD KEY `fk_Group_has_Employee_Group1_idx` (`idGroup`);

--
-- Indices de la tabla `group_has_skill`
--
ALTER TABLE `group_has_skill`
  ADD PRIMARY KEY (`idGroup`,`idSkill`),
  ADD KEY `fk_Group_has_Skill_Skill1_idx` (`idSkill`),
  ADD KEY `fk_Group_has_Skill_Group1_idx` (`idGroup`);

--
-- Indices de la tabla `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`idLocation`);

--
-- Indices de la tabla `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`idLog`,`idEmployee`),
  ADD KEY `fk_Log_Employee1_idx` (`idEmployee`);

--
-- Indices de la tabla `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`idRole`);

--
-- Indices de la tabla `role_has_skill`
--
ALTER TABLE `role_has_skill`
  ADD PRIMARY KEY (`idRole`,`idSkill`),
  ADD KEY `fk_Role_has_Skill_Skill1_idx` (`idSkill`),
  ADD KEY `fk_Role_has_Skill_Role1_idx` (`idRole`);

--
-- Indices de la tabla `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`idSkill`);

--
-- Indices de la tabla `skill_has_skill`
--
ALTER TABLE `skill_has_skill`
  ADD PRIMARY KEY (`idSkill_has_Skill`,`idSkill_parent`,`idSkill_child`),
  ADD KEY `idSkill_parent_idx` (`idSkill_parent`),
  ADD KEY `idSkill_child_idx` (`idSkill_child`);

--
-- Indices de la tabla `skill_has_training`
--
ALTER TABLE `skill_has_training`
  ADD PRIMARY KEY (`idSkill`,`idTraining`),
  ADD KEY `fk_Skill_has_Training_Training1_idx` (`idTraining`),
  ADD KEY `fk_Skill_has_Training_Skill1_idx` (`idSkill`);

--
-- Indices de la tabla `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`idTeam`);

--
-- Indices de la tabla `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`idTraining`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `skill`
--
ALTER TABLE `skill`
  MODIFY `idSkill` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `idLocation` FOREIGN KEY (`idLocation`) REFERENCES `location` (`idLocation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idTeam` FOREIGN KEY (`idTeam`) REFERENCES `team` (`idTeam`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `employee_has_role`
--
ALTER TABLE `employee_has_role`
  ADD CONSTRAINT `fk_idEmployee` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`idEmployee`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_idRole` FOREIGN KEY (`idRole`) REFERENCES `role` (`idRole`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `employee_has_skill`
--
ALTER TABLE `employee_has_skill`
  ADD CONSTRAINT `idEmployee` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`idEmployee`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idSkill` FOREIGN KEY (`idSkill`) REFERENCES `skill` (`idSkill`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `group_has_employee`
--
ALTER TABLE `group_has_employee`
  ADD CONSTRAINT `fk_Group_has_Employee_Employee1` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`idEmployee`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Group_has_Employee_Group1` FOREIGN KEY (`idGroup`) REFERENCES `group` (`idGroup`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `group_has_skill`
--
ALTER TABLE `group_has_skill`
  ADD CONSTRAINT `fk_Group_has_Skill_Group1` FOREIGN KEY (`idGroup`) REFERENCES `group` (`idGroup`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Group_has_Skill_Skill1` FOREIGN KEY (`idSkill`) REFERENCES `skill` (`idSkill`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `fk_Log_Employee1` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`idEmployee`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `role_has_skill`
--
ALTER TABLE `role_has_skill`
  ADD CONSTRAINT `fk_Role_has_Skill_Role1` FOREIGN KEY (`idRole`) REFERENCES `role` (`idRole`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Role_has_Skill_Skill1` FOREIGN KEY (`idSkill`) REFERENCES `skill` (`idSkill`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `skill_has_skill`
--
ALTER TABLE `skill_has_skill`
  ADD CONSTRAINT `idSkill_child` FOREIGN KEY (`idSkill_child`) REFERENCES `skill` (`idSkill`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idSkill_parent` FOREIGN KEY (`idSkill_parent`) REFERENCES `skill` (`idSkill`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `skill_has_training`
--
ALTER TABLE `skill_has_training`
  ADD CONSTRAINT `fk_Skill_has_Training_Skill1` FOREIGN KEY (`idSkill`) REFERENCES `skill` (`idSkill`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Skill_has_Training_Training1` FOREIGN KEY (`idTraining`) REFERENCES `training` (`idTraining`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
