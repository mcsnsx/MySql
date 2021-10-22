create database db_escola;

use db_escola;

create table tb_alunes(
id int (5) auto_increment,
nome varchar (255) not null,
idade int (3) not null,
genero varchar (255) not null,
turma varchar (255) not null,
nota int (6),

primary key (id)
);

insert into tb_alunes (nome, idade, genero, turma, nota) values ("Maria", 15, "Feminino", "1A", 10);
insert into tb_alunes (nome, idade, genero, turma, nota) values ("Akira", 16, "Feminino", "2A", 9);
insert into tb_alunes (nome, idade, genero, turma, nota) values ("Carlos", 14, "Feminino", "1A", 7);
insert into tb_alunes (nome, idade, genero, turma, nota) values ("Renan", 16, "Feminino", "3A", 10);
insert into tb_alunes (nome, idade, genero, turma, nota) values ("Carolina", 17, "Feminino", "3A", 8);
select * from tb_alunes;

select * from tb_alunes where idade > 15;
select * from tb_alunes where idade < 15;

update tb_alunes set nota = 9 where id = 4;

select * from tb_alunes;