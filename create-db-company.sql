CREATE DATABASE `company`;
USE `company`;

CREATE TABLE `employees` (
  `employee_id` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `reports_to` int DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `fk_employees_employees_idx` (`reports_to`),
  CONSTRAINT `fk_employees_managers` FOREIGN KEY (`reports_to`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `employees` VALUES (31821,'Marcin','Kowalski','Prezes',NULL);
INSERT INTO `employees` VALUES (34391,'Kamil','Janicki','Project manager',31821);
INSERT INTO `employees` VALUES (37851,'Karol','Zawadzki','Programista backend',34391);
INSERT INTO `employees` VALUES (40448,'Igor','Crissil','Programista frontend',34391);
INSERT INTO `employees` VALUES (55284,'Zuzanna','Adamczyk','UI designer',34391);
INSERT INTO `employees` VALUES (63166,'Natalia','Przybylska','Tester automatyczny',34391);
INSERT INTO `employees` VALUES (67009,'Jakub','Nowak','Tester manualny',34391);
INSERT INTO `employees` VALUES (67370,'Hubert','Rutkowski','Programista bez danych',96767,34391);
INSERT INTO `employees` VALUES (68249,'Robert','Czajka','Programista backend',34391);
INSERT INTO `employees` VALUES (72540,'Mateusz','Nowakowski','Programista full stack',34391);
INSERT INTO `employees` VALUES (73900,'Maciej','Kowalczyk','Administrator sieci',34391);
INSERT INTO `employees` VALUES (74196,'Witold','Janowski','Programista backend',34391);





