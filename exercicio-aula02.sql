create table produtos (
	id serial primary key,
	nome varchar(50) not null,
	preco decimal(10, 2) not null,
	estoque int
)

alter table produtos add categoria text;
alter table produtos rename column estoque to quantidade_disponivel;
alter table produtos drop column preco;