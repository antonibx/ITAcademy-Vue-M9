-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Esquema `Optica`
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Optica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `Optica` ;

-- -----------------------------------------------------
-- Taula `Optica`.`ulleres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Optica`.`ulleres` (
  `id_ulleres` INT NOT NULL UNIQUE,
  `marca_id` INT NULL DEFAULT NULL,
  `montura_tipus` VARCHAR(100) NULL DEFAULT NULL,
  `montura_color` VARCHAR(100) NULL DEFAULT NULL,
  `esquerra_graduacio` VARCHAR(100) NULL DEFAULT NULL,
  `esquerra_color` VARCHAR(100) NULL DEFAULT NULL,
  `dreta_graduacio` VARCHAR(100) NULL DEFAULT NULL,
  `dreta_color` VARCHAR(100) NULL DEFAULT NULL,
  `preu` VARCHAR(100) NULL DEFAULT NULL, 
  PRIMARY KEY (`id_ulleres`),
  INDEX `marca_fk` (`marca_id` ASC),
  CONSTRAINT `marca_id`
    FOREIGN KEY (`marca_id`)
    REFERENCES `Optica`.`marques` (`id_marca`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Taula `Optica`.`marques`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Optica`.`marques` (
  `id_marca` INT NOT NULL UNIQUE,
  `nom` VARCHAR(100) NULL DEFAULT NULL,
  `proveidor_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_marca`),
  INDEX `proveidor_fk` (`proveidor_id` ASC),
  CONSTRAINT `proveidor_id`
    FOREIGN KEY (`proveidor_id`)
    REFERENCES `Optica`.`proveidors` (`id_proveidor`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Taula `Optica`.`proveidors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Optica`.`proveidors` (
  `id_proveidor` INT NOT NULL UNIQUE,
  `nom` VARCHAR(100) NULL DEFAULT NULL,
  `adreça_id` INT NULL DEFAULT NULL, 
  `telefon` VARCHAR(100) NULL DEFAULT NULL,
  `fax` VARCHAR(100) NULL DEFAULT NULL, 
  PRIMARY KEY (`id_proveidor`),
  INDEX `adreça_fk` (`adreça_id` ASC),
  CONSTRAINT `adreça_id`
    FOREIGN KEY (`adreça_id`)
    REFERENCES `Optica`.`adreces` (`id_adreça`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Taula `Optica`.`adreces`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Optica`.`adreces` (
  `id_adreça` INT NOT NULL UNIQUE,
  `carrer` VARCHAR(100) NULL DEFAULT NULL,
  `numero` INT NULL DEFAULT NULL, 
  `pis` VARCHAR(100) NULL DEFAULT NULL,
  `porta` VARCHAR(100) NULL DEFAULT NULL,
  `ciutat` VARCHAR(100) NULL DEFAULT NULL, 
  `codi_postal` VARCHAR(5) NULL DEFAULT NULL,
  `pais` VARCHAR(100) NULL DEFAULT NULL, 
  PRIMARY KEY (`id_adreça`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Taula `Optica`.`compres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Optica`.`compres` (
  `id_compra` INT NOT NULL UNIQUE,
  `ulleres_id` INT NULL DEFAULT NULL,
  `client_id` INT NULL DEFAULT NULL,
  `venedor_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_compra`),
  INDEX `ulleres_fk` (`ulleres_id` ASC),
  CONSTRAINT `ulleres_id`
    FOREIGN KEY (`ulleres_id`)
    REFERENCES `Optica`.`ulleres` (`id_ulleres`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  INDEX `client_fk` (`client_id` ASC),
  CONSTRAINT `client_id`
    FOREIGN KEY (`client_id`)
    REFERENCES `Optica`.`clients` (`id_client`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  INDEX `venedor_fk` (`venedor_id` ASC),
  CONSTRAINT `venedor_id`
    FOREIGN KEY (`venedor_id`)
    REFERENCES `Optica`.`empleats` (`id_empleat`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Taula `Optica`.`clients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Optica`.`clients` (
  `id_client` INT NOT NULL UNIQUE,
  `nom` VARCHAR(100) NULL DEFAULT NULL,
  `direccio_id` INT NULL DEFAULT NULL,
  `telefon` VARCHAR(100) NULL DEFAULT NULL, 
  `correu` VARCHAR(100) NULL DEFAULT NULL, 
  `registre` VARCHAR(100) NULL DEFAULT NULL,
  `recomanador_id` INT NULL DEFAULT NULL, 
  PRIMARY KEY (`id_client`),
  INDEX `direccio_fk` (`direccio_id` ASC),
  CONSTRAINT `direccio_id`
    FOREIGN KEY (`direccio_id`)
    REFERENCES `Optica`.`adreces` (`id_adreça`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  INDEX `recomanador_fk` (`recomanador_id` ASC),
  CONSTRAINT `recomanador_id`
    FOREIGN KEY (`recomanador_id`)
    REFERENCES `Optica`.`clients` (`id_client`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Taula `Optica`.`empleats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Optica`.`empleats` (
  `id_empleat` INT NOT NULL UNIQUE,
  `nom` VARCHAR(100) NULL DEFAULT NULL, 
  `posicio` VARCHAR(100) NULL DEFAULT NULL, 
  `sou` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_empleat`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Restaura estat de MySQL
-- -----------------------------------------------------
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
