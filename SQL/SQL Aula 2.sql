CREATE DATABASE exercicios_mysql;

USE exercicios_mysql;

CREATE TABLE produto (
	id_produto INT,
	nome VARCHAR (255),
	preco DECIMAL (20,2),
	codigo VARCHAR (255)
	)
	
SELECT * FROM produto WHERE nome LIKE '%prego%';

SELECT * FROM produto WHERE preco > 1000;