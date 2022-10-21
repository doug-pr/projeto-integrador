CREATE TABLE usuario (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(255), idade INT);

INSERT INTO usuario(nome, idade) VALUES ('Douglas Barcelos', 40);
INSERT INTO usuario(nome, idade) VALUES('Adrielly Correa', 36);
INSERT INTO usuario(nome, idade) VALUES('Mariana Alves', 7);
INSERT INTO usuario(nome, idade) VALUES('Milena Alves', 6);
INSERT INTO usuario(nome, idade) VALUES('Melissa Alves', 9);
INSERT INTO usuario(nome, idade) VALUES('Maria Neuza da Silva', 66);

SELECT * FROM usuario;

CREATE TABLE categoria(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(255));

INSERT INTO categoria (nome) VALUES ('Tênis');
INSERT INTO categoria (nome) VALUES ('Camisetas');
INSERT INTO categoria (nome) VALUES ('Vestidos');
INSERT INTO categoria (nome) VALUES ('Pijamas');
INSERT INTO categoria (nome) VALUES ('Joias');

SELECT * FROM categoria;

SELECT * FROM produto;

ALTER TABLE produto ADD PRIMARY KEY(id_produto);

ALTER TABLE produto ADD (id_categoria INT);

UPDATE produto SET id_categoria = 1;

ALTER TABLE produto ADD FOREIGN KEY(id_categoria) REFERENCES categoria(id);

ALTER TABLE categoria DROP COLUMN id_categoria;

INSERT INTO `produto` (`id_produto`, `nome`, `preco`, `codigo`) VALUES (1050, 'Puxador Franco Zamac Escovado 192mm', 19.10, '13882');

INSERT INTO `produto` (`id_produto`, `nome`, `preco`, `codigo`, `id_categoria`) VALUES (1051, 'Cavilha Madeira 10 x 40mm com 100 unidades', 7.50, '1335', 5);

SELECT * FROM produto ORDER BY codigo;