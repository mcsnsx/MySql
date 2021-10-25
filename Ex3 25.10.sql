create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipo varchar (255) not null,
receita boolean,

primary key (id)
);

insert into tb_categoria (tipo, receita) values ("Comprimido", true);
insert into tb_categoria (tipo, receita) values ("Liquido", true);
insert into tb_categoria (tipo, receita) values ("Pomada", false);
insert into tb_categoria (tipo, receita) values ("Adesivo", false);
insert into tb_categoria (tipo, receita) values ("Injeção", true);

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
quantidade double,
frequencia varchar (255) not null,
preco double,

categoria_id bigint,
primary key (id),

foreign key (categoria_id) references tb_categoria (id)
 );
 
 insert into tb_produto (nome, categoria_id, quantidade, frequencia, preco)
 values ("Dipirona", 1, 30, "Até 4x ao dia", 2.82);
  insert into tb_produto (nome, categoria_id, quantidade, frequencia, preco)
 values ("Acido Asseticilico", 1, 21, "3x ao dia", 1.87);
  insert into tb_produto (nome, categoria_id, quantidade, frequencia, preco)
 values ("Dorflex", 1, 10, "Até 4x ao dia", 4.98);
  insert into tb_produto (nome, categoria_id, quantidade, frequencia, preco)
 values ("Salompas", 4, 4, "2x ao dia", 5.99);
  insert into tb_produto (nome, categoria_id, quantidade, frequencia, preco)
 values ("Tanix", 4, 4, "2x ao dia", 95.00);
  insert into tb_produto (nome, categoria_id, quantidade, frequencia, preco)
 values ("Rivotril", 2, 30, "2 a 3x ao dia", 29.90);
  insert into tb_produto (nome, categoria_id, quantidade, frequencia, preco)
 values ("Lufital", 2, 1, "3x ao dia", 22.50);
  insert into tb_produto (nome, categoria_id, quantidade, frequencia, preco)
 values ("Hipoglos", 3, 1, "Até 4x dia", 34.99);
 
 select * from tb_produto;

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "a%";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where categoria_id = 4;

