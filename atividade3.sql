CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_alunos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome VARCHAR (255),
    serie VARCHAR(50),
    nota_do_Aluno DECIMAL (4,2) NOT NULL,
    data_de_nascimento DATE);
INSERT INTO tb_alunos (nome, serie, nota_do_Aluno, data_de_nascimento)
VALUES
('João Silva', '3ª série', 8.50, '2010-05-12'),
('Maria Oliveira', '2ª série', 9.20, '2011-03-25'),
('Pedro Santos', '4ª série', 7.80, '2009-11-03'),
('Ana Souza', '1ª série', 9.50, '2012-07-18'),
('Lucas Pereira', '3ª série', 6.90, '2010-09-21'),
('Fernanda Lima', '2ª série', 5.10, '2011-01-30'),
('Rafael Costa', '4ª série', 7.50, '2009-06-12'),
('Beatriz Mendes', '1ª série', 9.00, '2012-12-05');

SELECT * FROM tb_alunos;
SELECT * FROM tb_alunos WHERE nota_do_Aluno < 7.0;
SELECT * FROM tb_alunos WHERE nota_do_Aluno > 7.0;
SELECT AVG(nota_do_Aluno) AS Media FROM tb_alunos;