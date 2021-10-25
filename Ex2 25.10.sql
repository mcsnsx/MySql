create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
item varchar (255) not null,
borda boolean not null,

primary key (id)
);

insert into tb_categoria (item, borda) values ("Doce", false);
insert into tb_categoria (item, borda) values ("Salgada", true);
insert into tb_categoria (item, borda) values ("Apimentada", true);
insert into tb_categoria (item, borda) values ("Vegana", false);
insert into tb_categoria (item, borda) values ("Vegetariana", true);

create table tb_pizza(
id bigint auto_increment,
sabor varchar (255) not null,
azeitona boolean not null,
entrega boolean not null,
preco double,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (sabor, categoria_id, azeitona, entrega, preco) 
values ("Calabresa", "2", false, true, 34.99);
insert into tb_pizza (sabor, categoria_id, azeitona, entrega, preco) 
values ("Quatro Queijos", "2", true, false, 34.99);
insert into tb_pizza (sabor, categoria_id, azeitona, entrega, preco) 
values ("Chocolate", "1", false, true, 36.99);
insert into tb_pizza (sabor, categoria_id, azeitona, entrega, preco) 
values ("Escarola", "5", true, true, 32.99);
insert into tb_pizza (sabor, categoria_id, azeitona, entrega, preco) 
values ("Rucula com queijo", "4", true, false, 32.99);
insert into tb_pizza (sabor, categoria_id, azeitona, entrega, preco) 
values ("Pepperoni", "3", false, true, 34.99);
insert into tb_pizza (sabor, categoria_id, azeitona, entrega, preco) 
values ("Bacon", "2", true, true, 34.99);
insert into tb_pizza (sabor, categoria_id, azeitona, entrega, preco) 
values ("Romeu e Julieta", "1", false, true, 36.99);

select * from tb_pizza;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco between 29.00 and 60.00;

select * from tb_pizza where sabor like "c%";

select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id
where categoria_id = 2;
