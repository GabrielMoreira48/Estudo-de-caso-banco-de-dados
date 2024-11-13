use db_estudo_caso;

show tables;

insert into tbl_login(
usuario, senha) values ('CARLOS', '4848');

select * from tbl_login;

insert into tbl_cliente (
nome, cpf, id_login) values ('CARLOS', '71771717172', '2');

select * from tbl_cliente;

insert into tlb_telefone(
telefone, id_cliente) values ('789987789', '2');

select * from tlb_telefone;

insert into tbl_endereco(
rua, cep, cidade, estado, numero_casa, id_cliente) values(
'ALAMEDAS','06810481','SÃO PAULO','SÃO PAULO','123','2');

select * from tbl_endereco;

insert into tbl_estoque( 
quantidade, validade) values('10', '2025-01-01');

select *from tbl_estoque;

insert into tbl_produto(
nome, categoria, preco, id_estoque) values('DANONE','PERECIVEL','07.99','2');

select *from tbl_produto;

insert into tbl_entrega(
tipo_entrega, custo_entrega, tempo_entrega) values (
'PRIORIDADE','20.99','2024-10-31'); 

select * from tbl_entrega;

insert into tbl_tipo_pagamento(
 tipo_pagamento, descricao) values ('PIX', 'CARTEIRA DIGITAL');
 
 select *from tbl_tipo_pagamento;
 
insert into tbl_vendas(
id_cliente, data_venda, valor_venda, quantidade_comprada, id_produto, id_entrega, id_tipo_pagamento) values(
'2', '2024-10-30', '79.99', '100', '2', '2', '2');

select * from tbl_vendas;