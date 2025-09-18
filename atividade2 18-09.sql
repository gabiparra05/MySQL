create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;
create table tb_categorias(
	id bigint auto_increment primary key not null,
    nomeCategoria varchar(50) not null,
    tipo varchar(50) not null);
INSERT INTO tb_categorias (nomeCategoria, tipo) VALUES
('Perfumes', 'Cosmético'),
('Medicamentos', 'Remédio'),
('Higiene', 'Produtos de Higiene'),
('Vitaminas', 'Suplemento'),
('Cuidados Pessoais', 'Cosmético');

create table tb_produtos (
	id bigint auto_increment primary key not null,
    nomeProduto varchar (50),
    preco decimal (6,2),
    descricao varchar(250),
    validade date,
    categoria_id bigint,
    foreign key (categoria_id) references tb_categorias(id));
    
INSERT INTO tb_produtos (nomeProduto, preco, descricao, validade, categoria_id) VALUES
('Perfume Rosa', 50.00, 'Perfume floral delicado', '2026-12-31', 1),
('Perfume Lavanda', 45.00, 'Aroma relaxante de lavanda', '2025-11-30', 1),
('Paracetamol 500mg', 10.00, 'Analgésico e antitérmico', '2026-06-30', 2),
('Ibuprofeno 400mg', 12.00, 'Anti-inflamatório e analgésico', '2025-09-30', 2),
('Creme Dental', 8.00, 'Higiene bucal diária', '2027-01-31', 3),
('Multivitamínico', 25.00, 'Suplemento vitamínico diário', '2025-12-31', 4),
('Shampoo Nutritivo', 20.00, 'Shampoo para cabelos secos', '2026-05-31', 5),
('Condicionador Nutritivo', 18.00, 'Condicionador para cabelos secos', '2026-05-31', 5);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT p.nomeProduto, p.preco, p.descricao, p.validade, c.nomeCategoria, c.tipo
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.categoria_id = c.id;
