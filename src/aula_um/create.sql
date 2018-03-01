create table cliente (
    cpf integer not null,
    nome varchar (100) not null,

    constraint pkclient primary key (cpf)
);

create table venda (
    id integer not null,
    data date not null,
    cpf_cliente integer not null,

    constraint pkvenda primary key (id),
    constraint fkvenda foreign key (cpf_cliente) references cliente (cpf)
);

create table produto (
    id integer not null,
    nome varchar (50) not null,
    preco numeric (10,2) not null,

    constraint pkproduto primary key (id),
    constraint unqproduto unique (nome)
);

create table item (
    id_venda integer not null,
    id_produto integer not null,
    quantidade decimal (10,2) not null,

    constraint pkitemvenda primary key (id_venda, id_produto),
    constraint fkitemvenda foreign key (id_venda) references venda (id),
    constraint fkitemproduto foreign key (id_produto) references produto (id)
);