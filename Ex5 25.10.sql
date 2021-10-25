create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria (
id bigint auto_increment,
tipo varchar (255) not null,
entrega varchar (255) not null,

primary key (id)
);

insert into tb_categoria (tipo, entrega) values ("cimento", true);
insert into tb_categoria (tipo, entrega) values ("ferramentas", false);
insert into tb_categoria (tipo, entrega) values ("tijolo", true);
insert into tb_categoria (tipo, entrega) values ("areia", true);
insert into tb_categoria (tipo, entrega) values ("fios", false);

create table tb_produto (
id bigint auto_increment,
marca varchar (255) not null,
cor varchar (255) not null,
quantidade int,
categoria_id bigint,
preco double,

primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (marca, cor, quantidade, categoria_id, preco)
values ("votoran", "cinza", 1, 1, 29.99);
insert into tb_produto (marca, cor, quantidade, categoria_id, preco)
values ("bosh", "azul", 1, 2, 999.99);
insert into tb_produto (marca, cor, quantidade, categoria_id, preco)
values ("ceramico", "laranja", 1, 3, 0.99);
insert into tb_produto (marca, cor, quantidade, categoria_id, preco)
values ("votoran", "bege", 1, 4, 1.99);
insert into tb_produto (marca, cor, quantidade, categoria_id, preco)
values ("sil sil", "preto", 1, 5, 49.99);
insert into tb_produto (marca, cor, quantidade, categoria_id, preco)
values ("itaú", "branco", 1, 1, 11.99);
insert into tb_produto (marca, cor, quantidade, categoria_id, preco)
values ("universal", "amarelo", 2, 1, 24.99);
insert into tb_produto (marca, cor, quantidade, categoria_id, preco)
values ("sky", "transparente", 1, 3, 12.99);

 select * from tb_produto;

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where marca like "s%";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where categoria_id = 3;

