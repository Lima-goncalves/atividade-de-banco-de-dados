create database locadora_aula; 
 use locadora_aula;

create table ator(

 ator_id int not null auto_increment ,
 primeiro_nome varchar(45) not null,
 ultimo_nome varchar(45) not null,
 primary key (ator_id)
);

create table categoria (
categoria_id tinyint(3) not null auto_increment,
nome varchar(25),
primary key (categoria_id)
);

create table filme_texto (
filme_id int not null auto_increment,
titulo varchar(255) not null,
descricao varchar(255) not null,
primary  key (filme_id)
); 

create table pais(
pais_id int not null auto_increment,
pais varchar(50) not null, 
primary key (pais_id)
);

create table idioma(
idioma_id int not null auto_increment,
nome varchar(50) not null, 
primary key (idioma_id)
);


select * from ator;
 
insert into ator values ('0','brad','pitt');
insert into ator values ('0','geroge','clooney');
insert into ator values ('0','juliana','paes');
insert into ator values ('0','henry','cavil');
insert into ator values ('0','margot','robins');
insert into ator values ('0','jack','sparow');
insert into ator values ('0','cris','evans');



select * from categoria;

insert into  categoria values('0','terro');
insert into  categoria values('0','suspense');
insert into  categoria values('0','lgbt');
insert into  categoria values('0','comedia');
insert into  categoria values('0','comedia romantica');
insert into  categoria values('0','ação');
insert into  categoria values('0','ficção cientifica ');




select * from filme_texto;

insert into filme_texto values('0','Alice no país das maravilhas','ok');
insert into filme_texto values('0','Pirata dos caribes','ok');
insert into filme_texto values('0','Fantastica fabrica de chocolate ','ok');
insert into filme_texto values('0','Homem de ferro','ok');
insert into filme_texto values('0','Eduward mão de tesoura','ok');
insert into filme_texto values('0','vingadoes ','ok');
insert into filme_texto values('0','gabriela','ok');



select * from pais;

insert into pais values('0','Brasil');
insert into pais values('0','canada');
insert into pais values('0','Chile');
insert into pais values('0','Coreia do Sul');
insert into pais values('0','Costa Rica');
insert into pais values('0','Japão');
insert into pais values('0','Estados Unidos');



select * from idioma;
insert into idioma values('0','Brasileiro');
insert into idioma values('0','ingles');
insert into idioma values('0','espanhol');
insert into idioma values('0','coreano');
insert into idioma values('0','frances');
insert into idioma values('0','Japones');
insert into idioma values('0','chines');




create table filme (
filme_id int not null auto_increment,
titulo varchar (255) not null,
descricao text,
ano_de_lancamento year(4) default null,
idioma_id int not null,
idioma_original_id int default null,
duracao_da_locadora int not null default '3',
preco_da_locacao decimal(4,2) not null default '4.99',
duracao_do_filme int default null,
custo_de_substituicao decimal (5,2) not null default '19.99',
classificacao enum ('L', '10', '14', '16') default 'L',
recursos_especiais set ('Trailers', 'Comentarios', 'Cenas Deletadas') default null,

primary key (filme_id),
key fk_idioma_id (idioma_id),
key fk_idioma_original_id (idioma_original_id)

);


insert into filme value('0','Alice no país das maravilhas','ficção cientifica ','2000','3','4','3','5.99','120','10.00','L','trailers');

select * from filme;
select * from idioma;


select * from filme;

select * from filme, idioma where filme.idioma_id = idioma.idioma_id;

select titulo, nome from filme, idioma where filme. idioma_id = idioma.idioma_id;

select titulo, nome from filme, idioma;
select * from idioma;

