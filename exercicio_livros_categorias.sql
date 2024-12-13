create table categoria (
	id serial primary key,
	nome varchar(120)
)

create table livros (
	id serial primary key,
	nome varchar(120),
	categoria_id int references categoria(id)
)

insert into livros (nome) values ('livro do Tiago')
insert into livros (nome) values ('livro da Monica')
insert into livros (nome) values ('livro do Lucas')
insert into livros (nome) values ('livro da Carla')
	insert into categoria (nome) values
('ficção'),
('tecnologia'),
('romance')

select * from livros
select * from categoria

--	update livros set categoria_id = 2 where id = 1

select * from livros
left join categoria
on categoria.id = livros.categoria_id


