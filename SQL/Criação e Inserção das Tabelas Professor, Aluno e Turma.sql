CREATE TABLE professor (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(255), id_turma INT);

CREATE TABLE aluno (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(255), id_turma INT NOT NULL);

CREATE TABLE turma (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(255));

ALTER TABLE professor ADD FOREIGN KEY (id_turma) REFERENCES turma(id);

ALTER TABLE aluno ADD FOREIGN KEY (id_turma) REFERENCES turma(id);

INSERT INTO professor (nome, id_turma) VALUES ('Cintia Pereira', 1);
INSERT INTO professor (nome, id_turma) VALUES ('Lucas Gabriel', 2);
INSERT INTO professor (nome, id_turma) VALUES ('Felipe Bruno', 3);
INSERT INTO professor (nome, id_turma) VALUES ('Thiago Barcelos', 2);
INSERT INTO professor (nome, id_turma) VALUES ('Bruno Reis', 3);
INSERT INTO professor (nome, id_turma) VALUES ('Osvaldo Sobrinho', NULL);
INSERT INTO professor (nome, id_turma) VALUES ('Fabiano Francisco', NULL);

INSERT INTO aluno (nome, id_turma) VALUES ('Lucas Gabriel', 1);
INSERT INTO aluno (nome, id_turma) VALUES ('Fernando Souza', 2);
INSERT INTO aluno (nome, id_turma) VALUES ('Gabriela Romero', 1);
INSERT INTO aluno (nome, id_turma) VALUES ('Thiago Enrique', 2);
INSERT INTO aluno (nome, id_turma) VALUES ('Gabriel Dias', 3);
INSERT INTO aluno (nome, id_turma) VALUES ('Ricardo Pereira', 4);

INSERT INTO turma (nome) VALUES ('Turma A');
INSERT INTO turma (nome) VALUES ('Turma B');
INSERT INTO turma (nome) VALUES ('Turma C');
INSERT INTO turma (nome) VALUES ('Turma D');
INSERT INTO turma (nome) VALUES ('Turma E');

#Right Join
SELECT
  T.nome as Turma,
  P.nome as Professor
FROM
  professor P
RIGHT JOIN
  turma T
  ON T.id = P.id_turma;
  
#Inner e Right Join
SELECT
  A.nome as Aluno,
  T.nome as Turma,
  P.nome as Professor
FROM
  aluno A
INNER JOIN
  turma T
  ON T.id = A.id_turma
RIGHT JOIN
  professor P
  ON T.id = P.id_turma