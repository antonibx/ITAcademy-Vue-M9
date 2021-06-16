-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Esquema `botiga`
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `botiga` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `botiga` ;

-- -----------------------------------------------------
-- Taula `botiga`.`quadres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `botiga`.`quadres` (
  `id_quadre` INT NOT NULL UNIQUE,
  `preu` INT NULL DEFAULT NULL, 
  `autor` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id_quadre`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Taula `quadres`.`compradors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `botiga`.`compradors` (
  `id_comprador` INT NOT NULL UNIQUE,
  `nom` VARCHAR(100) NULL DEFAULT NULL,
  `cognom` VARCHAR(100) NULL DEFAULT NULL,
  `DNI` INT NULL DEFAULT NULL,
  `quadre_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_comprador`),
  INDEX `quadre_fk` (`quadre_id` ASC),
  CONSTRAINT `quadre_id`
    FOREIGN KEY (`quadre_id`)
    REFERENCES `botiga`.`quadres` (`id_quadre`)
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
