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
insert into clientes (nome, email) values ('Bruno', 'bruno@email.com')
insert into pedidos (cliente_id, total) values (1, 10)

select * from clientes
select * from pedidos
