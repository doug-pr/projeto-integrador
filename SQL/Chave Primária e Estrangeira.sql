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

ALTER TABLE produto ADD FOREIGN KEY(id_categoria) REFERENCES categoria(id);