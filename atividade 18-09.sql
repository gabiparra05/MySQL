create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_pizzas(
	id bigint auto_increment primary key not null,
    saborDaPizza varchar(255),
    descricao varchar(500),
    preco decimal not null,
    tipoDeBorda varchar(255));

insert into tb_pizzas (saborDaPizza, descricao, preco, tipoDeBorda) values
('Mussarela', 'Clássica pizza de queijo mussarela derretido com molho de tomate artesanal', 35.00, 'Tradicional'),
('Calabresa', 'Coberta com calabresa fatiada, cebola roxa e orégano', 38.00, 'Tradicional'),
('Frango com Catupiry', 'Frango desfiado temperado com requeijão cremoso', 42.00, 'Recheada'),
('Portuguesa', 'Presunto, ovos, cebola, azeitona, ervilha e queijo mussarela', 45.00, 'Tradicional'),
('Quatro Queijos', 'Mistura especial de mussarela, parmesão, gorgonzola e provolone', 48.00, 'Recheada'),
('Margherita', 'Molho de tomate fresco, mussarela de búfala, manjericão e azeite', 40.00, 'Fina'),
('Chocolate', 'Pizza doce com cobertura de chocolate ao leite derretido', 30.00, 'Doce'),
('Banana com Canela', 'Pizza doce com banana fatiada, açúcar e canela', 32.00, 'Doce');
select * from tb_pizzas;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nomeCategoria VARCHAR(50) NOT NULL,
    tipo VARCHAR(255)
);
INSERT INTO tb_categorias (nomeCategoria, tipo) VALUES
('Tradicional', 'Salgada'),
('Gourmet', 'Salgada'),
('Vegetariana', 'Salgada'),
('Doce', 'Doce');
select * from tb_categorias;

ALTER TABLE tb_pizzas
ADD COLUMN categoria_id BIGINT;

SET SQL_SAFE_UPDATES = 0;
ALTER TABLE tb_pizzas
ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id);


UPDATE tb_pizzas SET categoria_id = 1 WHERE saborDaPizza IN ('Mussarela', 'Calabresa', 'Portuguesa');
UPDATE tb_pizzas SET categoria_id = 2 WHERE saborDaPizza IN ('Frango com Catupiry', 'Quatro Queijos');
UPDATE tb_pizzas SET categoria_id = 3 WHERE saborDaPizza = 'Margherita';
UPDATE tb_pizzas SET categoria_id = 4 WHERE saborDaPizza IN ('Chocolate', 'Banana com Canela');

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco between 50 and 100;
SELECT * FROM tb_pizzas WHERE saborDaPizza LIKE "%m%";

SELECT tb_pizzas.saborDaPizza, tb_pizzas.descricao, tb_pizzas.preco, tb_pizzas.tipoDeBorda, tb_categorias.tipo
FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id;











