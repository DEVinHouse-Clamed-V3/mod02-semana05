create table clientes (
	id serial primary key,
	nome varchar(100),
	email varchar(100)
)

create table pedidos (
	id serial primary key,
	data date default current_date,
	cliente_id int references clientes(id),
	total decimal(10, 2)
)

--	drop table pedidos
insert into clientes (nome, email) values ('Lucas', 'lucas@email.com')
insert into pedidos (cliente_id, total) values (4, 100)

select * from clientes;
select * from pedidos

create table produtos (
	id serial primary key, int autoincrement -> serial
	nome varchar(100) not null,
	preco decimal(10, 2)
)

insert into produtos (nome, preco) values 
	('caneta bic', 2),
	('lápis preto', 4),
	('martelo tramontina', 30)

select * from produtos

create table produtos_pedido (
	produto_id int references produtos(id),
	pedido_id int references pedidos (id),
	quantidade int not null
)

select * from clientes
select * from produtos
select * from pedidos
select * from produtos_pedido

insert into produtos_pedido (produto_id, pedido_id, quantidade)
values
(3, 3, 1)
