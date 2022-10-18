USE exercicio_mysql;

#Exercicio 1
CREATE TABLE produto(
    id_produto INT(5),
    nome VARCHAR(100),
    preco DECIMAL(15,2),
    codigo VARCHAR(10)
);

#Exercicio 2
INSERT INTO produto VALUES (1, "Tênis Adidas", 299.90, "5643AD");
INSERT INTO produto VALUES (2, "Tênis Nike", 289.80, "8765NI");
INSERT INTO produto VALUES (3, "Tênis Olimpikus", 269.50, "8234OL");
INSERT INTO produto VALUES (4, "Tênis Rebook", 199.90, "5620RE");
INSERT INTO produto VALUES (5, "Tênis Everlast", 279.30, "9142EV");
INSERT INTO produto VALUES (6, "Tênis Topper", 149.90, "9876TO");
INSERT INTO produto VALUES (7, "Tênis All Star", 239.20, "2345AL");
INSERT INTO produto VALUES (8, "Tênis Mormaii", 209.90, "9087MO");
INSERT INTO produto VALUES (9, "Tênis Colcci", 189.50, "4512CO");
INSERT INTO produto VALUES (10, "Tênis Puma", 295.90, "1092PU");

#Exercicio 3
SELECT * FROM produto;

#Exercicio 4
UPDATE produto SET nome = "Tênis Alterado", preco = 99.90, codigo = "0001TA" WHERE id_produto = (SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY id_produto) AS rownum, id_produto 
FROM produto) produto WHERE rownum = 3 ORDER BY id_produto);

SELECT * FROM ( 
	SELECT 
   	ROW_NUMBER() OVER (ORDER  BY id_produto) AS rownum, 
		id_produto
	FROM 
		produto) 
	produto 
	WHERE 
		rownum = 3 
	ORDER BY 
		id_produto;

#Exercicio 5
DELETE FROM produto WHERE id_produto = 10;

SELECT ROW_NUMBER() OVER (ORDER BY id_produto) AS linha, id_produto, nome, preco, codigo FROM produto WHERE linha = 3 ORDER BY id_produto;
