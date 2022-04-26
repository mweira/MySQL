CREATE DATABASE db_pizzaria_legal; 

USE db_pizzaria_legal; 

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT NOT NULL, 
descricao VARCHAR(20) NOT NULL, 
tamanho varchar(20) NOT NULL,
PRIMARY KEY (id)); 

INSERT INTO tb_categorias (descricao, tamanho) VALUES (
"Carne", "Grande");
INSERT INTO tb_categorias (descricao, tamanho) VALUES (
"Vegetariana", "Grande"); 
INSERT INTO tb_categorias (descricao, tamanho) VALUES (
"Vegana", "Grande"); 
INSERT INTO tb_categorias (descricao, tamanho) VALUES (
"Doce", "Grande"); 

CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT NOT NULL,
sabor VARCHAR(50) NOT NULL,
preço FLOAT NOT NULL,
categoria_id BIGINT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)); 

INSERT INTO tb_pizzas (sabor, preço, categoria_id) VALUES (
"Calabresa", 45.50, 1);
INSERT INTO tb_pizzas (sabor, preço, categoria_id) VALUES (
"Portuguesa",42, 1);
INSERT INTO tb_pizzas (sabor, preço, categoria_id) VALUES (
"Brócolis", 40, 2);
INSERT INTO tb_pizzas (sabor, preço, categoria_id) VALUES (
"Rúcula com tomate seco", 47, 2);
INSERT INTO tb_pizzas (sabor, preço, categoria_id) VALUES (
"Jaca", 43.50, 3);
INSERT INTO tb_pizzas (sabor, preço, categoria_id) VALUES (
"Abobrinha", 42, 3);
INSERT INTO tb_pizzas(sabor, preço, categoria_id) VALUES (
"Banana com leite condensado", 50, 4);
INSERT INTO tb_pizzas(sabor, preço, categoria_id) VALUES (
"Morango com nutella", 54, 4);

SELECT * FROM tb_pizzas;
SELECT * FROM tb_categorias; 
SELECT * FROM tb_pizzas WHERE preço > 45;
SELECT * FROM tb_pizzas WHERE preço BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id; 
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE categoria_id = 4; 

