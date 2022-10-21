
CREATE TABLE vendas (id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, id_produto INT NOT NULL, valor DECIMAL(20,2), dataVenda DATE);

ALTER TABLE vendas ADD FOREIGN KEY(id_produto) REFERENCES produto (id_produto); 

INSERT INTO vendas (id_produto, valor, dataVenda) VALUES (1032, 572.40, '2020-09-27');
INSERT INTO vendas (id_produto, valor, dataVenda) VALUES (980, 494.90, '2020-09-01');
INSERT INTO vendas (id_produto, valor, dataVenda) VALUES (1041, 297.60, '2020-10-20');
INSERT INTO vendas (id_produto, valor, dataVenda) VALUES (782, 41.30, '2020-08-21');
INSERT INTO vendas (id_produto, valor, dataVenda) VALUES (132, 279.00, '2020-07-29');
INSERT INTO vendas (id_produto, valor, dataVenda) VALUES (116, 544.20, '2020-06-01');
INSERT INTO vendas (id_produto, valor, dataVenda) VALUES (723, 986.40, '2020-06-22');
INSERT INTO vendas (id_produto, valor, dataVenda) VALUES (721, 79.80, '2020-07-17');
INSERT INTO vendas (id_produto, valor, dataVenda) VALUES (429, 5219.10, '2020-08-26');


SELECT * FROM produto WHERE codigo IN ('10862', '11278', '10003', '10680');

SELECT * FROM vendas; 

DROP TABLE vendas;

#Inner Join
SELECT
    P.nome,
    P.preco,
    C.nome as Categoria
FROM
    produto P
INNER JOIN
  categoria C
ON P.id_categoria = C.id;

SELECT
    P.nome,
    P.preco,
    C.nome as Categoria,
    COUNT(V.id_produto) TOTAL_VENDIDOS
FROM
    produto P
INNER JOIN
  categoria C
ON P.id_categoria = C.id
INNER JOIN
  vendas V
ON V.id_produto = P.id_produto
GROUP BY P.id_produto;

SELECT C.nome AS nome_categoria, P.nome AS nome_produto
FROM produto P
INNER JOIN 
	categoria C
ON P.id_categoria = C.id;
