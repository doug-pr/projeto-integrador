CREATE DATABASE exercicios_mysql;

USE exercicios_mysql;

CREATE TABLE produto (
	id_produto INT,
	nome VARCHAR (255),
	preco DECIMAL (20,2),
	codigo VARCHAR (255)
	);
	
SELECT * FROM produto;

SELECT COUNT(*) FROM produto;
	
SELECT * FROM produto WHERE nome LIKE 'suporte%';

SELECT * FROM produto WHERE id_produto > 1000;

SELECT * FROM produto ORDER BY preco desc LIMIT 10;

SELECT * FROM produto ORDER BY nome;

SELECT * FROM produto 
WHERE id_produto = 2
AND codigo = "10862";

SELECT * FROM produto 
WHERE codigo = "10862"
OR codigo = "11278";

SELECT * FROM produto
WHERE codigo IN ("10862", "11278", "10680", "37575", "37576");

SELECT * FROM produto 
WHERE codigo NOT IN ("10862", "11278", "10680", "37575", "37576");