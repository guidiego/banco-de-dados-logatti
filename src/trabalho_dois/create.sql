create table empresa (
    cnpj int NOT NULL PRIMARY KEY,
    nome varchar(50) NOT NULL,
    telefone varchar(16) NOT NULL,
    endereco varchar(110) NOT NULL,
    website varchar(60) NOT NULL,
)

create table linha (
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    empresa_id int NOT NULL REFERENCES empresa(cnpj),
    nome varchar(30) NOT NULL
)

create table horario (
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    dia varchar(20) NOT NULL,
    hora varchar(5) NOT NULL,
)

create table logradouro (
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    endereco varchar(110) NOT NULL UNIQUE
)

create table logradouro_linha (
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    logradouro_id int NOT NULL REFERENCES logradouro(id),
    linha_id int NOT NULL REFERENCES linha(id),
    ordem int NOT NULL,
    CONSTRAINT id_composto UNIQUE (id, ordem)
)

create table horario_linha (
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    horario_id int NOT NULL REFERENCES horario(id),
    linha_id int NOT NULL REFERENCES linha(id),
)