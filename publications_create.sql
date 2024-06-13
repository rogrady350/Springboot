-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Publications
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Publications
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Publications` DEFAULT CHARACTER SET utf8 ;
USE `Publications` ;

-- -----------------------------------------------------
-- Table `Publications`.`Catigory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Publications`.`Catigory` (
  `catigory` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`catigory`),
  UNIQUE INDEX `Catigory_UNIQUE` (`catigory` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Publications`.`Books`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Publications`.`Books` (
  `catigory_catigory` VARCHAR(5) NOT NULL,
  `id_book` INT NOT NULL AUTO_INCREMENT,
  `title_book` VARCHAR(70) NOT NULL,
  `publication_yr` INT NOT NULL,
  `author_1` VARCHAR(20) NOT NULL,
  `author_2` VARCHAR(20) NULL,
  `ISBN_num` VARCHAR(20) NOT NULL,
  `publisher` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`catigory_catigory`, `id_book`, `title_book`),
  UNIQUE INDEX `id_book_UNIQUE` (`id_book` ASC) VISIBLE,
  INDEX `fk_Books_Catigory_idx` (`catigory_catigory` ASC) VISIBLE,
  CONSTRAINT `fk_Books_Catigory`
    FOREIGN KEY (`catigory_catigory`)
    REFERENCES `Publications`.`Catigory` (`catigory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Publications`.`Book_Chapters`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Publications`.`Book_Chapters` (
  `catigory_catigory` VARCHAR(13) NOT NULL,
  `chapter_id` INT NOT NULL AUTO_INCREMENT,
  `title_chapter` VARCHAR(70) NOT NULL,
  `title_book` VARCHAR(70) NOT NULL,
  `publication_yr` INT NOT NULL,
  `author_1` VARCHAR(20) NOT NULL,
  `author_2` VARCHAR(20) NULL,
  `publisher` VARCHAR(40) NULL,
  PRIMARY KEY (`catigory_catigory`, `chapter_id`, `title_chapter`),
  UNIQUE INDEX `chapter_id_UNIQUE` (`chapter_id` ASC) VISIBLE,
  INDEX `fk_Book Chapters_Catigory1_idx` (`catigory_catigory` ASC) VISIBLE,
  CONSTRAINT `fk_Book Chapters_Catigory1`
    FOREIGN KEY (`catigory_catigory`)
    REFERENCES `Publications`.`Catigory` (`catigory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Publications`.`Journal_Articles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Publications`.`Journal_Articles` (
  `catigory_catigory` VARCHAR(16) NOT NULL,
  `article_id` INT NOT NULL AUTO_INCREMENT,
  `title_article` VARCHAR(120) NOT NULL,
  `title_journal` VARCHAR(120) NOT NULL,
  `publication_yr` INT NOT NULL,
  `publication_day/month` VARCHAR(7) NULL,
  `author_1` VARCHAR(20) NOT NULL,
  `author_2` VARCHAR(20) NULL,
  `author_3` VARCHAR(20) NULL,
  `author_4` VARCHAR(20) NULL,
  `author_5` VARCHAR(20) NULL,
  `author_6` VARCHAR(45) NULL,
  PRIMARY KEY (`catigory_catigory`, `article_id`, `title_article`),
  UNIQUE INDEX `journal_id_UNIQUE` (`article_id` ASC) VISIBLE,
  INDEX `fk_Journal Articles_Catigory1_idx` (`catigory_catigory` ASC) VISIBLE,
  CONSTRAINT `fk_Journal Articles_Catigory1`
    FOREIGN KEY (`catigory_catigory`)
    REFERENCES `Publications`.`Catigory` (`catigory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Publications`.`Conference_Papers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Publications`.`Conference_Papers` (
  `catigory_catigory` VARCHAR(17) NOT NULL,
  `paper_id` INT NOT NULL AUTO_INCREMENT,
  `title_paper` VARCHAR(120) NOT NULL,
  `conference_name` VARCHAR(120) NOT NULL,
  `conference_yr` INT NOT NULL,
  `conference_day/month` VARCHAR(7) NULL,
  `conference_location` VARCHAR(45) NOT NULL,
  `author_1` VARCHAR(20) NOT NULL,
  `author_2` VARCHAR(20) NULL,
  `author_3` VARCHAR(20) NULL,
  `author_4` VARCHAR(20) NULL,
  `author_5` VARCHAR(20) NULL,
  `author_6` VARCHAR(20) NULL,
  `author_7` VARCHAR(20) NULL,
  PRIMARY KEY (`catigory_catigory`, `paper_id`, `title_paper`),
  UNIQUE INDEX `conference_id_UNIQUE` (`paper_id` ASC) VISIBLE,
  INDEX `fk_Conference Papers_Catigory1_idx` (`catigory_catigory` ASC) VISIBLE,
  CONSTRAINT `fk_Conference Papers_Catigory1`
    FOREIGN KEY (`catigory_catigory`)
    REFERENCES `Publications`.`Catigory` (`catigory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
