CREATE TABLE `users` (
  `username` varchar(80) NOT NULL,
  `password` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `authority` varchar(45) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `test` (
  `dateleave` date NOT NULL,
  `datereturn` date NOT NULL,
  `leavingfrom` varchar(45) NOT NULL,
  `goingto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `reserve` (
  `dateleave` date NOT NULL,
  `datereturn` date NOT NULL,
  `leavingfrom` varchar(45) NOT NULL,
  `goingto` varchar(45) NOT NULL,
  `username` varchar(80) NOT NULL,
  KEY `fk_reserve_1_idx` (`username`),
  CONSTRAINT `fk_reserve_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

