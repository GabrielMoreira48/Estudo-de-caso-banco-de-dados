use db_estudo_caso;

show tables;

select * from tbl_cliente;
select * from tbl_endereco;
select * from tbl_entrega;
select * from tbl_estoque;
select * from tbl_login;
select * from tbl_produto;
select * from tbl_tipo_pagamento;
select * from tbl_vendas;
select * from tlb_telefone;

select 
		tbl_login.usuario,
        tbl_cliente.nome, tbl_cliente.cpf, 
        tbl_endereco.cep, tbl_endereco.rua, tbl_endereco.numero_casa,
        tbl_vendas.id_produto, tbl_vendas.quantidade_comprada,
        tbl_produto.nome as nome_produto, tbl_produto.preco AS preco_unidade, 
        tbl_entrega.tipo_entrega, tbl_entrega.tempo_entrega
        
 FROM tbl_cliente
	INNER JOIN tbl_login ON tbl_cliente.id_login = tbl_login.id
	INNER JOIN tbl_endereco ON tbl_cliente.id = tbl_endereco.id_cliente 
	INNER JOIN tbl_vendas ON tbl_cliente.id = tbl_vendas.id_cliente
	INNER JOIN tbl_produto ON tbl_vendas.id_produto = tbl_produto.id
	INNER JOIN tbl_entrega ON tbl_vendas.id_entrega = tbl_entrega.id;