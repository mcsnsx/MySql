create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria (
id bigint auto_increment,
tipo varchar (255) not null,
organico boolean,

primary key (id)

);

insert into tb_categoria (tipo, organico) values ("fruta", true);
insert into tb_categoria (tipo, organico) values ("verguda", true);
insert into tb_categoria (tipo, organico) values ("grãos", true);
insert into tb_categoria (tipo, organico) values ("pasta", true);
insert into tb_categoria (tipo, organico) values ("vegetais", true);

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
origem varchar (255) not null,
quantidade int,
preco double,

categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, origem, quantidade, preco, categoria_id) 
values ("Alface", "Fazenda M", 1, 4.00, 2);
insert into tb_produto (nome, origem, quantidade, preco, categoria_id) 
values ("Manga", "Fazenda C", 1, 2.00, 1);
insert into tb_produto (nome, origem, quantidade, preco, categoria_id) 
values ("Amendoim", "Fazenda R", 1, 5.00, 4);
insert into tb_produto (nome, origem, quantidade, preco, categoria_id) 
values ("Aipo", "Fazenda C", 1, 3.00, 5);
insert into tb_produto (nome, origem, quantidade, preco, categoria_id) 
values ("Grão de Bico", "Fazenda M", 1, 6.00, 3);
insert into tb_produto (nome, origem, quantidade, preco, categoria_id) 
values ("Repolho", "Fazenda M", 1, 3.00, 2);
insert into tb_produto (nome, origem, quantidade, preco, categoria_id) 
values ("Alho", "Fazenda R", 1, 7.00, 4);
insert into tb_produto (nome, origem, quantidade, preco, categoria_id) 
values ("Morango", "Fazenda C", 1, 5.00, 1);

 select * from tb_produto;

select * from tb_produto where preco > 5.00;

select * from tb_produto where preco between 3.00 and 10.00;

select * from tb_produto where nome like "m%";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where categoria_id = 2;
