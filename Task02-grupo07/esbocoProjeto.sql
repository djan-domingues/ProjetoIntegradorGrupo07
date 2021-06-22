create database db_projetoIntegrador;

use db_projetoIntegrador;

CREATE TABLE `tb_usuario` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome_completo` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_tema` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`tipo_usuario` varchar(255) NOT NULL,
	`tipo_tema` varchar(255) NOT NULL,
	`usuario_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_postagem` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255) NOT NULL,
	`data` DATETIME NOT NULL,
	`corpo_texto` varchar(500) NOT NULL,
	`link_doc` varchar(255) NOT NULL,
	`tema_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_tema` ADD CONSTRAINT `tb_tema_fk0` FOREIGN KEY (`usuario_id`) REFERENCES `tb_usuario`(`id`);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk0` FOREIGN KEY (`tema_id`) REFERENCES `tb_tema`(`id`);
