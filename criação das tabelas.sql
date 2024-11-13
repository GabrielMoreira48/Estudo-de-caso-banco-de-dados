create database db_estudo_caso;
use db_estudo_caso;
show tables;

create table tbl_login(
	id int not null unique auto_increment,
    usuario text not null,
    senha varchar(255) not null
);

create table tbl_cliente(
	id int not null unique auto_increment,
    nome text not null, 
    cpf varchar(11) not null,
    id_login int not null, 
    
    constraint FK_LOGIN_CLIENTE_LOGIN
    foreign key (id_login)
    references tbl_login (id)
);

create table tlb_telefone(
	id int not null unique auto_increment,
    telefone varchar(9) not null,
    id_cliente int not null,
    
    constraint FK_CLIENTE_TELEFONE_CLIENTE
    foreign key(id_cliente)
    references tbl_cliente (id)
);

create table tbl_endereco(
	id int not null unique auto_increment, 
    rua text not null,
    cep varchar(8) not null,
    cidade text not null,
    estado text not null,
    numero_casa int not null,
    id_cliente int not null,
    
    constraint FK_CLIENTE_ENDERECO_CLIENTE
    foreign key (id_cliente)
    references tbl_cliente (id)
);

create table tbl_estoque (
	id int not null unique auto_increment,
    quantidade int not null,
    validade date not null
);

create table tbl_produto(
	id int not null unique auto_increment,
    nome text not null,
    categoria text not null, 
    preco float not null,
    id_estoque int not null,
    
    constraint FK_ESTOQUE_PRODUTO_ESTOQUE
    foreign key (id_estoque)
    references tbl_estoque (id)
);

create table tbl_entrega(
	id int not null unique auto_increment,
    tipo_entrega text not null,
    custo_entrega float not null,
    tempo_entrega date
);

create table tbl_tipo_pagamento(
	id int not null unique auto_increment,
    tipo_pagamento varchar(50) not null,
    descricao varchar(255)
);

create table tbl_vendas(
	id int not null unique auto_increment,
    id_cliente int not null,
    data_venda date not null,
    valor_venda float not null,
    quantidade_comprada int not null,
    id_produto int not null,
    id_entrega int not null, 
    id_tipo_pagamento int not null, 
    
    constraint FK_CLIENTE_VENDAS_CLIENTE
    foreign key (id_cliente)
    references tbl_cliente (id),
    
    constraint FK_PRODUTO_VENDAS_PRODUTOS
    foreign key (id_produto)
    references tbl_produto (id),
    
    constraint FK_ENTREGA_VENDAS_ENTREGA
    foreign key (id_entrega)
    references tbl_entrega (id),
    
    constraint FK_PAGAMENTO_VENDAS_PAGAMENTOS
    foreign key (id_tipo_pagamento)
    references tbl_tipo_pagamento (id)
);

