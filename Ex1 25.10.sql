create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
elemento varchar (255) not null,
regiao varchar (255) not null,
mundo varchar (255) not null,

primary key (id)
);

insert into tb_classe (elemento, regiao, mundo) values ("fogo", "Leste", "Sombra");
insert into tb_classe (elemento, regiao, mundo) values ("ar", "Norte", "Luz");
insert into tb_classe (elemento, regiao, mundo) values ("terra", "Sul", "Sombra");
insert into tb_classe (elemento, regiao, mundo) values ("água", "Oeste", "Luz");
insert into tb_classe (elemento, regiao, mundo) values ("avatar", "Centro", "Luz\Sombra");

create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
genero varchar (255) not null,
posicao varchar (255) not null,
ataque int,
defesa int,

primary key (id),
classe_id bigint,

foreign key (classe_id) references tb_classe (id)
);

insert into tb_personagem (nome, genero, posicao, ataque, defesa, classe_id)
values ("Maria", "Fêmea", "Atacante", 4000, 2000, 1);
insert into tb_personagem (nome, genero, posicao, ataque, defesa, classe_id)
values ("Carlos", "Macho", "Atacante", 3500, 3000, 4);
insert into tb_personagem (nome, genero, posicao, ataque, defesa, classe_id)
values ("Renan", "Macho", "Suporte", 1500, 4500, 4);
insert into tb_personagem (nome, genero, posicao, ataque, defesa, classe_id)
values ("Juno", "Outros", "Suporte", 1000, 4500, 2);
insert into tb_personagem (nome, genero, posicao, ataque, defesa, classe_id)
values ("Ariel", "Outros", "Atacante", 3500, 3500, 3);
insert into tb_personagem (nome, genero, posicao, ataque, defesa, classe_id)
values ("Akira", "Fêmea", "Suporte", 2000, 3500, 1);
insert into tb_personagem (nome, genero, posicao, ataque, defesa, classe_id)
values ("Kaliu", "Outros", "Atacante", 4000, 1500, 3);
insert into tb_personagem (nome, genero, posicao, ataque, defesa, classe_id)
values ("Susi", "Fêmea", "Suporte", 1000, 4500, 2);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id
where classe_id = 1;





