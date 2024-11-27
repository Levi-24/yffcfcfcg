CREATE TABLE `orszagok` (
  `orszag_id` INT PRIMARY KEY AUTO_INCREMENT,
  `orszag_nev` VARCHAR(100) NOT NULL,
  `gdp` DECIMAL(10,2),
  `nepesseg` INT,
  `terulet_km2` DECIMAL(10,2),
  `fejlettségi_szint` varchar(255)
);

CREATE TABLE `energiafogyasztas` (
  `fogyasztas_id` INT PRIMARY KEY AUTO_INCREMENT,
  `orszag_id` INT NOT NULL,
  `ev` YEAR NOT NULL,
  `fogyasztas_mwh` DECIMAL(10,2) NOT NULL
);

CREATE TABLE `energia_hatekonysag` (
  `hatekonysag_id` INT PRIMARY KEY AUTO_INCREMENT,
  `orszag_id` INT NOT NULL,
  `ev` YEAR NOT NULL,
  `hatekonysag_eredmeny` DECIMAL(5,2),
  `energia_megtakaritas_mwh` DECIMAL(10,2),
  `emiszios_csokkenes_kgco2` DECIMAL(10,2),
  `beruhazas_kolteseg` DECIMAL(15,2)
);

CREATE TABLE `megujulo_energia` (
  `megujulo_energia_id` INT PRIMARY KEY AUTO_INCREMENT,
  `orszag_id` int,
  `leiras` varchar(255),
  `fogyasztas_mwh` DECIMAL(10,2)
);

CREATE TABLE `nem_megujulo_energia` (
  `nem_megujulo_energia_id` INT PRIMARY KEY AUTO_INCREMENT,
  `orszag_id` INT,
  `leairas` varchar(255),
  `fogyasztas_mwh` DECIMAL(10,2)
);

ALTER TABLE `energiafogyasztas` ADD FOREIGN KEY (`orszag_id`) REFERENCES `orszagok` (`orszag_id`);

ALTER TABLE `megujulo_energia` ADD FOREIGN KEY (`orszag_id`) REFERENCES `orszagok` (`orszag_id`);

ALTER TABLE `nem_megujulo_energia` ADD FOREIGN KEY (`orszag_id`) REFERENCES `orszagok` (`orszag_id`);

ALTER TABLE `energia_hatekonysag` ADD FOREIGN KEY (`orszag_id`) REFERENCES `orszagok` (`orszag_id`);
