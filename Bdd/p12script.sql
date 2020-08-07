-- MySQL Script generated by MySQL Workbench
-- Fri Aug  7 14:18:54 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema association
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema association
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `association` DEFAULT CHARACTER SET utf8 ;
USE `association` ;

-- -----------------------------------------------------
-- Table `association`.`UserRole`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `association`.`UserRole` (
  `id_role` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`id_role`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `association`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `association`.`User` (
  `id_user` INT NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(70) NOT NULL,
  `lastname` VARCHAR(70) NOT NULL,
  `email` VARCHAR(70) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `Role_id_role` INT NOT NULL,
  PRIMARY KEY (`id_user`, `Role_id_role`),
  INDEX `fk_User_Role1_idx` (`Role_id_role` ASC),
  CONSTRAINT `fk_User_Role1`
    FOREIGN KEY (`Role_id_role`)
    REFERENCES `association`.`UserRole` (`id_role`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `association`.`Category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `association`.`Category` (
  `id_category` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`id_category`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `association`.`Article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `association`.`Article` (
  `id_article` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(70) NOT NULL,
  `message` VARCHAR(255) NOT NULL,
  `date` DATE NOT NULL,
  `User_id_user` INT NOT NULL,
  `Category_id_category` INT NOT NULL,
  PRIMARY KEY (`id_article`, `User_id_user`, `Category_id_category`),
  INDEX `fk_Article_User1_idx` (`User_id_user` ASC),
  INDEX `fk_Article_Category1_idx` (`Category_id_category` ASC),
  CONSTRAINT `fk_Article_User1`
    FOREIGN KEY (`User_id_user`)
    REFERENCES `association`.`User` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Article_Category1`
    FOREIGN KEY (`Category_id_category`)
    REFERENCES `association`.`Category` (`id_category`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `association`.`Post`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `association`.`Post` (
  `id_post` INT NOT NULL AUTO_INCREMENT,
  `message` VARCHAR(255) NOT NULL,
  `date` DATE NOT NULL,
  `Category_id_category` INT NOT NULL,
  `User_id_user` INT NOT NULL,
  PRIMARY KEY (`id_post`, `Category_id_category`, `User_id_user`),
  INDEX `fk_Post_Category1_idx` (`Category_id_category` ASC),
  INDEX `fk_Post_User1_idx` (`User_id_user` ASC),
  CONSTRAINT `fk_Post_Category1`
    FOREIGN KEY (`Category_id_category`)
    REFERENCES `association`.`Category` (`id_category`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Post_User1`
    FOREIGN KEY (`User_id_user`)
    REFERENCES `association`.`User` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
