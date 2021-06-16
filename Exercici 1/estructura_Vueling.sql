-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Esquema `vueling`
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `vueling` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `vueling` ;

-- -----------------------------------------------------
-- Taula `vueling`.`avions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vueling`.`avions` (
  `id_avio` INT NOT NULL UNIQUE,
  `capacitat` INT NULL DEFAULT NULL, 
  `model` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id_avio`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Taula `vueling`.`seients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vueling`.`seients` (
  `id_seient` INT NOT NULL UNIQUE,
  `avio_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_seient`),
  INDEX `avio_fk` (`avio_id` ASC),
  CONSTRAINT `avio_id`
    FOREIGN KEY (`avio_id`)
    REFERENCES `vueling`.`avions` (`id_avio`)
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
