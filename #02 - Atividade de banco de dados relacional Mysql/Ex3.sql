CREATE DATABASE ESCOLA;

USE ESCOLA; 

CREATE TABLE ALUNOS(
ID INT AUTO_INCREMENT PRIMARY KEY, 
NOME VARCHAR(50),
IDADE int,
SALA VARCHAR(4), 
TURNO VARCHAR(15)); 

INSERT INTO ALUNOS(ID, NOME, IDADE, SALA, TURNO) VALUES (1, "Chico Bento", 6, "1A", "Matutino");
INSERT INTO ALUNOS(NOME, IDADE, SALA, TURNO) VALUES ("Maria Joaquina", 7, "2B", "Vespertino"); 
INSERT INTO ALUNOS(NOME, IDADE, SALA, TURNO) VALUES ("Cirilo Gomes", 9, "4C", "Matutino"); 
INSERT INTO ALUNOS(NOME, IDADE, SALA, TURNO) VALUES ("Rodrigo Faro", 6, "1A", "Vespertino");
INSERT INTO ALUNOS(NOME, IDADE, SALA, TURNO) VALUES ("Ellen Ganzarolli", 7, "2C", "Matutino"); 


SELECT * FROM ALUNOS WHERE IDADE >= 7; 
SELECT * FROM ALUNOS WHERE IDADE < 7;
SELECT * FROM ALUNOS;

UPDATE ALUNOS SET TURNO = "Vespertino" WHERE ID = 5;
 
 SELECT * FROM ALUNOS;