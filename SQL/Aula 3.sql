CREATE DATABASE exercicios_mysql;

USE exercicios_mysql;

CREATE TABLE produto (
	id_produto INT,
	nome VARCHAR (255),
	preco DECIMAL (20,2),
	codigo VARCHAR (255)
	);
	
SELECT * FROM produto;
	
SELECT * FROM produto ORDER BY nome ASC;

SELECT * FROM produto ORDER BY nome DESC;

SELECT * FROM produto ORDER BY preco DESC LIMIT 10;

SELECT * FROM produto WHERE nome LIKE 'suporte%';

SELECT * FROM produto WHERE nome LIKE '_e%';

#Exercicio 1
SELECT * FROM produto WHERE id_produto IN (295, 258, 592, 308, 1049, 1051);

#Exercicio 2
SELECT * FROM produto WHERE nome LIKE 'trilho%';

#Exercicio 3
SELECT * FROM produto WHERE id_produto NOT IN (295, 258, 592, 308, 1049, 1051);

#Exercicio 4
SELECT * FROM produto ORDER BY id_produto DESC; 

#Exercicio 5
SELECT * FROM produto WHERE nome LIKE '%5000';

#Exercicio 6
SELECT * FROM produto WHERE nome = 'Arco de Serra K140';

#Exercicio 7
SELECT * FROM produto ORDER BY id_produto ASC;

#Exercicio 8
SELECT * FROM produto WHERE nome LIKE '%branco%' OR nome LIKE '%preto%';

DROP TABLE produto;