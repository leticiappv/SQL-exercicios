CREATE DATABASE db_rhempresa;

USE db_rhempresa;

CREATE TABLE tb_colaboradores ( 
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
departamento VARCHAR(50) NOT NULL,
salario DECIMAL (10, 2),
data_contratacao DATE, 
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (nome, cargo, departamento, salario, data_contratacao)
VALUES ("Letícia Pinheiro", "Desenvolvedora BackEnd Junior", "Tecnologia", 4000.0, "2025-03-20"),
("Alba Silva", "Administradora de Finanças", "Administrativo", 5000.0, "2010-12-10"),
("Laura Costa", "Nutricionista", "Nutrição", 3000.00, "2020-10-10"),
("Beatriz Brandão", "Desenvolvedora Front Junior", "Tecnologia", 4000.0, "2023-02-23"),
("Marli Rocha", "Cozinheira", "Nutrição", 1500.0, "2020-12-29");

SELECT * FROM tb_colaboradores WHERE salario > 2000; 

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 500.0 WHERE id = 1;