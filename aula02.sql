create table clientes (
	id serial primary key,
	nome varchar(255),
	email varchar(120) not null unique,
	ativo boolean default true,
	idade int check (idade >= 14)
)

-- alterar a restrição
alter table clientes alter column nome set not null;
-- adicionar nova coluna
alter table clientes add telefone varchar(15) not null;
-- renomear uma coluna
alter table clientes rename column telefone to telefone_contato;
-- alterar o type da coluna
alter table clientes alter column telefone_contato type varchar(50) not null;
-- drop table if exists clientes