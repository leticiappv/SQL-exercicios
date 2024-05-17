CREATE DATABASE db_pizzaria_fnaf;

USE db_pizzaria_fnaf;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
preco DECIMAL (10, 2) NOT NULL,
tamanho VARCHAR(255) NOT NULL,

tb_categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (tb_categorias_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias (nome, descricao)
VALUES ("TRADICIONAL", "Pizza com Sabores Tradicionais"),
("VEG", "Pizza com Sabores Vegetarianos e Veganos"),
("PREMIUM", "Pizza com ingredientes especiais e gourmet"),
("DOCE", "Pizza com sabores doces"),
("BROTO", "Pizzas Brotinho");


INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, tb_categorias_id) VALUES
("Portuguesa", "Molho de tomate, Queijo, Presunto, Ovos, Ervilhas", 45.00, "Grande", 1),
("Pepperoni", "Molho de tomate, mussarela e pepperoni", 30.00, "Grande", 2),
("Napolitana", "Molho de tomate, mussarela, manjeiricão fresco", 55.00, "Grande", 3),
("Cogumelo", "Molho de tomate, mussarela vegana, cogumelos", 42.00, "Grande", 2),
("Frango com Catupiry", "Molho de tomate, mussarela, frango desfiado e catupiry", 50.00, "Grande", 1),
("Quatro Queijos", "Molho de tomate e quatro tipos de queijo", 25.00, "Broto", 5),
("Chocolate", "Cobertura de chocolate com granulados", 35.00, "Média", 4),
("Romeu e Julieta", "Queijo Mussarela com Goiabada", 29.00, "Pequena", 4);



SELECT * FROM tb_pizzas WHERE preco > 45.00;


SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;


SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';


SELECT tb_pizzas.nome, tb_pizzas.descricao, tb_pizzas.preco, tb_pizzas.tamanho, tb_categorias.descricao 
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.tb_categorias_id = tb_categorias.id;


SELECT tb_pizzas.nome, tb_pizzas.descricao, tb_pizzas.preco, tb_pizzas.tamanho, tb_categorias.descricao 
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.tb_categorias_id = tb_categorias.id
WHERE tb_categorias_id = 4;