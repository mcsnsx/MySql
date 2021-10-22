create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id int (5) auto_increment,
nome varchar (255) not null,
tamanho varchar (255) not null,
cor varchar (255) not null,
marca varchar (255) not null,
preco decimal (8,2),

primary key (id)
);

insert into tb_produtos (nome, tamanho, cor, marca, preco) values ("Camisa", "GG", "Preto", "Nike", 99.99);
insert into tb_produtos (nome, tamanho, cor, marca, preco) values ("Blusa", "XGG", "Rosa", "Adidas", 149.99);
insert into tb_produtos (nome, tamanho, cor, marca, preco) values ("Cinto", "G", "Bege", "Puma", 50.00);
insert into tb_produtos (nome, tamanho, cor, marca, preco) values ("Camiseta", "XXGG", "Cinza", "Nike", 89.99);
insert into tb_produtos (nome, tamanho, cor, marca, preco) values ("Calça", "GG", "Azul", "Nike", 130.00);
insert into tb_produtos (nome, tamanho, cor, marca, preco) values ("Camisa", "XXGG", "Vermelha", "Puma", 79.99);
insert into tb_produtos (nome, tamanho, cor, marca, preco) values ("Blusa", "G", "Preto", "Adidas", 140.00);
insert into tb_produtos (nome, tamanho, cor, marca, preco) values ("Cinto", "xGG", "Preto", "Puma", 39.99);

select * from tb_produtos;

select * from tb_produtos where preco > 90.00;
select * from tb_produtos where preco < 90.00;

update tb_produtos set preco = 60.00 where id = 3;

