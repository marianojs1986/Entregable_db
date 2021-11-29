
create database notas_db
use notas_db

CREATE TABLE `usuarios` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(100) NOT NULL,
   `e-mail` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `usuario_id` INT NOT NULL,
   `titulo` VARCHAR(100) NOT NULL,
   `fecha_creacion` DATE NOT NULL,
   `fecha_ultima_modificacion` DATE NOT NULL,
   `descripcion` TEXT,
   `eliminar` TINYINT,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas_categoria` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `categoria_id` INT NOT NULL,
   `notas_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categoria` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notas` ADD CONSTRAINT `FK_30cefc29-b57b-41b1-ac2d-92c9d001063f` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios`(`id`)  ;

ALTER TABLE `notas_categoria` ADD CONSTRAINT `FK_288fe159-e844-4e27-b635-56bc1e753587` FOREIGN KEY (`categoria_id`) REFERENCES `categoria`(`id`) ;

ALTER TABLE `notas_categoria` ADD CONSTRAINT `FK_83a8096c-66ce-45c4-836c-aa8982f99237` FOREIGN KEY (`notas_id`) REFERENCES `notas`(`id`) ;
