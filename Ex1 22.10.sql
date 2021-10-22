create database db_rh;

use db_rh;

create table tb_funcionaries (
id bigint (5) auto_increment,
nome varchar (255) not null,
genero varchar (255) not null,
idade int (3) not null,
cargo varchar (255) not null,
salario decimal (8,2),

primary key (id)
);

insert into tb_funcionaries (nome, genero, idade, cargo, salario) values ("Maria", "Feminino", 26, "Desenvolvedora de Software", 5500.00);
insert into tb_funcionaries (nome, genero, idade, cargo, salario) values ("Carolino", "Masculino", 19, "Estagiário", 1000.00);
insert into tb_funcionaries (nome, genero, idade, cargo, salario) values ("Xavier", "Masculino", 36, "Ajudante Geral", 1500.00);
insert into tb_funcionaries (nome, genero, idade, cargo, salario) values ("Ariel", "Outros", 23, "Desenvolvedore de Projeto", 7500.00);
insert into tb_funcionaries (nome, genero, idade, cargo, salario) values ("Juno", "Outros", 26, "Diretore Geral", 9500.00);

select * from  tb_funcionaries;

select * from tb_funcionaries where idade > 30;
select * from tb_funcionaries where idade < 30;

update tb_funcionaries set salario = 2000.00 where id = 3;

select * from tb_funcionaries where idade > 30;
