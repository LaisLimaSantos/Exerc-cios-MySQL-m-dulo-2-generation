create database db_pizzaria_legal;
use db_pizzaria_legal;

create table  tb_categoria(
id bigint auto_increment,
tamanho varchar (100) not null,
borda varchar (10) not null,
vegan boolean not null,
primary key (id)
);


create table tb_pizza(
id bigint auto_increment,
nome varchar (100) not null,
preco float (10) not null,
tamanho varchar (100) not null,
borda varchar (100) not null,
sweetornot varchar (100) not null,
categoria_id bigint,
primary key (id), -- FOREIGN KEY (`turma_id`) REFERENCES `turma` (`id`)
foreign key (categoria_id) references tb_categoria (id)
);

insert into  tb_categoria (tamanho, borda, vegan) values ("Grande", "Fina", 1);
insert into  tb_categoria (tamanho, borda, vegan) values ("Média", "Fina", 1);
insert into  tb_categoria (tamanho, borda, vegan) values ("Pequena", "Fina", 1);
insert into  tb_categoria (tamanho, borda, vegan) values ("Grande", "Fina", 0);
insert into  tb_categoria (tamanho, borda, vegan) values ("Média", "Grossa", 0);


insert into  tb_pizza (nome, preco, tamanho, borda, sweetornot, categoria_id) values ("Brócolis", 45.99, "Grande", "Fina", "Salgada");
insert into  tb_pizza (nome, preco, tamanho, borda, sweetornot, categoria_id) values ("Palmito", 45.99, "Grande", "Fina", "Salgada");
insert into  tb_pizza (nome, preco, tamanho, borda, sweetornot, categoria_id) values ("Mussarela", 45.99, "Grande", "Fina", "Salgada");
insert into  tb_pizza (nome, preco, tamanho, borda, sweetornot, categoria_id) values ("Shimeji", 45.99, "Grande", "Fina", "Salgada");
insert into  tb_pizza (nome, preco, tamanho, borda, sweetornot, categoria_id) values ("Presunto vegetariano", 45.99, "Grande", "Fina", "Salgada");
insert into  tb_pizza (nome, preco, tamanho, borda, sweetornot, categoria_id) values ("Beijinho", 30.99, "Pequena", "Fina", "Doce");
insert into  tb_pizza (nome, preco, tamanho, borda, sweetornot, categoria_id) values ("Morangos silvestres", 30.99, "Pequena", "Fina", "Doce");
insert into  tb_pizza (nome, preco, tamanho, borda, sweetornot, categoria_id) values ("Abacaxi com coco", 30.99, "Pequena", "Fina", "Doce");

select * from  tb_pizza where 'preco' > 45;
select * from tb_pizza where 'preco' between 29 and 60;

-- 
SELECT * FROM tb_pizza 
INNER JOIN tb_categoria ON categoria_id= tb_pizza;

SELECT * FROM tb_pizza
INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.id
WHERE tb_categoria.promocao = true;
