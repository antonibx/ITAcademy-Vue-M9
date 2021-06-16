-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Esquema `Stube`
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Stube` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `Stube` ;

-- -----------------------------------------------------
-- Taula `Stube`.`usuaris`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Stube`.`usuaris` (
  `id_usuari` INT NOT NULL UNIQUE,
  `nom` VARCHAR(100) NULL DEFAULT NULL, 
  `correu` VARCHAR(100) NULL DEFAULT NULL, 
  `contrassenya` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuari`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Taula `Stube`.`videos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Stube`.`videos` (
  `id_video` INT NOT NULL UNIQUE,
  `titol` VARCHAR(100) NULL DEFAULT NULL,
  `descripcio` VARCHAR(100) NULL DEFAULT NULL,
  `url` VARCHAR(100) NULL DEFAULT NULL,
  `identificador` VARCHAR(100) NULL DEFAULT NULL,
  `usuari_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_video`),
  INDEX `usuari_fk` (`usuari_id` ASC),
  CONSTRAINT `usuari_id`
    FOREIGN KEY (`usuari_id`)
    REFERENCES `Stube`.`usuaris` (`id_usuari`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Restaura estat de MySQL
-- -----------------------------------------------------
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
