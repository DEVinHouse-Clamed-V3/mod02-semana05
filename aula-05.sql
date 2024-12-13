select * from clientes
select COUNT(*) from clientes
select SUM(total) from pedidos
select * from pedidos
select AVG(total) from pedidos
select MIN(total) from pedidos;
select MAX(total) from pedidos;


select cliente_id from pedidos
	group by cliente_id

insert into pedidos (cliente_id, total)
values (1, 20),
(1, 30),
(1, 15),
(1, 45)



select * from pedidos

select SUM(total) from pedidos where cliente_id = 1
	
select cliente_id, SUM(total) from pedidos
group by cliente_id
having sum(total) > 100
