DROP SCHEMA IF EXISTS `buschecker`;
DROP TABLE IF EXISTS `busline`;
DROP TABLE IF EXISTS `checkin`;

CREATE SCHEMA `buschecker` CHARACTER SET utf8;

USE `buschecker`;

CREATE TABLE `busline` (
  `idbus` int(11) NOT NULL,
  `origin` varchar(45) DEFAULT NULL,
  `destiny` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbus`),
  UNIQUE KEY `id_UNIQUE` (`idbus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `checkin` (
  `idcheckin` int(11) NOT NULL AUTO_INCREMENT,
  `line` varchar(45) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `direction` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcheckin`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;