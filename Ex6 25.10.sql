create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria (
id bigint auto_increment,
idioma varchar (255) not null,
duracao varchar (255) not null,
primary key (id)
);

insert into tb_categoria (idioma, duracao) values ("português", "Longa duração");
insert into tb_categoria (idioma, duracao) values ("inglês", "Longa duração");
insert into tb_categoria (idioma, duracao) values ("português", "Média duração");
insert into tb_categoria (idioma, duracao) values ("inglês", "Média duração");
insert into tb_categoria (idioma, duracao) values ("português", "Curta duração");

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
presencial boolean,
certificado boolean,
preco double,
categoria_id bigint,

primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, presencial, certificado, preco, categoria_id)
values ("HTML5", false, false, 29.99, 3);
insert into tb_produto (nome, presencial, certificado, preco, categoria_id)
values ("JavaScript", true, true, 69.99, 1);
insert into tb_produto (nome, presencial, certificado, preco, categoria_id)
values ("HTML5 II", true, true, 69.99, 4);
insert into tb_produto (nome, presencial, certificado, preco, categoria_id)
values ("JavaScript II", false, true, 89.99, 2);
insert into tb_produto (nome, presencial, certificado, preco, categoria_id)
values ("Git e GitHub", false, true, 29.99, 4);
insert into tb_produto (nome, presencial, certificado, preco, categoria_id)
values ("MySql", false, false, 29.99, 3);
insert into tb_produto (nome, presencial, certificado, preco, categoria_id)
values ("Git e GitHub II", true, true, 69.99, 5);
insert into tb_produto (nome, presencial, certificado, preco, categoria_id)
values ("MySql II", true, true, 89.99, 2);

 select * from tb_produto;

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "j%";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where categoria_id = 3;
