CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
horario_curso VARCHAR(255),
especializacao VARCHAR(255),
PRIMARY KEY(id)
);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
nome_curso VARCHAR(255),
valor_curso DECIMAL,
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(horario_curso, especializacao)
VALUES("Diurno", "Curso Técnico");

INSERT INTO tb_categoria(horario_curso, especializacao)
VALUES("Diurno", "Especialização");

INSERT INTO tb_categoria(horario_curso, especializacao)
VALUES("Diurno", "Tecnólogo");

INSERT INTO tb_categoria(horario_curso, especializacao)
VALUES ("Diurno", "Bacharel");

INSERT INTO tb_categoria(horario_curso, especializacao)
VALUES("Noturno", "Curso Técnico");

INSERT INTO tb_categoria(horario_curso, especializacao)
VALUES("Noturno", "Especialização");

INSERT INTO tb_categoria(horario_curso, especializacao)
VALUES("Noturno", "Tecnólogo");

INSERT INTO tb_categoria(horario_curso, especializacao)
VALUES ("Noturno", "Bacharel");

SELECT * FROM tb_cursos;
SELECT * FROM tb_categoria;

INSERT INTO tb_cursos(nome_curso, valor_curso, categoria_id)
VALUES("Front-End- pro ao avançado", 1500, 5);

INSERT INTO tb_cursos(nome_curso, valor_curso, categoria_id)
VALUES("Pohotoshop", 650, 5);

INSERT INTO tb_cursos(nome_curso, valor_curso, categoria_id)
VALUES("Especialização Em Cisco", 3000, 2);

INSERT INTO tb_cursos(nome_curso, valor_curso, categoria_id)
VALUES("Especialização em FortGath", 1800, 2);

INSERT INTO tb_cursos(nome_curso, valor_curso, categoria_id)
VALUES("Especialização em Cisco", 3500, 6);

INSERT INTO tb_cursos(nome_curso, valor_curso, categoria_id)
VALUES("Especialização em FortGath", 2100,6);

INSERT INTO tb_cursos(nome_curso, valor_curso, categoria_id)
VALUES("ADS", 6500, 3);

INSERT INTO tb_cursos(nome_curso, valor_curso, categoria_id)
VALUES("Redes de Computadores", 6200, 3);

INSERT INTO tb_cursos(nome_curso, valor_curso, categoria_id)
VALUES("ADS", 7800, 7);

INSERT INTO tb_cursos(nome_curso, valor_curso, categoria_id)
VALUES("Redes de Computadores", 7200, 7);

INSERT INTO tb_cursos(nome_curso, valor_curso, categoria_id)
VALUES("Tecnologia da Informação", 16000, 4);

INSERT INTO tb_cursos(nome_curso, valor_curso, categoria_id)
VALUES("Tecnologia da Informação", 18600, 8);

SELECT * FROM tb_cursos WHERE valor_curso > 500;

SELECT * FROM tb_cursos WHERE valor_curso >= 500 AND valor_curso <=1000;

select * from tb_cursos WHERE nome_curso LIKE "%f%";

SELECT tb_cursos.categoria_id, tb_categoria.id
FROM tb_cursos INNER JOIN tb_categoria;

SELECT tb_cursos.nome_curso
from tb_cursos INNER JOIN tb_categoria;