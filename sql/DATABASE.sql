

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

DROP DATABASE IF EXISTS `CCEE`;
CREATE DATABASE `CCEE` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
--
-- SELECCIONAMOS PARA USAR
--
USE `CCEE`;
--
-- DAMOS PERMISO USO Y BORRAMOS EL USUARIO QUE QUEREMOS CREAR POR SI EXISTE
--
GRANT USAGE ON * . * TO `ccee`@`localhost`;
  DROP USER `ccee`@`localhost`;
--
-- CREAMOS EL USUARIO Y LE DAMOS PASSWORD,DAMOS PERMISO DE USO Y DAMOS PERMISOS SOBRE LA BASE DE DATOS.
--
CREATE USER IF NOT EXISTS `ccee`@`localhost` IDENTIFIED BY 'ccee';
GRANT USAGE ON *.* TO `ccee`@`localhost` REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
GRANT ALL PRIVILEGES ON `ccee`.* TO `ccee`@`localhost` WITH GRANT OPTION;
-- --------------------------------------------------------
-- --------------------------------------------------------
--
-- Table structure for table `PERMISO`
--



CREATE TABLE `TRABAJO_SOCIAL` ( 
	`titulacion` VARCHAR(30) NOT NULL , 
	`nombre` VARCHAR(30) NOT NULL , 
	`apellidos` VARCHAR(50) NOT NULL , 
	`dni` VARCHAR(9) NOT NULL , 
	`provincia` VARCHAR(30) NOT NULL , 
	`localidad` VARCHAR(30) NOT NULL , 
	`direccion` VARCHAR(50) NOT NULL , 
	`cp` INT(5) NOT NULL , 
	`telefono` INT(9) NULL , 
	`email` VARCHAR(50) NOT NULL , 
	`tutorA` VARCHAR(50) NOT NULL , 
	`horasT` VARCHAR(60) NULL , 
	`nombreIns` VARCHAR(30) NOT NULL , 
	`cif` VARCHAR(9) NULL , 
	`direccionIns` VARCHAR(50) NOT NULL , 
	`telefonoIns` INT(9) NULL , 
	`emailIns` VARCHAR(50) NULL , 
	`fechaIni` DATE NOT NULL , 
	`fechaFin` DATE NOT NULL , 
	`horasPrac` FLOAT(4,2) NOT NULL ) ENGINE = InnoDB;