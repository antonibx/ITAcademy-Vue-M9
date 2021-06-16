-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Esquema `Amazon`
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Amazon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `Amazon` ;

-- -----------------------------------------------------
-- Taula `Amazon`.`autors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Amazon`.`autors` (
  `id_autor` INT NOT NULL UNIQUE,
  `nom` VARCHAR(100) NULL DEFAULT NULL, 
  `direccio` VARCHAR(100) NULL DEFAULT NULL, 
  `num_llibres` INT NULL DEFAULT NULL, 
  PRIMARY KEY (`id_autor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Taula `Amazon`.`llibres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Amazon`.`llibres` (
  `id_llibre` INT NOT NULL UNIQUE,
  `titol` VARCHAR(100) NULL DEFAULT NULL, 
  `disponibles` INT NULL DEFAULT NULL, 
  `preu` INT NULL DEFAULT NULL, 
  `autor_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_llibre`),
  INDEX `autor_fk` (`autor_id` ASC),
  CONSTRAINT `autor_id`
    FOREIGN KEY (`autor_id`)
    REFERENCES `Amazon`.`autors` (`id_autor`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Taula `Amazon`.`usuaris`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Amazon`.`usuaris` (
  `id_usuari` INT NOT NULL UNIQUE,
  `nom` VARCHAR(100) NULL DEFAULT NULL,
  `correu` VARCHAR(100) NULL DEFAULT NULL,
  `contrassenya` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuari`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Taula `Amazon`.`factures`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Amazon`.`factures` (
  `id_factura` INT NOT NULL UNIQUE,
  `usuari_id` INT NULL DEFAULT NULL,
  `llibre_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_factura`),
  INDEX `usuari_fk` (`usuari_id` ASC),
  CONSTRAINT `usuari_id`
    FOREIGN KEY (`usuari_id`)
    REFERENCES `Amazon`.`usuaris` (`id_usuari`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  INDEX `llibre_fk` (`llibre_id` ASC),
  CONSTRAINT `llibre_id`
    FOREIGN KEY (`llibre_id`)
    REFERENCES `Amazon`.`llibres` (`id_llibre`)
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
