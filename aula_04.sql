select * from clientes
select * from produtos
select * from pedidos
select * from produtos_pedido

select 
	clientes.id as id_cliente,
	clientes.nome as nome_cliente,
	pedidos.total as Total_Pedido
	from clientes
inner join pedidos
on pedidos.cliente_id = clientes.id
---where pedidos.total > 50

select 
	clientes.id as id_cliente,
	clientes.nome as nome_cliente,
	pedidos.total as Total_Pedido
	from clientes
left join pedidos
on pedidos.cliente_id = clientes.id

select * from produtos as pd
inner join produtos_pedido
on produtos_pedido.produto_id = pd.id
inner join pedidos
on produtos_pedido.pedido_id = pedidos.id
	
	insert into produtos (nome, preco) 
values ('carderno 15 materias', 25),
('livro de javascript', 30),
('lampada 15w', 12)

select * from clientes
select * from pedidos

select 
	c.id as id_do_cliente,
	c.nome as nome_do_cliente,
	p.data as data_do_pedido,
	p.total as total_do_pedido
	from clientes as c
		left join pedidos as p
			on p.cliente_id = c.id

select 
	pedidos.id as id_do_pedido,
	pedidos.data as data_pedido,
	produtos.nome as nome_produto,
	produtos.preco as preco_produto,
	produtos_pedido.quantidade as qtd
	from produtos_pedido
inner join produtos
on produtos.id = produtos_pedido.produto_id
inner join pedidos
on pedidos.id = produtos_pedido.pedido_id

insert into produtos_pedido (pedido_id, produto_id, quantidade)
values (2, 2, 2),
(2, 1, 5),
(2, 6, 2)
