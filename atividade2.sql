CREATE DATABASE e_commerce;
USE e_commerce;
CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome VARCHAR (255)NOT NULL,
    estoque INT,
    preco DECIMAL (10,2),
    descricao VARCHAR (255));
INSERT INTO tb_produtos(nome, estoque, preco, descricao) 
VALUES 
("Smartphone X1", 50, 2500.00, "Smartphone com 128GB, câmera 12MP e 6GB RAM"),
("Notebook Pro 15", 30, 5500.00, "Notebook com Intel i7, 16GB RAM e SSD 512GB"),
("Fone de Ouvido Bluetooth", 100, 350.00, "Fone sem fio com cancelamento de ruído"),
("Smartwatch Fit", 75, 800.00, "Relógio inteligente com monitoramento de saúde"),
("Cafeteira Elétrica", 40, 450.00, "Cafeteira 110V com timer e 12 xícaras"),
("Tablet Ultra", 60, 1800.00, "Tablet de 10 polegadas com 64GB de armazenamento e 4GB RAM"),
("Caixa de Som Bluetooth", 120, 300.00, "Caixa de som portátil com 20W de potência e bateria de longa duração"),
("Câmera Digital X2", 25, 1500.00, "Câmera compacta com 20MP e gravação em 4K");
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 2000;
SELECT * FROM tb_produtos WHERE preco < 2000;
SELECT * FROM tb_produtos WHERE estoque > 50;
SELECT * FROM tb_produtos WHERE estoque < 50;
SELECT * FROM tb_produtos ORDER BY nome ASC;
SELECT * FROM tb_produtos ORDER BY nome DESC;

UPDATE tb_produtos SET preco = 2600.00 WHERE id = 1;





