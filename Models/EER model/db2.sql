-- MySQL Script generated by MySQL Workbench
-- Thu Oct 26 11:38:13 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema netkompetenz
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema netkompetenz
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `netkompetenz` DEFAULT CHARACTER SET utf8 ;
USE `netkompetenz` ;

-- -----------------------------------------------------
-- Table `netkompetenz`.`Location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `netkompetenz`.`Location` (
  `idLocation` CHAR(5) NOT NULL,
  `nameLocation` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idLocation`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `netkompetenz`.`team`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `netkompetenz`.`team` (
  `idTeam` VARCHAR(10) NOT NULL,
  `nameTeam` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idTeam`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `netkompetenz`.`Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `netkompetenz`.`Employee` (
  `idEmployee` INT(11) NOT NULL,
  `nameEmployee` VARCHAR(255) NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `idDirectSupervisor` CHAR(10) NOT NULL,
  `namePicture` VARCHAR(255) NULL,
  `typePicture` VARCHAR(255) NULL,
  `sizePicture` VARCHAR(255) NULL,
  `idLocation` CHAR(5) NOT NULL,
  `businessUnit` VARCHAR(10) NOT NULL,
  `discipline` VARCHAR(45) NOT NULL,
  `idTeam` VARCHAR(45) NOT NULL,
  `hiringDate` VARCHAR(45) NOT NULL,
  `pdc` VARCHAR(45) NOT NULL,
  `hide` TINYINT NOT NULL,
  PRIMARY KEY (`idEmployee`, `idLocation`),
  INDEX `fk_Employee_Location1_idx` (`idLocation` ASC),
  INDEX `idTeam_idx` (`idTeam` ASC),
  CONSTRAINT `idLocation`
    FOREIGN KEY (`idLocation`)
    REFERENCES `netkompetenz`.`Location` (`idLocation`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `idTeam`
    FOREIGN KEY (`idTeam`)
    REFERENCES `netkompetenz`.`team` (`idTeam`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `netkompetenz`.`Role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `netkompetenz`.`Role` (
  `idRole` INT(11) NOT NULL,
  `nameRole` VARCHAR(255) NOT NULL,
  `informationRole` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idRole`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `netkompetenz`.`Employee_has_Role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `netkompetenz`.`Employee_has_Role` (
  `idEmployee` INT(11) NOT NULL,
  `idRole` INT(11) NOT NULL,
  `isCurrent` INT(11) NOT NULL,
  `startDate` VARCHAR(45) NOT NULL,
  `endDate` VARCHAR(45) NOT NULL,
  INDEX `idEmployee_idx` (`idEmployee` ASC),
  INDEX `idRole_idx` (`idRole` ASC),
  PRIMARY KEY (`idEmployee`, `idRole`),
  CONSTRAINT `fk_idEmployee`
    FOREIGN KEY (`idEmployee`)
    REFERENCES `netkompetenz`.`Employee` (`idEmployee`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_idRole`
    FOREIGN KEY (`idRole`)
    REFERENCES `netkompetenz`.`Role` (`idRole`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `netkompetenz`.`Skill`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `netkompetenz`.`Skill` (
  `idSkill` INT NOT NULL AUTO_INCREMENT,
  `nameSkill` VARCHAR(45) NOT NULL,
  `descriptionSkill` VARCHAR(255) NOT NULL,
  `complexity` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSkill`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `netkompetenz`.`Employee_has_Skill`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `netkompetenz`.`Employee_has_Skill` (
  `idEmployee` INT(11) NOT NULL,
  `idSkill` INT(11) NOT NULL,
  `levelExpertise` VARCHAR(45) NOT NULL,
  `levelInterest` VARCHAR(45) NOT NULL,
  `IsTrainer` VARCHAR(45) NOT NULL,
  INDEX `idEmployee_idx` (`idEmployee` ASC),
  PRIMARY KEY (`idEmployee`, `idSkill`),
  CONSTRAINT `idEmployee`
    FOREIGN KEY (`idEmployee`)
    REFERENCES `netkompetenz`.`Employee` (`idEmployee`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `idSkill`
    FOREIGN KEY (`idSkill`)
    REFERENCES `netkompetenz`.`Skill` (`idSkill`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `netkompetenz`.`Group`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `netkompetenz`.`Group` (
  `idGroup` INT(11) NOT NULL,
  `nameGroup` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idGroup`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `netkompetenz`.`Role_has_Skill`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `netkompetenz`.`Role_has_Skill` (
  `idRole` INT(11) NOT NULL,
  `idSkill` INT(11) NOT NULL,
  `levelExpertise` INT(11) NOT NULL,
  PRIMARY KEY (`idRole`, `idSkill`),
  INDEX `fk_Role_has_Skill_Skill1_idx` (`idSkill` ASC),
  INDEX `fk_Role_has_Skill_Role1_idx` (`idRole` ASC),
  CONSTRAINT `fk_Role_has_Skill_Role1`
    FOREIGN KEY (`idRole`)
    REFERENCES `netkompetenz`.`Role` (`idRole`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Role_has_Skill_Skill1`
    FOREIGN KEY (`idSkill`)
    REFERENCES `netkompetenz`.`Skill` (`idSkill`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `netkompetenz`.`Group_has_Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `netkompetenz`.`Group_has_Employee` (
  `idGroup` INT(11) NOT NULL,
  `idEmployee` INT(11) NOT NULL,
  `isAdmin` TINYINT NOT NULL,
  PRIMARY KEY (`idGroup`, `idEmployee`),
  INDEX `fk_Group_has_Employee_Employee1_idx` (`idEmployee` ASC),
  INDEX `fk_Group_has_Employee_Group1_idx` (`idGroup` ASC),
  CONSTRAINT `fk_Group_has_Employee_Group1`
    FOREIGN KEY (`idGroup`)
    REFERENCES `netkompetenz`.`Group` (`idGroup`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Group_has_Employee_Employee1`
    FOREIGN KEY (`idEmployee`)
    REFERENCES `netkompetenz`.`Employee` (`idEmployee`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `netkompetenz`.`Group_has_Skill`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `netkompetenz`.`Group_has_Skill` (
  `idGroup` INT(11) NOT NULL,
  `idSkill` INT(11) NOT NULL,
  `importance` TINYINT NOT NULL,
  `levelRequired` INT(11) NOT NULL,
  `skillEveryone` TINYINT NOT NULL,
  `peopleRequired` INT(11) NOT NULL,
  PRIMARY KEY (`idGroup`, `idSkill`),
  INDEX `fk_Group_has_Skill_Skill1_idx` (`idSkill` ASC),
  INDEX `fk_Group_has_Skill_Group1_idx` (`idGroup` ASC),
  CONSTRAINT `fk_Group_has_Skill_Group1`
    FOREIGN KEY (`idGroup`)
    REFERENCES `netkompetenz`.`Group` (`idGroup`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Group_has_Skill_Skill1`
    FOREIGN KEY (`idSkill`)
    REFERENCES `netkompetenz`.`Skill` (`idSkill`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `netkompetenz`.`Log`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `netkompetenz`.`Log` (
  `idLog` INT NOT NULL,
  `insert_timestamp` TIMESTAMP NOT NULL,
  `action` VARCHAR(100) NOT NULL,
  `tableName` VARCHAR(100) NOT NULL,
  `info` TEXT NOT NULL,
  `idEmployee` INT(11) NOT NULL,
  PRIMARY KEY (`idLog`, `idEmployee`),
  INDEX `fk_Log_Employee1_idx` (`idEmployee` ASC),
  CONSTRAINT `fk_Log_Employee1`
    FOREIGN KEY (`idEmployee`)
    REFERENCES `netkompetenz`.`Employee` (`idEmployee`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `netkompetenz`.`Skill_has_Skill`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `netkompetenz`.`Skill_has_Skill` (
  `idSkill_has_Skill` INT(11) NOT NULL,
  `idSkill_parent` INT(11) NOT NULL,
  `idSkill_child` INT(11) NOT NULL,
  PRIMARY KEY (`idSkill_has_Skill`, `idSkill_parent`, `idSkill_child`),
  INDEX `idSkill_parent_idx` (`idSkill_parent` ASC),
  INDEX `idSkill_child_idx` (`idSkill_child` ASC),
  CONSTRAINT `idSkill_parent`
    FOREIGN KEY (`idSkill_parent`)
    REFERENCES `netkompetenz`.`Skill` (`idSkill`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `idSkill_child`
    FOREIGN KEY (`idSkill_child`)
    REFERENCES `netkompetenz`.`Skill` (`idSkill`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `netkompetenz`.`Training`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `netkompetenz`.`Training` (
  `idTraining` INT NOT NULL,
  `nameTraining` VARCHAR(255) NOT NULL,
  `levelTraining` INT(11) NOT NULL,
  `learningMode` INT(11) NOT NULL,
  PRIMARY KEY (`idTraining`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `netkompetenz`.`Skill_has_Training`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `netkompetenz`.`Skill_has_Training` (
  `idSkill` INT(11) NOT NULL,
  `idTraining` INT(11) NOT NULL,
  PRIMARY KEY (`idSkill`, `idTraining`),
  INDEX `fk_Skill_has_Training_Training1_idx` (`idTraining` ASC),
  INDEX `fk_Skill_has_Training_Skill1_idx` (`idSkill` ASC),
  CONSTRAINT `fk_Skill_has_Training_Skill1`
    FOREIGN KEY (`idSkill`)
    REFERENCES `netkompetenz`.`Skill` (`idSkill`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Skill_has_Training_Training1`
    FOREIGN KEY (`idTraining`)
    REFERENCES `netkompetenz`.`Training` (`idTraining`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
