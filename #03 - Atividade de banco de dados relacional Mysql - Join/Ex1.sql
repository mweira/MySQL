CREATE DATABASE db_generation_game_online; 

USE db_generation_game_online; 

CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT, 
descricao VARCHAR(20), 
caracteristica VARCHAR(20),
PRIMARY KEY (id)); 

INSERT INTO tb_classes (descricao, caracteristica) VALUES (
"Arqueiro", "Voraz");
INSERT INTO tb_classes (descricao, caracteristica) VALUES (
"Mago", "Celestial"); 
INSERT INTO tb_classes (descricao, caracteristica) VALUES (
"Ogro", "Lodoso"); 
INSERT INTO tb_classes (descricao, caracteristica) VALUES (
"Guerreiro", "Bobo"); 

CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT, 
nome VARCHAR(50),
regiao VARCHAR(12), 
forca INT,
inteligencia INT,
categoria_id BIGINT, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_classes(id)); 

INSERT INTO tb_personagens (nome, regiao, forca, inteligencia, categoria_id) VALUES (
"Jorge Amado", "Norte", 15, 12, 1);
INSERT INTO tb_personagens (nome, regiao, forca, inteligencia, categoria_id) VALUES (
"Renato Aragão", "Sul", 12, 18, 2) ;
INSERT INTO tb_personagens (nome, regiao, forca, inteligencia, categoria_id) VALUES (
"Roberto Carlos", "Oeste", 17, 7, 3); 
INSERT INTO tb_personagens (nome, regiao, forca, inteligencia, categoria_id) VALUES (
"Cássia Eller", "Sul", 18, 15, 1);
INSERT INTO tb_personagens (nome, regiao, forca, inteligencia, categoria_id) VALUES (
"Seu Jorge", "Sul", 20, 13, 4);
INSERT INTO tb_personagens (nome, regiao, forca, inteligencia, categoria_id) VALUES (
"Clarice Lispector", "Norte", 14, 18, 2); 
INSERT INTO tb_personagens (nome, regiao, forca, inteligencia, categoria_id) VALUES (
"Gabriel Soares", "Norte", 18, 5, 3); 
INSERT INTO tb_personagens (nome, regiao, forca, inteligencia, categoria_id) VALUES (
"Elis Regina", "Oeste", 18, 13, 4);

SELECT * FROM tb_classes; 
SELECT * FROM tb_personagens;
SELECT * FROM tb_personagens WHERE forca > 15;
SELECT * FROM tb_personagens where inteligencia BETWEEN 15 AND 19;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, regiao, forca, inteligencia, categoria_id, tb_classes.descricao, tb_classes.caracteristica AS descricao_da_categoria
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.categoria_id; 

SELECT nome, regiao, forca, inteligencia, categoria_id, tb_classes.descricao, tb_classes.caracteristica AS descricao_da_categoria
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.categoria_id WHERE categoria_id = 2;
















