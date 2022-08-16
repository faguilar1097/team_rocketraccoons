-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema dviaje
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dviaje
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dviaje` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema customer_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema customer_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `customer_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `dviaje` ;

-- -----------------------------------------------------
-- Table `dviaje`.`estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dviaje`.`estado` (
  `id_estado` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `estado` VARCHAR(250) NULL DEFAULT NULL,
  PRIMARY KEY (`id_estado`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dviaje`.`resena`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dviaje`.`resena` (
  `id_resena` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(450) NULL DEFAULT NULL,
  PRIMARY KEY (`id_resena`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dviaje`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dviaje`.`usuario` (
  `id_usuario` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(150) NOT NULL,
  `apellido` VARCHAR(150) NOT NULL,
  `estado` VARCHAR(100) NOT NULL,
  `imagen_perfil` VARCHAR(500) NULL DEFAULT NULL,
  `lugares_visitados` VARCHAR(500) NULL DEFAULT NULL,
  `amigos` INT UNSIGNED NULL DEFAULT NULL,
  `wishlist` INT UNSIGNED NULL DEFAULT NULL,
  `publicaciones` INT UNSIGNED NULL DEFAULT NULL,
  `resena_id_resena` INT UNSIGNED NOT NULL DEFAULT '0',
  `estado_id_estado` INT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_usuario`),
  INDEX `fk_usuario_reseña_idx` (`resena_id_resena` ASC) VISIBLE,
  INDEX `fk_usuario_estado1_idx` (`estado_id_estado` ASC) VISIBLE,
  CONSTRAINT `fk_usuario_estado1`
    FOREIGN KEY (`estado_id_estado`)
    REFERENCES `dviaje`.`estado` (`id_estado`),
  CONSTRAINT `fk_usuario_resena`
    FOREIGN KEY (`resena_id_resena`)
    REFERENCES `dviaje`.`resena` (`id_resena`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dviaje`.`contactanos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dviaje`.`contactanos` (
  `id_contactanos` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `asunto` VARCHAR(450) NULL DEFAULT NULL,
  `mensaje` VARCHAR(450) NULL DEFAULT NULL,
  `preguntas` VARCHAR(450) NULL DEFAULT NULL,
  `respuestas` VARCHAR(450) NULL DEFAULT NULL,
  `usuario_id_usuario` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_contactanos`),
  INDEX `fk_contactanos_usuario1_idx` (`usuario_id_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_contactanos_usuario`
    FOREIGN KEY (`usuario_id_usuario`)
    REFERENCES `dviaje`.`usuario` (`id_usuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dviaje`.`imagenes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dviaje`.`imagenes` (
  `idimagenes` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` VARCHAR(500) NULL DEFAULT NULL,
  `lugar` VARCHAR(250) NULL DEFAULT NULL,
  `estado_id_estado` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idimagenes`),
  INDEX `fk_imagenes_estado1_idx` (`estado_id_estado` ASC) VISIBLE,
  CONSTRAINT `fk_imagenes_estado1`
    FOREIGN KEY (`estado_id_estado`)
    REFERENCES `dviaje`.`estado` (`id_estado`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dviaje`.`publicaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dviaje`.`publicaciones` (
  `id_publicacion` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(150) NULL DEFAULT NULL,
  `fecha` DATE NULL DEFAULT NULL,
  `tips` VARCHAR(500) NULL DEFAULT NULL,
  `ruta` VARCHAR(800) NULL DEFAULT NULL,
  `categoria` VARCHAR(500) NULL DEFAULT NULL,
  `clima` VARCHAR(500) NULL DEFAULT NULL,
  `descripcion` VARCHAR(500) NULL DEFAULT NULL,
  `seguridad` VARCHAR(500) NULL DEFAULT NULL,
  `estado` VARCHAR(150) NULL DEFAULT NULL,
  `municipio` VARCHAR(150) NULL DEFAULT NULL,
  `epoca_anual` VARCHAR(45) NULL DEFAULT NULL,
  `reacciones` INT UNSIGNED NULL DEFAULT NULL,
  `usuario_id_usuario` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_publicacion`),
  INDEX `fk_publicaciones_usuario1_idx` (`usuario_id_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_publicaciones_usuario1`
    FOREIGN KEY (`usuario_id_usuario`)
    REFERENCES `dviaje`.`usuario` (`id_usuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dviaje`.`imagenes_has_publicaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dviaje`.`imagenes_has_publicaciones` (
  `imagenes_idimagenes` INT UNSIGNED NOT NULL,
  `publicaciones_id_publicacion` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`imagenes_idimagenes`, `publicaciones_id_publicacion`),
  INDEX `fk_imagenes_has_publicaciones_publicaciones1_idx` (`publicaciones_id_publicacion` ASC) VISIBLE,
  INDEX `fk_imagenes_has_publicaciones_imagenes1_idx` (`imagenes_idimagenes` ASC) VISIBLE,
  CONSTRAINT `fk_imagenes_has_publicaciones_imagenes1`
    FOREIGN KEY (`imagenes_idimagenes`)
    REFERENCES `dviaje`.`imagenes` (`idimagenes`),
  CONSTRAINT `fk_imagenes_has_publicaciones_publicaciones1`
    FOREIGN KEY (`publicaciones_id_publicacion`)
    REFERENCES `dviaje`.`publicaciones` (`id_publicacion`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dviaje`.`inicio_sesion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dviaje`.`inicio_sesion` (
  `idinicio_sesion` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `correo` VARCHAR(100) NOT NULL,
  `contrasena` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idinicio_sesion`),
  CONSTRAINT `fk_inicio_usuario`
    FOREIGN KEY (`idinicio_sesion`)
    REFERENCES `dviaje`.`usuario` (`id_usuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dviaje`.`whishlist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dviaje`.`whishlist` (
  `id_whishlis` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `publicacion` INT UNSIGNED NULL DEFAULT NULL,
  `categoria` VARCHAR(250) NULL DEFAULT NULL,
  `lugar` VARCHAR(250) NULL DEFAULT NULL,
  `usuario_id_usuario` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_whishlis`),
  INDEX `fk_whishlist_usuario1_idx` (`usuario_id_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_whishlist_usuario1`
    FOREIGN KEY (`usuario_id_usuario`)
    REFERENCES `dviaje`.`usuario` (`id_usuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dviaje`.`whishlist_has_publicaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dviaje`.`whishlist_has_publicaciones` (
  `whishlist_id_whishlis` INT UNSIGNED NOT NULL,
  `publicaciones_id_publicacion` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`whishlist_id_whishlis`, `publicaciones_id_publicacion`),
  INDEX `fk_whishlist_has_publicaciones_publicaciones1_idx` (`publicaciones_id_publicacion` ASC) VISIBLE,
  INDEX `fk_whishlist_has_publicaciones_whishlist1_idx` (`whishlist_id_whishlis` ASC) VISIBLE,
  CONSTRAINT `fk_whishlist_has_publicaciones_publicaciones1`
    FOREIGN KEY (`publicaciones_id_publicacion`)
    REFERENCES `dviaje`.`publicaciones` (`id_publicacion`),
  CONSTRAINT `fk_whishlist_has_publicaciones_whishlist1`
    FOREIGN KEY (`whishlist_id_whishlis`)
    REFERENCES `dviaje`.`whishlist` (`id_whishlis`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `customer_db` ;

-- -----------------------------------------------------
-- Table `customer_db`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `customer_db`.`role` (
  `role_id` BIGINT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `role_type` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `customer_db`.`customer_data`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `customer_db`.`customer_data` (
  `id_customer` BIGINT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(255) NULL DEFAULT NULL,
  `last_name` VARCHAR(255) NULL DEFAULT NULL,
  `role_role_id` BIGINT NULL DEFAULT NULL,
  PRIMARY KEY (`id_customer`),
  INDEX `FKpek43f1bq1t9m4uw13skfdkwq` (`role_role_id` ASC) VISIBLE,
  CONSTRAINT `FKpek43f1bq1t9m4uw13skfdkwq`
    FOREIGN KEY (`role_role_id`)
    REFERENCES `customer_db`.`role` (`role_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `customer_db`.`customer_order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `customer_db`.`customer_order` (
  `order_id` BIGINT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `status` VARCHAR(255) NULL DEFAULT NULL,
  `customer_id_customer` BIGINT NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `FKguwy95e240pwej59c1sym8bo8` (`customer_id_customer` ASC) VISIBLE,
  CONSTRAINT `FKguwy95e240pwej59c1sym8bo8`
    FOREIGN KEY (`customer_id_customer`)
    REFERENCES `customer_db`.`customer_data` (`id_customer`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `customer_db`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `customer_db`.`product` (
  `product_id` BIGINT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `price` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `customer_db`.`customer_order_products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `customer_db`.`customer_order_products` (
  `order_order_id` BIGINT NOT NULL,
  `products_product_id` BIGINT NOT NULL,
  INDEX `FK2b1eb3fl9wdj45re2481acffx` (`products_product_id` ASC) VISIBLE,
  INDEX `FKg5t7uqceskxxpwn4iiw7cxl59` (`order_order_id` ASC) VISIBLE,
  CONSTRAINT `FK2b1eb3fl9wdj45re2481acffx`
    FOREIGN KEY (`products_product_id`)
    REFERENCES `customer_db`.`product` (`product_id`),
  CONSTRAINT `FKg5t7uqceskxxpwn4iiw7cxl59`
    FOREIGN KEY (`order_order_id`)
    REFERENCES `customer_db`.`customer_order` (`order_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
