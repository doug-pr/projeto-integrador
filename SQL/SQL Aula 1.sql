SHOW DATABASES;

USE exercicio_mysql;

CREATE DATABASE projeto_integrador;

CREATE DATABASE exercicio_mysql;

CREATE TABLE usuario (nome VARCHAR(50));

ALTER TABLE usuario ADD email VARCHAR(100);
ALTER TABLE usuario ADD idade INT(3);

ALTER TABLE usuario DROP COLUMN senha;

INSERT INTO usuario(nome) VALUES("Douglas Barcelos");
INSERT INTO usuario(nome) VALUES("Adrielly Correa");
INSERT INTO usuario(nome) VALUES("Mariana Alves");
INSERT INTO usuario(nome) VALUES("Milena Alves");
INSERT INTO usuario(nome) VALUES("Melissa Alves");
INSERT INTO usuario(nome) VALUES("Maria Neuza da Silva");

SELECT * FROM usuario ORDER BY idade;

UPDATE usuario SET email = "douglas.alves@totvs.com.br" WHERE nome = "Douglas Barcelos";
UPDATE usuario SET email = "dricka.correa@hotmail.com" WHERE nome = "Adrielly Correa";
UPDATE usuario SET email = "mariana.alves@gmail.com" WHERE nome = "Mariana Alves";
UPDATE usuario SET email = "milena.alves@gmail.com" WHERE nome = "Milena Alves";
UPDATE usuario SET email = "melissa.alves@gmail.com" WHERE nome = "Melissa Alves";
UPDATE usuario SET email = "maria.neuza@gmail.com" WHERE nome = "Maria Neuza da Silva";

UPDATE usuario SET idade = 40 WHERE nome = "Douglas Barcelos";
UPDATE usuario SET idade = 36 WHERE nome = "Adrielly Correa";
UPDATE usuario SET idade = 7 WHERE nome = "Mariana Alves";
UPDATE usuario SET idade = 6 WHERE nome = "Milena Alves";
UPDATE usuario SET idade = 9 WHERE nome = "Melissa Alves";
UPDATE usuario SET idade = 66 WHERE nome = "Maria Neuza da Silva";

