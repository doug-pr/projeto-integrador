CREATE DATABASE banco;

USE banco;

CREATE TABLE Agencias(CodigoAg INT NOT NULL AUTO_INCREMENT PRIMARY KEY, NomeAg VARCHAR(45), CidadeAg VARCHAR(45));

CREATE TABLE Emprestimos(NumeroEmp INT NOT NULL AUTO_INCREMENT PRIMARY KEY, Quantia DECIMAL(20,2), CodigoAg INT NOT NULL, CodigoCli INT NOT NULL);

CREATE TABLE Depositos(NumeroCont INT NOT NULL AUTO_INCREMENT PRIMARY KEY, Saldo DECIMAL(20,2), CodigoAg INT NOT NULL, CodigoCli INT NOT NULL);

CREATE TABLE Clientes(CodigoCli INT NOT NULL AUTO_INCREMENT PRIMARY KEY, Nome VARCHAR(45), Rua VARCHAR(45), Cidade VARCHAR(45), CodigoAg INT NOT NULL);

ALTER TABLE Emprestimos ADD FOREIGN KEY (CodigoAg) REFERENCES Agencias(CodigoAg);

ALTER TABLE Depositos ADD FOREIGN KEY (CodigoAg) REFERENCES Agencias(CodigoAg);

ALTER TABLE Clientes ADD FOREIGN KEY (CodigoAg) REFERENCES Agencias(CodigoAg);

ALTER TABLE Emprestimos ADD FOREIGN KEY (CodigoCli) REFERENCES Clientes(CodigoCli);

ALTER TABLE Depositos ADD FOREIGN KEY (CodigoCli) REFERENCES Clientes(CodigoCli);

INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Bradesco', 'Paranavaí');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Banco do Brasil', 'Paranavaí');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Sicoob', 'Paranavaí');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Caixa', 'Paranavaí');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Itaú', 'Paranavaí');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Santander', 'Paranavaí');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Safra', 'Paranavaí');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Sicredi', 'Paranavaí');

INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Bradesco', 'Maringá');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Banco do Brasil', 'Maringá');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Sicoob', 'Maringá');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Caixa', 'Maringá');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Itaú', 'Maringá');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Santander', 'Maringá');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Safra', 'Maringá');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Sicredi', 'Maringá');

INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Bradesco', 'Londrina');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Banco do Brasil', 'Londrina');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Sicoob', 'Londrina');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Caixa', 'Londrina');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Itaú', 'Londrina');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Santander', 'Londrina');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Safra', 'Londrina');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Sicredi', 'Londrina');

INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Bradesco', 'Curitiba');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Banco do Brasil', 'Curitiba');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Sicoob', 'Curitiba');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Caixa', 'Curitiba');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Itaú', 'Curitiba');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Santander', 'Curitiba');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Safra', 'Curitiba');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Sicredi', 'Curitiba');

INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Bradesco', 'Cianorte');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Banco do Brasil', 'Cianorte');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Sicoob', 'Cianorte');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Caixa', 'Cianorte');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Itaú', 'Cianorte');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Santander', 'Cianorte');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Safra', 'Cianorte');
INSERT INTO Agencias (NomeAg, CidadeAg) VALUES ('Sicredi', 'Cianorte');

INSERT INTO Clientes (Nome, Rua, Cidade, CodigoAg) VALUES ('Douglas Barcelos', 'Rua Professor Angelo Pretes, 1023', 'Paranavaí', 5);
INSERT INTO Clientes (Nome, Rua, Cidade, CodigoAg) VALUES ('Adrielly Correa', 'Rua México, 523', 'Paranavaí', 1);
INSERT INTO Clientes (Nome, Rua, Cidade, CodigoAg) VALUES ('Maria Neuza da Silva', 'Rua Arthur Bernardes, 345', 'Paranavaí', 2);
INSERT INTO Clientes (Nome, Rua, Cidade, CodigoAg) VALUES ('David da Silva Alves', 'Rua Lázaro Vieira, 154', 'Paranavaí', 6);
INSERT INTO Clientes (Nome, Rua, Cidade, CodigoAg) VALUES ('Neideval de Oliveira GUimarães', 'Rua Parigot de Souza, 765', 7);
INSERT INTO Clientes (Nome, Rua, Cidade, CodigoAg) VALUES ('Avelina Maciel Correia', 'Rua Tókio, 500', 'Paranavaí', 8);
INSERT INTO Clientes (Nome, Rua, Cidade, CodigoAg) VALUES ('Dimas Maciel Correia', 'Rua Paraíba, 347', 'Paranavaí', 4);
INSERT INTO Clientes (Nome, Rua, Cidade, CodigoAg) VALUES ('Guilherme Correa Foltran', 'Rua Souza Naves, 451', 'Paranavaí', 3);
INSERT INTO Clientes (Nome, Rua, Cidade, CodigoAg) VALUES ('
INSERT INTO Clientes (Nome, Rua, Cidade, CodigoAg) VALUES ('
INSERT INTO Clientes (Nome, Rua, Cidade, CodigoAg) VALUES ('
INSERT INTO Clientes (Nome, Rua, Cidade, CodigoAg) VALUES ('
INSERT INTO Clientes (Nome, Rua, Cidade, CodigoAg) VALUES ('
INSERT INTO Clientes (Nome, Rua, Cidade, CodigoAg) VALUES ('
INSERT INTO Clientes (Nome, Rua, Cidade, CodigoAg) VALUES ('

