CREATE DATABASE db_empresa;
USE db_empresa;
CREATE TABLE tb_colaboradores(
    id INT AUTO_INCREMENT PRIMARY KEY,   
    nome VARCHAR(100) NOT NULL,          
    cargo VARCHAR(50),                  
    salario DECIMAL(10,2),              
    data_admissao DATE                  
);

INSERT INTO tb_colaboradores(nome, cargo, salario, data_admissao) 
VALUES ("Joice","Analista de Atendimento Júnior", 2550.00, "2023-12-15");

INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao) 
VALUES ("Lucas Pereira","Desenvolvedor Júnior", 2000.00, "2024-01-10");

INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao) 
VALUES ("Mariana Silva","Assistente de RH", 2200.00, "2024-02-05");

INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao) 
VALUES ("Rafael Costa","Analista Financeiro", 2800.00, "2024-03-01");

INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao) 
VALUES ("Fernanda Souza","Estagiária de Marketing", 2000.00, "2024-04-12");

INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao) 
VALUES ("Bruno Almeida","Coordenador de Projetos", 3500.00, "2024-05-20");

SELECT * FROM tb_colaboradores;

UPDATE tb_colaboradores SET salario = 800 WHERE id = 4;

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;





