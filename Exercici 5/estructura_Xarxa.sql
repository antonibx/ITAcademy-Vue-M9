-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Esquema `Xarxa`
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Xarxa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `Xarxa` ;

-- -----------------------------------------------------
-- Taula `Xarxa`.`usuaris`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Xarxa`.`usuaris` (
  `id_usuari` INT NOT NULL UNIQUE,
  `nom` VARCHAR(100) NULL DEFAULT NULL,
  `correu` VARCHAR(100) NULL DEFAULT NULL, 
  `contrassenya` VARCHAR(100) NULL DEFAULT NULL, 
  PRIMARY KEY (`id_usuari`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Taula `Xarxa`.`fotos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Xarxa`.`fotos` (
  `id_foto` INT NOT NULL UNIQUE,
  `ubicacio` VARCHAR(100) NULL DEFAULT NULL, 
  `url` VARCHAR(100) NULL DEFAULT NULL, 
  `usuari_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_foto`),
  INDEX `usuari_fk` (`usuari_id` ASC),
  CONSTRAINT `usuari_id`
    FOREIGN KEY (`usuari_id`)
    REFERENCES `Xarxa`.`usuaris` (`id_usuari`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Taula `Xarxa`.`amistats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Xarxa`.`amistats` (
  `id_amistat` INT NOT NULL UNIQUE,
  `usuari1_id` INT NULL DEFAULT NULL,
  `usuari2_id` INT NULL DEFAULT NULL,
  `inici` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id_amistat`),
  INDEX `usuari1_fk` (`usuari1_id` ASC),
  CONSTRAINT `usuari1_id`
    FOREIGN KEY (`usuari1_id`)
    REFERENCES `Xarxa`.`usuaris` (`id_usuari`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  INDEX `usuari2_fk` (`usuari2_id` ASC),
  CONSTRAINT `usuari2_id`
    FOREIGN KEY (`usuari2_id`)
    REFERENCES `Xarxa`.`usuaris` (`id_usuari`)
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
