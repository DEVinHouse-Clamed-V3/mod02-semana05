create table alunos (
	id serial primary key,
	nome varchar(120)
);

create table cursos (
	id serial primary key,
	nome varchar(120)
);

create table professores (
	id serial primary key,
	nome varchar(120)
);

create table alunos_curso (
	aluno_id int references alunos(id),
	curso_id int references cursos(id)
)

create table professores_cursos (
	professor_id int references professores(id),
	curso_id int references cursos(id)
)

insert into alunos (nome)
values ('Lucas'), ('Ana')

insert into professores (nome)
values ('joão'), ('maria')

insert into cursos (nome)
values ('matemática'), ('física')

insert into alunos_curso (aluno_id, curso_id)
values (1 , 1), (2, 2)

select * from alunos_curso

insert into professores_cursos (curso_id, professor_id)
values (1 , 1), (2, 2)

select * from professores_cursos
select * from alunos
select * from professores
select * from cursos
