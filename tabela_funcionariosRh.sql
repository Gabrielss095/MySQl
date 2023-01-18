CREATE DATABASE servicosRh;

USE servicosRh;

CREATE TABLE colaboradores
(
PRIMARY KEY(id),
id BIGINT auto_increment,
nome VARCHAR(255),
codColaborador INT,
cargo VARCHAR(30),
horario VARCHAR(20),
genero VARCHAR(20),
salario DECIMAL(10,2)
);

INSERT INTO colaboradores(nome, codColaborador, cargo, horario, genero, salario)
VALUES("Gabriel Santiago", 1, "Programador Java Jr", "Manhã", "Masculino", 5000.00);

INSERT INTO colaboradores(nome, codColaborador, cargo, horario, genero, salario)
VALUES("Jose de Souza", 2, "Auxiliar administrativo", "Manhã", "Masculino", 2500.00);

INSERT INTO colaboradores(nome, codColaborador, cargo, horario, genero, salario)
VALUES ("Mariana de Almeida", 22, "Especialista de RH", "Manhã", "Feminino", 3500.00);

INSERT INTO colaboradores(nome, codColaborador, cargo, horario, genero, salario)
VALUES ("Silvana Santos", 90, "Programadora Python Sr", "Manhã", "Feminino", 8000.00);

INSERT INTO colaboradores(nome, codColaborador, cargo, horario, genero, salario)
VALUES("Mário Andrade", 15, "Financeiro", "Manhã", "Masculino", 3800.00);

INSERT INTO colaboradores(nome, codColaborador, cargo, horario, genero, salario)
VALUES("Ana Cláudia", 30, "Estagiária de Ti", "Manhã", "Feminino", 1500.00);

SELECT * FROM colaboradores WHERE salario > 2000.00;

SELECT * FROM colaboradores WHERE salario < 2000.00;

UPDATE colaboradores
SET horario = "Tarde" WHERE id=5;

SELECT * FROM servicosrh.colaboradores;
